// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddressStruct> _$addressStructSerializer =
    new _$AddressStructSerializer();

class _$AddressStructSerializer implements StructuredSerializer<AddressStruct> {
  @override
  final Iterable<Type> types = const [AddressStruct, _$AddressStruct];
  @override
  final String wireName = 'AddressStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, AddressStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.street;
    if (value != null) {
      result
        ..add('street')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.number;
    if (value != null) {
      result
        ..add('number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.district;
    if (value != null) {
      result
        ..add('district')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.zip;
    if (value != null) {
      result
        ..add('zip')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    return result;
  }

  @override
  AddressStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'district':
          result.district = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'zip':
          result.zip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
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

class _$AddressStruct extends AddressStruct {
  @override
  final String? street;
  @override
  final int? number;
  @override
  final String? district;
  @override
  final String? city;
  @override
  final String? zip;
  @override
  final String? state;
  @override
  final LatLng? location;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$AddressStruct([void Function(AddressStructBuilder)? updates]) =>
      (new AddressStructBuilder()..update(updates))._build();

  _$AddressStruct._(
      {this.street,
      this.number,
      this.district,
      this.city,
      this.zip,
      this.state,
      this.location,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'AddressStruct', 'firestoreUtilData');
  }

  @override
  AddressStruct rebuild(void Function(AddressStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressStructBuilder toBuilder() => new AddressStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressStruct &&
        street == other.street &&
        number == other.number &&
        district == other.district &&
        city == other.city &&
        zip == other.zip &&
        state == other.state &&
        location == other.location &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, street.hashCode), number.hashCode),
                            district.hashCode),
                        city.hashCode),
                    zip.hashCode),
                state.hashCode),
            location.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddressStruct')
          ..add('street', street)
          ..add('number', number)
          ..add('district', district)
          ..add('city', city)
          ..add('zip', zip)
          ..add('state', state)
          ..add('location', location)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class AddressStructBuilder
    implements Builder<AddressStruct, AddressStructBuilder> {
  _$AddressStruct? _$v;

  String? _street;
  String? get street => _$this._street;
  set street(String? street) => _$this._street = street;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  String? _district;
  String? get district => _$this._district;
  set district(String? district) => _$this._district = district;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _zip;
  String? get zip => _$this._zip;
  set zip(String? zip) => _$this._zip = zip;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  AddressStructBuilder() {
    AddressStruct._initializeBuilder(this);
  }

  AddressStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _street = $v.street;
      _number = $v.number;
      _district = $v.district;
      _city = $v.city;
      _zip = $v.zip;
      _state = $v.state;
      _location = $v.location;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddressStruct;
  }

  @override
  void update(void Function(AddressStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddressStruct build() => _build();

  _$AddressStruct _build() {
    final _$result = _$v ??
        new _$AddressStruct._(
            street: street,
            number: number,
            district: district,
            city: city,
            zip: zip,
            state: state,
            location: location,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'AddressStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
