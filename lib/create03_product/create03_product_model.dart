import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'create03_product_widget.dart' show Create03ProductWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Create03ProductModel extends FlutterFlowModel<Create03ProductWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for ImeProizvoda widget.
  FocusNode? imeProizvodaFocusNode;
  TextEditingController? imeProizvodaTextController;
  String? Function(BuildContext, String?)? imeProizvodaTextControllerValidator;
  // State field(s) for napravio widget.
  FocusNode? napravioFocusNode;
  TextEditingController? napravioTextController;
  String? Function(BuildContext, String?)? napravioTextControllerValidator;
  // State field(s) for Cijena widget.
  FocusNode? cijenaFocusNode;
  TextEditingController? cijenaTextController;
  String? Function(BuildContext, String?)? cijenaTextControllerValidator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    imeProizvodaFocusNode?.dispose();
    imeProizvodaTextController?.dispose();

    napravioFocusNode?.dispose();
    napravioTextController?.dispose();

    cijenaFocusNode?.dispose();
    cijenaTextController?.dispose();

    myBioFocusNode?.dispose();
    myBioTextController?.dispose();
  }
}
