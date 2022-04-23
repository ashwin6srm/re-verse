import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class WishlistWidget extends StatefulWidget {
  const WishlistWidget({Key key}) : super(key: key);

  @override
  _WishlistWidgetState createState() => _WishlistWidgetState();
}

class _WishlistWidgetState extends State<WishlistWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int countControllerValue1;
  int countControllerValue2;
  int countControllerValue3;
  int countControllerValue4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF00ADB5),
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
          'Wishlist',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: Color(0xFF222831),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                          child: Image.network(
                            'data:image/jpeg;base64,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',
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 20, 0, 20),
                          child: Image.network(
                            'https://media.stylus.com/global/processedimages/2018/january/_cf_2018/ecob/13_ecobirdy_charlie_chair_set_--__w_760_.jpg',
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 20, 0, 20),
                          child: Image.network(
                            'https://i.insider.com/5c950578ffcb2715b6251705?width=1136&format=jpeg',
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 20, 0, 20),
                          child: Image.network(
                            'https://recyclenation.com/wp-content/uploads/2015/05/plastics3.jpg',
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 20),
                    child: Text(
                      'Recycled Plastic Vases\n - 5 in pack \nRs. 370',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFFEEEFF5),
                            fontSize: 16,
                          ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xFFD8D4D4),
                            borderRadius: BorderRadius.circular(25),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xFF9E9E9E),
                              width: 1,
                            ),
                          ),
                          child: FlutterFlowCountController(
                            decrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.minus,
                              color: enabled
                                  ? Color(0xDD000000)
                                  : Color(0xFFEEEEEE),
                              size: 20,
                            ),
                            incrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.plus,
                              color: enabled ? Colors.blue : Color(0xFFEEEEEE),
                              size: 20,
                            ),
                            countBuilder: (count) => Text(
                              count.toString(),
                              style: GoogleFonts.getFont(
                                'Roboto',
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            count: countControllerValue1 ??= 0,
                            updateCount: (count) =>
                                setState(() => countControllerValue1 = count),
                            stepSize: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Add to Cart',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFFF7F7F9),
                            ),
                      ),
                    ],
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 20),
                    child: Text(
                      'Recycled Plastic Chair\n - 1 pc\nRs.500',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFFEEEFF5),
                            fontSize: 16,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xFFD8D4D4),
                        borderRadius: BorderRadius.circular(25),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFF9E9E9E),
                          width: 1,
                        ),
                      ),
                      child: FlutterFlowCountController(
                        decrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.minus,
                          color:
                              enabled ? Color(0xDD000000) : Color(0xFFEEEEEE),
                          size: 20,
                        ),
                        incrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.plus,
                          color: enabled ? Colors.blue : Color(0xFFEEEEEE),
                          size: 20,
                        ),
                        countBuilder: (count) => Text(
                          count.toString(),
                          style: GoogleFonts.getFont(
                            'Roboto',
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        count: countControllerValue2 ??= 0,
                        updateCount: (count) =>
                            setState(() => countControllerValue2 = count),
                        stepSize: 1,
                      ),
                    ),
                  ),
                  Text(
                    'Add to Cart',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFFF7F7F9),
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 40, 0, 20),
                    child: Text(
                      'Recycled Plastic Glases\n - 1 pc\nRs. 450',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFFEEEFF5),
                            fontSize: 16,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xFFD8D4D4),
                        borderRadius: BorderRadius.circular(25),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFF9E9E9E),
                          width: 1,
                        ),
                      ),
                      child: FlutterFlowCountController(
                        decrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.minus,
                          color:
                              enabled ? Color(0xDD000000) : Color(0xFFEEEEEE),
                          size: 20,
                        ),
                        incrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.plus,
                          color: enabled ? Colors.blue : Color(0xFFEEEEEE),
                          size: 20,
                        ),
                        countBuilder: (count) => Text(
                          count.toString(),
                          style: GoogleFonts.getFont(
                            'Roboto',
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        count: countControllerValue3 ??= 0,
                        updateCount: (count) =>
                            setState(() => countControllerValue3 = count),
                        stepSize: 1,
                      ),
                    ),
                  ),
                  Text(
                    'Add to Cart',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFFF7F7F9),
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 40, 0, 20),
                    child: Text(
                      'Recycled Plastic Glases\n - 1 pc\nRs. 450',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFFEEEFF5),
                            fontSize: 16,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xFFD8D4D4),
                        borderRadius: BorderRadius.circular(25),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFF9E9E9E),
                          width: 1,
                        ),
                      ),
                      child: FlutterFlowCountController(
                        decrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.minus,
                          color:
                              enabled ? Color(0xDD000000) : Color(0xFFEEEEEE),
                          size: 20,
                        ),
                        incrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.plus,
                          color: enabled ? Colors.blue : Color(0xFFEEEEEE),
                          size: 20,
                        ),
                        countBuilder: (count) => Text(
                          count.toString(),
                          style: GoogleFonts.getFont(
                            'Roboto',
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        count: countControllerValue4 ??= 0,
                        updateCount: (count) =>
                            setState(() => countControllerValue4 = count),
                        stepSize: 1,
                      ),
                    ),
                  ),
                  Text(
                    'Add to Cart',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFFF7F7F9),
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
