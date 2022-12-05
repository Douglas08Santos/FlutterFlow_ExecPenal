// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendences_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AttendencesRecord> _$attendencesRecordSerializer =
    new _$AttendencesRecordSerializer();

class _$AttendencesRecordSerializer
    implements StructuredSerializer<AttendencesRecord> {
  @override
  final Iterable<Type> types = const [AttendencesRecord, _$AttendencesRecord];
  @override
  final String wireName = 'AttendencesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AttendencesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.inputTime;
    if (value != null) {
      result
        ..add('input_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.outputTime;
    if (value != null) {
      result
        ..add('output_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.isChecked;
    if (value != null) {
      result
        ..add('is_checked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.voluntary;
    if (value != null) {
      result
        ..add('voluntary')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.institution;
    if (value != null) {
      result
        ..add('institution')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.inputLocal;
    if (value != null) {
      result
        ..add('input_local')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.outputLocal;
    if (value != null) {
      result
        ..add('output_local')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.inputPhoto;
    if (value != null) {
      result
        ..add('input_photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.outputPhoto;
    if (value != null) {
      result
        ..add('output_photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  AttendencesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttendencesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input_time':
          result.inputTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'output_time':
          result.outputTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'is_checked':
          result.isChecked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'voluntary':
          result.voluntary = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'institution':
          result.institution = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'input_local':
          result.inputLocal = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'output_local':
          result.outputLocal = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'input_photo':
          result.inputPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'output_photo':
          result.outputPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$AttendencesRecord extends AttendencesRecord {
  @override
  final DateTime? inputTime;
  @override
  final DateTime? outputTime;
  @override
  final bool? isChecked;
  @override
  final String? comment;
  @override
  final DocumentReference<Object?>? voluntary;
  @override
  final DocumentReference<Object?>? institution;
  @override
  final LatLng? inputLocal;
  @override
  final LatLng? outputLocal;
  @override
  final String? inputPhoto;
  @override
  final String? outputPhoto;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AttendencesRecord(
          [void Function(AttendencesRecordBuilder)? updates]) =>
      (new AttendencesRecordBuilder()..update(updates))._build();

  _$AttendencesRecord._(
      {this.inputTime,
      this.outputTime,
      this.isChecked,
      this.comment,
      this.voluntary,
      this.institution,
      this.inputLocal,
      this.outputLocal,
      this.inputPhoto,
      this.outputPhoto,
      this.ffRef})
      : super._();

  @override
  AttendencesRecord rebuild(void Function(AttendencesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttendencesRecordBuilder toBuilder() =>
      new AttendencesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttendencesRecord &&
        inputTime == other.inputTime &&
        outputTime == other.outputTime &&
        isChecked == other.isChecked &&
        comment == other.comment &&
        voluntary == other.voluntary &&
        institution == other.institution &&
        inputLocal == other.inputLocal &&
        outputLocal == other.outputLocal &&
        inputPhoto == other.inputPhoto &&
        outputPhoto == other.outputPhoto &&
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
                                        $jc($jc(0, inputTime.hashCode),
                                            outputTime.hashCode),
                                        isChecked.hashCode),
                                    comment.hashCode),
                                voluntary.hashCode),
                            institution.hashCode),
                        inputLocal.hashCode),
                    outputLocal.hashCode),
                inputPhoto.hashCode),
            outputPhoto.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttendencesRecord')
          ..add('inputTime', inputTime)
          ..add('outputTime', outputTime)
          ..add('isChecked', isChecked)
          ..add('comment', comment)
          ..add('voluntary', voluntary)
          ..add('institution', institution)
          ..add('inputLocal', inputLocal)
          ..add('outputLocal', outputLocal)
          ..add('inputPhoto', inputPhoto)
          ..add('outputPhoto', outputPhoto)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AttendencesRecordBuilder
    implements Builder<AttendencesRecord, AttendencesRecordBuilder> {
  _$AttendencesRecord? _$v;

  DateTime? _inputTime;
  DateTime? get inputTime => _$this._inputTime;
  set inputTime(DateTime? inputTime) => _$this._inputTime = inputTime;

  DateTime? _outputTime;
  DateTime? get outputTime => _$this._outputTime;
  set outputTime(DateTime? outputTime) => _$this._outputTime = outputTime;

  bool? _isChecked;
  bool? get isChecked => _$this._isChecked;
  set isChecked(bool? isChecked) => _$this._isChecked = isChecked;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  DocumentReference<Object?>? _voluntary;
  DocumentReference<Object?>? get voluntary => _$this._voluntary;
  set voluntary(DocumentReference<Object?>? voluntary) =>
      _$this._voluntary = voluntary;

  DocumentReference<Object?>? _institution;
  DocumentReference<Object?>? get institution => _$this._institution;
  set institution(DocumentReference<Object?>? institution) =>
      _$this._institution = institution;

  LatLng? _inputLocal;
  LatLng? get inputLocal => _$this._inputLocal;
  set inputLocal(LatLng? inputLocal) => _$this._inputLocal = inputLocal;

  LatLng? _outputLocal;
  LatLng? get outputLocal => _$this._outputLocal;
  set outputLocal(LatLng? outputLocal) => _$this._outputLocal = outputLocal;

  String? _inputPhoto;
  String? get inputPhoto => _$this._inputPhoto;
  set inputPhoto(String? inputPhoto) => _$this._inputPhoto = inputPhoto;

  String? _outputPhoto;
  String? get outputPhoto => _$this._outputPhoto;
  set outputPhoto(String? outputPhoto) => _$this._outputPhoto = outputPhoto;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AttendencesRecordBuilder() {
    AttendencesRecord._initializeBuilder(this);
  }

  AttendencesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inputTime = $v.inputTime;
      _outputTime = $v.outputTime;
      _isChecked = $v.isChecked;
      _comment = $v.comment;
      _voluntary = $v.voluntary;
      _institution = $v.institution;
      _inputLocal = $v.inputLocal;
      _outputLocal = $v.outputLocal;
      _inputPhoto = $v.inputPhoto;
      _outputPhoto = $v.outputPhoto;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttendencesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttendencesRecord;
  }

  @override
  void update(void Function(AttendencesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttendencesRecord build() => _build();

  _$AttendencesRecord _build() {
    final _$result = _$v ??
        new _$AttendencesRecord._(
            inputTime: inputTime,
            outputTime: outputTime,
            isChecked: isChecked,
            comment: comment,
            voluntary: voluntary,
            institution: institution,
            inputLocal: inputLocal,
            outputLocal: outputLocal,
            inputPhoto: inputPhoto,
            outputPhoto: outputPhoto,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
