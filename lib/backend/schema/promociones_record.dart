import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Las promociones disponibles que se aplican a ciertos productos
class PromocionesRecord extends FirestoreRecord {
  PromocionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "codigo_promocion" field.
  int? _codigoPromocion;
  int get codigoPromocion => _codigoPromocion ?? 0;
  bool hasCodigoPromocion() => _codigoPromocion != null;

  // "titulo_promocion" field.
  String? _tituloPromocion;
  String get tituloPromocion => _tituloPromocion ?? '';
  bool hasTituloPromocion() => _tituloPromocion != null;

  // "descripcion_promo" field.
  String? _descripcionPromo;
  String get descripcionPromo => _descripcionPromo ?? '';
  bool hasDescripcionPromo() => _descripcionPromo != null;

  // "descuento_porcentaje" field.
  double? _descuentoPorcentaje;
  double get descuentoPorcentaje => _descuentoPorcentaje ?? 0.0;
  bool hasDescuentoPorcentaje() => _descuentoPorcentaje != null;

  // "valido_hasta" field.
  DateTime? _validoHasta;
  DateTime? get validoHasta => _validoHasta;
  bool hasValidoHasta() => _validoHasta != null;

  // "productos_aplicable" field.
  List<DocumentReference>? _productosAplicable;
  List<DocumentReference> get productosAplicable =>
      _productosAplicable ?? const [];
  bool hasProductosAplicable() => _productosAplicable != null;

  // "promo_activa" field.
  bool? _promoActiva;
  bool get promoActiva => _promoActiva ?? false;
  bool hasPromoActiva() => _promoActiva != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _codigoPromocion = castToType<int>(snapshotData['codigo_promocion']);
    _tituloPromocion = snapshotData['titulo_promocion'] as String?;
    _descripcionPromo = snapshotData['descripcion_promo'] as String?;
    _descuentoPorcentaje =
        castToType<double>(snapshotData['descuento_porcentaje']);
    _validoHasta = snapshotData['valido_hasta'] as DateTime?;
    _productosAplicable = getDataList(snapshotData['productos_aplicable']);
    _promoActiva = snapshotData['promo_activa'] as bool?;
    _imagen = snapshotData['imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('promociones');

  static Stream<PromocionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromocionesRecord.fromSnapshot(s));

  static Future<PromocionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromocionesRecord.fromSnapshot(s));

  static PromocionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PromocionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromocionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromocionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromocionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromocionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromocionesRecordData({
  int? codigoPromocion,
  String? tituloPromocion,
  String? descripcionPromo,
  double? descuentoPorcentaje,
  DateTime? validoHasta,
  bool? promoActiva,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'codigo_promocion': codigoPromocion,
      'titulo_promocion': tituloPromocion,
      'descripcion_promo': descripcionPromo,
      'descuento_porcentaje': descuentoPorcentaje,
      'valido_hasta': validoHasta,
      'promo_activa': promoActiva,
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class PromocionesRecordDocumentEquality implements Equality<PromocionesRecord> {
  const PromocionesRecordDocumentEquality();

  @override
  bool equals(PromocionesRecord? e1, PromocionesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.codigoPromocion == e2?.codigoPromocion &&
        e1?.tituloPromocion == e2?.tituloPromocion &&
        e1?.descripcionPromo == e2?.descripcionPromo &&
        e1?.descuentoPorcentaje == e2?.descuentoPorcentaje &&
        e1?.validoHasta == e2?.validoHasta &&
        listEquality.equals(e1?.productosAplicable, e2?.productosAplicable) &&
        e1?.promoActiva == e2?.promoActiva &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(PromocionesRecord? e) => const ListEquality().hash([
        e?.codigoPromocion,
        e?.tituloPromocion,
        e?.descripcionPromo,
        e?.descuentoPorcentaje,
        e?.validoHasta,
        e?.productosAplicable,
        e?.promoActiva,
        e?.imagen
      ]);

  @override
  bool isValidKey(Object? o) => o is PromocionesRecord;
}
