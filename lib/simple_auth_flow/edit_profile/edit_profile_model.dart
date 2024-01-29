import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;
  // State field(s) for yourEmail widget.
  FocusNode? yourEmailFocusNode;
  TextEditingController? yourEmailController;
  String? Function(BuildContext, String?)? yourEmailControllerValidator;
  // State field(s) for Phoneno widget.
  FocusNode? phonenoFocusNode;
  TextEditingController? phonenoController;
  String? Function(BuildContext, String?)? phonenoControllerValidator;
  // State field(s) for registrationno widget.
  FocusNode? registrationnoFocusNode;
  TextEditingController? registrationnoController;
  String? Function(BuildContext, String?)? registrationnoControllerValidator;
  // State field(s) for hospitalname widget.
  FocusNode? hospitalnameFocusNode;
  TextEditingController? hospitalnameController;
  String? Function(BuildContext, String?)? hospitalnameControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameController?.dispose();

    yourEmailFocusNode?.dispose();
    yourEmailController?.dispose();

    phonenoFocusNode?.dispose();
    phonenoController?.dispose();

    registrationnoFocusNode?.dispose();
    registrationnoController?.dispose();

    hospitalnameFocusNode?.dispose();
    hospitalnameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
