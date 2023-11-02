import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _FirstValue = false;
  bool get FirstValue => _FirstValue;
  set FirstValue(bool _value) {
    _FirstValue = _value;
  }

  bool _search = false;
  bool get search => _search;
  set search(bool _value) {
    _search = _value;
  }

  String _searchedUser = '';
  String get searchedUser => _searchedUser;
  set searchedUser(String _value) {
    _searchedUser = _value;
  }

  String _searchedUserEmail = '';
  String get searchedUserEmail => _searchedUserEmail;
  set searchedUserEmail(String _value) {
    _searchedUserEmail = _value;
  }

  bool _messageCreated = false;
  bool get messageCreated => _messageCreated;
  set messageCreated(bool _value) {
    _messageCreated = _value;
  }

  String _machedChatId = '';
  String get machedChatId => _machedChatId;
  set machedChatId(String _value) {
    _machedChatId = _value;
  }

  bool _error = false;
  bool get error => _error;
  set error(bool _value) {
    _error = _value;
  }

  bool _errorCreateAccount = false;
  bool get errorCreateAccount => _errorCreateAccount;
  set errorCreateAccount(bool _value) {
    _errorCreateAccount = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
