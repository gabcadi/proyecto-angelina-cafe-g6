import '/flutter_flow/flutter_flow_util.dart';
import 'agregar_producto_a_d_m07_widget.dart' show AgregarProductoADM07Widget;
import 'package:flutter/material.dart';

class AgregarProductoADM07Model
    extends FlutterFlowModel<AgregarProductoADM07Widget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataCvp = false;
  FFUploadedFile uploadedLocalFile_uploadDataCvp =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataCvp = '';

  // State field(s) for txtNameAddProduct widget.
  FocusNode? txtNameAddProductFocusNode;
  TextEditingController? txtNameAddProductTextController;
  String? Function(BuildContext, String?)?
      txtNameAddProductTextControllerValidator;
  // State field(s) for txtPrecioAddProduct widget.
  FocusNode? txtPrecioAddProductFocusNode;
  TextEditingController? txtPrecioAddProductTextController;
  String? Function(BuildContext, String?)?
      txtPrecioAddProductTextControllerValidator;
  // State field(s) for txtCategoriaAddProduct widget.
  FocusNode? txtCategoriaAddProductFocusNode;
  TextEditingController? txtCategoriaAddProductTextController;
  String? Function(BuildContext, String?)?
      txtCategoriaAddProductTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNameAddProductFocusNode?.dispose();
    txtNameAddProductTextController?.dispose();

    txtPrecioAddProductFocusNode?.dispose();
    txtPrecioAddProductTextController?.dispose();

    txtCategoriaAddProductFocusNode?.dispose();
    txtCategoriaAddProductTextController?.dispose();
  }
}
