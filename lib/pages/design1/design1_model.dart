import '/backend/api_requests/api_calls.dart';
import '/component/navbar_home/navbar_home_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'design1_widget.dart' show Design1Widget;
import 'package:flutter/material.dart';

class Design1Model extends FlutterFlowModel<Design1Widget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getProfile)] action in Design1 widget.
  ApiCallResponse? apiResultProfile;
  // Stores action output result for [Backend Call - API (getProfile)] action in Column widget.
  ApiCallResponse? apiResultProfile2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Model for navbarHome component.
  late NavbarHomeModel navbarHomeModel;

  @override
  void initState(BuildContext context) {
    navbarHomeModel = createModel(context, () => NavbarHomeModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    navbarHomeModel.dispose();
  }
}
