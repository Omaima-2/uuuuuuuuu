import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpRecord extends FirestoreRecord {
  SpRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "availability" field.
  bool? _availability;
  bool get availability => _availability ?? false;
  bool hasAvailability() => _availability != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "profission" field.
  Profession? _profission;
  Profession? get profission => _profission;
  bool hasProfission() => _profission != null;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _availability = snapshotData['availability'] as bool?;
    _user = snapshotData['user'] as DocumentReference?;
    _profission = deserializeEnum<Profession>(snapshotData['profission']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SP');

  static Stream<SpRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SpRecord.fromSnapshot(s));

  static Future<SpRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SpRecord.fromSnapshot(s));

  static SpRecord fromSnapshot(DocumentSnapshot snapshot) => SpRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SpRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SpRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SpRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SpRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSpRecordData({
  DateTime? createdTime,
  bool? availability,
  DocumentReference? user,
  Profession? profission,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'availability': availability,
      'user': user,
      'profission': profission,
    }.withoutNulls,
  );

  return firestoreData;
}

class SpRecordDocumentEquality implements Equality<SpRecord> {
  const SpRecordDocumentEquality();

  @override
  bool equals(SpRecord? e1, SpRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.availability == e2?.availability &&
        e1?.user == e2?.user &&
        e1?.profission == e2?.profission;
  }

  @override
  int hash(SpRecord? e) => const ListEquality()
      .hash([e?.createdTime, e?.availability, e?.user, e?.profission]);

  @override
  bool isValidKey(Object? o) => o is SpRecord;
}
