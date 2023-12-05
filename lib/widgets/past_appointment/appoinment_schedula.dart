import 'package:flutter/material.dart';
import 'package:healtether_app/widgets/past_appointment/past_appointmentdetails.dart';
import 'package:healtether_app/widgets/past_appointment/search_filterResult.dart';
import 'package:healtether_app/widgets/schedule_appointment/appointment_details.dart';

import 'package:healtether_app/constatnts/constant.dart';
import 'package:healtether_app/widgets/notification/notification.dart';
import 'package:healtether_app/screen/home/home_screen.dart';
import 'package:healtether_app/widgets/whatsapp/chat_list.dart';

class Past_Appointment extends StatefulWidget {
  const Past_Appointment({super.key});

  @override
  State<Past_Appointment> createState() => _Past_AppointmentState();
}

class _Past_AppointmentState extends State<Past_Appointment>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
       double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
         floatingActionButton: Container(
                                              padding: EdgeInsets.fromLTRB(20, 27.25, 22, 27.25),
                                              width: 72,
                                              height: 72,
                                              decoration: BoxDecoration (
                                                color: Color(0xff00796b),
                                                borderRadius: BorderRadius.circular(36),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(0x7a050505),
                                                    offset: Offset(0, 4),
                                                    blurRadius: 3,
                                                  ),
                                                ],
                                              ),
                                              child: Center(
                                                // mdiaccountmultipleaddJeZ (I1:3700;1:3741)
                                                child: SizedBox(
                                                  width: 30,
                                                  height: 17.5,
                                                  child: Image.asset(
                                                    'assets/images/floatadd.png',
                                                    width: 30,
                                                    height: 17.5,
                                                  ),
                                                ),
                                              ),
                                            ),
       
        bottomNavigationBar: BottomAppBar(
          color: kprimarycolor,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.home_outlined,
                      ),
                      onPressed: () {
                        // Handle Home button pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                    ),
                    Text('Home',
                        style: TextStyle(
                          fontSize: 12,
                        )),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Past_Appointment()),
                        );
                        // Handle Appointment button pressed
                      },
                    ),
                    Text('Appointment',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        )),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.chat),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => chat_display()),
                        );
                        // Handle Chat button pressed
                      },
                    ),
                    Text('Chat', style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.notifications),
                      onPressed: () {
                        // Handle Notification button pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => notification()),
                        );
                      },
                    ),
                    Text('Notification', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 15.0,left: 28,right: 28),
              child: Column(
                children: [
                  Container(
                    width: 335,
                    height: 33,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            children: [
                             
                              Text(
                                'Appointments',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                       // const SizedBox(width: 70),
                       Spacer(),
                        Container(
                          // frame435J2H (1:5162)
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame43241T (1:5163)
                                padding: EdgeInsets.fromLTRB(8*fem, 6*fem, 8*fem, 4*fem),
                                width: 93*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0x7af5fffd),
                                  borderRadius: BorderRadius.only (
                                    topLeft: Radius.circular(8*fem),
                                    bottomLeft: Radius.circular(8*fem),
                                  ),
                                ),
                                child: Text(
                                  'Clinic',
                                  style: TextStyle (
                                  fontFamily: 'Poppins',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3899999857*ffem/fem,
                                    color: Color(0xff121212),
                                  ),
                                ),
                              ),
                              Container(
                                // frame433iLu (1:5165)
                                width: 33*fem,
                                height: 33*fem,
                                child: Image.asset(
                                  'assets/images/dropdown.png',
                                  width: 33*fem,
                                  height: 33*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12,bottom: 12),
                    child: Container(
                      width: 335,
                      height: 59,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextFormField(
                          
                          controller: null,
                          decoration: InputDecoration(
                            suffix:     Container(
                                    // systemuiconsfiltering6R3 (1:5338)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0.95*fem, 0*fem, 0*fem),
                                    width: 15.24*fem,
                                    height: 13.33*fem,
                                    child: Image.asset(
                                      'assets/images/system-uicons-filtering.png',
                                      width: 15.24*fem,
                                      height: 13.33*fem,
                                    ),
                                  ),
                              labelText: "Quick Search",
                              border: InputBorder.none),
                          style: TextStyle(
                            color: Color(0xFF6A798A),
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                          
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding:
                          const EdgeInsets.only( bottom: 5),
                      child: Row(
                       // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 42,
                            height: 42,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: const Color(0xFF03BF9C),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'All',
                              style: TextStyle(
                                color: Color(0xFFF6F6F6),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8,),
                          Container(
                            width: 68,
                            height: 42,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF4F4F4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'Urgent',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                            const SizedBox(width: 8,),
                          Container(
                            width: 96,
                            height: 42,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF3F3F3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'Upcoming ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                            const SizedBox(width: 8,),
                          Container(
                            width: 93,
                            height: 42,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF3F3F3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'Cancelled',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                       padding:EdgeInsets.only( bottom:13,top: 13),
                        child: Text(
                          'All 12 appointments are listed',
                          style: TextStyle(
                            color: Color(0xFF979797),
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2 + 180,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 13,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.only(
                                bottom: 8),
                            child: Container(
                               //width: MediaQuery.of(context).size.width - 16,
                              width: 336,
                              height: 85,
                              padding: const EdgeInsets.only(
                                  top: 7, left: 9, right: 11, bottom: 7),
                              decoration: ShapeDecoration(
                           color: Color(0xfff7f0fc),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                 Search_Filter_Result()),
                                      );
                                    },
                                    child: Expanded(
                                      child: SizedBox(
                                        width: 316,
                                        height: 71,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 6,
                                               child: SizedBox(
                                               width: 231,
                                                height: 65,
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      child: const Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'Ramesh Patel',
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight.w400,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                              height: 3),
                                                          Text(
                                                            'Dr. Ajit Bhalla',
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight.w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(height: 6),
                                                    Expanded(
                                                      child: Container(
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Text(
                                                              'Last appointment : 24/8/22',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF5C5C5C),
                                                                fontSize: 10,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight.w400,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                width: 24),
                                                            Container(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 9,
                                                                    height: 9,
                                                                    decoration:
                                                                        const ShapeDecoration(
                                                                      color: Color(
                                                                          0xFFFD3939),
                                                                      shape:
                                                                          OvalBorder(),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(
                                                                      width: 6),
                                                                  const Text(
                                                                    'Virtual',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize: 12,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
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
                                            Positioned(
                                              left: 210,
                                              top: 71,
                                              child: Transform(
                                                transform: Matrix4.identity()
                                                  ..translate(0.0, 0.0)
                                                  ..rotateZ(-1.57),
                                                child: Container(
                                                  width: 68,
                                                  decoration: const ShapeDecoration(
                                                    shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        width: 0.50,
                                                        strokeAlign: BorderSide
                                                            .strokeAlignCenter,
                                                        color: Color(0xFFBCBCBC),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 212,
                                              top: 0,
                                              child: Container(
                                                 margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                               // width: 57,
                                                height: 68,
                                               // color: Colors.black,
                                                child: Container(
                                                  child: const Column(
                                                    // mainAxisSize:
                                                    //     MainAxisSize.min,
                                                    // mainAxisAlignment:
                                                    //     MainAxisAlignment
                                                    //         .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .end,
                                                    children: [
                                                      Text(
                                                        '14:20',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 22,
                                                          fontFamily:
                                                              'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Slot - 2 ',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10,
                                                          fontFamily:
                                                              'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                        const SizedBox(height: 9),
                                                Text(
                                                  '1 July',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10,
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w400,
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
                                  ),
                                ],
                              ),
                            ));
                      },
                    ),
                  )
                  // Container(
                  //   height: MediaQuery.of(context).size.height / 2 + 180,
                  //   child: ListView.builder(
                  //     shrinkWrap: true,
                  //     itemCount: 13,
                  //     itemBuilder: (context, index) {
                  //       return Padding(
                  //           padding: const EdgeInsets.only(
                  //               left: 8.0, right: 8.0, bottom: 8),
                  //           child: Container(
                  //             width: 336,
                  //             height: 85,
                  //             padding: const EdgeInsets.only(
                  //                 top: 7, left: 9, right: 11, bottom: 7),
                  //             decoration: ShapeDecoration(
                  //               color: Color.fromARGB(49, 158, 158, 158),
                  //               shape: RoundedRectangleBorder(
                  //                 borderRadius: BorderRadius.circular(10),
                  //               ),
                  //             ),
                  //             child: Row(
                  //               mainAxisSize: MainAxisSize.min,
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               crossAxisAlignment: CrossAxisAlignment.center,
                  //               children: [
                  //                 InkWell(
                  //                   onTap: () {
                  //                     Navigator.push(
                  //                       context,
                  //                       MaterialPageRoute(
                  //                           builder: (context) =>
                  //                               appointment_details()),
                  //                     );
                  //                   },
                  //                   child: Container(
                  //                     width: 316,
                  //                     height: 71,
                  //                     child: Stack(
                  //                       children: [
                  //                         Positioned(
                  //                           left: 0,
                  //                           top: 6,
                  //                           child: Container(
                  //                             width: 231,
                  //                             height: 65,
                  //                             child: Column(
                  //                               mainAxisSize: MainAxisSize.min,
                  //                               mainAxisAlignment:
                  //                                   MainAxisAlignment.start,
                  //                               crossAxisAlignment:
                  //                                   CrossAxisAlignment.start,
                  //                               children: [
                  //                                 Container(
                  //                                   child: Column(
                  //                                     mainAxisSize:
                  //                                         MainAxisSize.min,
                  //                                     mainAxisAlignment:
                  //                                         MainAxisAlignment
                  //                                             .start,
                  //                                     crossAxisAlignment:
                  //                                         CrossAxisAlignment
                  //                                             .center,
                  //                                     children: [
                  //                                       Text(
                  //                                         'Ramesh Patel',
                  //                                         style: TextStyle(
                  //                                           color: Colors.black,
                  //                                           fontSize: 16,
                  //                                           fontFamily:
                  //                                               'Poppins',
                  //                                           fontWeight:
                  //                                               FontWeight.w400,
                  //                                         ),
                  //                                       ),
                  //                                       const SizedBox(
                  //                                           height: 3),
                  //                                       Text(
                  //                                         'Dr. Ajit Bhalla',
                  //                                         style: TextStyle(
                  //                                           color: Colors.black,
                  //                                           fontSize: 12,
                  //                                           fontFamily:
                  //                                               'Poppins',
                  //                                           fontWeight:
                  //                                               FontWeight.w400,
                  //                                         ),
                  //                                       ),
                  //                                     ],
                  //                                   ),
                  //                                 ),
                  //                                 const SizedBox(height: 6),
                  //                                 Container(
                  //                                   child: Row(
                  //                                     mainAxisSize:
                  //                                         MainAxisSize.min,
                  //                                     mainAxisAlignment:
                  //                                         MainAxisAlignment
                  //                                             .center,
                  //                                     crossAxisAlignment:
                  //                                         CrossAxisAlignment
                  //                                             .center,
                  //                                     children: [
                  //                                       Text(
                  //                                         'Last appointment : 24/8/22',
                  //                                         style: TextStyle(
                  //                                           color: Color(
                  //                                               0xFF5C5C5C),
                  //                                           fontSize: 10,
                  //                                           fontFamily:
                  //                                               'Poppins',
                  //                                           fontWeight:
                  //                                               FontWeight.w400,
                  //                                         ),
                  //                                       ),
                  //                                       const SizedBox(
                  //                                           width: 24),
                  //                                       Container(
                  //                                         child: Row(
                  //                                           mainAxisSize:
                  //                                               MainAxisSize
                  //                                                   .min,
                  //                                           mainAxisAlignment:
                  //                                               MainAxisAlignment
                  //                                                   .center,
                  //                                           crossAxisAlignment:
                  //                                               CrossAxisAlignment
                  //                                                   .center,
                  //                                           children: [
                  //                                             Container(
                  //                                               width: 9,
                  //                                               height: 9,
                  //                                               decoration:
                  //                                                   ShapeDecoration(
                  //                                                 color: Color(
                  //                                                     0xFFFD3939),
                  //                                                 shape:
                  //                                                     OvalBorder(),
                  //                                               ),
                  //                                             ),
                  //                                             const SizedBox(
                  //                                                 width: 6),
                  //                                             Text(
                  //                                               'Virtual',
                  //                                               style:
                  //                                                   TextStyle(
                  //                                                 color: Colors
                  //                                                     .black,
                  //                                                 fontSize: 12,
                  //                                                 fontFamily:
                  //                                                     'Poppins',
                  //                                                 fontWeight:
                  //                                                     FontWeight
                  //                                                         .w400,
                  //                                               ),
                  //                                             ),
                  //                                           ],
                  //                                         ),
                  //                                       ),
                  //                                     ],
                  //                                   ),
                  //                                 ),
                  //                               ],
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         Positioned(
                  //                           left: 243,
                  //                           top: 71,
                  //                           child: Transform(
                  //                             transform: Matrix4.identity()
                  //                               ..translate(0.0, 0.0)
                  //                               ..rotateZ(-1.57),
                  //                             child: Container(
                  //                               width: 68,
                  //                               decoration: ShapeDecoration(
                  //                                 shape: RoundedRectangleBorder(
                  //                                   side: BorderSide(
                  //                                     width: 0.50,
                  //                                     strokeAlign: BorderSide
                  //                                         .strokeAlignCenter,
                  //                                     color: Color(0xFFBCBCBC),
                  //                                   ),
                  //                                 ),
                  //                               ),
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         Positioned(
                  //                           left: 259,
                  //                           top: 0,
                  //                           child: Container(
                  //                             width: 57,
                  //                             height: 68,
                  //                             child: Column(
                  //                               mainAxisSize: MainAxisSize.min,
                  //                               mainAxisAlignment:
                  //                                   MainAxisAlignment.start,
                  //                               crossAxisAlignment:
                  //                                   CrossAxisAlignment.end,
                  //                               children: [
                  //                                 Container(
                  //                                   child: Column(
                  //                                     mainAxisSize:
                  //                                         MainAxisSize.min,
                  //                                     mainAxisAlignment:
                  //                                         MainAxisAlignment
                  //                                             .center,
                  //                                     crossAxisAlignment:
                  //                                         CrossAxisAlignment
                  //                                             .end,
                  //                                     children: [
                  //                                       Text(
                  //                                         '14:20',
                  //                                         style: TextStyle(
                  //                                           color: Colors.black,
                  //                                           fontSize: 24,
                  //                                           fontFamily:
                  //                                               'Poppins',
                  //                                           fontWeight:
                  //                                               FontWeight.w400,
                  //                                         ),
                  //                                       ),
                  //                                       Text(
                  //                                         'Slot - 2 ',
                  //                                         style: TextStyle(
                  //                                           color: Colors.black,
                  //                                           fontSize: 10,
                  //                                           fontFamily:
                  //                                               'Poppins',
                  //                                           fontWeight:
                  //                                               FontWeight.w400,
                  //                                         ),
                  //                                       ),
                  //                                     ],
                  //                                   ),
                  //                                 ),
                  //                                 const SizedBox(height: 9),
                  //                                 Text(
                  //                                   '1 July',
                  //                                   style: TextStyle(
                  //                                     color: Colors.black,
                  //                                     fontSize: 10,
                  //                                     fontFamily: 'Poppins',
                  //                                     fontWeight:
                  //                                         FontWeight.w400,
                  //                                   ),
                  //                                 ),
                  //                               ],
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ));
                  //     },
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ));
  }
}
