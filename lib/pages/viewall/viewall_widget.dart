import '/backend/api_requests/api_calls.dart';
import '/components/list_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'viewall_model.dart';
export 'viewall_model.dart';

class ViewallWidget extends StatefulWidget {
  const ViewallWidget({super.key});

  @override
  State<ViewallWidget> createState() => _ViewallWidgetState();
}

class _ViewallWidgetState extends State<ViewallWidget>
    with TickerProviderStateMixin {
  late ViewallModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewallModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Explore',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: const Alignment(0.0, 0),
                      child: TabBar(
                        labelColor: FlutterFlowTheme.of(context).primaryText,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        labelStyle:
                            FlutterFlowTheme.of(context).labelSmall.override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                        unselectedLabelStyle: const TextStyle(),
                        indicatorColor: FlutterFlowTheme.of(context).primary,
                        padding: const EdgeInsets.all(4.0),
                        tabs: const [
                          Tab(
                            text: 'Events',
                            icon: FaIcon(
                              FontAwesomeIcons.calendarDay,
                            ),
                          ),
                          Tab(
                            text: 'Outreach',
                            icon: Icon(
                              Icons.beach_access_outlined,
                            ),
                          ),
                          Tab(
                            text: 'Advocacy',
                            icon: Icon(
                              FFIcons.kbullhorn,
                            ),
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [() async {}, () async {}, () async {}][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FutureBuilder<ApiCallResponse>(
                                  future: FFAppState().loadEvents(
                                    requestFn: () =>
                                        BackendGroup.getEventCall.call(),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final listViewGetEventResponse =
                                        snapshot.data!;

                                    return Builder(
                                      builder: (context) {
                                        final events = BackendGroup.getEventCall
                                                .eventsList(
                                                  listViewGetEventResponse
                                                      .jsonBody,
                                                )
                                                ?.toList() ??
                                            [];

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: events.length,
                                          itemBuilder: (context, eventsIndex) {
                                            final eventsItem =
                                                events[eventsIndex];
                                            return Container(
                                              width: 100.0,
                                              height: 260.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 10.0, 10.0, 0.0),
                                                child: ListItemWidget(
                                                  key: Key(
                                                      'Key5lt_${eventsIndex}_of_${events.length}'),
                                                  parameter1: getJsonField(
                                                    eventsItem.toMap(),
                                                    r'''$.coverImage''',
                                                  ).toString(),
                                                  parameter2: eventsItem.title,
                                                  desc: eventsItem.description,
                                                  isHorizontal: false,
                                                  eventData: eventsItem.toMap(),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FutureBuilder<ApiCallResponse>(
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final listViewGetOutreachResponse =
                                        snapshot.data!;

                                    return Builder(
                                      builder: (context) {
                                        final events =
                                            BackendGroup.getOutreachCall
                                                    .eventsList(
                                                      listViewGetOutreachResponse
                                                          .jsonBody,
                                                    )
                                                    ?.toList() ??
                                                [];

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: events.length,
                                          itemBuilder: (context, eventsIndex) {
                                            final eventsItem =
                                                events[eventsIndex];
                                            return Container(
                                              width: 100.0,
                                              height: 260.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 10.0, 10.0, 0.0),
                                                child: ListItemWidget(
                                                  key: Key(
                                                      'Keya1d_${eventsIndex}_of_${events.length}'),
                                                  parameter1: getJsonField(
                                                    eventsItem.toMap(),
                                                    r'''$.coverImage''',
                                                  ).toString(),
                                                  parameter2: eventsItem.title,
                                                  desc: eventsItem.description,
                                                  isHorizontal: false,
                                                  eventData: eventsItem.toMap(),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FutureBuilder<ApiCallResponse>(
                                  future: FFAppState().loadAdvocacy(
                                    requestFn: () =>
                                        BackendGroup.getAvocacyCall.call(),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final listViewGetAvocacyResponse =
                                        snapshot.data!;

                                    return Builder(
                                      builder: (context) {
                                        final events =
                                            BackendGroup.getAvocacyCall
                                                    .eventsList(
                                                      listViewGetAvocacyResponse
                                                          .jsonBody,
                                                    )
                                                    ?.toList() ??
                                                [];

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: events.length,
                                          itemBuilder: (context, eventsIndex) {
                                            final eventsItem =
                                                events[eventsIndex];
                                            return Container(
                                              width: 100.0,
                                              height: 260.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 10.0, 10.0, 0.0),
                                                child: ListItemWidget(
                                                  key: Key(
                                                      'Key8oa_${eventsIndex}_of_${events.length}'),
                                                  parameter1: getJsonField(
                                                    eventsItem.toMap(),
                                                    r'''$.coverImage''',
                                                  ).toString(),
                                                  parameter2: eventsItem.title,
                                                  desc: eventsItem.description,
                                                  isHorizontal: false,
                                                  eventData: eventsItem.toMap(),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
