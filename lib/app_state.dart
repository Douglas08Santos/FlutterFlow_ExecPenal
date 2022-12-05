import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _getInputData = prefs.getBool('ff_getInputData') ?? _getInputData;
    _inTime = prefs.containsKey('ff_inTime')
        ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_inTime')!)
        : null;
    _outTime = prefs.containsKey('ff_outTime')
        ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_outTime')!)
        : null;
    _currLocalOut =
        _latLngFromString(prefs.getString('ff_currLocalOut')) ?? _currLocalOut;
    _currLocalIn =
        _latLngFromString(prefs.getString('ff_currLocalIn')) ?? _currLocalIn;
  }

  late SharedPreferences prefs;

  DateTime? selectedDate = DateTime.fromMillisecondsSinceEpoch(1670220000000);

  bool _getInputData = false;
  bool get getInputData => _getInputData;
  set getInputData(bool _value) {
    _getInputData = _value;
    prefs.setBool('ff_getInputData', _value);
  }

  DateTime? _inTime = DateTime.fromMillisecondsSinceEpoch(1670220000000);
  DateTime? get inTime => _inTime;
  set inTime(DateTime? _value) {
    if (_value == null) {
      return;
    }
    _inTime = _value;
    prefs.setInt('ff_inTime', _value.millisecondsSinceEpoch);
  }

  DateTime? _outTime = DateTime.fromMillisecondsSinceEpoch(1670220000000);
  DateTime? get outTime => _outTime;
  set outTime(DateTime? _value) {
    if (_value == null) {
      return;
    }
    _outTime = _value;
    prefs.setInt('ff_outTime', _value.millisecondsSinceEpoch);
  }

  LatLng? _currLocalOut = LatLng(-15.7975154, -47.89188739999999);
  LatLng? get currLocalOut => _currLocalOut;
  set currLocalOut(LatLng? _value) {
    if (_value == null) {
      return;
    }
    _currLocalOut = _value;
    prefs.setString('ff_currLocalOut', _value.serialize());
  }

  LatLng? _currLocalIn = LatLng(-15.7975154, -47.89188739999999);
  LatLng? get currLocalIn => _currLocalIn;
  set currLocalIn(LatLng? _value) {
    if (_value == null) {
      return;
    }
    _currLocalIn = _value;
    prefs.setString('ff_currLocalIn', _value.serialize());
  }

  String testPhoto = '';

  String inPhoto = '';

  String outPhoto = '';
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
