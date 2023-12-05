import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:healtether_app/Timings/Timings.dart';
import 'package:healtether_app/widgets/add_appointment.dart';
import 'package:healtether_app/controllers/auth_controller.dart';
import 'package:healtether_app/payment/payment.dart';
import 'package:healtether_app/screen/manage_staff/manage_staff.dart';
import 'package:healtether_app/widgets/Drawer/appointment_analysis.dart';
import 'package:healtether_app/widgets/Drawer/feedback.dart';
import 'package:healtether_app/widgets/Drawer/patient_analysis.dart';
import 'package:healtether_app/widgets/Drawer/payment_analysis.dart';
import 'package:healtether_app/Patient_record.dart';
import 'package:healtether_app/widgets/schedule_appointment/appointment.dart';
import 'package:healtether_app/widgets/whatsapp/chat.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:healtether_app/constatnts/constant.dart';
import 'package:healtether_app/widgets/notification/notification.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
   static const String rountName = "/";
    static routes() {}
}

class _HomeScreenState extends State<HomeScreen> {
  //navigate to webpage
  _launchURL() async {
    // const url = 'https://www.healtether.com/';
    /*if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }*/

    // try {
    //   launch(url);
    // } on PlatformException catch (e) {
    //   launch(url);
    // } finally {
    //   launch(url);
    // }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  List<String> title = [
    'Patients \nRecord',
    'Past appointments',
    'Manage \nStaff',
    'Timings',
    'Payments Record',
    'Notes',
  ];
  List<String> subtitle = [
    'Maintain and manage Patient record.',
    'Record of past appointments.',
    'Manage and maintain staff records.',
    'Clinics Timings ',
    'Record of payments received.',
    'Write prescriptions, and much more.',
  ];
  List<IconData> titleicons = [
    Icons.perm_contact_cal_rounded,
    Icons.arrow_circle_left_sharp,
    Icons.personal_injury_sharp,
    Icons.av_timer_sharp,
    Icons.account_balance_wallet_sharp,
    Icons.note_alt_sharp,
  ];
  @override
  Widget build(BuildContext context) {
     double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.only(right: 40.0),
            child: Container(
              width: 150,
              height: 50,
              child: Image.asset(
                "assets/title.png",
              ),
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => add_appointment()),
          );
        },
        child: Icon(
          Icons.person_add_sharp,
          color: Colors.white,
        ),
        backgroundColor: Color.fromARGB(255, 63, 12, 72),
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
                      color: Colors.white,
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
                      style: TextStyle(fontSize: 12, color: Colors.white)),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.calendar_month),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => appointment()),
                      );
                      // Handle Appointment button pressed
                    },
                  ),
                  Text('Appointment', style: TextStyle(fontSize: 12)),
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
                        MaterialPageRoute(builder: (context) => chat()),
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
                        MaterialPageRoute(builder: (context) => notification()),
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
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
      
           width: 390,
          height: MediaQuery.of(context).size.height,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 0.50),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Stack(
              //fit: StackFit.expand,
             clipBehavior: Clip.antiAliasWithSaveLayer,
              children: [
                Positioned(
                    child: Container(
                        width: 390,
                         height: 347*fem,
                        padding: EdgeInsets.fromLTRB(20*fem, 14*fem, 20*fem, 114*fem),
                        decoration: BoxDecoration(
                         gradient: LinearGradient (
                          begin: Alignment(-0, -1),
                          end: Alignment(0, 1.043),
                          colors: <Color>[Color(0xff00796b), Color(0xff03bf9c), Color(0x0003bf9c)],
                          stops: <double>[0.118, 0.362, 1],
                        ),
                         borderRadius: BorderRadius.only (
                          topLeft: Radius.circular(30*fem),
                          topRight: Radius.circular(30*fem),
                          bottomRight: Radius.circular(90*fem),
                          bottomLeft: Radius.circular(90*fem),
                        ),
                        ),
                        child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 15, bottom: 3),
                                          child: Text(
                                            '${DateFormat.EEEE().format(DateTime.now())}',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.12,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15.0),
                                          child: Text(
                                            '${DateFormat.yMMMd().format(DateTime.now())}',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.12,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 14.0),
                                          child: Text(
                                            '${DateFormat.jm().format(DateTime.now())}',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              // GetBuilder<AuthController>(builder: (controller) {
                              //   final userName = controller.getUserName();
                              //   if (userName != null) {
                              //     return Row(
                              //       mainAxisAlignment: MainAxisAlignment.center,
                              //       children: [
                              //         Padding(
                              //           padding: EdgeInsets.all(8.0),
                              //           child: Text(
                              //             userName,
                              //             style: TextStyle(
                              //               color: Colors.white,
                              //               fontSize: 32,
                              //               fontFamily: 'Poppins',
                              //               fontWeight: FontWeight.w400,
                              //               letterSpacing: -0.32,
                              //             ),
                              //           ),
                              //         )
                              //       ],
                              //     );
                              //   } else {
                              //     return Container(); // You can show a loading indicator or placeholder here.
                              //   }
                              // }),
                              
                               SizedBox(
                                height: 10,
                              ),
                               Container(
                                alignment: Alignment.center,
                            // drajitbhallaR3B (1:3636)
                           
                            child: Text(
                              'Dr. Ajit Bhalla',
                              style: TextStyle (
                               fontFamily: 'Poppins',
                                fontSize: 32*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3899999857*ffem/fem,
                                letterSpacing: -0.32*fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 110,
                                color: Colors.black12,
                           
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 30,
                                            top: 40,
                                            child: Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Ongoing\n',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '4/10',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 17,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Positioned(
                                              left: 5,
                                              top: 10,
                                              child: Container(
                                                width: 90,
                                                height: 90,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: Colors.white,
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 65, 0, 90),
                                                  strokeWidth: 6,
                                                  value: .3,
                                                ),
                                              )
),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 55,
                                    ),
                                    Container(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Appointment status',
                                              style: TextStyle(
                                                color: Color(0xFF1E1E36),
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                               crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    // rectangle1213wzV (1:3627)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                                                    width: 20*fem,
                                                    height: 20*fem,
                                                    decoration: BoxDecoration (
                                                      borderRadius: BorderRadius.circular(5*fem),
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                Text(
                                                  ' Remaining',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                 Container(
                                                    // rectangle1214w7K (1:3629)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                                                    width: 20*fem,
                                                    height: 20*fem,
                                                    decoration: BoxDecoration (
                                                      borderRadius: BorderRadius.circular(5*fem),
                                                      color: Color(0xff730ac6),
                                                    ),
                                                  ),
                                                Text(
                                                  ' Completed',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ]),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 480,
                                padding: EdgeInsets.all(15.0),
                                child: GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: 6,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          mainAxisSpacing: 30.0,
                                          crossAxisSpacing: 20.0,
                                          childAspectRatio: 1.0,
                                          mainAxisExtent: 123),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return InkWell(
                                      child: Container(
                                        height: 80, // Adjusted height to 150
                                        width: 150, // Adjusted width to 150
                                        padding: EdgeInsets.only(
                                          top: 14,
                                          left: 12.50,
                                          right: 5.50,
                                        ),
                                        decoration: ShapeDecoration(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          shadows: [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  145, 52, 0, 108),
                                              blurRadius: 4,
                                              offset: Offset(2, 2),
                                              spreadRadius: 0,
                                            ),
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  136, 0, 61, 54),
                                              blurRadius: 9,
                                              offset: Offset(1, 3),
                                              spreadRadius: 0,
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  width: 90,
                                                  child: Text(
                                                    '${title[index].toString()}',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 23,
                                                  height: 23,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(),
                                                  child:
                                                      Icon(titleicons[index]),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 8),
                                            SizedBox(
                                              width: 130,
                                              child: Text(
                                                '${subtitle[index].toString()}',
                                                style: TextStyle(
                                                  color: Color(0xFF979797),
                                                  fontSize: 13,
                                                  fontStyle: FontStyle.italic,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      onTap: () {
                                        if (index == 0) {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  Payment_Screen()
                                            ),
                                          );
                                        }
                                        if (index == 1) {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  appointment(),
                                            ),
                                          );
                                        }
                                        if (index == 2) {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  manage_staff(),
                                            ),
                                          );
                                        }
                                        if (index == 3) {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => timing(),
                                            ),
                                          );
                                        }
                                      },
                                    );
                                  },
                                ),
                              )
                            ])))
              ]),
        ),
      ])),
      drawer: Drawer(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [
                    Color(0xFF00796B),
                    Color(0xFF03BF9C),
                    Color(0x0003BF9C)
                  ],
                ),
              ),
              child: Container(
                width: MediaQuery.of(context).size.height,
                height: 80,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(""),
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF6F6F6),
                            shape: OvalBorder(),
                          ),
                        ),
                        SizedBox(width: 36),
                        Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Ajit Bhalla',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'General physicist',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Khed Clinic',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Container(
                width: 235,
                height: 40,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFFEC43),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Clinic',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFD9D9D9),
                                      shape: OvalBorder(),
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          SizedBox(
                            width: 79,
                            child: Text(
                              'Add another profile',
                              style: TextStyle(
                                color: Color(0xFF6B6B6B),
                                fontSize: 12,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
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
            Divider(),
            InkWell(
              onTap: () => _launchURL(),
              child: Container(
                width: 264,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Upgrade to ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'HealTether+',
                            style: TextStyle(
                              color: Color(0xFF029E85),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => patient_analysis(),
                  ),
                );
              },
              child: Container(
                width: 264,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Patients Analysis',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => appointment_analysis(),
                  ),
                );
              },
              child: Container(
                width: 264,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Appointments Analysis',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => payment_analysis(),
                  ),
                );
              },
              child: Container(
                width: 264,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Payment Analysis',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                _showSettingsBottomSheet(context);
              },
              child: Container(
                width: 264,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                showLogoutAlertDialog(context);
              },
              child: Container(
                width: 264,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () => _launchURL(),
              child: Container(
                width: 264,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Help',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => feedback(),
                  ),
                );
              },
              child: Container(
                width: 264,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Feedback',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                _launchURL();
              },
              child: Container(
                width: 264,
                height: 14,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 8),
                    Text(
                      'Privacy policy.',
                      style: TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 85),
                    Text(
                      'Terms and conditions.',
                      style: TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 253,
                child: TextButton(
                    onPressed: () {
                      _launchURL();
                    },
                    child: Text(
                      '© Copyright 2023 HealTether. All Rights Reserved',
                      style: TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 10,
                        height: 6,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    )),
              ),
            )
          ],
        ),
      )),
    );
  }

  void _showSettingsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Settings',
                        style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => appointment(),
                      ),
                    );
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Icon(Icons.settings_backup_restore),
                      title: Text(
                        'Previous Appointment',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => patient_analysis(),
                      ),
                    );
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Icon(Icons.pie_chart),
                      title: Text(
                        'View Analysis',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => payment_analysis(),
                      ),
                    );
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "\$",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      title: Text(
                        'View Revenue',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _launchURL();
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Icon(Icons.dark_mode),
                      title: Text(
                        'Tutorials',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _showADBottomSheet(context);
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Icon(Icons.notifications),
                      title: Text(
                        'Additional Details',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _launchURL();
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Icon(Icons.language),
                      title: Text(
                        'Support',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showADBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Additional Details',
                        style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    _makePhoneCall("9080857909");
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Icon(Icons.call),
                      title: Text(
                        'Contact Us',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _launchURL();
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.grey),
                          child: Icon(
                            Icons.question_mark,
                            color: Colors.white,
                          )),
                      title: Text(
                        'FAQ Us',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _launchURL();
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Icon(Icons.privacy_tip_sharp),
                      title: Text(
                        'Privacy Policy',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _launchURL();
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.grey),
                          child: Icon(
                            Icons.question_mark,
                            color: Colors.white,
                          )),
                      title: Text(
                        'Terms & Conditions',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showLogoutAlertDialog(context);
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Icon(Icons.login_outlined),
                      title: Text(
                        'Logout',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void showLogoutAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout'),
          content: SizedBox(
            width: 336,
            child: Text(
              'Do you want to Logout ?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 100,
                    height: 45,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Color(0xFF03BF9C),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9)),
                    ),
                    child: Center(
                      child: Text(
                        'No',
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
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    SystemNavigator.pop();
                  },
                  child: Container(
                    width: 100,
                    height: 45,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50),
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Yes',
                        style: TextStyle(
                          color: Color(0xFF6A798A),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
