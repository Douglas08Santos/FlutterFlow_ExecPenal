import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'first_name')
  String? get firstName;

  @BuiltValueField(wireName: 'last_name')
  String? get lastName;

  @BuiltValueField(wireName: 'national_id')
  String? get nationalId;

  @BuiltValueField(wireName: 'last_login')
  String? get lastLogin;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'is_staff')
  bool? get isStaff;

  @BuiltValueField(wireName: 'is_activate')
  bool? get isActivate;

  @BuiltValueField(wireName: 'is_voluntary')
  bool? get isVoluntary;

  @BuiltValueField(wireName: 'is_accountable')
  bool? get isAccountable;

  BuiltList<PhoneStruct>? get phones;

  DocumentReference? get institution;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..firstName = ''
    ..lastName = ''
    ..nationalId = ''
    ..lastLogin = ''
    ..displayName = ''
    ..isStaff = false
    ..isActivate = false
    ..isVoluntary = false
    ..isAccountable = false
    ..phones = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? firstName,
  String? lastName,
  String? nationalId,
  String? lastLogin,
  String? displayName,
  bool? isStaff,
  bool? isActivate,
  bool? isVoluntary,
  bool? isAccountable,
  DocumentReference? institution,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..firstName = firstName
        ..lastName = lastName
        ..nationalId = nationalId
        ..lastLogin = lastLogin
        ..displayName = displayName
        ..isStaff = isStaff
        ..isActivate = isActivate
        ..isVoluntary = isVoluntary
        ..isAccountable = isAccountable
        ..phones = null
        ..institution = institution,
    ),
  );

  return firestoreData;
}
