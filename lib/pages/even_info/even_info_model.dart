import '/components/event_info_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'even_info_widget.dart' show EvenInfoWidget;
import 'package:flutter/material.dart';

class EvenInfoModel extends FlutterFlowModel<EvenInfoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for eventInfoRow component.
  late EventInfoRowModel eventInfoRowModel1;
  // Model for eventInfoRow component.
  late EventInfoRowModel eventInfoRowModel2;
  // Model for eventInfoRow component.
  late EventInfoRowModel eventInfoRowModel3;

  @override
  void initState(BuildContext context) {
    eventInfoRowModel1 = createModel(context, () => EventInfoRowModel());
    eventInfoRowModel2 = createModel(context, () => EventInfoRowModel());
    eventInfoRowModel3 = createModel(context, () => EventInfoRowModel());
  }

  @override
  void dispose() {
    eventInfoRowModel1.dispose();
    eventInfoRowModel2.dispose();
    eventInfoRowModel3.dispose();
  }
}
