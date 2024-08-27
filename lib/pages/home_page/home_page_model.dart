import '/components/announcment_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for announcmentComponent component.
  late AnnouncmentComponentModel announcmentComponentModel;

  @override
  void initState(BuildContext context) {
    announcmentComponentModel =
        createModel(context, () => AnnouncmentComponentModel());
  }

  @override
  void dispose() {
    announcmentComponentModel.dispose();
  }
}
