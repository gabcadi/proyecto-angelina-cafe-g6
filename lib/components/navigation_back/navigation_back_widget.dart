import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'navigation_back_model.dart';
export 'navigation_back_model.dart';

class NavigationBackWidget extends StatefulWidget {
  const NavigationBackWidget({super.key});

  @override
  State<NavigationBackWidget> createState() => _NavigationBackWidgetState();
}

class _NavigationBackWidgetState extends State<NavigationBackWidget> {
  late NavigationBackModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavigationBackModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.safePop();
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.safePop();
      },
      child: Container(
        width: 50.0,
        height: 55.0,
        decoration: BoxDecoration(
          color: Color(0xFFF5EDDF),
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                3.0,
              ),
              spreadRadius: 4.0,
            )
          ],
          borderRadius: BorderRadius.circular(15.0),
          shape: BoxShape.rectangle,
        ),
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
            size: 25.0,
          ),
        ),
      ),
    );
  }
}
