import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "user_1" field.
  String? _user1;
  String get user1 => _user1 ?? '';
  bool hasUser1() => _user1 != null;

  // "user_2" field.
  String? _user2;
  String get user2 => _user2 ?? '';
  bool hasUser2() => _user2 != null;

  // "chatID" field.
  String? _chatID;
  String get chatID => _chatID ?? '';
  bool hasChatID() => _chatID != null;

  void _initializeFields() {
    _time = snapshotData['time'] as DateTime?;
    _user1 = snapshotData['user_1'] as String?;
    _user2 = snapshotData['user_2'] as String?;
    _chatID = snapshotData['chatID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  DateTime? time,
  String? user1,
  String? user2,
  String? chatID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time': time,
      'user_1': user1,
      'user_2': user2,
      'chatID': chatID,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    return e1?.time == e2?.time &&
        e1?.user1 == e2?.user1 &&
        e1?.user2 == e2?.user2 &&
        e1?.chatID == e2?.chatID;
  }

  @override
  int hash(ChatsRecord? e) =>
      const ListEquality().hash([e?.time, e?.user1, e?.user2, e?.chatID]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
