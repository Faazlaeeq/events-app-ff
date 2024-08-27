import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'event_info_row_model.dart';
export 'event_info_row_model.dart';

class EventInfoRowWidget extends StatefulWidget {
  const EventInfoRowWidget({
    super.key,
    String? heading1,
    String? time,
    required this.endTime,
    bool? showDash,
  })  : heading1 = heading1 ?? 'Mon, Apr 18 · 21:00 Pm',
        time = time ?? '21:00 Pm - 23.30 Pm',
        showDash = showDash ?? false;

  final String heading1;
  final String time;
  final String? endTime;
  final bool showDash;

  @override
  State<EventInfoRowWidget> createState() => _EventInfoRowWidgetState();
}

class _EventInfoRowWidgetState extends State<EventInfoRowWidget> {
  late EventInfoRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventInfoRowModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
          child: Text(
            widget.heading1,
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  fontFamily: 'Montserrat',
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
              child: Text(
                widget.time,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Montserrat',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Text(
              widget.showDash ? '-' : ' ',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    letterSpacing: 0.0,
                  ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
              child: Text(
                valueOrDefault<String>(
                  widget.endTime,
                  '23.30 pm',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Montserrat',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
