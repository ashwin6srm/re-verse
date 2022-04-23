import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'addresses_record.g.dart';

abstract class AddressesRecord
    implements Built<AddressesRecord, AddressesRecordBuilder> {
  static Serializer<AddressesRecord> get serializer =>
      _$addressesRecordSerializer;

  @nullable
  DocumentReference get customerId;

  @nullable
  @BuiltValueField(wireName: 'Address')
  BuiltList<String> get address;

  @nullable
  String get customerName;

  @nullable
  BuiltList<LatLng> get locations;

  @nullable
  LatLng get location;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AddressesRecordBuilder builder) => builder
    ..address = ListBuilder()
    ..customerName = ''
    ..locations = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Addresses');

  static Stream<AddressesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AddressesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AddressesRecord._();
  factory AddressesRecord([void Function(AddressesRecordBuilder) updates]) =
      _$AddressesRecord;

  static AddressesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAddressesRecordData({
  DocumentReference customerId,
  String customerName,
  LatLng location,
}) =>
    serializers.toFirestore(
        AddressesRecord.serializer,
        AddressesRecord((a) => a
          ..customerId = customerId
          ..address = null
          ..customerName = customerName
          ..locations = null
          ..location = location));
