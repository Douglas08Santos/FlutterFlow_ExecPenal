import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'institutions_record.g.dart';

abstract class InstitutionsRecord
    implements Built<InstitutionsRecord, InstitutionsRecordBuilder> {
  static Serializer<InstitutionsRecord> get serializer =>
      _$institutionsRecordSerializer;

  String? get name;

  BuiltList<PhoneStruct>? get phones;

  BuiltList<CustomEmailStruct>? get emails;

  AddressStruct get address;

  BuiltList<DocumentReference>? get voluntaries;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(InstitutionsRecordBuilder builder) => builder
    ..name = ''
    ..phones = ListBuilder()
    ..emails = ListBuilder()
    ..address = AddressStructBuilder()
    ..voluntaries = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('institutions');

  static Stream<InstitutionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<InstitutionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  InstitutionsRecord._();
  factory InstitutionsRecord(
          [void Function(InstitutionsRecordBuilder) updates]) =
      _$InstitutionsRecord;

  static InstitutionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createInstitutionsRecordData({
  String? name,
  AddressStruct? address,
}) {
  final firestoreData = serializers.toFirestore(
    InstitutionsRecord.serializer,
    InstitutionsRecord(
      (i) => i
        ..name = name
        ..phones = null
        ..emails = null
        ..address = AddressStructBuilder()
        ..voluntaries = null,
    ),
  );

  // Handle nested data for "address" field.
  addAddressStructData(firestoreData, address, 'address');

  return firestoreData;
}
