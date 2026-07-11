import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/client_provider.dart';

class RequestEditor extends StatefulWidget {
  const RequestEditor({super.key});

  @override
  State<RequestEditor> createState() => _RequestEditorState();
}

class _RequestEditorState extends State<RequestEditor> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late TextEditingController _bodyController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    final provider = Provider.of<ClientProvider>(context, listen: false);
    _bodyController = TextEditingController(text: provider.body);
    _bodyController.addListener(() {
      provider.setBody(_bodyController.text);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ClientProvider>(context);

    // Sync body if updated from history
    if (_bodyController.text != provider.body) {
      _bodyController.text = provider.body;
    }

    final isBodySupported = provider.method != 'GET' && provider.method != 'HEAD';

    return Card(
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Params'),
              Tab(text: 'Headers'),
              Tab(text: 'Body'),
            ],
            indicatorColor: const Color(0xFF6366F1),
            labelColor: const Color(0xFF6366F1),
            unselectedLabelColor: Colors.grey,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Params Tab
                _buildKeyValueList(
                  items: provider.params,
                  onAdd: provider.addParam,
                  onDelete: provider.removeParam,
                  onKeyChanged: (index, val) => provider.updateParam(index, key: val),
                  onValueChanged: (index, val) => provider.updateParam(index, value: val),
                  onToggle: (index, val) => provider.updateParam(index, isEnabled: val),
                  emptyMessage: 'No query parameters added yet.',
                ),
                // Headers Tab
                _buildKeyValueList(
                  items: provider.headers,
                  onAdd: provider.addHeader,
                  onDelete: provider.removeHeader,
                  onKeyChanged: (index, val) => provider.updateHeader(index, key: val),
                  onValueChanged: (index, val) => provider.updateHeader(index, value: val),
                  onToggle: (index, val) => provider.updateHeader(index, isEnabled: val),
                  emptyMessage: 'No headers added yet.',
                ),
                // Body Tab
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: isBodySupported
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              'Request Body (JSON / Raw Text)',
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),
                            ),
                            const SizedBox(height: 8),
                            Expanded(
                              child: TextField(
                                controller: _bodyController,
                                maxLines: null,
                                minLines: 15,
                                keyboardType: TextInputType.multiline,
                                decoration: const InputDecoration(
                                  hintText: '{\n  "key": "value"\n}',
                                  alignLabelWithHint: true,
                                ),
                                style: const TextStyle(
                                  fontFamily: 'monospace',
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        )
                      : Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.info_outline, size: 48, color: Colors.grey[600]),
                              const SizedBox(height: 12),
                              Text(
                                '${provider.method} requests do not support a request body.',
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildKeyValueList({
    required List<KeyValueItem> items,
    required VoidCallback onAdd,
    required Function(int) onDelete,
    required Function(int, String) onKeyChanged,
    required Function(int, String) onValueChanged,
    required Function(int, bool) onToggle,
    required String emptyMessage,
  }) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Items (${items.length})',
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              TextButton.icon(
                onPressed: onAdd,
                icon: const Icon(Icons.add, size: 16),
                label: const Text('Add Row'),
                style: TextButton.styleFrom(
                  foregroundColor: const Color(0xFF6366F1),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Expanded(
            child: items.isEmpty
                ? Center(
                    child: Text(
                      emptyMessage,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  )
                : ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return KeyValueRow(
                        key: ValueKey(item), // keeps state stable across insertions/deletions
                        item: item,
                        onDelete: () => onDelete(index),
                        onKeyChanged: (val) => onKeyChanged(index, val),
                        onValueChanged: (val) => onValueChanged(index, val),
                        onToggleEnabled: (val) => onToggle(index, val),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class KeyValueRow extends StatefulWidget {
  final KeyValueItem item;
  final VoidCallback onDelete;
  final Function(String) onKeyChanged;
  final Function(String) onValueChanged;
  final Function(bool) onToggleEnabled;

  const KeyValueRow({
    super.key,
    required this.item,
    required this.onDelete,
    required this.onKeyChanged,
    required this.onValueChanged,
    required this.onToggleEnabled,
  });

  @override
  State<KeyValueRow> createState() => _KeyValueRowState();
}

class _KeyValueRowState extends State<KeyValueRow> {
  late TextEditingController _keyController;
  late TextEditingController _valueController;

  @override
  void initState() {
    super.initState();
    _keyController = TextEditingController(text: widget.item.key);
    _valueController = TextEditingController(text: widget.item.value);
  }

  @override
  void didUpdateWidget(covariant KeyValueRow oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.item.key != widget.item.key && _keyController.text != widget.item.key) {
      _keyController.text = widget.item.key;
    }
    if (oldWidget.item.value != widget.item.value && _valueController.text != widget.item.value) {
      _valueController.text = widget.item.value;
    }
  }

  @override
  void dispose() {
    _keyController.dispose();
    _valueController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Checkbox(
            value: widget.item.isEnabled,
            onChanged: (val) {
              if (val != null) widget.onToggleEnabled(val);
            },
            activeColor: const Color(0xFF6366F1),
          ),
          Expanded(
            child: TextField(
              controller: _keyController,
              decoration: const InputDecoration(
                hintText: 'Key',
                contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              ),
              style: const TextStyle(fontSize: 13, fontFamily: 'monospace'),
              onChanged: widget.onKeyChanged,
            ),
          ),
          const SizedBox(width: 8),
          const Text(':', style: TextStyle(color: Colors.grey)),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: _valueController,
              decoration: const InputDecoration(
                hintText: 'Value',
                contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              ),
              style: const TextStyle(fontSize: 13, fontFamily: 'monospace'),
              onChanged: widget.onValueChanged,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close, size: 18, color: Colors.redAccent),
            onPressed: widget.onDelete,
          ),
        ],
      ),
    );
  }
}
