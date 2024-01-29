import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'datacollectionandsecurity_model.dart';
export 'datacollectionandsecurity_model.dart';

class DatacollectionandsecurityWidget extends StatefulWidget {
  const DatacollectionandsecurityWidget({super.key});

  @override
  State<DatacollectionandsecurityWidget> createState() =>
      _DatacollectionandsecurityWidgetState();
}

class _DatacollectionandsecurityWidgetState
    extends State<DatacollectionandsecurityWidget> {
  late DatacollectionandsecurityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DatacollectionandsecurityModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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

    return Title(
        title: 'Datacollectionandsecurity',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Text(
                'Data collection and security',
                style: FlutterFlowTheme.of(context).bodyLarge,
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                'assets/images/logo_75.png',
                                width: 40.0,
                                height: 44.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'clinicologist',
                                    style:
                                        FlutterFlowTheme.of(context).bodyLarge,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      'JAN 2024',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              await launchUrl(Uri(
                                scheme: 'mailto',
                                path: 'contact@clinicologist.com',
                              ));
                            },
                            text: 'contact us',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Lato',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 240.0,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://picsum.photos/seed/669/600',
                              width: double.infinity,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 6.0,
                                    sigmaY: 2.0,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Container(
                                      width: 64.0,
                                      height: 64.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.document_scanner_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 44.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Text(
                        'Data collection and security',
                        style: FlutterFlowTheme.of(context).headlineMedium,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Text(
                        'Introduction',
                        style: FlutterFlowTheme.of(context).bodyLarge,
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Text(
                              'At clinicologist, we prioritize the privacy and security of our users\' data. This policy outlines our practices regarding the collection, use, and protection of personal data to ensure transparency and trust among our users, especially those in the medical community.\n\nData Collection\nTypes of Data Collected\n\nPersonal Identification Information: Including but not limited to name, email address, professional credentials, and contact details.\nUsage Data: Information on how users interact with our app, such as event preferences, search queries, and session durations.\nDevice and Technical Data: IP addresses, browser types, operating system details, and other technical information related to the device used.\nMethods of Data Collection\n\nDirect Collection: When users register, subscribe, or interact directly with our app.\nIndirect Collection: Through the use of cookies and similar technologies to track app usage and preferences.\nData Use\nImproving App Functionality: To enhance user experience and develop new features.\nCommunication: To provide updates, support, and information related to medical events and speakers.\nAnalytics and Research: For understanding user behavior and needs to inform our strategic direction.\nData Security\nSecurity Measures\n\nEncryption: Utilizing industry-standard encryption methods to protect data during transmission and storage.\nAccess Controls: Implementing strict access controls to ensure only authorized personnel can access sensitive data.\nRegular Audits: Conducting regular security audits and assessments to identify and address potential vulnerabilities.\nData Breach Protocols\n\nImmediate Action: In the event of a data breach, immediate steps will be taken to secure the system and identify the cause.\nNotification: Affected users will be promptly notified in accordance with legal requirements.\nInvestigation and Rectification: A thorough investigation will be conducted, followed by measures to prevent future occurrences.\nUser Rights\nAccess and Control: Users have the right to access their personal data and control its use, including options to update, delete, or restrict data use.\nConsent and Withdrawal: Collection and processing of data are based on user consent, which can be withdrawn at any time.\nThird-Party Sharing\nData is not shared with third parties except for essential service providers or when legally required.\nInternational Data Transfer\nIf data is transferred internationally, we ensure adequate protection and compliance with applicable data protection laws.\nPolicy Updates\nThis policy may be updated periodically to reflect changes in our practices or regulatory requirements.\nContact Information\nFor questions or concerns regarding this policy, please contact contact@clinicologist.com',
                              style: FlutterFlowTheme.of(context).labelMedium,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await launchUrl(Uri(
                                    scheme: 'mailto',
                                    path: 'contact@clinicologist.com',
                                    query: {
                                      'subject':
                                          'Request for Deletion of Personal Data',
                                      'body':
                                          'I have been a user of clinicologist with the above-mentioned details. For personal reasons, I have decided to discontinue using your service and would like to exercise my right to be forgotten.  According to the data protection and privacy policy I agreed to when I signed up, I understand that I can request the deletion of my personal data. Therefore, I kindly ask that you remove all data related to my account from your databases, backups, and any other forms of processing and/or storage.  If there are any specific procedures I need to follow to facilitate this process, please inform me accordingly. Additionally, I would appreciate a confirmation email once my data has been completely removed from your systems.  Thank you for your attention to this matter. I look forward to your prompt response confirming the actions taken regarding my request.  Best regards,',
                                    }
                                        .entries
                                        .map((MapEntry<String, String> e) =>
                                            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                        .join('&')));
                              },
                              text: 'Delete Your Data',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Lato',
                                      color: Colors.white,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
              ),
            ),
          ),
        ));
  }
}
