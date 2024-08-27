import '/flutter_flow/flutter_flow_util.dart';
import 'viewall_widget.dart' show ViewallWidget;
import 'package:flutter/material.dart';

class ViewallModel extends FlutterFlowModel<ViewallWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
