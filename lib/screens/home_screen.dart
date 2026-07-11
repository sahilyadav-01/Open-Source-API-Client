import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/client_provider.dart';
import '../widgets/request_editor.dart';
import '../widgets/response_viewer.dart';
import '../widgets/history_sidebar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _urlController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Synchronize URL field with provider
    final provider = Provider.of<ClientProvider>(context, listen: false);
    _urlController.text = provider.url;
    _urlController.addListener(() {
      provider.setUrl(_urlController.text);
    });
  }

  @override
  void dispose() {
    _urlController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ClientProvider>(context);

    // Sync input controller value if it was loaded from history
    if (_urlController.text != provider.url) {
      _urlController.text = provider.url;
    }

    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isLargeScreen = screenWidth >= 800;
    final bool isDualPaneHorizontal = screenWidth >= 1200;

    final Widget mainContent = Column(
      children: [
        // HTTP Request bar
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Method dropdown
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFF0B1220),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xFF334155)),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: provider.method,
                    onChanged: provider.isLoading
                        ? null
                        : (val) {
                            if (val != null) provider.setMethod(val);
                          },
                    items: ['GET', 'POST', 'PUT', 'DELETE', 'PATCH', 'HEAD']
                        .map((method) => DropdownMenuItem(
                              value: method,
                              child: Text(
                                method,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: _getMethodColor(method),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // URL input field
              Expanded(
                child: TextField(
                  controller: _urlController,
                  enabled: !provider.isLoading,
                  decoration: const InputDecoration(
                    hintText: 'Enter API URL (e.g. jsonplaceholder.typicode.com/posts)',
                    prefixIcon: Icon(Icons.link, color: Color(0xFF94A3B8)),
                  ),
                  style: const TextStyle(fontFamily: 'monospace', fontSize: 14),
                  onSubmitted: (_) {
                    if (!provider.isLoading) provider.sendRequest();
                  },
                ),
              ),
              const SizedBox(width: 12),
              // Send/Cancel button
              SizedBox(
                height: 48,
                child: ElevatedButton.icon(
                  onPressed: provider.isLoading ? null : () => provider.sendRequest(),
                  icon: provider.isLoading
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        )
                      : const Icon(Icons.send, size: 16),
                  label: Text(provider.isLoading ? 'Sending...' : 'Send'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6366F1),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(height: 1),
        // Panes (Request Editor and Response Viewer)
        Expanded(
          child: isDualPaneHorizontal
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Expanded(flex: 5, child: RequestEditor()),
                    const VerticalDivider(width: 1, thickness: 1),
                    const Expanded(flex: 5, child: ResponseViewer()),
                  ],
                )
              : Column(
                  children: [
                    const Expanded(flex: 5, child: RequestEditor()),
                    const Divider(height: 1, thickness: 1),
                    const Expanded(flex: 5, child: ResponseViewer()),
                  ],
                ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Icon(Icons.bolt, color: Color(0xFF6366F1)),
            const SizedBox(width: 8),
            const Text(
              'ANTIGRAVITY',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                letterSpacing: 1.5,
                fontSize: 18,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              'API Client',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF0B1220),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_outline),
            tooltip: 'Clear Current Request',
            onPressed: () {
              provider.setUrl('https://jsonplaceholder.typicode.com/posts/1');
              provider.setMethod('GET');
              provider.setBody('');
              provider.clearResponse();
            },
          ),
        ],
      ),
      drawer: isLargeScreen ? null : const Drawer(child: HistorySidebar()),
      body: isLargeScreen
          ? Row(
              children: [
                const SizedBox(
                  width: 280,
                  child: HistorySidebar(),
                ),
                const VerticalDivider(width: 1, thickness: 1),
                Expanded(child: mainContent),
              ],
            )
          : mainContent,
    );
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
