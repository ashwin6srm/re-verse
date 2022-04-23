import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bookings_record.g.dart';

abstract class BookingsRecord
    implements Built<BookingsRecord, BookingsRecordBuilder> {
  static Serializer<BookingsRecord> get serializer =>
      _$bookingsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'booking_id')
  String get bookingId;

  @nullable
  DateTime get bookingTime;

  @nullable
  LatLng get location;

  @nullable
  BuiltList<String> get selectedWastes;

  @nullable
  DocumentReference get uid;

  @nullable
  DateTime get pickUpDate;

  @nullable
  String get bookingStatus;

  @nullable
  String get address;

  @nullable
  double get amountCredited;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BookingsRecordBuilder builder) => builder
    ..bookingId = ''
    ..selectedWastes = ListBuilder()
    ..bookingStatus = ''
    ..address = ''
    ..amountCredited = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BookingsRecord._();
  factory BookingsRecord([void Function(BookingsRecordBuilder) updates]) =
      _$BookingsRecord;

  static BookingsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBookingsRecordData({
  String bookingId,
  DateTime bookingTime,
  LatLng location,
  DocumentReference uid,
  DateTime pickUpDate,
  String bookingStatus,
  String address,
  double amountCredited,
}) =>
    serializers.toFirestore(
        BookingsRecord.serializer,
        BookingsRecord((b) => b
          ..bookingId = bookingId
          ..bookingTime = bookingTime
          ..location = location
          ..selectedWastes = null
          ..uid = uid
          ..pickUpDate = pickUpDate
          ..bookingStatus = bookingStatus
          ..address = address
          ..amountCredited = amountCredited));
