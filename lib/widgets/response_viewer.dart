import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/client_provider.dart';

class ResponseViewer extends ConsumerStatefulWidget {
  const ResponseViewer({super.key});

  @override
  ConsumerState<ResponseViewer> createState() => _ResponseViewerState();
}

class _ResponseViewerState extends ConsumerState<ResponseViewer> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final clientState = ref.watch(clientProvider);
    final response = clientState.currentResponse;

    if (clientState.isLoading) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(color: Color(0xFF6366F1)),
            SizedBox(height: 16),
            Text('Waiting for response...', style: TextStyle(color: Colors.grey)),
          ],
        ),
      );
    }

    if (response == null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.cloud_queue, size: 64, color: Colors.grey[700]),
            const SizedBox(height: 16),
            const Text(
              'Enter a URL and click Send to make a request.',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
      );
    }

    // Format body if it is JSON
    String formattedBody = response.body;
    try {
      final decodedJson = json.decode(response.body);
      formattedBody = const JsonEncoder.withIndent('  ').convert(decodedJson);
    } catch (_) {
      // Not a JSON response, keep raw body
    }

    final isPageSuccess = response.statusCode >= 200 && response.statusCode < 300;
    final statusColor = response.statusCode == -1
        ? Colors.redAccent
        : (isPageSuccess ? const Color(0xFF10B981) : const Color(0xFFEF4444));

    return Card(
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Response info bar (Status, Time, Size)
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                // Status code badge
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: statusColor.withValues(alpha: 0.3)),
                  ),
                  child: Text(
                    response.statusCode == -1 ? 'ERROR' : 'STATUS: ${response.statusCode}',
                    style: TextStyle(
                      color: statusColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                // Time badge
                Icon(Icons.access_time, size: 14, color: Colors.grey[400]),
                const SizedBox(width: 4),
                Text(
                  _formatDuration(response.durationMs),
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 20),
                // Size badge
                Icon(Icons.sd_storage, size: 14, color: Colors.grey[400]),
                const SizedBox(width: 4),
                Text(
                  _formatSize(response.sizeBytes),
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Response Body'),
              Tab(text: 'Response Headers'),
            ],
            indicatorColor: const Color(0xFF6366F1),
            labelColor: const Color(0xFF6366F1),
            unselectedLabelColor: Colors.grey,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Response Body panel using scrollable SelectableText
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Scrollbar(
                    thumbVisibility: true,
                    child: SingleChildScrollView(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: SelectableText(
                          formattedBody,
                          style: const TextStyle(
                            fontFamily: 'monospace',
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Response Headers panel
                response.headers.isEmpty
                    ? const Center(child: Text('No response headers.', style: TextStyle(color: Colors.grey)))
                    : ListView.builder(
                        padding: const EdgeInsets.all(16),
                        itemCount: response.headers.length,
                        itemBuilder: (context, index) {
                          final key = response.headers.keys.elementAt(index);
                          final val = response.headers[key];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SelectableText(
                                  '$key: ',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Color(0xFF6366F1),
                                  ),
                                ),
                                Expanded(
                                  child: SelectableText(
                                    val ?? '',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatDuration(int ms) {
    if (ms >= 1000) {
      return '${(ms / 1000).toStringAsFixed(2)} s';
    }
    return '$ms ms';
  }

  String _formatSize(int bytes) {
    if (bytes >= 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(2)} MB';
    } else if (bytes >= 1024) {
      return '${(bytes / 1024).toStringAsFixed(2)} KB';
    }
    return '$bytes B';
  }
}
