// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PhoneStruct> _$phoneStructSerializer = new _$PhoneStructSerializer();

class _$PhoneStructSerializer implements StructuredSerializer<PhoneStruct> {
  @override
  final Iterable<Type> types = const [PhoneStruct, _$PhoneStruct];
  @override
  final String wireName = 'PhoneStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, PhoneStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.number;
    if (value != null) {
      result
        ..add('number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('is_active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  PhoneStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhoneStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_active':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$PhoneStruct extends PhoneStruct {
  @override
  final String? number;
  @override
  final bool? isActive;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$PhoneStruct([void Function(PhoneStructBuilder)? updates]) =>
      (new PhoneStructBuilder()..update(updates))._build();

  _$PhoneStruct._({this.number, this.isActive, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'PhoneStruct', 'firestoreUtilData');
  }

  @override
  PhoneStruct rebuild(void Function(PhoneStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhoneStructBuilder toBuilder() => new PhoneStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhoneStruct &&
        number == other.number &&
        isActive == other.isActive &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, number.hashCode), isActive.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PhoneStruct')
          ..add('number', number)
          ..add('isActive', isActive)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class PhoneStructBuilder implements Builder<PhoneStruct, PhoneStructBuilder> {
  _$PhoneStruct? _$v;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  PhoneStructBuilder() {
    PhoneStruct._initializeBuilder(this);
  }

  PhoneStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _isActive = $v.isActive;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhoneStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PhoneStruct;
  }

  @override
  void update(void Function(PhoneStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PhoneStruct build() => _build();

  _$PhoneStruct _build() {
    final _$result = _$v ??
        new _$PhoneStruct._(
            number: number,
            isActive: isActive,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'PhoneStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
