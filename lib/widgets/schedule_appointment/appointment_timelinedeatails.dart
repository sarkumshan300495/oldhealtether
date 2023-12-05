import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:healtether_app/widgets/schedule_appointment/appointment.dart';
import 'package:intl/intl.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Appointment_Details_timeline extends StatefulWidget {
  @override
  State<Appointment_Details_timeline> createState() =>
      _Appointment_Details_timelineState();
}

class _Appointment_Details_timelineState
    extends State<Appointment_Details_timeline> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Appointment Details',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            shadowColor: Color(0xFFC7E9E3),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            icon: Image.asset(
              "assets/popmenu.png",
              height: 20,
              width: 20,
            ),
            color: const Color.fromARGB(255, 255, 255, 255),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                onTap: () {
                  Future.delayed(Duration.zero).then((value) {
                    showAlert(context);
                  });
                },
                value: "1",
                child: const Text(
                  'Schedule Follow-up ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              PopupMenuItem<String>(
                  onTap: () {
                    Future.delayed(Duration.zero).then((value) {
                      showAlert2(context);
                    });
                  },
                  value: "2",
                  child: const Text(
                    'Reschedule Appointment',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  )),
              PopupMenuItem<String>(
                onTap: () {
                  Future.delayed(Duration.zero).then((value) {
                    showAlert3(context);
                  });
                },
                value: "3",
                child: const Text(
                  'Cancel Appointment',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const PopupMenuItem<String>(
                value: "4",
                child: Text(
                  'View Patient details',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              PopupMenuItem<String>(
                onTap: () {
                  Future.delayed(Duration.zero).then((value) {
                    showAlert5(context);
                  });
                },
                value: "4",
                child: Text(
                  'Notify Patient',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              PopupMenuItem<String>(
                onTap: () {
                  Future.delayed(Duration.zero).then((value) {
                    showAlert4(context);
                  });
                },
                value: "4",
                child: Text(
                  'Delete Patient ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // pastappointmentdetailspageTwB (1:5762)
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(20 * fem),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupzqhkBMP (NUyUbTZR9RWjbjUxk9ZQhK)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 90 * fem),
                  width: double.infinity,
                  height: 672 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // frame595uYH (1:5763)
                        left: 27 * fem,
                        top: 10 * fem,
                        child: Container(
                          width: 337.02 * fem,
                          height: 560 * fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupzt6h1rD (NUyUoTDS1W733BbwgVzt6h)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 28 * fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // appointmentinfoYLM (1:5774)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 19 * fem),
                                      padding: EdgeInsets.fromLTRB(
                                          18 * fem, 9 * fem, 18 * fem, 20 * fem),
                                      width: 336 * fem,
                                      decoration: BoxDecoration(
                                        color: Color(0xfff7f0fc),
                                        borderRadius:
                                            BorderRadius.circular(10 * fem),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // lastappointmentR9F (1:5793)
                                            margin: EdgeInsets.fromLTRB(7 * fem,
                                                0 * fem, 5 * fem, 11 * fem),
                                            width: double.infinity,
                                            height: 97 * fem,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // lastappointmentwithdrajitbhall (1:5799)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      51 * fem,
                                                      6 * fem),
                                                  constraints: BoxConstraints(
                                                    maxWidth: 136 * fem,
                                                  ),
                                                  child: Text(
                                                    'Last appointment with Dr. Ajit Bhalla',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 14 * ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.3899999346 *
                                                          ffem /
                                                          fem,
                                                      letterSpacing: 0.77 * fem,
                                                      color: Color(0xff5c5c5c),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // frame332ofb (1:5794)
                                                  height: double.infinity,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        // frame326kaq (1:5795)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                9 * fem),
                                                        width: 90 * fem,
                                                        height: 65 * fem,
                                                        child: Stack(
                                                          children: [
                                                            Positioned(
                                                              // UWq (1:5796)
                                                              left: 0 * fem,
                                                              top: 0 * fem,
                                                              child: Align(
                                                                child: SizedBox(
                                                                  width: 89 * fem,
                                                                  height:
                                                                      51 * fem,
                                                                  child: Text(
                                                                    '14:20',
                                                                    style:
                                                                        TextStyle(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          36 *
                                                                              ffem,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      height:
                                                                          1.3900000254 *
                                                                              ffem /
                                                                              fem,
                                                                      color: Color(
                                                                          0xff000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Positioned(
                                                              // slot2ZYH (1:5797)
                                                              left: 38 * fem,
                                                              top: 48 * fem,
                                                              child: Align(
                                                                child: SizedBox(
                                                                  width: 52 * fem,
                                                                  height:
                                                                      17 * fem,
                                                                  child: Text(
                                                                    'Slot - 2 ',
                                                                    style:
                                                                        TextStyle(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          12 *
                                                                              ffem,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      height:
                                                                          1.3900000254 *
                                                                              ffem /
                                                                              fem,
                                                                      letterSpacing:
                                                                          0.66 *
                                                                              fem,
                                                                      color: Color(
                                                                          0xff000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        // july2023TtZ (1:5798)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                4 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          '1 July, 2023',
                                                          style: TextStyle(
                                                            fontFamily: 'Poppins',
                                                            fontSize: 16 * ffem,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 1.3899999857 *
                                                                ffem /
                                                                fem,
                                                            letterSpacing:
                                                                0.88 * fem,
                                                            color:
                                                                Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // rectangle1249Nkd (1:5800)
                                            margin: EdgeInsets.fromLTRB(20 * fem,
                                                0 * fem, 16 * fem, 7 * fem),
                                            width: double.infinity,
                                            height: 2 * fem,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment(1, 1),
                                                end: Alignment(-0.83, 1.001),
                                                colors: <Color>[
                                                  Color(0x00d9d9d9),
                                                  Color(0xff03bf9c),
                                                  Color(0x00d9d9d9)
                                                ],
                                                stops: <double>[0.057, 0.542, 1],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // frame333FJd (1:5775)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 121 * fem, 15 * fem),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // rameshpatelnpM (1:5776)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      2 * fem),
                                                  child: Text(
                                                    'Ramesh Patel',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 24 * ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.3900000254 *
                                                          ffem /
                                                          fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // v9s (1:5777)
                                                  '+91 896 254654',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height:
                                                        1.3899999857 * ffem / fem,
                                                    letterSpacing: 0.32 * fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // frame577rpD (1:5778)
                                            width: double.infinity,
                                            height: 38 * fem,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // frame572Q53 (1:5779)
                                                  padding: EdgeInsets.fromLTRB(
                                                      16 * fem,
                                                      10 * fem,
                                                      16.94 * fem,
                                                      10 * fem),
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffffffff),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8 * fem),
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // chatX9f (1:5780)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                8.94 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          'Chat',
                                                          style: TextStyle(
                                                            fontFamily: 'Poppins',
                                                            fontSize: 12 * ffem,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height: 1.4332596461 *
                                                                ffem /
                                                                fem,
                                                            letterSpacing:
                                                                0.12 * fem,
                                                            color:
                                                                Color(0xff03bf9c),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // ionlogowhatsapp381 (1:5781)
                                                        width: 13.13 * fem,
                                                        height: 13.13 * fem,
                                                        child: Image.asset(
                                                          'assets/images/whatsup-black.png',
                                                          width: 13.13 * fem,
                                                          height: 13.13 * fem,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8 * fem,
                                                ),
                                                Container(
                                                  // frame5749Rw (1:5783)
                                                  padding: EdgeInsets.fromLTRB(
                                                      16 * fem,
                                                      10 * fem,
                                                      18.25 * fem,
                                                      10 * fem),
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffffffff),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8 * fem),
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // callffB (1:5784)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                10.25 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          'Call',
                                                          style: TextStyle(
                                                            fontFamily: 'Poppins',
                                                            fontSize: 12 * ffem,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height: 1.4332596461 *
                                                                ffem /
                                                                fem,
                                                            letterSpacing:
                                                                0.12 * fem,
                                                            color:
                                                                Color(0xff03bf9c),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // icbaselinecallb33 (1:5785)
                                                        width: 13.5 * fem,
                                                        height: 13.5 * fem,
                                                        child: Image.asset(
                                                          'assets/images/ic-baseline-call.png',
                                                          width: 13.5 * fem,
                                                          height: 13.5 * fem,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8 * fem,
                                                ),
                                                Container(
                                                  // frame573hrm (1:5787)
                                                  padding: EdgeInsets.fromLTRB(
                                                      16 * fem,
                                                      10 * fem,
                                                      16 * fem,
                                                      10 * fem),
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffffffff),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8 * fem),
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // viewbillsRGy (1:5788)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                8 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          'View Bills',
                                                          style: TextStyle(
                                                            fontFamily: 'Poppins',
                                                            fontSize: 12 * ffem,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height: 1.4332596461 *
                                                                ffem /
                                                                fem,
                                                            letterSpacing:
                                                                0.12 * fem,
                                                            color:
                                                                Color(0xff03bf9c),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // mingcutebillline8x5 (1:5789)
                                                        width: 18 * fem,
                                                        height: 18 * fem,
                                                        child: Image.asset(
                                                          'assets/images/mingcute-bill-line.png',
                                                          width: 18 * fem,
                                                          height: 18 * fem,
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
                                   Visibility(
                                    visible: true,
                                     child: Container(
                                        // timelinefSD (1:5801)
                                        width: 320,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // frame608Cww (1:5814)
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 245, 17),
                                              height: 25,
                                              child: Text(
                                                'Timeline',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.3899999857,
                                                  letterSpacing: 0.4,
                                                  color: Color(0xff494949),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // group36441JVB (1:5802)
                                              margin:
                                                  EdgeInsets.fromLTRB(14, 0, 0, 0),
                                              width: double.infinity,
                                              height: 144,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // group36440qED (1:5810)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 14, 13, 33),
                                                    width: 8,
                                                    height: double.infinity,
                                                    child: Stack(
                                                      children: [
                                                        Positioned(
                                                          // ellipse782xZj (1:5812)
                                                          left: 0,
                                                          top: 89,
                                                          child: Align(
                                                            child: SizedBox(
                                                              width: 8,
                                                              height: 8,
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4),
                                                                  color: Color(
                                                                      0xff730ac6),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          // ellipse783GaR (1:5813)
                                                          left: 0,
                                                          top: 0,
                                                          child: Align(
                                                            child: SizedBox(
                                                              width: 8,
                                                              height: 8,
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4),
                                                                  color: Color(
                                                                      0xff730ac6),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    // frame598zFX (1:5803)
                                                    width: 285,
                                                    height: double.infinity,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          // frame596LKP (1:5804)
                                                          margin:
                                                              EdgeInsets.fromLTRB(
                                                                  0, 0, 0, 16),
                                                          width: double.infinity,
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                // physicalconsultationappointmen (1:5805)
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxWidth: 285,
                                                                ),
                                                                child: Text(
                                                                  'Physical Consultation appointment of 23 July, 2023 is rescheduled as of 25 July, 2023 at 6:30pm in the evening.',
                                                                  style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize: 13,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        1.3899999765,
                                                                    letterSpacing:
                                                                        0.26,
                                                                    color: Color(
                                                                        0xff000000),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                // july2023ZC9 (1:5806)
                                                                '16 July, 2023',
                                                                style: TextStyle(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 11,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  height:
                                                                      1.5635559776,
                                                                  letterSpacing:
                                                                      0.11,
                                                                  color: Color(
                                                                      0xff730ac6),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          // frame597gnZ (1:5807)
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                // followupappointmentscheduledon (1:5808)
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxWidth: 270,
                                                                ),
                                                                child: Text(
                                                                  'Follow-up appointment scheduled on 12 July, 2023 at 3:20pm in the afternoon.',
                                                                  style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize: 13,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        1.3899999765,
                                                                    letterSpacing:
                                                                        0.26,
                                                                    color: Color(
                                                                        0xff000000),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                // july2023vgu (1:5809)
                                                                '05 July, 2023',
                                                                style: TextStyle(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 11,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  height:
                                                                      1.5635559776,
                                                                  letterSpacing:
                                                                      0.11,
                                                                  color: Color(
                                                                      0xff730ac6),
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
                                          ],
                                        ),
                                      ),
                                   ),
                                    Container(
                                      // createdigitalprescriptionysK (1:4154)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0.02 * fem, 0 * fem),
                                      padding: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 25 * fem),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xffeaeaea),
                                        borderRadius:
                                            BorderRadius.circular(8 * fem),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // uploadprescriptionpic5QZ (1:4158)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 1.2 * fem, 8.17 * fem),
                                            padding: EdgeInsets.fromLTRB(
                                                20 * fem,
                                                16.91 * fem,
                                                22.79 * fem,
                                                15.91 * fem),
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0xffdadada),
                                              borderRadius:
                                                  BorderRadius.circular(8 * fem),
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // uploadprescriptionimagexjF (1:4159)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      68.77 * fem,
                                                      0 * fem),
                                                  constraints: BoxConstraints(
                                                    maxWidth: 163 * fem,
                                                  ),
                                                  child: Text(
                                                    'Upload  Prescription image',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 16 * ffem,
                                                      fontWeight: FontWeight.w500,
                                                      height: 1.3899999857 *
                                                          ffem /
                                                          fem,
                                                      color: Color(0xff7c7c7c),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // uploadcloudrpd (1:4160)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      0.99 * fem),
                                                  width: 61.24 * fem,
                                                  height: 43.36 * fem,
                                                  child: Image.asset(
                                                    'assets/images/upload-cloud.png',
                                                    width: 61.24 * fem,
                                                    height: 43.36 * fem,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // orakd (1:4155)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 12 * fem),
                                            child: Text(
                                              'OR',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.3900000254 * ffem / fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // frame536uY1 (1:4156)
                                            margin: EdgeInsets.fromLTRB(26 * fem,
                                                0 * fem, 26 * fem, 0 * fem),
                                            width: double.infinity,
                                            height: 59 * fem,
                                            decoration: BoxDecoration(
                                              color: Color(0xff03bf9c),
                                              borderRadius:
                                                  BorderRadius.circular(7 * fem),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Create Digital Prescription',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.28125 * ffem / fem,
                                                  letterSpacing: 0.16 * fem,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // notesB89 (1:4145)
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                                width: double.infinity,
                                height: 67,
                                child: Container(
                                  // autogrouptjw5Ww7 (NUxo9qnAJCYvvpMgm4TjW5)
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
                                  width: double.infinity,
                                  height: 66,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // notesSJy (1:4147)
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                                        child: Text(
                                          'NOTES',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            height: 1.28125 / fem,
                                            letterSpacing: -0.16,
                                            color: Color(0xff0d0d0d),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // addaselfnoteYso (1:4148)
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 188.02, 0),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // group363735cq (1:4149)
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 12, 0),
                                              width: 14,
                                              height: 14,
                                              child: Image.asset(
                                                'assets/images/group-36373.png',
                                                width: 14,
                                                height: 14,
                                              ),
                                            ),
                                            Text(
                                              // addaselfnoteCBf (1:4152)
                                              'Add a Self note ',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                height: 1.28125 / fem,
                                                letterSpacing: -0.16,
                                                fontStyle: FontStyle.italic,
                                                color: Color(0xff009176),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // endconsultationXjj (1:4143)
                                margin: EdgeInsets.fromLTRB(
                                    2 * fem, 0 * fem, 1.02 * fem, 0 * fem),
                                width: double.infinity,
                                height: 59 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xff03bf9c),
                                  borderRadius: BorderRadius.circular(7 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'End consultation',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.28125 * ffem / fem,
                                      letterSpacing: 0.16 * fem,
                                      color: Color(0xffffffff),
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
                Opacity(
                  // frame203two (1:5826)
                  opacity: 0,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 1062 * fem),
                    padding: EdgeInsets.fromLTRB(
                        27 * fem, 24 * fem, 24 * fem, 24 * fem),
                    width: double.infinity,
                    height: 138 * fem,
                    decoration: BoxDecoration(
                      color: Color(0x00ffffff),
                    ),
                    child: Container(
                      // frame49173s (1:5827)
                      width: double.infinity,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // doyouwanttocanceltheappointmen (1:5828)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 12 * fem),
                            child: Text(
                              'Do you want to cancel the appointment? ',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.4375 * ffem / fem,
                                letterSpacing: 0.16 * fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // frame204Myo (1:5829)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 3 * fem, 0 * fem),
                            width: double.infinity,
                            height: 55 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frame128hGy (1:5830)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 16 * fem, 0 * fem),
                                  width: 160 * fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xff000000)),
                                    borderRadius: BorderRadius.circular(9 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Yes',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.4375 * ffem / fem,
                                        letterSpacing: 0.16 * fem,
                                        color: Color(0xff6a798a),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame129BC9 (1:5832)
                                  width: 160 * fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xff03bf9c),
                                    borderRadius: BorderRadius.circular(9 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'No',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.4375 * ffem / fem,
                                        letterSpacing: 0.16 * fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Container(
                //   // changelocation5YR (1:5841)
                //   margin:
                //       EdgeInsets.fromLTRB(490 * fem, 0 * fem, 0 * fem, 0 * fem),
                //   width: double.infinity,
                //   height: 844 * fem,
                //   decoration: BoxDecoration(
                //     color: Color(0x66292d32),
                //     borderRadius: BorderRadius.circular(46 * fem),
                //     image: DecorationImage(
                //       image: AssetImage(
                //         'assets/page-1/images/image-3-bg-C2Z.png',
                //       ),
                //     ),
                //   ),
                //   child: Stack(
                //     children: [
                //       Positioned(
                //         // rectangle1160UaZ (1:5843)
                //         left: 0 * fem,
                //         top: 54 * fem,
                //         child: Align(
                //           child: SizedBox(
                //             width: 390 * fem,
                //             height: 790 * fem,
                //             child: Container(
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(30 * fem),
                //                 color: Color(0xffffffff),
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //       Positioned(
                //         // recentsnbF (1:5844)
                //         left: 21 * fem,
                //         top: 410 * fem,
                //         child: Align(
                //           child: SizedBox(
                //             width: 77 * fem,
                //             height: 24 * fem,
                //             child: Text(
                //               'Recents',
                //               style: TextStyle(
                //                 fontFamily: 'Adamina',
                //                 fontSize: 21 * ffem,
                //                 fontWeight: FontWeight.w400,
                //                 height: 1.1428571429 * ffem / fem,
                //                 letterSpacing: -0.21 * fem,
                //                 color: Color(0xff292d32),
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //       Positioned(
                //         // clearallgRj (1:5846)
                //         left: 296 * fem,
                //         top: 414 * fem,
                //         child: Align(
                //           child: SizedBox(
                //             width: 74 * fem,
                //             height: 16 * fem,
                //             child: Text(
                //               'CLEAR ALL',
                //               textAlign: TextAlign.right,
                //               style: TextStyle(
                //                 fontFamily: 'Adamina',
                //                 fontSize: 12 * ffem,
                //                 fontWeight: FontWeight.w400,
                //                 height: 1.3333333333 * ffem / fem,
                //                 letterSpacing: 0.24 * fem,
                //                 color: Color(0xffe47070),
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //       Positioned(
                //         // editaddressaX7 (1:5847)
                //         left: 21 * fem,
                //         top: 94 * fem,
                //         child: Align(
                //           child: SizedBox(
                //             width: 146 * fem,
                //             height: 36 * fem,
                //             child: Text(
                //               'Edit Address',
                //               style: TextStyle(
                //                 fontFamily: 'Adamina',
                //                 fontSize: 24 * ffem,
                //                 fontWeight: FontWeight.w400,
                //                 height: 1.5 * ffem / fem,
                //                 color: Color(0xff292d32),
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //       Positioned(
                //         // rectangle1162gKF (1:5848)
                //         left: 167 * fem,
                //         top: 64 * fem,
                //         child: Align(
                //           child: SizedBox(
                //             width: 55 * fem,
                //             height: 6 * fem,
                //             child: Container(
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(40 * fem),
                //                 color: Color(0xffeff2f5),
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //       Positioned(
                //         // closezqj (1:5849)
                //         left: 331 * fem,
                //         top: 70 * fem,
                //         child: Align(
                //           child: SizedBox(
                //             width: 43 * fem,
                //             height: 43 * fem,
                //             child: Image.asset(
                //               'assets/page-1/images/close-AY5.png',
                //               width: 43 * fem,
                //               height: 43 * fem,
                //             ),
                //           ),
                //         ),
                //       ),
                //       Positioned(
                //         // frame74X4y (1:5853)
                //         left: 21 * fem,
                //         top: 138 * fem,
                //         child: Container(
                //           padding: EdgeInsets.fromLTRB(
                //               13 * fem, 14 * fem, 140 * fem, 14 * fem),
                //           width: 348 * fem,
                //           height: 52 * fem,
                //           decoration: BoxDecoration(
                //             color: Color(0xffeff2f5),
                //             borderRadius: BorderRadius.circular(14 * fem),
                //           ),
                //           child: Row(
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             children: [
                //               Container(
                //                 // vuesaxlinearsearchnormalpJy (1:5854)
                //                 margin: EdgeInsets.fromLTRB(
                //                     0 * fem, 0 * fem, 10 * fem, 0 * fem),
                //                 width: 24 * fem,
                //                 height: 24 * fem,
                //                 child: Image.asset(
                //                   'assets/page-1/images/vuesax-linear-search-normal-Aiy.png',
                //                   width: 24 * fem,
                //                   height: 24 * fem,
                //                 ),
                //               ),
                //               Text(
                //                 // lookforanaddressXz5 (1:5855)
                //                 'Look for an Address',
                //                 style: TextStyle(
                //                   fontFamily: 'Adamina',
                //                   fontSize: 17 * ffem,
                //                   fontWeight: FontWeight.w400,
                //                   height: 1.3529411765 * ffem / fem,
                //                   letterSpacing: -0.17 * fem,
                //                   color: Color(0xffb3bfcb),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //       Positioned(
                //         // savedlocationssHF (1:5856)
                //         left: 21 * fem,
                //         top: 211 * fem,
                //         child: Align(
                //           child: SizedBox(
                //             width: 161 * fem,
                //             height: 24 * fem,
                //             child: Text(
                //               'Saved Locations',
                //               style: TextStyle(
                //                 fontFamily: 'Adamina',
                //                 fontSize: 21 * ffem,
                //                 fontWeight: FontWeight.w400,
                //                 height: 1.1428571429 * ffem / fem,
                //                 letterSpacing: -0.21 * fem,
                //                 color: Color(0xff292d32),
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //       Positioned(
                //         // rectangle1150Zfs (1:5857)
                //         left: 0 * fem,
                //         top: 732 * fem,
                //         child: ClipRect(
                //           child: BackdropFilter(
                //             filter: ImageFilter.blur(
                //               sigmaX: 22 * fem,
                //               sigmaY: 22 * fem,
                //             ),
                //             child: Align(
                //               child: SizedBox(
                //                 width: 390 * fem,
                //                 height: 112 * fem,
                //                 child: Container(
                //                   decoration: BoxDecoration(
                //                     color: Color(0x66ffffff),
                //                   ),
                //                 ),
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //       Positioned(
                //         // frame34fU1 (1:5858)
                //         left: 21 * fem,
                //         top: 750 * fem,
                //         child: Container(
                //           padding: EdgeInsets.fromLTRB(
                //               70 * fem, 20 * fem, 70 * fem, 20 * fem),
                //           width: 348 * fem,
                //           height: 64 * fem,
                //           decoration: BoxDecoration(
                //             color: Color(0xff45b7e8),
                //             borderRadius: BorderRadius.circular(18 * fem),
                //           ),
                //           child: Container(
                //             // frame36ZpH (1:5859)
                //             width: double.infinity,
                //             height: double.infinity,
                //             child: Row(
                //               crossAxisAlignment: CrossAxisAlignment.center,
                //               children: [
                //                 Container(
                //                   // vuesaxboldgpsXFK (1:5860)
                //                   margin: EdgeInsets.fromLTRB(
                //                       0 * fem, 0 * fem, 7 * fem, 0 * fem),
                //                   width: 24 * fem,
                //                   height: 24 * fem,
                //                   child: Image.asset(
                //                     'assets/page-1/images/vuesax-bold-gps-S69.png',
                //                     width: 24 * fem,
                //                     height: 24 * fem,
                //                   ),
                //                 ),
                //                 Text(
                //                   // usecurrentlocationSNH (1:5861)
                //                   'Use Current Location',
                //                   style: TextStyle(
                //                     fontFamily: 'Abril Fatface',
                //                     fontSize: 18 * ffem,
                //                     fontWeight: FontWeight.w400,
                //                     height: 1 * ffem / fem,
                //                     color: Color(0xffffffff),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ),
                //       ),
                //       Positioned(
                //         // frame82Zxh (1:5862)
                //         left: 0 * fem,
                //         top: 466.5 * fem,
                //         child: Container(
                //           width: 390 * fem,
                //           height: 51.5 * fem,
                //           child: Column(
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             children: [
                //               Container(
                //                 // frame75hJD (1:5863)
                //                 margin: EdgeInsets.fromLTRB(
                //                     21 * fem, 0 * fem, 52 * fem, 23.5 * fem),
                //                 width: double.infinity,
                //                 child: Row(
                //                   crossAxisAlignment: CrossAxisAlignment.center,
                //                   children: [
                //                     Container(
                //                       // vuesaxboldlocation2bP (1:5864)
                //                       margin: EdgeInsets.fromLTRB(
                //                           0 * fem, 0 * fem, 14 * fem, 0 * fem),
                //                       width: 28 * fem,
                //                       height: 28 * fem,
                //                       child: Image.asset(
                //                         'assets/page-1/images/vuesax-bold-location-u5P.png',
                //                         width: 28 * fem,
                //                         height: 28 * fem,
                //                       ),
                //                     ),
                //                     Text(
                //                       // georgeavenuebramptononkXP (1:5865)
                //                       '56, George Avenue, Brampton, ON',
                //                       style: TextStyle(
                //                         fontFamily: 'Adamina',
                //                         fontSize: 17 * ffem,
                //                         fontWeight: FontWeight.w400,
                //                         height: 1.3529411765 * ffem / fem,
                //                         letterSpacing: -0.17 * fem,
                //                         color: Color(0xff292d32),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //       Positioned(
                //         // frame834ny (1:5867)
                //         left: 0 * fem,
                //         top: 339.5 * fem,
                //         child: Container(
                //           width: 390 * fem,
                //           height: 49.5 * fem,
                //           child: Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Container(
                //                 // frame75nys (1:5868)
                //                 margin: EdgeInsets.fromLTRB(
                //                     21 * fem, 0 * fem, 78 * fem, 25.5 * fem),
                //                 width: double.infinity,
                //                 child: Row(
                //                   crossAxisAlignment: CrossAxisAlignment.center,
                //                   children: [
                //                     Container(
                //                       // vuesaxboldbuilding8Xw (1:5869)
                //                       margin: EdgeInsets.fromLTRB(
                //                           0 * fem, 0 * fem, 14 * fem, 0 * fem),
                //                       width: 24 * fem,
                //                       height: 24 * fem,
                //                       child: Image.asset(
                //                         'assets/page-1/images/vuesax-bold-building-K41.png',
                //                         width: 24 * fem,
                //                         height: 24 * fem,
                //                       ),
                //                     ),
                //                     Text(
                //                       // kingstreettorontoonrTw (1:5870)
                //                       '31244, King Street, Toronto, ON',
                //                       style: TextStyle(
                //                         fontFamily: 'Adamina',
                //                         fontSize: 17 * ffem,
                //                         fontWeight: FontWeight.w400,
                //                         height: 1.3529411765 * ffem / fem,
                //                         letterSpacing: -0.17 * fem,
                //                         color: Color(0xff292d32),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //       Positioned(
                //         // frame84yoT (1:5872)
                //         left: 0 * fem,
                //         top: 258.5 * fem,
                //         child: Container(
                //           width: 407 * fem,
                //           height: 60.5 * fem,
                //           child: Column(
                //             crossAxisAlignment: CrossAxisAlignment.end,
                //             children: [
                //               Container(
                //                 // frame75hzM (1:5873)
                //                 margin: EdgeInsets.fromLTRB(
                //                     21 * fem, 0 * fem, 0 * fem, 25.5 * fem),
                //                 width: double.infinity,
                //                 child: Row(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     Container(
                //                       // vuesaxboldhomer6Z (1:5874)
                //                       margin: EdgeInsets.fromLTRB(
                //                           0 * fem, 11 * fem, 14 * fem, 0 * fem),
                //                       width: 24 * fem,
                //                       height: 24 * fem,
                //                       child: Image.asset(
                //                         'assets/page-1/images/vuesax-bold-home-oj3.png',
                //                         width: 24 * fem,
                //                         height: 24 * fem,
                //                       ),
                //                     ),
                //                     Text(
                //                       // georgeavenuebramptononl6t8h6Zm (1:5875)
                //                       '34, George Avenue, Brampton,\nON L6T 8H6',
                //                       style: TextStyle(
                //                         fontFamily: 'Adamina',
                //                         fontSize: 17 * ffem,
                //                         fontWeight: FontWeight.w400,
                //                         height: 1.3529411765 * ffem / fem,
                //                         letterSpacing: -0.17 * fem,
                //                         color: Color(0xff292d32),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //       Positioned(
                //         // homeindicators1f (1:5877)
                //         left: 127 * fem,
                //         top: 831 * fem,
                //         child: Container(
                //           width: 134 * fem,
                //           height: 5 * fem,
                //           child: Center(
                //             // baseQ1b (I1:5877;1:837;1:829)
                //             child: SizedBox(
                //               width: double.infinity,
                //               height: 5 * fem,
                //               child: Container(
                //                 decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(10 * fem),
                //                   color: Color(0xff000000),
                //                 ),
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final TextEditingController _followUpDateController = TextEditingController();

  DateTime? _selectedDate;

  void _onDateSelected(DateTime date) {
    setState(() {
      _selectedDate = date;
      var selectDate = DateFormat.yMMMEd().format(_selectedDate!);
      _followUpDateController.text = selectDate.toString();
    });
  }

  void _onDonePressed() {
    // Get the selected values here and handle them as required
    String followUpDate = _followUpDateController.text;
    print("Selected follow-up date: $followUpDate");
    _onTimeSelected;
    // Close the dialog
    Navigator.pop(context);
  }

  int radio_yes = 1;

  bool ischecked_yes = false;

  TimeOfDay? _selectedTime;

  final TextEditingController _followUpTimeController = TextEditingController();

  void _onTimeSelected(TimeOfDay time) {
    setState(() {
      _selectedTime = time;
      _followUpTimeController.text = _selectedTime!.format(context);
    });
  }

  showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          // var constraints;
          return Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8.0, right: 15, left: 15),
              child: SizedBox(
                  // padding: MediaQuery.of(context).viewInsets,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2 + 30,
                  child: ClipRRect(
                      // borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: Scaffold(
                    body: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        shadows: const [
                          BoxShadow(
                            color: Color(0xFFC7E9E3),
                            blurRadius: 22,
                            offset: Offset(0, -4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 27,
                            top: 25,
                            child: Text(
                              'Schedule Follow-up',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 27,
                            top: 62,
                            child: SizedBox(
                              height: 200,
                              width:
                                  MediaQuery.of(context).size.width / 2 + 100,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        width: 120,
                                        child: Text(
                                          'Follow-up date ',
                                          style: TextStyle(
                                            color: Color(0xFF1F1F1F),
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 30),
                                      SizedBox(
                                        width: 130,
                                        child: TextFormField(
                                          controller: _followUpDateController,
                                          readOnly: true,
                                          onTap: () async {
                                            // Show DatePicker when the field is tapped
                                            DateTime currentDate =
                                                DateTime.now();
                                            DateTime? selectedDate =
                                                await showDatePicker(
                                              context: context,
                                              initialDate: currentDate,
                                              firstDate: currentDate,
                                              lastDate: currentDate.add(
                                                const Duration(days: 365),
                                              ),
                                            );
                                            if (selectedDate != null) {
                                              _onDateSelected(selectedDate);
                                            }
                                          },
                                          decoration: InputDecoration(
                                            suffixIcon: Container(
                                              // frame340FVw (1:4583)
                                              width: 19,
                                              height: 15,
                                              child: Image.asset(
                                                'assets/images/downarrow.png',
                                                width: 19,
                                                height: 15,
                                              ),
                                            ),
                                            //                   suffix:    Container(
                                            //   // frame340FVw (1:4583)
                                            //   width: 19,
                                            //   height: 15,
                                            //   child: Image.asset(
                                            //     'assets/page-1/images/frame-340-SSy.png',
                                            //     width: 19,
                                            //     height: 15,
                                            //   ),
                                            // ),
                                            hintText: 'Select',
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 10),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFF7F0FC),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                          child: const Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'none',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 10),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFF7F0FC),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                          child: const Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'After 3 days',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 10),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFF7F0FC),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                          child: const Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'After 7 days',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Expanded(
                                    child: SizedBox(
                                      height: 74,
                                      // color: Colors.black,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 17.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              width: 120,
                                              child: Text(
                                                'Time',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF1F1F1F),
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            // const SizedBox(width: 10),
                                            SizedBox(
                                              width: 130,
                                              child: TextFormField(
                                                controller:
                                                    _followUpTimeController,
                                                readOnly: true,
                                                onTap: () async {
                                                  // Show TimePicker when the field is tapped
                                                  TimeOfDay currentTime =
                                                      TimeOfDay.now();
                                                  TimeOfDay? selectedTime =
                                                      await showTimePicker(
                                                    context: context,
                                                    initialTime: currentTime,
                                                  );
                                                  if (selectedTime != null) {
                                                    _onTimeSelected(
                                                        selectedTime);
                                                  }
                                                },
                                                decoration: InputDecoration(
                                                  suffixIcon: Container(
                                                    // frame340FVw (1:4583)
                                                    width: 19,
                                                    height: 15,
                                                    child: Image.asset(
                                                      'assets/images/downarrow.png',
                                                      width: 19,
                                                      height: 15,
                                                    ),
                                                  ),
                                                  hintText: 'Select',
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 27,
                            top: 333,
                            right: 27,
                            child: Container(
                              // width: 355,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // setState(() {
                                      //   visible_timeline = true;
                                      // });
                                      _onDonePressed();
                                    },
                                    child: Container(
                                      width: 130,
                                      height: 55,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 26, vertical: 16),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFF03BF9C),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(9)),
                                      ),
                                      child: const InkWell(
                                        child: Text(
                                          'Done',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      // setState(() {
                                      //   visible_timeline = false;
                                      // });
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const appointment(),
                                          ));
                                    },
                                    child: Container(
                                      width: 130,
                                      height: 55,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 26, vertical: 16),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(width: 0.50),
                                          borderRadius:
                                              BorderRadius.circular(9),
                                        ),
                                      ),
                                      child: const Text(
                                        'Exit',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF6A798A),
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 27,
                            top: 280,
                            child: SizedBox(
                              width: 295,
                              height: 47,
                              child: Stack(
                                children: [
                                  const Positioned(
                                    left: 28,
                                    top: 21,
                                    child: SizedBox(
                                      width: 267,
                                      child: Text(
                                        'This will automatically send a remainder to patient’s Whatsapp 20hrs ago to visit again.',
                                        style: TextStyle(
                                          color: Color(0xFF6B6B6B),
                                          fontSize: 9,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: SizedBox(
                                      width: 195,
                                      height: 20,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 20,
                                            height: 20,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  color: Colors.grey,
                                                  offset: Offset(-1, -1),
                                                ),
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  color: Color.fromARGB(
                                                      92, 255, 255, 255),
                                                  offset: Offset(-2, 5),
                                                ),
                                              ],
                                            ),
                                            // child: Checkbox(
                                            // side: BorderSide(

                                            //   color:Colors.black,
                                            //   strokeAlign: BorderSide.strokeAlignInside),

                                            //   activeColor: primaryColor,
                                            //     value: ischecked_yes,
                                            //    // tristate: true,
                                            //     onChanged: (value) {
                                            //       setState(() {
                                            //      ischecked_yes  =
                                            //             value!;

                                            //       });
                                            //     }),
                                          ),
                                          const SizedBox(width: 8),
                                          const Text(
                                            'Notify patient on Whatsapp',
                                            style: TextStyle(
                                              color: Color(0xFF6B6B6B),
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
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
                          Positioned(
                            left: 27,
                            top: 54,
                            child: Container(
                              width: 59,
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF03BF9C),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))),
            ),
          );
        });
  }

  showAlert2(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          // var constraints;
          return Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8.0, right: 15, left: 15),
              child: SizedBox(
                  // padding: MediaQuery.of(context).viewInsets,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3 + 130,
                  child: ClipRRect(
                      //  borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: Scaffold(
                    body: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        shadows: const [
                          BoxShadow(
                            color: Color(0xFFC7E9E3),
                            blurRadius: 22,
                            offset: Offset(0, -4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 27,
                            top: 25,
                            child: Text(
                              'ReSchedule ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 27,
                            top: 62,
                            child: SizedBox(
                              height: 200,
                              width:
                                  MediaQuery.of(context).size.width / 2 + 100,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        width: 120,
                                        //color: Colors.black,
                                        child: Text(
                                          'Set the date ',
                                          style: TextStyle(
                                            color: Color(0xFF1F1F1F),
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 30),
                                      SizedBox(
                                        width: 130,
                                        child: TextFormField(
                                          controller: _followUpDateController,
                                          readOnly: true,
                                          onTap: () async {
                                            // Show DatePicker when the field is tapped
                                            DateTime currentDate =
                                                DateTime.now();
                                            DateTime? selectedDate =
                                                await showDatePicker(
                                              context: context,
                                              initialDate: currentDate,
                                              firstDate: currentDate,
                                              lastDate: currentDate.add(
                                                const Duration(days: 365),
                                              ),
                                            );
                                            if (selectedDate != null) {
                                              _onDateSelected(selectedDate);
                                            }
                                          },
                                          decoration: InputDecoration(
                                            suffixIcon: Container(
                                              // frame340FVw (1:4583)
                                              width: 19,
                                              height: 15,
                                              child: Image.asset(
                                                'assets/images/downarrow.png',
                                                width: 19,
                                                height: 15,
                                              ),
                                            ),
                                            hintText: 'Select',
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 25),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        width: 120,
                                        //color: Colors.black,
                                        child: Text(
                                          'Time ',
                                          style: TextStyle(
                                            color: Color(0xFF1F1F1F),
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 30),
                                      SizedBox(
                                        width: 130,
                                        child: TextFormField(
                                          controller: _followUpTimeController,
                                          readOnly: true,
                                          onTap: () async {
                                            // Show TimePicker when the field is tapped
                                            TimeOfDay currentTime =
                                                TimeOfDay.now();
                                            TimeOfDay? selectedTime =
                                                await showTimePicker(
                                              context: context,
                                              initialTime: currentTime,
                                            );
                                            if (selectedTime != null) {
                                              _onTimeSelected(selectedTime);
                                            }
                                          },
                                          decoration: InputDecoration(
                                            suffixIcon: Container(
                                              // frame340FVw (1:4583)
                                              width: 19,
                                              height: 15,
                                              child: Image.asset(
                                                'assets/images/downarrow.png',
                                                width: 19,
                                                height: 15,
                                              ),
                                            ),
                                            hintText: 'Select',
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 300,
                            right: 20,
                            child: Container(
                              // width: 355,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // setState(() {
                                      //   visible_timeline = true;
                                      // });
                                      _onDonePressed();
                                    },
                                    child: Container(
                                      width: 130,
                                      height: 55,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 26, vertical: 16),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFF03BF9C),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(9)),
                                      ),
                                      child: const InkWell(
                                        child: Text(
                                          'Done',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      // setState(() {
                                      //   visible_timeline = false;
                                      // });
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const appointment(),
                                          ));
                                    },
                                    child: Container(
                                      width: 130,
                                      height: 55,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 26, vertical: 16),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(width: 0.50),
                                          borderRadius:
                                              BorderRadius.circular(9),
                                        ),
                                      ),
                                      child: const Text(
                                        'Exit',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF6A798A),
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 27,
                            top: 230,
                            child: SizedBox(
                              width: 295,
                              height: 47,
                              child: Stack(
                                children: [
                                  const Positioned(
                                    left: 28,
                                    top: 21,
                                    child: SizedBox(
                                      width: 267,
                                      child: Text(
                                        'This will automatically send a remainder to patient’s Whatsapp 20hrs ago to visit again.',
                                        style: TextStyle(
                                          color: Color(0xFF6B6B6B),
                                          fontSize: 9,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: SizedBox(
                                      width: 195,
                                      height: 20,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 20,
                                            height: 20,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  color: Colors.grey,
                                                  offset: Offset(-1, -1),
                                                ),
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  color: Color.fromARGB(
                                                      92, 255, 255, 255),
                                                  offset: Offset(-2, 5),
                                                ),
                                              ],
                                            ),
                                            // child: Checkbox(
                                            // side: BorderSide(

                                            //   color:Colors.black,
                                            //   strokeAlign: BorderSide.strokeAlignInside),

                                            //   activeColor: primaryColor,
                                            //     value: ischecked_yes,
                                            //    // tristate: true,
                                            //     onChanged: (value) {
                                            //       setState(() {
                                            //      ischecked_yes  =
                                            //             value!;

                                            //       });
                                            //     }),
                                          ),
                                          const SizedBox(width: 8),
                                          const Text(
                                            'Notify patient on Whatsapp',
                                            style: TextStyle(
                                              color: Color(0xFF6B6B6B),
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
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
                          Positioned(
                            left: 27,
                            top: 54,
                            child: Container(
                              width: 59,
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF03BF9C),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))),
            ),
          );
        });
  }

  showAlert3(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          // var constraints;
          return Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8.0, right: 15, left: 15),
              child: SizedBox(
                  // padding: MediaQuery.of(context).viewInsets,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  child: ClipRRect(
                      // borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: Scaffold(
                    body: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        shadows: const [
                          BoxShadow(
                            color: Color(0xFFC7E9E3),
                            blurRadius: 22,
                            offset: Offset(0, -4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 27,
                            top: 25,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Do you want to Cancel the scheduled',
                                  maxLines: 2,
                                  overflow: TextOverflow.visible,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'appointment?',
                                  maxLines: 2,
                                  overflow: TextOverflow.visible,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 100,
                            right: 20,
                            child: Container(
                              // width: 355,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // setState(() {
                                      //   visible_timeline = true;
                                      // });
                                      _onDonePressed();
                                    },
                                    child: Container(
                                      width: 130,
                                      height: 55,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 16),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFF03BF9C),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(9)),
                                      ),
                                      child: const InkWell(
                                        child: Text(
                                          'No',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      // setState(() {
                                      //   visible_timeline = false;
                                      // });
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const appointment(),
                                          ));
                                    },
                                    child: Container(
                                      width: 130,
                                      height: 55,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 16),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(width: 0.50),
                                          borderRadius:
                                              BorderRadius.circular(9),
                                        ),
                                      ),
                                      child: const Text(
                                        'Yes',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF6A798A),
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 27,
                            top: 180,
                            child: SizedBox(
                              width: 295,
                              height: 47,
                              child: Stack(
                                children: [
                                  const Positioned(
                                    left: 28,
                                    top: 21,
                                    right: 28,
                                    child: SizedBox(
                                      width: 267,
                                      child: Text(
                                        'This will automatically send a remainder to patient’s Whatsapp 20hrs ago to visit again.',
                                        style: TextStyle(
                                          color: Color(0xFF6B6B6B),
                                          fontSize: 9,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: SizedBox(
                                      width: 195,
                                      height: 20,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 20,
                                            height: 20,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  color: Colors.grey,
                                                  offset: Offset(-1, -1),
                                                ),
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  color: Color.fromARGB(
                                                      92, 255, 255, 255),
                                                  offset: Offset(-2, 5),
                                                ),
                                              ],
                                            ),
                                            // child: Checkbox(
                                            // side: BorderSide(

                                            //   color:Colors.black,
                                            //   strokeAlign: BorderSide.strokeAlignInside),

                                            //   activeColor: primaryColor,
                                            //     value: ischecked_yes,
                                            //    // tristate: true,
                                            //     onChanged: (value) {
                                            //       setState(() {
                                            //      ischecked_yes  =
                                            //             value!;

                                            //       });
                                            //     }),
                                          ),
                                          const SizedBox(width: 8),
                                          const Text(
                                            'Notify patient on Whatsapp',
                                            style: TextStyle(
                                              color: Color(0xFF6B6B6B),
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
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
                        ],
                      ),
                    ),
                  ))),
            ),
          );
        });
  }

  showAlert4(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          // var constraints;
          return Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8.0, right: 15, left: 15),
              child: SizedBox(
                  // padding: MediaQuery.of(context).viewInsets,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: Scaffold(
                        body: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            shadows: const [
                              BoxShadow(
                                color: Color(0xFFC7E9E3),
                                blurRadius: 22,
                                offset: Offset(0, -4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 27,
                                top: 25,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Do you want to delete patient',
                                      maxLines: 2,
                                      overflow: TextOverflow.visible,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'The patient history will be deleted permanently?',
                                      maxLines: 2,
                                      overflow: TextOverflow.visible,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 20,
                                top: 90,
                                right: 20,
                                child: Container(
                                  // width: 355,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        // onTap: () {
                                        //   setState(() {
                                        //     visible_timeline = true;
                                        //   });
                                        //   _onDonePressed();
                                        // },
                                        child: Container(
                                          width: 130,
                                          height: 55,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 16),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFF03BF9C),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(9)),
                                          ),
                                          child: const InkWell(
                                            child: Text(
                                              'No',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      InkWell(
                                        onTap: () {
                                          // setState(() {
                                          //   visible_timeline = false;
                                          // });
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const appointment(),
                                              ));
                                        },
                                        child: Container(
                                          width: 130,
                                          height: 55,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 16),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side:
                                                  const BorderSide(width: 0.50),
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                            ),
                                          ),
                                          child: const Text(
                                            'Yes',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF6A798A),
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w700,
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
                      ))),
            ),
          );
        });
  }

  showAlert5(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          // var constraints;
          return Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8.0, right: 15, left: 15),
              child: SizedBox(
                  // padding: MediaQuery.of(context).viewInsets,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  child: ClipRRect(
                      // borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: Scaffold(
                    body: Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, right: 15, left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // notifypatientsjeV (1:6198)
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                            child: Text(
                              'Notify Patients',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // line63S37 (1:6213)
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                            width: 59,
                            height: 2,
                            decoration: BoxDecoration(
                              color: Color(0xff03bf9c),
                            ),
                          ),
                          Container(
                            // frame5889TK (1:6199)
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                            width: 251,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // theappointmentisdelayedbyUVb (1:6200)
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                                  child: Text(
                                    'The appointment is delayed by ',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.16,
                                      color: Color(0xff1f1f1f),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame401a2q (1:6201)
                                  margin: EdgeInsets.fromLTRB(0, 0, 74, 0),
                                  padding:
                                      EdgeInsets.fromLTRB(9.5, 19, 9.5, 19),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xff2e2d32)),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // minsFem (1:6202)
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 81, 0),
                                        child: Text(
                                          '10 mins',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.16,
                                            color: Color(0xff4d4d4d),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // frame340aBF (1:6203)
                                        width: 19,
                                        height: 15,
                                        child: Image.asset(
                                          'assets/images/frame-340.png',
                                          width: 19,
                                          height: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame20469b (1:6206)
                            width: double.infinity,
                            height: 55,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frame1292ow (1:6207)
                                  margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(
                                          31, 16.56, 32.56, 15),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xff03bf9c),
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // sendonK2M (1:6208)
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0.44, 3.56, 0),
                                            child: Text(
                                              'Send on ',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                letterSpacing: 0.16,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // ionlogowhatsappcGM (1:6209)
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 0, 1.56),
                                            width: 21.88,
                                            height: 21.88,
                                            child: Image.asset(
                                              'assets/images/ion-logo-whatsapp.png',
                                              width: 21.88,
                                              height: 21.88,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame128WsX (1:6211)
                                  width: 160,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xff000000)),
                                    borderRadius: BorderRadius.circular(9),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Exit',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.16,
                                        color: Color(0xff6a798a),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))),
            ),
          );
        });
  }
}
