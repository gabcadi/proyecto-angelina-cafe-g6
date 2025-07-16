import '/components/navigation_back/navigation_back_widget.dart';
import '/components/shopping_cart/shopping_cart_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detalle_producto_widget.dart' show DetalleProductoWidget;
import 'package:flutter/material.dart';

class DetalleProductoModel extends FlutterFlowModel<DetalleProductoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavigationBack component.
  late NavigationBackModel navigationBackModel;
  // Model for ShoppingCart component.
  late ShoppingCartModel shoppingCartModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    navigationBackModel = createModel(context, () => NavigationBackModel());
    shoppingCartModel = createModel(context, () => ShoppingCartModel());
  }

  @override
  void dispose() {
    navigationBackModel.dispose();
    shoppingCartModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
