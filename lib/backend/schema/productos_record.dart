import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Productos que se ven en el menú
class ProductosRecord extends FirestoreRecord {
  ProductosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "en_promocion" field.
  bool? _enPromocion;
  bool get enPromocion => _enPromocion ?? false;
  bool hasEnPromocion() => _enPromocion != null;

  // "activo" field.
  bool? _activo;
  bool get activo => _activo ?? false;
  bool hasActivo() => _activo != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "categoria" field.
  DocumentReference? _categoria;
  DocumentReference? get categoria => _categoria;
  bool hasCategoria() => _categoria != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "nota" field.
  String? _nota;
  String get nota => _nota ?? '';
  bool hasNota() => _nota != null;

  // "producto_id" field.
  int? _productoId;
  int get productoId => _productoId ?? 0;
  bool hasProductoId() => _productoId != null;

  // "es_recomendado" field.
  bool? _esRecomendado;

  /// Verdadero si se quiere recomendar el producto en el Home.
  ///
  /// Máximo 3.
  bool get esRecomendado => _esRecomendado ?? false;
  bool hasEsRecomendado() => _esRecomendado != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _enPromocion = snapshotData['en_promocion'] as bool?;
    _activo = snapshotData['activo'] as bool?;
    _imagen = snapshotData['imagen'] as String?;
    _categoria = snapshotData['categoria'] as DocumentReference?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _nota = snapshotData['nota'] as String?;
    _productoId = castToType<int>(snapshotData['producto_id']);
    _esRecomendado = snapshotData['es_recomendado'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosRecord.fromSnapshot(s));

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductosRecord.fromSnapshot(s));

  static ProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductosRecordData({
  String? name,
  String? description,
  double? price,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? enPromocion,
  bool? activo,
  String? imagen,
  DocumentReference? categoria,
  int? cantidad,
  String? nota,
  int? productoId,
  bool? esRecomendado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'en_promocion': enPromocion,
      'activo': activo,
      'imagen': imagen,
      'categoria': categoria,
      'cantidad': cantidad,
      'nota': nota,
      'producto_id': productoId,
      'es_recomendado': esRecomendado,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosRecordDocumentEquality implements Equality<ProductosRecord> {
  const ProductosRecordDocumentEquality();

  @override
  bool equals(ProductosRecord? e1, ProductosRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.enPromocion == e2?.enPromocion &&
        e1?.activo == e2?.activo &&
        e1?.imagen == e2?.imagen &&
        e1?.categoria == e2?.categoria &&
        e1?.cantidad == e2?.cantidad &&
        e1?.nota == e2?.nota &&
        e1?.productoId == e2?.productoId &&
        e1?.esRecomendado == e2?.esRecomendado;
  }

  @override
  int hash(ProductosRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.price,
        e?.createdAt,
        e?.modifiedAt,
        e?.enPromocion,
        e?.activo,
        e?.imagen,
        e?.categoria,
        e?.cantidad,
        e?.nota,
        e?.productoId,
        e?.esRecomendado
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductosRecord;
}
