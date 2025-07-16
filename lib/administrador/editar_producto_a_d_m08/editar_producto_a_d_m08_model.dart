import '/flutter_flow/flutter_flow_util.dart';
import 'editar_producto_a_d_m08_widget.dart' show EditarProductoADM08Widget;
import 'package:flutter/material.dart';

class EditarProductoADM08Model
    extends FlutterFlowModel<EditarProductoADM08Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNombreEditProducto widget.
  FocusNode? txtNombreEditProductoFocusNode;
  TextEditingController? txtNombreEditProductoTextController;
  String? Function(BuildContext, String?)?
      txtNombreEditProductoTextControllerValidator;
  // State field(s) for txtPrecioEditProducto widget.
  FocusNode? txtPrecioEditProductoFocusNode;
  TextEditingController? txtPrecioEditProductoTextController;
  String? Function(BuildContext, String?)?
      txtPrecioEditProductoTextControllerValidator;
  // State field(s) for txtCategoriaEditProducto widget.
  FocusNode? txtCategoriaEditProductoFocusNode;
  TextEditingController? txtCategoriaEditProductoTextController;
  String? Function(BuildContext, String?)?
      txtCategoriaEditProductoTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreEditProductoFocusNode?.dispose();
    txtNombreEditProductoTextController?.dispose();

    txtPrecioEditProductoFocusNode?.dispose();
    txtPrecioEditProductoTextController?.dispose();

    txtCategoriaEditProductoFocusNode?.dispose();
    txtCategoriaEditProductoTextController?.dispose();
  }
}
