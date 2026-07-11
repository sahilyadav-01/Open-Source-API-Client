import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/client_provider.dart';
import '../models/request_item.dart';

class HistorySidebar extends StatelessWidget {
  const HistorySidebar({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ClientProvider>(context);
    final history = provider.history;

    return Container(
      color: const Color(0xFF0B1220), // Dark slate 950
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Sidebar header
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(Icons.history, size: 20, color: Color(0xFF94A3B8)),
                    SizedBox(width: 8),
                    Text(
                      'Request History',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF8FAFC),
                      ),
                    ),
                  ],
                ),
                if (history.isNotEmpty)
                  TextButton(
                    onPressed: () => provider.clearHistory(),
                    child: const Text('Clear All', style: TextStyle(fontSize: 12, color: Colors.grey)),
                  ),
              ],
            ),
          ),
          const Divider(height: 1),
          // History items list
          Expanded(
            child: history.isEmpty
                ? const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.history_toggle_off, size: 36, color: Colors.grey),
                          SizedBox(height: 12),
                          Text(
                            'No history yet.',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: history.length,
                    itemBuilder: (context, index) {
                      final item = history[index];
                      return _buildHistoryItem(context, provider, item);
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildHistoryItem(BuildContext context, ClientProvider provider, RequestItem item) {
    final methodColor = _getMethodColor(item.method);
    
    return InkWell(
      onTap: () {
        provider.loadRequest(item);
        // If we are on mobile/drawer, close drawer
        if (Scaffold.of(context).isDrawerOpen) {
          Navigator.pop(context);
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xFF1E293B))),
        ),
        child: Row(
          children: [
            // Method badge
            Container(
              width: 54,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 4),
              decoration: BoxDecoration(
                color: methodColor.withOpacity(0.12),
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: methodColor.withOpacity(0.3)),
              ),
              child: Text(
                item.method,
                style: TextStyle(
                  color: methodColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
            ),
            const SizedBox(width: 12),
            // URL label
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _getDisplayUrl(item.url),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 12,
                      color: Color(0xFFE2E8F0),
                    ),
                  ),
                  if (item.response != null) ...[
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Text(
                          'Status: ${item.response!.statusCode}',
                          style: TextStyle(
                            fontSize: 10,
                            color: item.response!.statusCode >= 200 && item.response!.statusCode < 300
                                ? const Color(0xFF10B981)
                                : Colors.redAccent,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '${item.response!.durationMs} ms',
                          style: const TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
            // Delete button
            IconButton(
              icon: const Icon(Icons.delete_outline, size: 16, color: Colors.grey),
              onPressed: () => provider.deleteHistoryItem(item.id),
              hoverColor: Colors.red.withOpacity(0.1),
              tooltip: 'Delete',
            ),
          ],
        ),
      ),
    );
  }

  String _getDisplayUrl(String url) {
    // Strip HTTP/HTTPS prefix for cleaner display if it exists
    String display = url.trim();
    if (display.startsWith('https://')) {
      display = display.substring(8);
    } else if (display.startsWith('http://')) {
      display = display.substring(7);
    }
    return display.isEmpty ? 'Untitled Request' : display;
  }

  Color _getMethodColor(String method) {
    switch (method.toUpperCase()) {
      case 'GET':
        return const Color(0xFF10B981);
      case 'POST':
        return const Color(0xFFF59E0B);
      case 'PUT':
        return const Color(0xFF3B82F6);
      case 'DELETE':
        return const Color(0xFFEF4444);
      case 'PATCH':
        return const Color(0xFF8B5CF6);
      default:
        return const Color(0xFF94A3B8);
    }
  }
}
