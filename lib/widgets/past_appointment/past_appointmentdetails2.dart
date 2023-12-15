import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:healtether_app/widgets/bottom_navigation.dart';
import 'package:healtether_app/widgets/schedule_appointment/appointment.dart';
import 'package:intl/intl.dart';

class Past_Appointment_Details2 extends StatefulWidget {
  @override
  State<Past_Appointment_Details2> createState() =>
      _Past_Appointment_Details2State();
}

class _Past_Appointment_Details2State extends State<Past_Appointment_Details2> {
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
                    showAlert4(context);
                  });
                },
                value: "3",
                child: const Text(
                  'Delete Appointment details',
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
      bottomNavigationBar: BottomNavigationWidget(),
      body: Container(
        width: double.infinity,
        child: Container(
          // pastappointmentdetailspageTwB (1:5762)
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupzqhkBMP (NUyUbTZR9RWjbjUxk9ZQhK)
                margin: EdgeInsets.fromLTRB(0, 0, 0, 90),
                width: double.infinity,
                height: 835,
                child: Stack(
                  children: [
                    Positioned(
                      // frame595uYH (1:5763)
                      left: 27,
                      top: 10,
                      child: Container(
                        width: 337.02,
                        height: 560,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupzt6h1rD (NUyUoTDS1W733BbwgVzt6h)
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 28),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // appointmentinfoYLM (1:5774)
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
                                    padding: EdgeInsets.fromLTRB(18, 9, 18, 20),
                                    width: 336,
                                    decoration: BoxDecoration(
                                      color: Color(0xfff7f0fc),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // lastappointmentR9F (1:5793)
                                          margin:
                                              EdgeInsets.fromLTRB(7, 0, 5, 11),
                                          width: double.infinity,
                                          height: 97,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // lastappointmentwithdrajitbhall (1:5799)
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 51, 6),
                                                constraints: BoxConstraints(
                                                  maxWidth: 136,
                                                ),
                                                child: Text(
                                                  'Last appointment with Dr. Ajit Bhalla',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.3899999346,
                                                    letterSpacing: 0.77,
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
                                                              0, 0, 0, 9),
                                                      width: 97,
                                                      height: 65,
                                                      //color: Colors.black,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            // UWq (1:5796)
                                                            left: 0,
                                                            top: 0,
                                                            child: Align(
                                                              child: SizedBox(
                                                                width: 95,
                                                                height: 51,
                                                                child: Text(
                                                                  '14:20',
                                                                  style:
                                                                      TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        36,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        1.3900000254,
                                                                    color: Color(
                                                                        0xff000000),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            // slot2ZYH (1:5797)
                                                            left: 38,
                                                            top: 48,
                                                            child: Align(
                                                              child: SizedBox(
                                                                width: 52,
                                                                height: 17,
                                                                child: Text(
                                                                  'Slot - 2 ',
                                                                  style:
                                                                      TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        1.3900000254,
                                                                    letterSpacing:
                                                                        0.66,
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
                                                              0, 0, 4, 0),
                                                      child: Text(
                                                        '1 July, 2023',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.3899999857,
                                                          letterSpacing: 0.88,
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
                                          margin:
                                              EdgeInsets.fromLTRB(20, 0, 16, 7),
                                          width: double.infinity,
                                          height: 2,
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
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0, 121, 15),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // rameshpatelnpM (1:5776)
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 0, 2),
                                                child: Text(
                                                  'Ramesh Patel',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.3900000254,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                // v9s (1:5777)
                                                '+91 896 254654',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.3899999857,
                                                  letterSpacing: 0.32,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // frame577rpD (1:5778)
                                          width: double.infinity,
                                          height: 38,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // frame572Q53 (1:5779)
                                                padding: EdgeInsets.fromLTRB(
                                                    16, 10, 16.94, 10),
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffffffff),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // chatX9f (1:5780)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 8.94, 0),
                                                      child: Text(
                                                        'Chat',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.4332596461,
                                                          letterSpacing: 0.12,
                                                          color:
                                                              Color(0xff03bf9c),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // ionlogowhatsapp381 (1:5781)
                                                      width: 13.13,
                                                      height: 13.13,
                                                      child: Image.asset(
                                                        'assets/images/whatsup-black.png',
                                                        width: 13.13,
                                                        height: 13.13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Container(
                                                // frame5749Rw (1:5783)
                                                padding: EdgeInsets.fromLTRB(
                                                    16, 10, 18.25, 10),
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffffffff),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // callffB (1:5784)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 10.25, 0),
                                                      child: Text(
                                                        'Call',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.4332596461,
                                                          letterSpacing: 0.12,
                                                          color:
                                                              Color(0xff03bf9c),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // icbaselinecallb33 (1:5785)
                                                      width: 13.5,
                                                      height: 13.5,
                                                      child: Image.asset(
                                                        'assets/images/ic-baseline-call.png',
                                                        width: 13.5,
                                                        height: 13.5,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Container(
                                                // frame573hrm (1:5787)
                                                padding: EdgeInsets.fromLTRB(
                                                    16, 10, 16, 10),
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffffffff),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // viewbillsRGy (1:5788)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 8, 0),
                                                      child: Text(
                                                        'View Bills',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.4332596461,
                                                          letterSpacing: 0.12,
                                                          color:
                                                              Color(0xff03bf9c),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // mingcutebillline8x5 (1:5789)
                                                      width: 18,
                                                      height: 18,
                                                      child: Image.asset(
                                                        'assets/images/mingcute-bill-line.png',
                                                        width: 18,
                                                        height: 18,
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
                                  Container(
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
                                                              'Appointment Scheduled on 23 July, 2023 at 6:30pm in the afternoon.',
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
                           Container(
                            // addnote4YD (1:5764)
                            width: double.infinity,
                            height: 69,
                            child: Container(
                              // autogroupqyfsR7s (NUyVcr28UcATe6U5y6qyfs)
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
                              width: double.infinity,
                              height: 68,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // frame608YiH (1:5765)
                                    margin: EdgeInsets.fromLTRB(0, 0, 287.02, 10),
                                    height: 25,
                                    child: Text(
                                      'Notes',
                                      style: TextStyle (
                                       fontFamily:    'Poppins',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3899999857*ffem/fem,
                                        letterSpacing: 0.4,
                                        color: Color(0xff494949),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // frame400qSV (1:5768)
                                       decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(  color:Color(0xff009176),),
                                  ),
                              
                                ),
                                    margin: EdgeInsets.fromLTRB(0, 0, 48.02, 0),
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // group36373mL9 (1:5769)
                                          margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                                          width: 14,
                                          height: 14,
                                          child: Image.asset(
                                            'assets/images/group-36373.png',
                                            width: 14,
                                            height: 14,
                                          ),
                                        ),
                                        Text(
                                          // addaselfnoteHZP (1:5772)
                                          'Add a Self note ',
                                          style: TextStyle (
                                          fontFamily:  'Poppins',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.28125*ffem/fem,
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
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 1062),
                  padding: EdgeInsets.fromLTRB(27, 24, 24, 24),
                  width: double.infinity,
                  height: 138,
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
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                          child: Text(
                            'Do you want to cancel the appointment? ',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              height: 1.4375,
                              letterSpacing: 0.16,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // frame204Myo (1:5829)
                          margin: EdgeInsets.fromLTRB(0, 0, 3, 0),
                          width: double.infinity,
                          height: 55,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame128hGy (1:5830)
                                margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                                width: 160,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff000000)),
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                child: Center(
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      height: 1.4375,
                                      letterSpacing: 0.16,
                                      color: Color(0xff6a798a),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // frame129BC9 (1:5832)
                                width: 160,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xff03bf9c),
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                child: Center(
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      height: 1.4375,
                                      letterSpacing: 0.16,
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
              Container(
                // changelocation5YR (1:5841)
                margin: EdgeInsets.fromLTRB(490, 0, 0, 0),
                width: double.infinity,
                height: 844,
                decoration: BoxDecoration(
                  color: Color(0x66292d32),
                  borderRadius: BorderRadius.circular(46),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/page-1/images/image-3-bg-C2Z.png',
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle1160UaZ (1:5843)
                      left: 0,
                      top: 54,
                      child: Align(
                        child: SizedBox(
                          width: 390,
                          height: 790,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // recentsnbF (1:5844)
                      left: 21,
                      top: 410,
                      child: Align(
                        child: SizedBox(
                          width: 77,
                          height: 24,
                          child: Text(
                            'Recents',
                            style: TextStyle(
                              fontFamily: 'Adamina',
                              fontSize: 21,
                              fontWeight: FontWeight.w400,
                              height: 1.1428571429,
                              letterSpacing: -0.21,
                              color: Color(0xff292d32),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // clearallgRj (1:5846)
                      left: 296,
                      top: 414,
                      child: Align(
                        child: SizedBox(
                          width: 74,
                          height: 16,
                          child: Text(
                            'CLEAR ALL',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontFamily: 'Adamina',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              height: 1.3333333333,
                              letterSpacing: 0.24,
                              color: Color(0xffe47070),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // editaddressaX7 (1:5847)
                      left: 21,
                      top: 94,
                      child: Align(
                        child: SizedBox(
                          width: 146,
                          height: 36,
                          child: Text(
                            'Edit Address',
                            style: TextStyle(
                              fontFamily: 'Adamina',
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              color: Color(0xff292d32),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle1162gKF (1:5848)
                      left: 167,
                      top: 64,
                      child: Align(
                        child: SizedBox(
                          width: 55,
                          height: 6,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Color(0xffeff2f5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // closezqj (1:5849)
                      left: 331,
                      top: 70,
                      child: Align(
                        child: SizedBox(
                          width: 43,
                          height: 43,
                          child: Image.asset(
                            'assets/page-1/images/close-AY5.png',
                            width: 43,
                            height: 43,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // frame74X4y (1:5853)
                      left: 21,
                      top: 138,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(13, 14, 140, 14),
                        width: 348,
                        height: 52,
                        decoration: BoxDecoration(
                          color: Color(0xffeff2f5),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // vuesaxlinearsearchnormalpJy (1:5854)
                              margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              width: 24,
                              height: 24,
                              child: Image.asset(
                                'assets/page-1/images/vuesax-linear-search-normal-Aiy.png',
                                width: 24,
                                height: 24,
                              ),
                            ),
                            Text(
                              // lookforanaddressXz5 (1:5855)
                              'Look for an Address',
                              style: TextStyle(
                                fontFamily: 'Adamina',
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                height: 1.3529411765,
                                letterSpacing: -0.17,
                                color: Color(0xffb3bfcb),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // savedlocationssHF (1:5856)
                      left: 21,
                      top: 211,
                      child: Align(
                        child: SizedBox(
                          width: 161,
                          height: 24,
                          child: Text(
                            'Saved Locations',
                            style: TextStyle(
                              fontFamily: 'Adamina',
                              fontSize: 21,
                              fontWeight: FontWeight.w400,
                              height: 1.1428571429,
                              letterSpacing: -0.21,
                              color: Color(0xff292d32),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle1150Zfs (1:5857)
                      left: 0,
                      top: 732,
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 22,
                            sigmaY: 22,
                          ),
                          child: Align(
                            child: SizedBox(
                              width: 390,
                              height: 112,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0x66ffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // frame34fU1 (1:5858)
                      left: 21,
                      top: 750,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(70, 20, 70, 20),
                        width: 348,
                        height: 64,
                        decoration: BoxDecoration(
                          color: Color(0xff45b7e8),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Container(
                          // frame36ZpH (1:5859)
                          width: double.infinity,
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // vuesaxboldgpsXFK (1:5860)
                                margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  'assets/page-1/images/vuesax-bold-gps-S69.png',
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                              Text(
                                // usecurrentlocationSNH (1:5861)
                                'Use Current Location',
                                style: TextStyle(
                                  fontFamily: 'Abril Fatface',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  height: 1,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // frame82Zxh (1:5862)
                      left: 0,
                      top: 466.5,
                      child: Container(
                        width: 390,
                        height: 51.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // frame75hJD (1:5863)
                              margin: EdgeInsets.fromLTRB(21, 0, 52, 23.5),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // vuesaxboldlocation2bP (1:5864)
                                    margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                                    width: 28,
                                    height: 28,
                                    child: Image.asset(
                                      'assets/page-1/images/vuesax-bold-location-u5P.png',
                                      width: 28,
                                      height: 28,
                                    ),
                                  ),
                                  Text(
                                    // georgeavenuebramptononkXP (1:5865)
                                    '56, George Avenue, Brampton, ON',
                                    style: TextStyle(
                                      fontFamily: 'Adamina',
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3529411765,
                                      letterSpacing: -0.17,
                                      color: Color(0xff292d32),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // frame834ny (1:5867)
                      left: 0,
                      top: 339.5,
                      child: Container(
                        width: 390,
                        height: 49.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // frame75nys (1:5868)
                              margin: EdgeInsets.fromLTRB(21, 0, 78, 25.5),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // vuesaxboldbuilding8Xw (1:5869)
                                    margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                                    width: 24,
                                    height: 24,
                                    child: Image.asset(
                                      'assets/page-1/images/vuesax-bold-building-K41.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                  Text(
                                    // kingstreettorontoonrTw (1:5870)
                                    '31244, King Street, Toronto, ON',
                                    style: TextStyle(
                                      fontFamily: 'Adamina',
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3529411765,
                                      letterSpacing: -0.17,
                                      color: Color(0xff292d32),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // frame84yoT (1:5872)
                      left: 0,
                      top: 258.5,
                      child: Container(
                        width: 407,
                        height: 60.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // frame75hzM (1:5873)
                              margin: EdgeInsets.fromLTRB(21, 0, 0, 25.5),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // vuesaxboldhomer6Z (1:5874)
                                    margin: EdgeInsets.fromLTRB(0, 11, 14, 0),
                                    width: 24,
                                    height: 24,
                                    child: Image.asset(
                                      'assets/page-1/images/vuesax-bold-home-oj3.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                  Text(
                                    // georgeavenuebramptononl6t8h6Zm (1:5875)
                                    '34, George Avenue, Brampton,\nON L6T 8H6',
                                    style: TextStyle(
                                      fontFamily: 'Adamina',
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3529411765,
                                      letterSpacing: -0.17,
                                      color: Color(0xff292d32),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // homeindicators1f (1:5877)
                      left: 127,
                      top: 831,
                      child: Container(
                        width: 134,
                        height: 5,
                        child: Center(
                          // baseQ1b (I1:5877;1:837;1:829)
                          child: SizedBox(
                            width: double.infinity,
                            height: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff000000),
                              ),
                            ),
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
                                  width: MediaQuery.of(context).size.width / 2 +
                                      100,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                              controller:
                                                  _followUpDateController,
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
                                                suffixIcon: IconButton(
                                                  color: Colors.black,
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.arrow_drop_down,
                                                    size: 20,
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 10),
                                              decoration: ShapeDecoration(
                                                color: const Color(0xFFF7F0FC),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
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
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 10),
                                              decoration: ShapeDecoration(
                                                color: const Color(0xFFF7F0FC),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
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
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 10),
                                              decoration: ShapeDecoration(
                                                color: const Color(0xFFF7F0FC),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
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
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                            padding: const EdgeInsets.only(
                                                left: 17.0),
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
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                        initialTime:
                                                            currentTime,
                                                      );
                                                      if (selectedTime !=
                                                          null) {
                                                        _onTimeSelected(
                                                            selectedTime);
                                                      }
                                                    },
                                                    decoration: InputDecoration(
                                                      suffixIcon: const Icon(
                                                          Icons
                                                              .arrow_drop_down),
                                                      hintText: 'Select',
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(7),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          // setState(() {
                                          //   visible_timeline = true;
                                          // });
                                          _onDonePressed();
                                        },
                                        child: Container(
                                          width: 120,
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
                                          width: 120,
                                          height: 55,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 26, vertical: 16),
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
                                        strokeAlign:
                                            BorderSide.strokeAlignCenter,
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
                                  width: MediaQuery.of(context).size.width / 2 +
                                      100,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                              controller:
                                                  _followUpDateController,
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
                                                suffixIcon: IconButton(
                                                  color: Colors.black,
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.arrow_drop_down,
                                                    size: 20,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                                  _onTimeSelected(selectedTime);
                                                }
                                              },
                                              decoration: InputDecoration(
                                                suffixIcon: const Icon(
                                                    Icons.arrow_drop_down),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          // setState(() {
                                          //   visible_timeline = true;
                                          // });
                                          _onDonePressed();
                                        },
                                        child: Container(
                                          width: 120,
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
                                          width: 120,
                                          height: 55,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 26, vertical: 16),
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
                                        strokeAlign:
                                            BorderSide.strokeAlignCenter,
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
            child: Scaffold(
              body: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                clipBehavior: Clip.antiAlias,
                padding: EdgeInsets.fromLTRB(27, 23.5, 27, 23.5),
                //width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffc7e9e3),
                      offset: Offset(0, -4),
                      blurRadius: 11,
                    ),
                  ],
                ),
                child: Container(
                  // frame491zp5 (1:6041)
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // frame611xW1 (1:6042)
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // doyouwanttodeleteappointmentde (1:6043)
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                              constraints: BoxConstraints(
                                maxWidth: 292,
                              ),
                              child: Text(
                                'Do you want to delete Appointment details ?',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  height: 1.4375,
                                  letterSpacing: 0.16,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Text(
                              // theappointmenthistorywillbedel (1:6044)
                              'The appointment history will be deleted permanently.',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                height: 1.9166666667,
                                letterSpacing: 0.12,
                                color: Color(0xff9e9e9e),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame204VPT (1:6045)
                        width: double.infinity,
                        height: 55,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // frame1293Qy (1:6046)
                              margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                              width: 160,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xff03bf9c),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Center(
                                child: Text(
                                  'No',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    height: 1.4375,
                                    letterSpacing: 0.16,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              // frame1288BX (1:6048)
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 160,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff000000)),
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                child: Center(
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      height: 1.4375,
                                      letterSpacing: 0.16,
                                      color: Color(0xff6a798a),
                                    ),
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
                     
                      child: Scaffold(
                        body: Container(
                         // clipBehavior: Clip.antiAlias,
                         decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Color(0xffc7e9e3),
              offset: Offset(0, -4),
              blurRadius: 11,
            ),
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
                                      'Do you want to delete Appointment ',
                                     
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                        const Text(
                                      'details?',
                                   
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'The appointment history will be deleted permanently.',
                                      maxLines: 2,
                                      overflow: TextOverflow.visible,
                                      softWrap: true,
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
                                top: 110,
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
}
