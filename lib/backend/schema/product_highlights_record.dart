import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'product_highlights_record.g.dart';

abstract class ProductHighlightsRecord
    implements Built<ProductHighlightsRecord, ProductHighlightsRecordBuilder> {
  static Serializer<ProductHighlightsRecord> get serializer =>
      _$productHighlightsRecordSerializer;

  @nullable
  String get brandName;

  @nullable
  String get productDescription;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProductHighlightsRecordBuilder builder) =>
      builder
        ..brandName = ''
        ..productDescription = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productHighlights');

  static Stream<ProductHighlightsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProductHighlightsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProductHighlightsRecord._();
  factory ProductHighlightsRecord(
          [void Function(ProductHighlightsRecordBuilder) updates]) =
      _$ProductHighlightsRecord;

  static ProductHighlightsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProductHighlightsRecordData({
  String brandName,
  String productDescription,
}) =>
    serializers.toFirestore(
        ProductHighlightsRecord.serializer,
        ProductHighlightsRecord((p) => p
          ..brandName = brandName
          ..productDescription = productDescription));
