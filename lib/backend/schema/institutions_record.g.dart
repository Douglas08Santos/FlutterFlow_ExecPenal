// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'institutions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InstitutionsRecord> _$institutionsRecordSerializer =
    new _$InstitutionsRecordSerializer();

class _$InstitutionsRecordSerializer
    implements StructuredSerializer<InstitutionsRecord> {
  @override
  final Iterable<Type> types = const [InstitutionsRecord, _$InstitutionsRecord];
  @override
  final String wireName = 'InstitutionsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, InstitutionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(AddressStruct)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phones;
    if (value != null) {
      result
        ..add('phones')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PhoneStruct)])));
    }
    value = object.emails;
    if (value != null) {
      result
        ..add('emails')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CustomEmailStruct)])));
    }
    value = object.voluntaries;
    if (value != null) {
      result
        ..add('voluntaries')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  InstitutionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InstitutionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phones':
          result.phones.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PhoneStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'emails':
          result.emails.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CustomEmailStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(AddressStruct))! as AddressStruct);
          break;
        case 'voluntaries':
          result.voluntaries.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$InstitutionsRecord extends InstitutionsRecord {
  @override
  final String? name;
  @override
  final BuiltList<PhoneStruct>? phones;
  @override
  final BuiltList<CustomEmailStruct>? emails;
  @override
  final AddressStruct address;
  @override
  final BuiltList<DocumentReference<Object?>>? voluntaries;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$InstitutionsRecord(
          [void Function(InstitutionsRecordBuilder)? updates]) =>
      (new InstitutionsRecordBuilder()..update(updates))._build();

  _$InstitutionsRecord._(
      {this.name,
      this.phones,
      this.emails,
      required this.address,
      this.voluntaries,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        address, r'InstitutionsRecord', 'address');
  }

  @override
  InstitutionsRecord rebuild(
          void Function(InstitutionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstitutionsRecordBuilder toBuilder() =>
      new InstitutionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstitutionsRecord &&
        name == other.name &&
        phones == other.phones &&
        emails == other.emails &&
        address == other.address &&
        voluntaries == other.voluntaries &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, name.hashCode), phones.hashCode),
                    emails.hashCode),
                address.hashCode),
            voluntaries.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstitutionsRecord')
          ..add('name', name)
          ..add('phones', phones)
          ..add('emails', emails)
          ..add('address', address)
          ..add('voluntaries', voluntaries)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class InstitutionsRecordBuilder
    implements Builder<InstitutionsRecord, InstitutionsRecordBuilder> {
  _$InstitutionsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<PhoneStruct>? _phones;
  ListBuilder<PhoneStruct> get phones =>
      _$this._phones ??= new ListBuilder<PhoneStruct>();
  set phones(ListBuilder<PhoneStruct>? phones) => _$this._phones = phones;

  ListBuilder<CustomEmailStruct>? _emails;
  ListBuilder<CustomEmailStruct> get emails =>
      _$this._emails ??= new ListBuilder<CustomEmailStruct>();
  set emails(ListBuilder<CustomEmailStruct>? emails) => _$this._emails = emails;

  AddressStructBuilder? _address;
  AddressStructBuilder get address =>
      _$this._address ??= new AddressStructBuilder();
  set address(AddressStructBuilder? address) => _$this._address = address;

  ListBuilder<DocumentReference<Object?>>? _voluntaries;
  ListBuilder<DocumentReference<Object?>> get voluntaries =>
      _$this._voluntaries ??= new ListBuilder<DocumentReference<Object?>>();
  set voluntaries(ListBuilder<DocumentReference<Object?>>? voluntaries) =>
      _$this._voluntaries = voluntaries;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  InstitutionsRecordBuilder() {
    InstitutionsRecord._initializeBuilder(this);
  }

  InstitutionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _phones = $v.phones?.toBuilder();
      _emails = $v.emails?.toBuilder();
      _address = $v.address.toBuilder();
      _voluntaries = $v.voluntaries?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstitutionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstitutionsRecord;
  }

  @override
  void update(void Function(InstitutionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstitutionsRecord build() => _build();

  _$InstitutionsRecord _build() {
    _$InstitutionsRecord _$result;
    try {
      _$result = _$v ??
          new _$InstitutionsRecord._(
              name: name,
              phones: _phones?.build(),
              emails: _emails?.build(),
              address: address.build(),
              voluntaries: _voluntaries?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'phones';
        _phones?.build();
        _$failedField = 'emails';
        _emails?.build();
        _$failedField = 'address';
        address.build();
        _$failedField = 'voluntaries';
        _voluntaries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstitutionsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
