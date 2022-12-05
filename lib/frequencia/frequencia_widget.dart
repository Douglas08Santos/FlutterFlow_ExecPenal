import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FrequenciaWidget extends StatefulWidget {
  const FrequenciaWidget({Key? key}) : super(key: key);

  @override
  _FrequenciaWidgetState createState() => _FrequenciaWidgetState();
}

class _FrequenciaWidgetState extends State<FrequenciaWidget> {
  bool isMediaUploading1 = false;
  String uploadedFileUrl1 = '';

  DateTimeRange? calendarSelectedDay;
  bool isMediaUploading2 = false;
  String uploadedFileUrl2 = '';

  LatLng? currentUserLocationValue;
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
                    weekFormat: true,
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
                    'd/M H:mm',
                    FFAppState().selectedDate,
                    locale: FFLocalizations.of(context).languageCode,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Roboto Mono',
                        fontSize: 20,
                      ),
                ),
                StreamBuilder<List<AttendencesRecord>>(
                  stream: queryAttendencesRecord(
                    queryBuilder: (attendencesRecord) => attendencesRecord
                        .where('input_time',
                            isLessThanOrEqualTo: calendarSelectedDay?.end)
                        .where('voluntary',
                            isEqualTo: columnUsersRecord.reference)
                        .where('input_time',
                            isGreaterThan: calendarSelectedDay?.start),
                  ),
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
                        return ListTile(
                          title: Text(
                            '${dateTimeFormat(
                              'd/M H:mm',
                              listViewAttendencesRecord.inputTime,
                              locale: FFLocalizations.of(context).languageCode,
                            )}-${dateTimeFormat(
                              'd/M H:mm',
                              listViewAttendencesRecord.outputTime,
                              locale: FFLocalizations.of(context).languageCode,
                            )}',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            listViewAttendencesRecord.isChecked!
                                ? 'Validado'
                                : 'Não Validado',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF303030),
                            size: 20,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        );
                      },
                    );
                  },
                ),
                if (!FFAppState().getInputData)
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: FFButtonWidget(
                      onPressed: () async {
                        currentUserLocationValue = await getCurrentUserLocation(
                            defaultLocation: LatLng(0.0, 0.0));
                        setState(
                            () => FFAppState().inTime = getCurrentTimestamp);
                        setState(() => FFAppState().currLocalIn =
                            currentUserLocationValue);
                        final selectedMedia = await selectMedia(
                          multiImage: false,
                        );
                        if (selectedMedia != null &&
                            selectedMedia.every((m) =>
                                validateFileFormat(m.storagePath, context))) {
                          setState(() => isMediaUploading1 = true);
                          var downloadUrls = <String>[];
                          try {
                            showUploadMessage(
                              context,
                              'Uploading file...',
                              showLoading: true,
                            );
                            downloadUrls = (await Future.wait(
                              selectedMedia.map(
                                (m) async =>
                                    await uploadData(m.storagePath, m.bytes),
                              ),
                            ))
                                .where((u) => u != null)
                                .map((u) => u!)
                                .toList();
                          } finally {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            isMediaUploading1 = false;
                          }
                          if (downloadUrls.length == selectedMedia.length) {
                            setState(
                                () => uploadedFileUrl1 = downloadUrls.first);
                            showUploadMessage(context, 'Success!');
                          } else {
                            setState(() {});
                            showUploadMessage(
                                context, 'Failed to upload media');
                            return;
                          }
                        }

                        setState(() => FFAppState().inPhoto = uploadedFileUrl1);
                        setState(() => FFAppState().getInputData = true);
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Dados de entrada salvos!'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      text: 'Marcar Presença - Entrada ',
                      options: FFButtonOptions(
                        width: 300,
                        height: 40,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Roboto Mono',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                if (FFAppState().getInputData)
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: FFButtonWidget(
                      onPressed: () async {
                        currentUserLocationValue = await getCurrentUserLocation(
                            defaultLocation: LatLng(0.0, 0.0));
                        setState(
                            () => FFAppState().outTime = getCurrentTimestamp);
                        setState(() => FFAppState().currLocalOut =
                            currentUserLocationValue);
                        final selectedMedia = await selectMedia(
                          multiImage: false,
                        );
                        if (selectedMedia != null &&
                            selectedMedia.every((m) =>
                                validateFileFormat(m.storagePath, context))) {
                          setState(() => isMediaUploading2 = true);
                          var downloadUrls = <String>[];
                          try {
                            showUploadMessage(
                              context,
                              'Uploading file...',
                              showLoading: true,
                            );
                            downloadUrls = (await Future.wait(
                              selectedMedia.map(
                                (m) async =>
                                    await uploadData(m.storagePath, m.bytes),
                              ),
                            ))
                                .where((u) => u != null)
                                .map((u) => u!)
                                .toList();
                          } finally {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            isMediaUploading2 = false;
                          }
                          if (downloadUrls.length == selectedMedia.length) {
                            setState(
                                () => uploadedFileUrl2 = downloadUrls.first);
                            showUploadMessage(context, 'Success!');
                          } else {
                            setState(() {});
                            showUploadMessage(
                                context, 'Failed to upload media');
                            return;
                          }
                        }

                        setState(
                            () => FFAppState().outPhoto = uploadedFileUrl2);
                        setState(() => FFAppState().getInputData = false);
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Dados de saida salvos!'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );

                        final attendencesCreateData =
                            createAttendencesRecordData(
                          inputTime: FFAppState().inTime,
                          outputTime: FFAppState().outTime,
                          isChecked: false,
                          voluntary: currentUserReference,
                          institution: currentUserDocument!.institution,
                          comment: '',
                          inputLocal: FFAppState().currLocalIn,
                          outputLocal: FFAppState().currLocalOut,
                          inputPhoto: FFAppState().inPhoto,
                          outputPhoto: FFAppState().outPhoto,
                        );
                        await AttendencesRecord.collection
                            .doc()
                            .set(attendencesCreateData);
                      },
                      text: 'Marcar Presença - Saída',
                      options: FFButtonOptions(
                        width: 300,
                        height: 40,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Roboto Mono',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
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
