import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_location_page_model.dart';
export 'user_location_page_model.dart';

class UserLocationPageWidget extends StatefulWidget {
  const UserLocationPageWidget({
    Key? key,
    required this.rideDetailsReference,
  }) : super(key: key);

  final DocumentReference? rideDetailsReference;

  @override
  _UserLocationPageWidgetState createState() => _UserLocationPageWidgetState();
}

class _UserLocationPageWidgetState extends State<UserLocationPageWidget> {
  late UserLocationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserLocationPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return StreamBuilder<RideRecord>(
      stream: RideRecord.getDocument(widget.rideDetailsReference!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.black,
                  ),
                ),
              ),
            ),
          );
        }
        final userLocationPageRideRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: Color(0xFF2E3C45),
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Color(0xFF2E3C45),
                  size: 30.0,
                ),
                onPressed: () async {
                  Navigator.pop(context);
                },
              ),
              title: Text(
                'USER LOCATION',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Coolvetica',
                      color: Color(0xFFFFF3F3),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      useGoogleFonts: false,
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.RouteViewLive(
                      width: double.infinity,
                      height: double.infinity,
                      iOSGoogleMapsApiKey:
                          'AIzaSyANKGba7-_s6KJasVC5PM7zzhwTWGjheMg',
                      androidGoogleMapsApiKey:
                          'AIzaSyB9WDZ0G0qztT2sCzZ6pBvcQ_qPr8vaNsk',
                      webGoogleMapsApiKey:
                          'AIzaSyCvtWeicE3aYkgsDuUWV9v7kl7MujA0o_Y',
                      startAddress: '-',
                      destinationAddress: '-',
                      lineColor: Color(0xFF016A2B),
                      startCoordinate:
                          userLocationPageRideRecord.driverLocation!,
                      endCoordinate: userLocationPageRideRecord.userLocation!,
                      rideDetailsReference:
                          userLocationPageRideRecord.reference,
                      updateInterval: 5,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF2E3C45),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 36.0,
                                ),
                                Text(
                                  '   Passenger',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Coolvetica',
                                        color: Colors.white,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.solidStar,
                                  color: FlutterFlowTheme.of(context).warning,
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      '4.97',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Coolvetica',
                                            color: Colors.white,
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 2.0,
                        indent: 16.0,
                        endIndent: 16.0,
                        color: Color(0x7FF1F4F8),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 16.0, 15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              FFAppState().routeDuration,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Coolvetica',
                                    color: Colors.white,
                                    fontSize: 23.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'away',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Coolvetica',
                                      color: Colors.white,
                                      fontSize: 23.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                FFAppState().routeDistance,
                                textAlign: TextAlign.end,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Coolvetica',
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Offered fare:',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Coolvetica',
                                    color: Colors.white,
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Text(
                                userLocationPageRideRecord.fare,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Coolvetica',
                                      color: Colors.white,
                                      fontSize: 23.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Open chat',
                              icon: Icon(
                                Icons.chat_bubble_outline_rounded,
                                size: 30.0,
                              ),
                              options: FFButtonOptions(
                                width: 360.0,
                                height: 60.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFA7E92F),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Coolvetica',
                                      color: Color(0xFF2E3C45),
                                      fontSize: 23.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
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
        );
      },
    );
  }
}
