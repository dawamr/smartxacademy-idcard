import '/flutter_flow/flutter_flow_util.dart';
import 'design2_widget.dart' show Design2Widget;
import 'package:flutter/material.dart';

class Design2Model extends FlutterFlowModel<Design2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
