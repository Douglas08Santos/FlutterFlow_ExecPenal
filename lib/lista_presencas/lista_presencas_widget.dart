import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../presenca_detalhes/presenca_detalhes_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class ListaPresencasWidget extends StatefulWidget {
  const ListaPresencasWidget({
    Key? key,
    this.currUser,
  }) : super(key: key);

  final UsersRecord? currUser;

  @override
  _ListaPresencasWidgetState createState() => _ListaPresencasWidgetState();
}

class _ListaPresencasWidgetState extends State<ListaPresencasWidget> {
  DateTimeRange? calendarSelectedDay;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).black600,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Frequência',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Outfit',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: StreamBuilder<UsersRecord>(
          stream: UsersRecord.getDocument(currentUserReference!),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(
                    color: FlutterFlowTheme.of(context).primaryColor,
                  ),
                ),
              );
            }
            final columnUsersRecord = snapshot.data!;
            return Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: FlutterFlowCalendar(
                    color: FlutterFlowTheme.of(context).primaryColor,
                    weekFormat: false,
                    weekStartsMonday: false,
                    initialDate: getCurrentTimestamp,
                    onChange: (DateTimeRange? newSelectedDate) async {
                      calendarSelectedDay = newSelectedDate;
                      setState(() => FFAppState().selectedDate =
                          calendarSelectedDay?.start);
                      setState(() {});
                    },
                    titleStyle: TextStyle(),
                    dayOfWeekStyle: TextStyle(),
                    dateStyle: TextStyle(),
                    selectedDateStyle: TextStyle(),
                    inactiveDateStyle: TextStyle(),
                    locale: FFLocalizations.of(context).languageCode,
                  ),
                ),
                Text(
                  dateTimeFormat(
                    'MMMMEEEEd',
                    FFAppState().selectedDate,
                    locale: FFLocalizations.of(context).languageCode,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Roboto Mono',
                        fontSize: 20,
                      ),
                ),
                Expanded(
                  child: AuthUserStreamWidget(
                    child: StreamBuilder<List<AttendencesRecord>>(
                      stream: queryAttendencesRecord(
                        queryBuilder: (attendencesRecord) => attendencesRecord
                            .where('input_time',
                                isLessThanOrEqualTo: calendarSelectedDay?.end)
                            .where('voluntary',
                                isEqualTo: widget.currUser!.reference)
                            .where('input_time',
                                isGreaterThan: calendarSelectedDay?.start)
                            .where('institution',
                                isEqualTo: currentUserDocument!.institution),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<AttendencesRecord> listViewAttendencesRecordList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewAttendencesRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewAttendencesRecord =
                                listViewAttendencesRecordList[listViewIndex];
                            return InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        PresencaDetalhesWidget(
                                      currAttendence: listViewAttendencesRecord,
                                    ),
                                  ),
                                );
                              },
                              child: Slidable(
                                actionPane: const SlidableScrollActionPane(),
                                secondaryActions: [
                                  IconSlideAction(
                                    caption: 'Check',
                                    color: FlutterFlowTheme.of(context)
                                        .customColor1,
                                    icon: Icons.check_circle,
                                    onTap: () async {
                                      final attendencesUpdateData =
                                          createAttendencesRecordData(
                                        isChecked: true,
                                        comment: 'Atualizado',
                                      );
                                      await listViewAttendencesRecord.reference
                                          .update(attendencesUpdateData);
                                    },
                                  ),
                                ],
                                child: ListTile(
                                  title: Text(
                                    '${dateTimeFormat(
                                      'd/M H:mm',
                                      listViewAttendencesRecord.inputTime,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )}-${dateTimeFormat(
                                      'd/M H:mm',
                                      listViewAttendencesRecord.outputTime,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )}',
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  subtitle: Text(
                                    listViewAttendencesRecord.isChecked!
                                        ? 'Validado'
                                        : 'Não Validado',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle2,
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFF303030),
                                    size: 20,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  dense: false,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
