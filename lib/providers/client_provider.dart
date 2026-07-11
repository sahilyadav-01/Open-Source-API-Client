import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/key_value_item.dart';
import '../models/request_item.dart';
import '../services/api_service.dart';
import '../services/database_service.dart';

part 'client_provider.freezed.dart';
part 'client_provider.g.dart';

@freezed
class ClientState with _$ClientState {
  const factory ClientState({
    @Default('GET') String method,
    @Default('https://jsonplaceholder.typicode.com/posts/1') String url,
    @Default([KeyValueItem(key: 'Accept', value: '*/*')]) List<KeyValueItem> headers,
    @Default([]) List<KeyValueItem> params,
    @Default('') String body,
    @Default(false) bool isLoading,
    ResponseItem? currentResponse,
    @Default([]) List<RequestItem> history,
  }) = _ClientState;
}

@riverpod
class Client extends _$Client {
  @override
  ClientState build() {
    // Load history asynchronously
    _loadHistory();
    return const ClientState();
  }

  Future<void> _loadHistory() async {
    final history = await DatabaseService.getHistory();
    state = state.copyWith(history: history);
  }

  void setMethod(String val) {
    state = state.copyWith(method: val);
  }

  void setUrl(String val) {
    state = state.copyWith(url: val);
  }

  void setBody(String val) {
    state = state.copyWith(body: val);
  }

  void addHeader() {
    state = state.copyWith(headers: [...state.headers, const KeyValueItem()]);
  }

  void removeHeader(int index) {
    if (state.headers.length > index) {
      final updated = List<KeyValueItem>.from(state.headers)..removeAt(index);
      state = state.copyWith(headers: updated);
    }
  }

  void updateHeader(int index, {String? key, String? value, bool? isEnabled}) {
    if (state.headers.length > index) {
      final updated = List<KeyValueItem>.from(state.headers);
      final current = updated[index];
      updated[index] = current.copyWith(
        key: key ?? current.key,
        value: value ?? current.value,
        isEnabled: isEnabled ?? current.isEnabled,
      );
      state = state.copyWith(headers: updated);
    }
  }

  void addParam() {
    state = state.copyWith(params: [...state.params, const KeyValueItem()]);
  }

  void removeParam(int index) {
    if (state.params.length > index) {
      final updated = List<KeyValueItem>.from(state.params)..removeAt(index);
      state = state.copyWith(params: updated);
    }
  }

  void updateParam(int index, {String? key, String? value, bool? isEnabled}) {
    if (state.params.length > index) {
      final updated = List<KeyValueItem>.from(state.params);
      final current = updated[index];
      updated[index] = current.copyWith(
        key: key ?? current.key,
        value: value ?? current.value,
        isEnabled: isEnabled ?? current.isEnabled,
      );
      state = state.copyWith(params: updated);
    }
  }

  void clearResponse() {
    state = state.copyWith(currentResponse: null);
  }

  // Construct request item from active state
  RequestItem get _currentRequestItem {
    final Map<String, String> headersMap = {};
    for (var item in state.headers) {
      if (item.isEnabled && item.key.trim().isNotEmpty) {
        headersMap[item.key.trim()] = item.value;
      }
    }

    final Map<String, String> paramsMap = {};
    for (var item in state.params) {
      if (item.isEnabled && item.key.trim().isNotEmpty) {
        paramsMap[item.key.trim()] = item.value;
      }
    }

    return RequestItem(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      method: state.method,
      url: state.url,
      headers: headersMap,
      params: paramsMap,
      body: state.body,
    );
  }

  // Load a historic request into the editor
  void loadRequest(RequestItem item) {
    final List<KeyValueItem> newHeaders = item.headers.entries
        .map((e) => KeyValueItem(key: e.key, value: e.value))
        .toList();
    final List<KeyValueItem> newParams = item.params.entries
        .map((e) => KeyValueItem(key: e.key, value: e.value))
        .toList();

    state = state.copyWith(
      method: item.method,
      url: item.url,
      body: item.body,
      headers: newHeaders,
      params: newParams,
      currentResponse: item.response,
    );
  }

  // Execute request
  Future<void> sendRequest() async {
    state = state.copyWith(isLoading: true, currentResponse: null);

    final req = _currentRequestItem;
    final res = await ApiService.sendRequest(req);

    // Save history item with response
    final historyItem = req.copyWith(response: res);
    await DatabaseService.saveRequest(historyItem);

    // Reload history list from DB
    final history = await DatabaseService.getHistory();

    state = state.copyWith(
      currentResponse: res,
      isLoading: false,
      history: history,
    );
  }

  Future<void> clearHistory() async {
    await DatabaseService.clearHistory();
    state = state.copyWith(history: []);
  }

  Future<void> deleteHistoryItem(String id) async {
    final parsedId = int.tryParse(id);
    if (parsedId != null) {
      await DatabaseService.deleteItem(parsedId);
      final history = await DatabaseService.getHistory();
      state = state.copyWith(history: history);
    }
  }
}
