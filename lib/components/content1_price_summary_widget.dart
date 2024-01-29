import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'content1_price_summary_model.dart';
export 'content1_price_summary_model.dart';

class Content1PriceSummaryWidget extends StatefulWidget {
  const Content1PriceSummaryWidget({
    super.key,
    required this.registrationfee,
    required this.platformfee,
    required this.discount,
    required this.totalfee,
  });

  final int? registrationfee;
  final int? platformfee;
  final int? discount;
  final int? totalfee;

  @override
  State<Content1PriceSummaryWidget> createState() =>
      _Content1PriceSummaryWidgetState();
}

class _Content1PriceSummaryWidgetState
    extends State<Content1PriceSummaryWidget> {
  late Content1PriceSummaryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Content1PriceSummaryModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Fees Breakdown',
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Registration fee',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 10.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                    Text(
                      formatNumber(
                        widget.registrationfee,
                        formatType: FormatType.decimal,
                        decimalType: DecimalType.automatic,
                        currency: '₹',
                      ),
                      textAlign: TextAlign.end,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Lato',
                            fontSize: 12.0,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Platform Fee',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 10.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                    Text(
                      formatNumber(
                        widget.platformfee,
                        formatType: FormatType.decimal,
                        decimalType: DecimalType.automatic,
                        currency: '₹',
                      ),
                      textAlign: TextAlign.end,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Lato',
                            fontSize: 12.0,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Discount',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 10.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                    Text(
                      formatNumber(
                        widget.discount,
                        formatType: FormatType.decimal,
                        decimalType: DecimalType.automatic,
                        currency: '₹',
                      ),
                      textAlign: TextAlign.end,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Lato',
                            fontSize: 12.0,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Total',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Outfit',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ],
                    ),
                    Text(
                      formatNumber(
                        functions.totalfee(widget.registrationfee,
                            widget.platformfee, widget.discount),
                        formatType: FormatType.decimal,
                        decimalType: DecimalType.automatic,
                        currency: '₹',
                      ),
                      style: FlutterFlowTheme.of(context).headlineLarge,
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
