import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatRecord extends FirestoreRecord {
  ChatRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "ts" field.
  DateTime? _ts;
  DateTime? get ts => _ts;
  bool hasTs() => _ts != null;

  // "driver_name" field.
  DocumentReference? _driverName;
  DocumentReference? get driverName => _driverName;
  bool hasDriverName() => _driverName != null;

  // "user_name" field.
  DocumentReference? _userName;
  DocumentReference? get userName => _userName;
  bool hasUserName() => _userName != null;

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "driverID" field.
  DocumentReference? _driverID;
  DocumentReference? get driverID => _driverID;
  bool hasDriverID() => _driverID != null;

  void _initializeFields() {
    _text = snapshotData['Text'] as String?;
    _ts = snapshotData['ts'] as DateTime?;
    _driverName = snapshotData['driver_name'] as DocumentReference?;
    _userName = snapshotData['user_name'] as DocumentReference?;
    _userID = snapshotData['userID'] as DocumentReference?;
    _driverID = snapshotData['driverID'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Chat');

  static Stream<ChatRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatRecord.fromSnapshot(s));

  static Future<ChatRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatRecord.fromSnapshot(s));

  static ChatRecord fromSnapshot(DocumentSnapshot snapshot) => ChatRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatRecordData({
  String? text,
  DateTime? ts,
  DocumentReference? driverName,
  DocumentReference? userName,
  DocumentReference? userID,
  DocumentReference? driverID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Text': text,
      'ts': ts,
      'driver_name': driverName,
      'user_name': userName,
      'userID': userID,
      'driverID': driverID,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatRecordDocumentEquality implements Equality<ChatRecord> {
  const ChatRecordDocumentEquality();

  @override
  bool equals(ChatRecord? e1, ChatRecord? e2) {
    return e1?.text == e2?.text &&
        e1?.ts == e2?.ts &&
        e1?.driverName == e2?.driverName &&
        e1?.userName == e2?.userName &&
        e1?.userID == e2?.userID &&
        e1?.driverID == e2?.driverID;
  }

  @override
  int hash(ChatRecord? e) => const ListEquality().hash(
      [e?.text, e?.ts, e?.driverName, e?.userName, e?.userID, e?.driverID]);

  @override
  bool isValidKey(Object? o) => o is ChatRecord;
}
