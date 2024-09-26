import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'forget_password_copy_widget.dart' show ForgetPasswordCopyWidget;
import 'package:flutter/material.dart';

class ForgetPasswordCopyModel
    extends FlutterFlowModel<ForgetPasswordCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for password widget.
  FocusNode? passwordFocusNode1;
  TextEditingController? passwordTextController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordTextController1Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode2;
  TextEditingController? passwordTextController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordTextController2Validator;
  // Stores action output result for [Backend Call - API (resetPass)] action in Button widget.
  ApiCallResponse? apiResultm0x;

  @override
  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  @override
  void dispose() {
    passwordFocusNode1?.dispose();
    passwordTextController1?.dispose();

    passwordFocusNode2?.dispose();
    passwordTextController2?.dispose();
  }
}
