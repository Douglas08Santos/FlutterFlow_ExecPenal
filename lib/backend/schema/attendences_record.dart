import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'attendences_record.g.dart';

abstract class AttendencesRecord
    implements Built<AttendencesRecord, AttendencesRecordBuilder> {
  static Serializer<AttendencesRecord> get serializer =>
      _$attendencesRecordSerializer;

  @BuiltValueField(wireName: 'input_time')
  DateTime? get inputTime;

  @BuiltValueField(wireName: 'output_time')
  DateTime? get outputTime;

  @BuiltValueField(wireName: 'is_checked')
  bool? get isChecked;

  String? get comment;

  DocumentReference? get voluntary;

  DocumentReference? get institution;

  @BuiltValueField(wireName: 'input_local')
  LatLng? get inputLocal;

  @BuiltValueField(wireName: 'output_local')
  LatLng? get outputLocal;

  @BuiltValueField(wireName: 'input_photo')
  String? get inputPhoto;

  @BuiltValueField(wireName: 'output_photo')
  String? get outputPhoto;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AttendencesRecordBuilder builder) => builder
    ..isChecked = false
    ..comment = ''
    ..inputPhoto = ''
    ..outputPhoto = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('attendences');

  static Stream<AttendencesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AttendencesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AttendencesRecord._();
  factory AttendencesRecord([void Function(AttendencesRecordBuilder) updates]) =
      _$AttendencesRecord;

  static AttendencesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAttendencesRecordData({
  DateTime? inputTime,
  DateTime? outputTime,
  bool? isChecked,
  String? comment,
  DocumentReference? voluntary,
  DocumentReference? institution,
  LatLng? inputLocal,
  LatLng? outputLocal,
  String? inputPhoto,
  String? outputPhoto,
}) {
  final firestoreData = serializers.toFirestore(
    AttendencesRecord.serializer,
    AttendencesRecord(
      (a) => a
        ..inputTime = inputTime
        ..outputTime = outputTime
        ..isChecked = isChecked
        ..comment = comment
        ..voluntary = voluntary
        ..institution = institution
        ..inputLocal = inputLocal
        ..outputLocal = outputLocal
        ..inputPhoto = inputPhoto
        ..outputPhoto = outputPhoto,
    ),
  );

  return firestoreData;
}
