import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'scan_qr_model.dart';
export 'scan_qr_model.dart';

class ScanQrWidget extends StatefulWidget {
  const ScanQrWidget({
    super.key,
    this.data,
  });

  final bool? data;

  @override
  State<ScanQrWidget> createState() => _ScanQrWidgetState();
}

class _ScanQrWidgetState extends State<ScanQrWidget> {
  late ScanQrModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScanQrModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Container(
                width: kBreakpointSmall,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          height: 175.0,
                          decoration: BoxDecoration(
                            color: const Color(0xF1EFEFEF),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Scan Qr Code',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Colors.black,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Text(
                                      'Scan the barcode on the Solarion business card to view the vCard results. \n\nUse a barcode scanner on Chrome, Safari, or any other barcode scanning app.\n\n For Android users, you can try downloading the Solarion vCard from the Play Store.',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.black,
                                            fontSize: 11.5,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          height: MediaQuery.sizeOf(context).height * 0.7,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: Stack(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/identification-card_(3).png',
                                  width: 225.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (isWeb) {
                                        if (isAndroid) {
                                          await launchURL(
                                              'https://play.google.com/store/apps/details?id=com.solarion.idcard&pcampaignid=web_share');
                                        }
                                      } else {
                                        _model.scanQr =
                                            await FlutterBarcodeScanner
                                                .scanBarcode(
                                          '#C62828', // scanning line color
                                          'Cancel', // cancel button text
                                          true, // whether to show the flash icon
                                          ScanMode.QR,
                                        );

                                        context.pushNamed(
                                          'Design1',
                                          pathParameters: {
                                            'name': serializeParam(
                                              functions
                                                  .extractSlugQr(_model.scanQr),
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      }

                                      setState(() {});
                                    },
                                    text: 'Scan',
                                    options: FFButtonOptions(
                                      width: 150.0,
                                      height: 45.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
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
            ),
          ),
        ),
      ),
    );
  }
}
