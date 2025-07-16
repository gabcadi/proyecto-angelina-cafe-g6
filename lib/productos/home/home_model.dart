import '/components/logout_button/logout_button_widget.dart';
import '/components/shopping_cart/shopping_cart_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for LogoutButton component.
  late LogoutButtonModel logoutButtonModel;
  // Model for ShoppingCart component.
  late ShoppingCartModel shoppingCartModel;

  @override
  void initState(BuildContext context) {
    logoutButtonModel = createModel(context, () => LogoutButtonModel());
    shoppingCartModel = createModel(context, () => ShoppingCartModel());
  }

  @override
  void dispose() {
    logoutButtonModel.dispose();
    shoppingCartModel.dispose();
  }
}
