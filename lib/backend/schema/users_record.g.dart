// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('first_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('last_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nationalId;
    if (value != null) {
      result
        ..add('national_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastLogin;
    if (value != null) {
      result
        ..add('last_login')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isStaff;
    if (value != null) {
      result
        ..add('is_staff')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isActivate;
    if (value != null) {
      result
        ..add('is_activate')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isVoluntary;
    if (value != null) {
      result
        ..add('is_voluntary')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isAccountable;
    if (value != null) {
      result
        ..add('is_accountable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.phones;
    if (value != null) {
      result
        ..add('phones')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PhoneStruct)])));
    }
    value = object.institution;
    if (value != null) {
      result
        ..add('institution')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

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
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'first_name':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last_name':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'national_id':
          result.nationalId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last_login':
          result.lastLogin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_staff':
          result.isStaff = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'is_activate':
          result.isActivate = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'is_voluntary':
          result.isVoluntary = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'is_accountable':
          result.isAccountable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'phones':
          result.phones.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PhoneStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'institution':
          result.institution = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? nationalId;
  @override
  final String? lastLogin;
  @override
  final String? displayName;
  @override
  final bool? isStaff;
  @override
  final bool? isActivate;
  @override
  final bool? isVoluntary;
  @override
  final bool? isAccountable;
  @override
  final BuiltList<PhoneStruct>? phones;
  @override
  final DocumentReference<Object?>? institution;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.firstName,
      this.lastName,
      this.nationalId,
      this.lastLogin,
      this.displayName,
      this.isStaff,
      this.isActivate,
      this.isVoluntary,
      this.isAccountable,
      this.phones,
      this.institution,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        nationalId == other.nationalId &&
        lastLogin == other.lastLogin &&
        displayName == other.displayName &&
        isStaff == other.isStaff &&
        isActivate == other.isActivate &&
        isVoluntary == other.isVoluntary &&
        isAccountable == other.isAccountable &&
        phones == other.phones &&
        institution == other.institution &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        email
                                                                            .hashCode),
                                                                    photoUrl
                                                                        .hashCode),
                                                                uid.hashCode),
                                                            createdTime
                                                                .hashCode),
                                                        phoneNumber.hashCode),
                                                    firstName.hashCode),
                                                lastName.hashCode),
                                            nationalId.hashCode),
                                        lastLogin.hashCode),
                                    displayName.hashCode),
                                isStaff.hashCode),
                            isActivate.hashCode),
                        isVoluntary.hashCode),
                    isAccountable.hashCode),
                phones.hashCode),
            institution.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('nationalId', nationalId)
          ..add('lastLogin', lastLogin)
          ..add('displayName', displayName)
          ..add('isStaff', isStaff)
          ..add('isActivate', isActivate)
          ..add('isVoluntary', isVoluntary)
          ..add('isAccountable', isAccountable)
          ..add('phones', phones)
          ..add('institution', institution)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _nationalId;
  String? get nationalId => _$this._nationalId;
  set nationalId(String? nationalId) => _$this._nationalId = nationalId;

  String? _lastLogin;
  String? get lastLogin => _$this._lastLogin;
  set lastLogin(String? lastLogin) => _$this._lastLogin = lastLogin;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  bool? _isStaff;
  bool? get isStaff => _$this._isStaff;
  set isStaff(bool? isStaff) => _$this._isStaff = isStaff;

  bool? _isActivate;
  bool? get isActivate => _$this._isActivate;
  set isActivate(bool? isActivate) => _$this._isActivate = isActivate;

  bool? _isVoluntary;
  bool? get isVoluntary => _$this._isVoluntary;
  set isVoluntary(bool? isVoluntary) => _$this._isVoluntary = isVoluntary;

  bool? _isAccountable;
  bool? get isAccountable => _$this._isAccountable;
  set isAccountable(bool? isAccountable) =>
      _$this._isAccountable = isAccountable;

  ListBuilder<PhoneStruct>? _phones;
  ListBuilder<PhoneStruct> get phones =>
      _$this._phones ??= new ListBuilder<PhoneStruct>();
  set phones(ListBuilder<PhoneStruct>? phones) => _$this._phones = phones;

  DocumentReference<Object?>? _institution;
  DocumentReference<Object?>? get institution => _$this._institution;
  set institution(DocumentReference<Object?>? institution) =>
      _$this._institution = institution;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _nationalId = $v.nationalId;
      _lastLogin = $v.lastLogin;
      _displayName = $v.displayName;
      _isStaff = $v.isStaff;
      _isActivate = $v.isActivate;
      _isVoluntary = $v.isVoluntary;
      _isAccountable = $v.isAccountable;
      _phones = $v.phones?.toBuilder();
      _institution = $v.institution;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              email: email,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              firstName: firstName,
              lastName: lastName,
              nationalId: nationalId,
              lastLogin: lastLogin,
              displayName: displayName,
              isStaff: isStaff,
              isActivate: isActivate,
              isVoluntary: isVoluntary,
              isAccountable: isAccountable,
              phones: _phones?.build(),
              institution: institution,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'phones';
        _phones?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
