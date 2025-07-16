import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Las órdenes de los clientes, para recoger o entrega a domicilio
class OrdenRecord extends FirestoreRecord {
  OrdenRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "orden_id" field.
  int? _ordenId;
  int get ordenId => _ordenId ?? 0;
  bool hasOrdenId() => _ordenId != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "items" field.
  List<DocumentReference>? _items;
  List<DocumentReference> get items => _items ?? const [];
  bool hasItems() => _items != null;

  // "precio_total" field.
  double? _precioTotal;
  double get precioTotal => _precioTotal ?? 0.0;
  bool hasPrecioTotal() => _precioTotal != null;

  // "metodo_entrega" field.
  String? _metodoEntrega;
  String get metodoEntrega => _metodoEntrega ?? '';
  bool hasMetodoEntrega() => _metodoEntrega != null;

  // "ubicacion_entrega" field.
  DocumentReference? _ubicacionEntrega;
  DocumentReference? get ubicacionEntrega => _ubicacionEntrega;
  bool hasUbicacionEntrega() => _ubicacionEntrega != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "calificado" field.
  bool? _calificado;
  bool get calificado => _calificado ?? false;
  bool hasCalificado() => _calificado != null;

  void _initializeFields() {
    _ordenId = castToType<int>(snapshotData['orden_id']);
    _userId = snapshotData['user_id'] as DocumentReference?;
    _items = getDataList(snapshotData['items']);
    _precioTotal = castToType<double>(snapshotData['precio_total']);
    _metodoEntrega = snapshotData['metodo_entrega'] as String?;
    _ubicacionEntrega = snapshotData['ubicacion_entrega'] as DocumentReference?;
    _estado = snapshotData['estado'] as String?;
    _calificado = snapshotData['calificado'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orden');

  static Stream<OrdenRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdenRecord.fromSnapshot(s));

  static Future<OrdenRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdenRecord.fromSnapshot(s));

  static OrdenRecord fromSnapshot(DocumentSnapshot snapshot) => OrdenRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdenRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdenRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdenRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdenRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdenRecordData({
  int? ordenId,
  DocumentReference? userId,
  double? precioTotal,
  String? metodoEntrega,
  DocumentReference? ubicacionEntrega,
  String? estado,
  bool? calificado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orden_id': ordenId,
      'user_id': userId,
      'precio_total': precioTotal,
      'metodo_entrega': metodoEntrega,
      'ubicacion_entrega': ubicacionEntrega,
      'estado': estado,
      'calificado': calificado,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdenRecordDocumentEquality implements Equality<OrdenRecord> {
  const OrdenRecordDocumentEquality();

  @override
  bool equals(OrdenRecord? e1, OrdenRecord? e2) {
    const listEquality = ListEquality();
    return e1?.ordenId == e2?.ordenId &&
        e1?.userId == e2?.userId &&
        listEquality.equals(e1?.items, e2?.items) &&
        e1?.precioTotal == e2?.precioTotal &&
        e1?.metodoEntrega == e2?.metodoEntrega &&
        e1?.ubicacionEntrega == e2?.ubicacionEntrega &&
        e1?.estado == e2?.estado &&
        e1?.calificado == e2?.calificado;
  }

  @override
  int hash(OrdenRecord? e) => const ListEquality().hash([
        e?.ordenId,
        e?.userId,
        e?.items,
        e?.precioTotal,
        e?.metodoEntrega,
        e?.ubicacionEntrega,
        e?.estado,
        e?.calificado
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdenRecord;
}
