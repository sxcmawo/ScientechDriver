import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RideRecord extends FirestoreRecord {
  RideRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_location" field.
  LatLng? _userLocation;
  LatLng? get userLocation => _userLocation;
  bool hasUserLocation() => _userLocation != null;

  // "user_uid" field.
  String? _userUid;
  String get userUid => _userUid ?? '';
  bool hasUserUid() => _userUid != null;

  // "driver_location" field.
  LatLng? _driverLocation;
  LatLng? get driverLocation => _driverLocation;
  bool hasDriverLocation() => _driverLocation != null;

  // "driver_uid" field.
  String? _driverUid;
  String get driverUid => _driverUid ?? '';
  bool hasDriverUid() => _driverUid != null;

  // "destination_location" field.
  LatLng? _destinationLocation;
  LatLng? get destinationLocation => _destinationLocation;
  bool hasDestinationLocation() => _destinationLocation != null;

  // "destination_address" field.
  String? _destinationAddress;
  String get destinationAddress => _destinationAddress ?? '';
  bool hasDestinationAddress() => _destinationAddress != null;

  // "user_address" field.
  String? _userAddress;
  String get userAddress => _userAddress ?? '';
  bool hasUserAddress() => _userAddress != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "driver_name" field.
  String? _driverName;
  String get driverName => _driverName ?? '';
  bool hasDriverName() => _driverName != null;

  // "is_driver_assigned" field.
  bool? _isDriverAssigned;
  bool get isDriverAssigned => _isDriverAssigned ?? false;
  bool hasIsDriverAssigned() => _isDriverAssigned != null;

  // "has_luggage" field.
  bool? _hasLuggage;
  bool get hasLuggage => _hasLuggage ?? false;
  bool hasHasLuggage() => _hasLuggage != null;

  // "quite_ride" field.
  bool? _quiteRide;
  bool get quiteRide => _quiteRide ?? false;
  bool hasQuiteRide() => _quiteRide != null;

  // "female_driver" field.
  bool? _femaleDriver;
  bool get femaleDriver => _femaleDriver ?? false;
  bool hasFemaleDriver() => _femaleDriver != null;

  // "child_seat" field.
  bool? _childSeat;
  bool get childSeat => _childSeat ?? false;
  bool hasChildSeat() => _childSeat != null;

  // "wheelchair_access" field.
  bool? _wheelchairAccess;
  bool get wheelchairAccess => _wheelchairAccess ?? false;
  bool hasWheelchairAccess() => _wheelchairAccess != null;

  // "fare" field.
  String? _fare;
  String get fare => _fare ?? '';
  bool hasFare() => _fare != null;

  // "hear_speak" field.
  bool? _hearSpeak;
  bool get hearSpeak => _hearSpeak ?? false;
  bool hasHearSpeak() => _hearSpeak != null;

  void _initializeFields() {
    _userLocation = snapshotData['user_location'] as LatLng?;
    _userUid = snapshotData['user_uid'] as String?;
    _driverLocation = snapshotData['driver_location'] as LatLng?;
    _driverUid = snapshotData['driver_uid'] as String?;
    _destinationLocation = snapshotData['destination_location'] as LatLng?;
    _destinationAddress = snapshotData['destination_address'] as String?;
    _userAddress = snapshotData['user_address'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _driverName = snapshotData['driver_name'] as String?;
    _isDriverAssigned = snapshotData['is_driver_assigned'] as bool?;
    _hasLuggage = snapshotData['has_luggage'] as bool?;
    _quiteRide = snapshotData['quite_ride'] as bool?;
    _femaleDriver = snapshotData['female_driver'] as bool?;
    _childSeat = snapshotData['child_seat'] as bool?;
    _wheelchairAccess = snapshotData['wheelchair_access'] as bool?;
    _fare = snapshotData['fare'] as String?;
    _hearSpeak = snapshotData['hear_speak'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ride');

  static Stream<RideRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RideRecord.fromSnapshot(s));

  static Future<RideRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RideRecord.fromSnapshot(s));

  static RideRecord fromSnapshot(DocumentSnapshot snapshot) => RideRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RideRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RideRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RideRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RideRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRideRecordData({
  LatLng? userLocation,
  String? userUid,
  LatLng? driverLocation,
  String? driverUid,
  LatLng? destinationLocation,
  String? destinationAddress,
  String? userAddress,
  String? userName,
  String? driverName,
  bool? isDriverAssigned,
  bool? hasLuggage,
  bool? quiteRide,
  bool? femaleDriver,
  bool? childSeat,
  bool? wheelchairAccess,
  String? fare,
  bool? hearSpeak,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_location': userLocation,
      'user_uid': userUid,
      'driver_location': driverLocation,
      'driver_uid': driverUid,
      'destination_location': destinationLocation,
      'destination_address': destinationAddress,
      'user_address': userAddress,
      'user_name': userName,
      'driver_name': driverName,
      'is_driver_assigned': isDriverAssigned,
      'has_luggage': hasLuggage,
      'quite_ride': quiteRide,
      'female_driver': femaleDriver,
      'child_seat': childSeat,
      'wheelchair_access': wheelchairAccess,
      'fare': fare,
      'hear_speak': hearSpeak,
    }.withoutNulls,
  );

  return firestoreData;
}

class RideRecordDocumentEquality implements Equality<RideRecord> {
  const RideRecordDocumentEquality();

  @override
  bool equals(RideRecord? e1, RideRecord? e2) {
    return e1?.userLocation == e2?.userLocation &&
        e1?.userUid == e2?.userUid &&
        e1?.driverLocation == e2?.driverLocation &&
        e1?.driverUid == e2?.driverUid &&
        e1?.destinationLocation == e2?.destinationLocation &&
        e1?.destinationAddress == e2?.destinationAddress &&
        e1?.userAddress == e2?.userAddress &&
        e1?.userName == e2?.userName &&
        e1?.driverName == e2?.driverName &&
        e1?.isDriverAssigned == e2?.isDriverAssigned &&
        e1?.hasLuggage == e2?.hasLuggage &&
        e1?.quiteRide == e2?.quiteRide &&
        e1?.femaleDriver == e2?.femaleDriver &&
        e1?.childSeat == e2?.childSeat &&
        e1?.wheelchairAccess == e2?.wheelchairAccess &&
        e1?.fare == e2?.fare &&
        e1?.hearSpeak == e2?.hearSpeak;
  }

  @override
  int hash(RideRecord? e) => const ListEquality().hash([
        e?.userLocation,
        e?.userUid,
        e?.driverLocation,
        e?.driverUid,
        e?.destinationLocation,
        e?.destinationAddress,
        e?.userAddress,
        e?.userName,
        e?.driverName,
        e?.isDriverAssigned,
        e?.hasLuggage,
        e?.quiteRide,
        e?.femaleDriver,
        e?.childSeat,
        e?.wheelchairAccess,
        e?.fare,
        e?.hearSpeak
      ]);

  @override
  bool isValidKey(Object? o) => o is RideRecord;
}
