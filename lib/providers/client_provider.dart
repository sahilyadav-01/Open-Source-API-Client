import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/request_item.dart';
import '../services/api_service.dart';

class KeyValueItem {
  String key;
  String value;
  bool isEnabled;

  KeyValueItem({this.key = '', this.value = '', this.isEnabled = true});
}

class ClientProvider with ChangeNotifier {
  String _method = 'GET';
  String _url = 'https://jsonplaceholder.typicode.com/posts/1';
  List<KeyValueItem> _headers = [
    KeyValueItem(key: 'Accept', value: '*/*'),
  ];
  List<KeyValueItem> _params = [];
  String _body = '';
  bool _isLoading = false;
  ResponseItem? _currentResponse;
  List<RequestItem> _history = [];

  ClientProvider() {
    loadHistory();
  }

  // Getters
  String get method => _method;
  String get url => _url;
  List<KeyValueItem> get headers => _headers;
  List<KeyValueItem> get params => _params;
  String get body => _body;
  bool get isLoading => _isLoading;
  ResponseItem? get currentResponse => _currentResponse;
  List<RequestItem> get history => _history;

  // Setters & state mutators
  void setMethod(String val) {
    _method = val;
    notifyListeners();
  }

  void setUrl(String val) {
    _url = val;
    notifyListeners();
  }

  void setBody(String val) {
    _body = val;
    notifyListeners();
  }

  void addHeader() {
    _headers.add(KeyValueItem());
    notifyListeners();
  }

  void removeHeader(int index) {
    if (_headers.length > index) {
      _headers.removeAt(index);
      notifyListeners();
    }
  }

  void updateHeader(int index, {String? key, String? value, bool? isEnabled}) {
    if (_headers.length > index) {
      if (key != null) _headers[index].key = key;
      if (value != null) _headers[index].value = value;
      if (isEnabled != null) _headers[index].isEnabled = isEnabled;
      notifyListeners();
    }
  }

  void addParam() {
    _params.add(KeyValueItem());
    notifyListeners();
  }

  void removeParam(int index) {
    if (_params.length > index) {
      _params.removeAt(index);
      notifyListeners();
    }
  }

  void updateParam(int index, {String? key, String? value, bool? isEnabled}) {
    if (_params.length > index) {
      if (key != null) _params[index].key = key;
      if (value != null) _params[index].value = value;
      if (isEnabled != null) _params[index].isEnabled = isEnabled;
      notifyListeners();
    }
  }

  void clearResponse() {
    _currentResponse = null;
    notifyListeners();
  }

  // Helper to construct a RequestItem from current state
  RequestItem get _currentRequestItem {
    final Map<String, String> headersMap = {};
    for (var item in _headers) {
      if (item.isEnabled && item.key.trim().isNotEmpty) {
        headersMap[item.key.trim()] = item.value;
      }
    }

    final Map<String, String> paramsMap = {};
    for (var item in _params) {
      if (item.isEnabled && item.key.trim().isNotEmpty) {
        paramsMap[item.key.trim()] = item.value;
      }
    }

    return RequestItem(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      method: _method,
      url: _url,
      headers: headersMap,
      params: paramsMap,
      body: _body,
    );
  }

  // Load a historic request into the editor
  void loadRequest(RequestItem item) {
    _method = item.method;
    _url = item.url;
    _body = item.body;
    _currentResponse = item.response;

    _headers = item.headers.entries.map((e) => KeyValueItem(key: e.key, value: e.value)).toList();
    _params = item.params.entries.map((e) => KeyValueItem(key: e.key, value: e.value)).toList();

    notifyListeners();
  }

  // Execute request
  Future<void> sendRequest() async {
    _isLoading = true;
    _currentResponse = null;
    notifyListeners();

    final req = _currentRequestItem;
    final res = await ApiService.sendRequest(req);

    _currentResponse = res;
    _isLoading = false;

    // Add to history with response
    final historyItem = req.copyWith(response: res);
    
    // Check if duplicate (same url, method, body, headers, params), remove old one if exists to keep list clean
    _history.removeWhere((item) => 
      item.url == historyItem.url && 
      item.method == historyItem.method && 
      item.body == historyItem.body
    );
    
    _history.insert(0, historyItem);
    saveHistory();
    notifyListeners();
  }

  // History persistence
  Future<void> loadHistory() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? historyJson = prefs.getString('api_history');
      if (historyJson != null) {
        final List<dynamic> list = json.decode(historyJson);
        _history = list.map((item) => RequestItem.fromJson(item as Map<String, dynamic>)).toList();
        notifyListeners();
      }
    } catch (e) {
      debugPrint('Error loading history: $e');
    }
  }

  Future<void> saveHistory() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String historyJson = json.encode(_history.map((item) => item.toJson()).toList());
      await prefs.setString('api_history', historyJson);
    } catch (e) {
      debugPrint('Error saving history: $e');
    }
  }

  Future<void> clearHistory() async {
    _history.clear();
    saveHistory();
    notifyListeners();
  }

  void deleteHistoryItem(String id) {
    _history.removeWhere((item) => item.id == id);
    saveHistory();
    notifyListeners();
  }
}
