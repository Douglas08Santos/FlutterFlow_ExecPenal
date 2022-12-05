import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'phone_struct.g.dart';

abstract class PhoneStruct implements Built<PhoneStruct, PhoneStructBuilder> {
  static Serializer<PhoneStruct> get serializer => _$phoneStructSerializer;

  String? get number;

  @BuiltValueField(wireName: 'is_active')
  bool? get isActive;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(PhoneStructBuilder builder) => builder
    ..number = ''
    ..isActive = false
    ..firestoreUtilData = FirestoreUtilData();

  PhoneStruct._();
  factory PhoneStruct([void Function(PhoneStructBuilder) updates]) =
      _$PhoneStruct;
}

PhoneStruct createPhoneStruct({
  String? number,
  bool? isActive,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PhoneStruct(
      (p) => p
        ..number = number
        ..isActive = isActive
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

PhoneStruct? updatePhoneStruct(
  PhoneStruct? phone, {
  bool clearUnsetFields = true,
}) =>
    phone != null
        ? (phone.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addPhoneStructData(
  Map<String, dynamic> firestoreData,
  PhoneStruct? phone,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (phone == null) {
    return;
  }
  if (phone.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && phone.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final phoneData = getPhoneFirestoreData(phone, forFieldValue);
  final nestedData = phoneData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = phone.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getPhoneFirestoreData(
  PhoneStruct? phone, [
  bool forFieldValue = false,
]) {
  if (phone == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(PhoneStruct.serializer, phone);

  // Add any Firestore field values
  phone.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPhoneListFirestoreData(
  List<PhoneStruct>? phones,
) =>
    phones?.map((p) => getPhoneFirestoreData(p, true)).toList() ?? [];
