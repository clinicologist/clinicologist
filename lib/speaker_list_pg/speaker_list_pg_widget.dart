import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'speaker_list_pg_model.dart';
export 'speaker_list_pg_model.dart';

class SpeakerListPgWidget extends StatefulWidget {
  const SpeakerListPgWidget({super.key});

  @override
  State<SpeakerListPgWidget> createState() => _SpeakerListPgWidgetState();
}

class _SpeakerListPgWidgetState extends State<SpeakerListPgWidget> {
  late SpeakerListPgModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpeakerListPgModel());

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
        title: 'speaker_list_pg',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              title: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 1200.0,
                  ),
                  decoration: BoxDecoration(),
                ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            ),
          ),
        ));
  }
}
