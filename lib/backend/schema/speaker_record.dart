import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpeakerRecord extends FirestoreRecord {
  SpeakerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Speaker_ID" field.
  int? _speakerID;
  int get speakerID => _speakerID ?? 0;
  bool hasSpeakerID() => _speakerID != null;

  // "Speaker_name" field.
  String? _speakerName;
  String get speakerName => _speakerName ?? '';
  bool hasSpeakerName() => _speakerName != null;

  // "Speaker_description" field.
  String? _speakerDescription;
  String get speakerDescription => _speakerDescription ?? '';
  bool hasSpeakerDescription() => _speakerDescription != null;

  // "Speaker_fb" field.
  String? _speakerFb;
  String get speakerFb => _speakerFb ?? '';
  bool hasSpeakerFb() => _speakerFb != null;

  // "Speaker_email" field.
  String? _speakerEmail;
  String get speakerEmail => _speakerEmail ?? '';
  bool hasSpeakerEmail() => _speakerEmail != null;

  // "Speaker_linkedin" field.
  String? _speakerLinkedin;
  String get speakerLinkedin => _speakerLinkedin ?? '';
  bool hasSpeakerLinkedin() => _speakerLinkedin != null;

  // "Speaker_field" field.
  DocumentReference? _speakerField;
  DocumentReference? get speakerField => _speakerField;
  bool hasSpeakerField() => _speakerField != null;

  // "Speaker_image_1" field.
  String? _speakerImage1;
  String get speakerImage1 => _speakerImage1 ?? '';
  bool hasSpeakerImage1() => _speakerImage1 != null;

  // "Speaker_image_2" field.
  String? _speakerImage2;
  String get speakerImage2 => _speakerImage2 ?? '';
  bool hasSpeakerImage2() => _speakerImage2 != null;

  // "Speaker_cnf_id" field.
  List<int>? _speakerCnfId;
  List<int> get speakerCnfId => _speakerCnfId ?? const [];
  bool hasSpeakerCnfId() => _speakerCnfId != null;

  // "speaker_followers" field.
  List<DocumentReference>? _speakerFollowers;
  List<DocumentReference> get speakerFollowers => _speakerFollowers ?? const [];
  bool hasSpeakerFollowers() => _speakerFollowers != null;

  void _initializeFields() {
    _speakerID = castToType<int>(snapshotData['Speaker_ID']);
    _speakerName = snapshotData['Speaker_name'] as String?;
    _speakerDescription = snapshotData['Speaker_description'] as String?;
    _speakerFb = snapshotData['Speaker_fb'] as String?;
    _speakerEmail = snapshotData['Speaker_email'] as String?;
    _speakerLinkedin = snapshotData['Speaker_linkedin'] as String?;
    _speakerField = snapshotData['Speaker_field'] as DocumentReference?;
    _speakerImage1 = snapshotData['Speaker_image_1'] as String?;
    _speakerImage2 = snapshotData['Speaker_image_2'] as String?;
    _speakerCnfId = getDataList(snapshotData['Speaker_cnf_id']);
    _speakerFollowers = getDataList(snapshotData['speaker_followers']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Speaker');

  static Stream<SpeakerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SpeakerRecord.fromSnapshot(s));

  static Future<SpeakerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SpeakerRecord.fromSnapshot(s));

  static SpeakerRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SpeakerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SpeakerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SpeakerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SpeakerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SpeakerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSpeakerRecordData({
  int? speakerID,
  String? speakerName,
  String? speakerDescription,
  String? speakerFb,
  String? speakerEmail,
  String? speakerLinkedin,
  DocumentReference? speakerField,
  String? speakerImage1,
  String? speakerImage2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Speaker_ID': speakerID,
      'Speaker_name': speakerName,
      'Speaker_description': speakerDescription,
      'Speaker_fb': speakerFb,
      'Speaker_email': speakerEmail,
      'Speaker_linkedin': speakerLinkedin,
      'Speaker_field': speakerField,
      'Speaker_image_1': speakerImage1,
      'Speaker_image_2': speakerImage2,
    }.withoutNulls,
  );

  return firestoreData;
}

class SpeakerRecordDocumentEquality implements Equality<SpeakerRecord> {
  const SpeakerRecordDocumentEquality();

  @override
  bool equals(SpeakerRecord? e1, SpeakerRecord? e2) {
    const listEquality = ListEquality();
    return e1?.speakerID == e2?.speakerID &&
        e1?.speakerName == e2?.speakerName &&
        e1?.speakerDescription == e2?.speakerDescription &&
        e1?.speakerFb == e2?.speakerFb &&
        e1?.speakerEmail == e2?.speakerEmail &&
        e1?.speakerLinkedin == e2?.speakerLinkedin &&
        e1?.speakerField == e2?.speakerField &&
        e1?.speakerImage1 == e2?.speakerImage1 &&
        e1?.speakerImage2 == e2?.speakerImage2 &&
        listEquality.equals(e1?.speakerCnfId, e2?.speakerCnfId) &&
        listEquality.equals(e1?.speakerFollowers, e2?.speakerFollowers);
  }

  @override
  int hash(SpeakerRecord? e) => const ListEquality().hash([
        e?.speakerID,
        e?.speakerName,
        e?.speakerDescription,
        e?.speakerFb,
        e?.speakerEmail,
        e?.speakerLinkedin,
        e?.speakerField,
        e?.speakerImage1,
        e?.speakerImage2,
        e?.speakerCnfId,
        e?.speakerFollowers
      ]);

  @override
  bool isValidKey(Object? o) => o is SpeakerRecord;
}
