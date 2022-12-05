import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'custom_email_struct.g.dart';

abstract class CustomEmailStruct
    implements Built<CustomEmailStruct, CustomEmailStructBuilder> {
  static Serializer<CustomEmailStruct> get serializer =>
      _$customEmailStructSerializer;

  String? get email;

  @BuiltValueField(wireName: 'is_active')
  bool? get isActive;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(CustomEmailStructBuilder builder) => builder
    ..email = ''
    ..isActive = false
    ..firestoreUtilData = FirestoreUtilData();

  CustomEmailStruct._();
  factory CustomEmailStruct([void Function(CustomEmailStructBuilder) updates]) =
      _$CustomEmailStruct;
}

CustomEmailStruct createCustomEmailStruct({
  String? email,
  bool? isActive,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CustomEmailStruct(
      (c) => c
        ..email = email
        ..isActive = isActive
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

CustomEmailStruct? updateCustomEmailStruct(
  CustomEmailStruct? customEmail, {
  bool clearUnsetFields = true,
}) =>
    customEmail != null
        ? (customEmail.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addCustomEmailStructData(
  Map<String, dynamic> firestoreData,
  CustomEmailStruct? customEmail,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (customEmail == null) {
    return;
  }
  if (customEmail.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && customEmail.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final customEmailData =
      getCustomEmailFirestoreData(customEmail, forFieldValue);
  final nestedData =
      customEmailData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = customEmail.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getCustomEmailFirestoreData(
  CustomEmailStruct? customEmail, [
  bool forFieldValue = false,
]) {
  if (customEmail == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(CustomEmailStruct.serializer, customEmail);

  // Add any Firestore field values
  customEmail.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCustomEmailListFirestoreData(
  List<CustomEmailStruct>? customEmails,
) =>
    customEmails?.map((c) => getCustomEmailFirestoreData(c, true)).toList() ??
    [];
