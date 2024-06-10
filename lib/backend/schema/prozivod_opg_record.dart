import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProzivodOpgRecord extends FirestoreRecord {
  ProzivodOpgRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "slika_proizvoda" field.
  String? _slikaProizvoda;
  String get slikaProizvoda => _slikaProizvoda ?? '';
  bool hasSlikaProizvoda() => _slikaProizvoda != null;

  // "ime_autora" field.
  String? _imeAutora;
  String get imeAutora => _imeAutora ?? '';
  bool hasImeAutora() => _imeAutora != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _slikaProizvoda = snapshotData['slika_proizvoda'] as String?;
    _imeAutora = snapshotData['ime_autora'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prozivod_opg');

  static Stream<ProzivodOpgRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProzivodOpgRecord.fromSnapshot(s));

  static Future<ProzivodOpgRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProzivodOpgRecord.fromSnapshot(s));

  static ProzivodOpgRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProzivodOpgRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProzivodOpgRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProzivodOpgRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProzivodOpgRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProzivodOpgRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProzivodOpgRecordData({
  String? name,
  double? price,
  int? quantity,
  String? slikaProizvoda,
  String? imeAutora,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'quantity': quantity,
      'slika_proizvoda': slikaProizvoda,
      'ime_autora': imeAutora,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProzivodOpgRecordDocumentEquality implements Equality<ProzivodOpgRecord> {
  const ProzivodOpgRecordDocumentEquality();

  @override
  bool equals(ProzivodOpgRecord? e1, ProzivodOpgRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.quantity == e2?.quantity &&
        e1?.slikaProizvoda == e2?.slikaProizvoda &&
        e1?.imeAutora == e2?.imeAutora;
  }

  @override
  int hash(ProzivodOpgRecord? e) => const ListEquality()
      .hash([e?.name, e?.price, e?.quantity, e?.slikaProizvoda, e?.imeAutora]);

  @override
  bool isValidKey(Object? o) => o is ProzivodOpgRecord;
}
