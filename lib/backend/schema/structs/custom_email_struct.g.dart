// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_email_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CustomEmailStruct> _$customEmailStructSerializer =
    new _$CustomEmailStructSerializer();

class _$CustomEmailStructSerializer
    implements StructuredSerializer<CustomEmailStruct> {
  @override
  final Iterable<Type> types = const [CustomEmailStruct, _$CustomEmailStruct];
  @override
  final String wireName = 'CustomEmailStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, CustomEmailStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
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
  CustomEmailStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CustomEmailStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
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

class _$CustomEmailStruct extends CustomEmailStruct {
  @override
  final String? email;
  @override
  final bool? isActive;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$CustomEmailStruct(
          [void Function(CustomEmailStructBuilder)? updates]) =>
      (new CustomEmailStructBuilder()..update(updates))._build();

  _$CustomEmailStruct._(
      {this.email, this.isActive, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'CustomEmailStruct', 'firestoreUtilData');
  }

  @override
  CustomEmailStruct rebuild(void Function(CustomEmailStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomEmailStructBuilder toBuilder() =>
      new CustomEmailStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomEmailStruct &&
        email == other.email &&
        isActive == other.isActive &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, email.hashCode), isActive.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomEmailStruct')
          ..add('email', email)
          ..add('isActive', isActive)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class CustomEmailStructBuilder
    implements Builder<CustomEmailStruct, CustomEmailStructBuilder> {
  _$CustomEmailStruct? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  CustomEmailStructBuilder() {
    CustomEmailStruct._initializeBuilder(this);
  }

  CustomEmailStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _isActive = $v.isActive;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomEmailStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CustomEmailStruct;
  }

  @override
  void update(void Function(CustomEmailStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomEmailStruct build() => _build();

  _$CustomEmailStruct _build() {
    final _$result = _$v ??
        new _$CustomEmailStruct._(
            email: email,
            isActive: isActive,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'CustomEmailStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
