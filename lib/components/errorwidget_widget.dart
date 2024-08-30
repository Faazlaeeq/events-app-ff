import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'errorwidget_model.dart';
export 'errorwidget_model.dart';

class ErrorwidgetWidget extends StatefulWidget {
  const ErrorwidgetWidget({super.key});

  @override
  State<ErrorwidgetWidget> createState() => _ErrorwidgetWidgetState();
}

class _ErrorwidgetWidgetState extends State<ErrorwidgetWidget> {
  late ErrorwidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ErrorwidgetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
            child: Icon(
              Icons.error_outline,
              color: FlutterFlowTheme.of(context).error,
              size: 24.0,
            ),
          ),
          Text(
            'No data found!',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).error,
                  letterSpacing: 0.0,
                ),
          ),
        ],
      ),
    );
  }
}
