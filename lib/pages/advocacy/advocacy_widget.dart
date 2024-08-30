import '/backend/api_requests/api_calls.dart';
import '/components/errorwidget_widget.dart';
import '/components/list_item_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'advocacy_model.dart';
export 'advocacy_model.dart';

class AdvocacyWidget extends StatefulWidget {
  const AdvocacyWidget({super.key});

  @override
  State<AdvocacyWidget> createState() => _AdvocacyWidgetState();
}

class _AdvocacyWidgetState extends State<AdvocacyWidget>
    with TickerProviderStateMixin {
  late AdvocacyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdvocacyModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(30.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(30.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(30.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 400.0,
                  child: Stack(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                          child: Image.asset(
                            'assets/images/home_collage.png',
                            width: double.infinity,
                            height: 350.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.8,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 15.0,
                                      color: Color(0x33000000),
                                      offset: Offset(
                                        0.0,
                                        2.0,
                                      ),
                                      spreadRadius: 10.0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'Welcome',
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 26.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                ),
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 20.0,
                              decoration: const BoxDecoration(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Outreach',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation1']!),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('viewall');
                              },
                              child: Text(
                                'See All',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 260.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: FutureBuilder<ApiCallResponse>(
                          future: FFAppState().loadOutreach(
                            requestFn: () =>
                                BackendGroup.getOutreachCall.call(),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            final listViewGetOutreachResponse = snapshot.data!;

                            return Builder(
                              builder: (context) {
                                final eventsList = BackendGroup.getOutreachCall
                                        .eventsList(
                                          listViewGetOutreachResponse.jsonBody,
                                        )
                                        ?.toList() ??
                                    [];
                                if (eventsList.isEmpty) {
                                  return const ErrorwidgetWidget();
                                }

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: eventsList.length,
                                  itemBuilder: (context, eventsListIndex) {
                                    final eventsListItem =
                                        eventsList[eventsListIndex];
                                    return Container(
                                      width: 300.0,
                                      height: 120.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: ListItemWidget(
                                        key: Key(
                                            'Key7y2_${eventsListIndex}_of_${eventsList.length}'),
                                        parameter1: getJsonField(
                                          eventsListItem.toMap(),
                                          r'''$.coverImage''',
                                        ).toString(),
                                        parameter2: eventsListItem.title,
                                        desc: eventsListItem.description,
                                        isHorizontal: true,
                                        eventData: eventsListItem.toMap(),
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Events',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation2']!),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('viewall');
                              },
                              child: Text(
                                'See All',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 260.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: FutureBuilder<ApiCallResponse>(
                          future: FFAppState().loadEvents(
                            requestFn: () => BackendGroup.getEventCall.call(),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            final listViewGetEventResponse = snapshot.data!;

                            return Builder(
                              builder: (context) {
                                final eventsList = BackendGroup.getEventCall
                                        .eventsList(
                                          listViewGetEventResponse.jsonBody,
                                        )
                                        ?.toList() ??
                                    [];
                                if (eventsList.isEmpty) {
                                  return const ErrorwidgetWidget();
                                }

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: eventsList.length,
                                  itemBuilder: (context, eventsListIndex) {
                                    final eventsListItem =
                                        eventsList[eventsListIndex];
                                    return Container(
                                      width: 300.0,
                                      height: 120.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: ListItemWidget(
                                        key: Key(
                                            'Keymb8_${eventsListIndex}_of_${eventsList.length}'),
                                        parameter2: eventsListItem.title,
                                        desc: eventsListItem.description,
                                        parameter1: getJsonField(
                                          eventsListItem.toMap(),
                                          r'''$.coverImage''',
                                        ).toString(),
                                        isHorizontal: true,
                                        eventData: eventsListItem.toMap(),
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Advocacy',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation3']!),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('viewall');
                              },
                              child: Text(
                                'See All',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 260.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: FutureBuilder<ApiCallResponse>(
                          future: FFAppState().loadAdvocacy(
                            requestFn: () => BackendGroup.getAvocacyCall.call(),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            final listViewGetAvocacyResponse = snapshot.data!;

                            return Builder(
                              builder: (context) {
                                final eventsList = BackendGroup.getAvocacyCall
                                        .eventsList(
                                          listViewGetAvocacyResponse.jsonBody,
                                        )
                                        ?.toList() ??
                                    [];
                                if (eventsList.isEmpty) {
                                  return const ErrorwidgetWidget();
                                }

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: eventsList.length,
                                  itemBuilder: (context, eventsListIndex) {
                                    final eventsListItem =
                                        eventsList[eventsListIndex];
                                    return Container(
                                      width: 300.0,
                                      height: 120.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: ListItemWidget(
                                        key: Key(
                                            'Keyqws_${eventsListIndex}_of_${eventsList.length}'),
                                        parameter2: eventsListItem.title,
                                        desc: eventsListItem.description,
                                        parameter1: getJsonField(
                                          eventsListItem.toMap(),
                                          r'''$.coverImage''',
                                        ).toString(),
                                        isHorizontal: true,
                                        eventData: eventsListItem.toMap(),
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
