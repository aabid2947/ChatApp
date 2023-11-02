import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FriendsRecord extends FirestoreRecord {
  FriendsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_1" field.
  String? _user1;
  String get user1 => _user1 ?? '';
  bool hasUser1() => _user1 != null;

  // "user_2" field.
  String? _user2;
  String get user2 => _user2 ?? '';
  bool hasUser2() => _user2 != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "user_2_Email" field.
  String? _user2Email;
  String get user2Email => _user2Email ?? '';
  bool hasUser2Email() => _user2Email != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _user1 = snapshotData['user_1'] as String?;
    _user2 = snapshotData['user_2'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _user2Email = snapshotData['user_2_Email'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Friends')
          : FirebaseFirestore.instance.collectionGroup('Friends');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Friends').doc();

  static Stream<FriendsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FriendsRecord.fromSnapshot(s));

  static Future<FriendsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FriendsRecord.fromSnapshot(s));

  static FriendsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FriendsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FriendsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FriendsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FriendsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FriendsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFriendsRecordData({
  String? user1,
  String? user2,
  DateTime? time,
  String? user2Email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_1': user1,
      'user_2': user2,
      'time': time,
      'user_2_Email': user2Email,
    }.withoutNulls,
  );

  return firestoreData;
}

class FriendsRecordDocumentEquality implements Equality<FriendsRecord> {
  const FriendsRecordDocumentEquality();

  @override
  bool equals(FriendsRecord? e1, FriendsRecord? e2) {
    return e1?.user1 == e2?.user1 &&
        e1?.user2 == e2?.user2 &&
        e1?.time == e2?.time &&
        e1?.user2Email == e2?.user2Email;
  }

  @override
  int hash(FriendsRecord? e) =>
      const ListEquality().hash([e?.user1, e?.user2, e?.time, e?.user2Email]);

  @override
  bool isValidKey(Object? o) => o is FriendsRecord;
}
