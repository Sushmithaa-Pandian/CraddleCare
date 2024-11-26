import '/flutter_flow/flutter_flow_util.dart';
import 'fetal2_widget.dart' show Fetal2Widget;
import 'package:flutter/material.dart';

class Fetal2Model extends FlutterFlowModel<Fetal2Widget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
