import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_apenado/home_apenado_widget.dart';
import '../home_responsavel/home_responsavel_widget.dart';
import '../login_register_page/login_register_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginRoleWidget extends StatefulWidget {
  const LoginRoleWidget({Key? key}) : super(key: key);

  @override
  _LoginRoleWidgetState createState() => _LoginRoleWidgetState();
}

class _LoginRoleWidgetState extends State<LoginRoleWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
            await signOut();
            await Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => LoginRegisterPageWidget(),
              ),
              (r) => false,
            );
          },
        ),
        title: Text(
          'Confirmação',
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
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: AuthUserStreamWidget(
                        child: Text(
                          () {
                            if (valueOrDefault<bool>(
                                currentUserDocument?.isAccountable, false)) {
                              return 'Perfil Responsavel';
                            } else if (valueOrDefault<bool>(
                                currentUserDocument?.isVoluntary, false)) {
                              return 'Perfil Voluntario';
                            } else {
                              return 'Perfil não validado';
                            }
                          }(),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (valueOrDefault<bool>(
                            currentUserDocument?.isVoluntary, false))
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: AuthUserStreamWidget(
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeApenadoWidget(),
                                    ),
                                    (r) => false,
                                  );
                                },
                                text: 'Confirmar Voluntário',
                                options: FFButtonOptions(
                                  width: 230,
                                  height: 40,
                                  color: FlutterFlowTheme.of(context).black600,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
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
                          ),
                        if (valueOrDefault<bool>(
                            currentUserDocument?.isAccountable, false))
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: AuthUserStreamWidget(
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          HomeResponsavelWidget(),
                                    ),
                                    (r) => false,
                                  );
                                },
                                text: 'Confirmar Responsavel',
                                options: FFButtonOptions(
                                  width: 230,
                                  height: 40,
                                  color: FlutterFlowTheme.of(context).black600,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
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
                          ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await signOut();
                              await Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      LoginRegisterPageWidget(),
                                ),
                                (r) => false,
                              );
                            },
                            text: 'Sair',
                            options: FFButtonOptions(
                              width: 230,
                              height: 40,
                              color: FlutterFlowTheme.of(context).black600,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
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
