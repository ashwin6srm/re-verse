import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'types_of_wastes_record.g.dart';

abstract class TypesOfWastesRecord
    implements Built<TypesOfWastesRecord, TypesOfWastesRecordBuilder> {
  static Serializer<TypesOfWastesRecord> get serializer =>
      _$typesOfWastesRecordSerializer;

  @nullable
  String get type;

  @nullable
  String get imageURL;

  @nullable
  DocumentReference get uid;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TypesOfWastesRecordBuilder builder) => builder
    ..type = ''
    ..imageURL = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('typesOfWastes');

  static Stream<TypesOfWastesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TypesOfWastesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  TypesOfWastesRecord._();
  factory TypesOfWastesRecord(
          [void Function(TypesOfWastesRecordBuilder) updates]) =
      _$TypesOfWastesRecord;

  static TypesOfWastesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTypesOfWastesRecordData({
  String type,
  String imageURL,
  DocumentReference uid,
}) =>
    serializers.toFirestore(
        TypesOfWastesRecord.serializer,
        TypesOfWastesRecord((t) => t
          ..type = type
          ..imageURL = imageURL
          ..uid = uid));
