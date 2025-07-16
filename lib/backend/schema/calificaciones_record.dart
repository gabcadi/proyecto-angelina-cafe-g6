import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Productos calificados de 1-5 después de una orden realizada
class CalificacionesRecord extends FirestoreRecord {
  CalificacionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "calificacion_id" field.
  int? _calificacionId;
  int get calificacionId => _calificacionId ?? 0;
  bool hasCalificacionId() => _calificacionId != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "orden_id" field.
  DocumentReference? _ordenId;
  DocumentReference? get ordenId => _ordenId;
  bool hasOrdenId() => _ordenId != null;

  // "calificacion" field.
  double? _calificacion;
  double get calificacion => _calificacion ?? 0.0;
  bool hasCalificacion() => _calificacion != null;

  // "producto_id" field.
  DocumentReference? _productoId;
  DocumentReference? get productoId => _productoId;
  bool hasProductoId() => _productoId != null;

  // "fecha_creacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  void _initializeFields() {
    _calificacionId = castToType<int>(snapshotData['calificacion_id']);
    _userId = snapshotData['user_id'] as DocumentReference?;
    _ordenId = snapshotData['orden_id'] as DocumentReference?;
    _calificacion = castToType<double>(snapshotData['calificacion']);
    _productoId = snapshotData['producto_id'] as DocumentReference?;
    _fechaCreacion = snapshotData['fecha_creacion'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('calificaciones');

  static Stream<CalificacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CalificacionesRecord.fromSnapshot(s));

  static Future<CalificacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CalificacionesRecord.fromSnapshot(s));

  static CalificacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CalificacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CalificacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CalificacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CalificacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CalificacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCalificacionesRecordData({
  int? calificacionId,
  DocumentReference? userId,
  DocumentReference? ordenId,
  double? calificacion,
  DocumentReference? productoId,
  DateTime? fechaCreacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'calificacion_id': calificacionId,
      'user_id': userId,
      'orden_id': ordenId,
      'calificacion': calificacion,
      'producto_id': productoId,
      'fecha_creacion': fechaCreacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class CalificacionesRecordDocumentEquality
    implements Equality<CalificacionesRecord> {
  const CalificacionesRecordDocumentEquality();

  @override
  bool equals(CalificacionesRecord? e1, CalificacionesRecord? e2) {
    return e1?.calificacionId == e2?.calificacionId &&
        e1?.userId == e2?.userId &&
        e1?.ordenId == e2?.ordenId &&
        e1?.calificacion == e2?.calificacion &&
        e1?.productoId == e2?.productoId &&
        e1?.fechaCreacion == e2?.fechaCreacion;
  }

  @override
  int hash(CalificacionesRecord? e) => const ListEquality().hash([
        e?.calificacionId,
        e?.userId,
        e?.ordenId,
        e?.calificacion,
        e?.productoId,
        e?.fechaCreacion
      ]);

  @override
  bool isValidKey(Object? o) => o is CalificacionesRecord;
}
