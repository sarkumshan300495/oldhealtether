import 'package:flutter/material.dart';
import 'package:healtether_app/screen/home/home_screen.dart';
import 'package:healtether_app/widgets/notification/notification.dart';
import 'package:healtether_app/widgets/schedule_appointment/appointment.dart';
import 'package:healtether_app/widgets/whatsapp/chat.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {

  void pageState()  {
    if (pageIndex == 0) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else if (pageIndex == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => appointment()));
    } else if (pageIndex == 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => chat()));
    } else if (pageIndex == 3) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => notification()));
    }
  }

  @override
 

    void navigateToScreen(int index) {
    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => appointment()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => chat()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => notification()));
        break;
      default:
    }
  }

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
        double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.08,
        decoration: BoxDecoration(
          color: Color(0xff00E0C7),
          boxShadow: [
            BoxShadow(
              color: Color(0x724fc9b2),
              offset: Offset(2 * fem, -4 * fem),
              blurRadius: 22 * fem,
            ),
          ],
        ),
        child: Stack(
          children: [
            Container(
              height: size.height * 0.09,
              width: size.width,
              child: Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.010,
                    right: size.width * 0.08,
                    left: size.width * 0.08),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          pageIndex = 0;
                         
                        });
                         pageState();
                      },
                      child: Column(
                        children: [
                          pageIndex == 0
                         ? Container(
                                       
                                          child: Image.asset(
                                             'assets/images/iconhome.png',
                                            width: size.width * 0.07,
                                            height: size.height * 0.04,
                                          ),
                                        ):Container(
                                          
                                          child: Image.asset(
                                            'assets/images/iconhome-8Ey.png',
                                             width: size.width * 0.07,
                                            height: size.height * 0.04,
                                          ),
                                        ),
                           
                          Text(
                            // homeKjs (I1:3155;1:3928;50:12457)
                            'Home',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.9166666667 * ffem / fem,
                              letterSpacing: -0.12 * fem,
                              color: pageIndex == 0
                                  ? Color(0xffe8fdf9)
                                  : Color(0xff282828),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          pageIndex = 1;
                         
                        });
                         pageState();
                      },
                      child: Column(
                        children: [
                          pageIndex == 1
                         ? Container(
                                       
                                          child: Image.asset(
                                             'assets/images/uis-schedule-BpR.png',
                                            width: size.width * 0.07,
                                            height: size.height * 0.04,
                                          ),
                                        ):Container(
                                          
                                          child: Image.asset(
                                            'assets/images/uis-schedule.png',
                                             width: size.width * 0.07,
                                            height: size.height * 0.04,
                                          ),
                                        ),
                           
                          Text(
                            // homeKjs (I1:3155;1:3928;50:12457)
                            'Appointments',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.9166666667 * ffem / fem,
                              letterSpacing: -0.12 * fem,
                              color: pageIndex == 1
                                  ? Color(0xffe8fdf9)
                                  : Color(0xff282828),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {

                        setState(() {
                          pageIndex = 2;
                        
                        });
                         pageState();
                      },
                      child: Column(
                        children: [
                          pageIndex == 2
                              ? Container(
                                       
                                          child: Image.asset(
                                             'assets/images/ion-logo-whatsapp-ozu.png',
                                            width: size.width * 0.07,
                                            height: size.height * 0.04,
                                          ),
                                        ):Container(
                                          
                                          child: Image.asset(
                                            'assets/images/whatsup-black.png',
                                             width: size.width * 0.07,
                                            height: size.height * 0.04,
                                          ),
                                        ),
                          Text(
                            // homeKjs (I1:3155;1:3928;50:12457)
                            'Chat',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.9166666667 * ffem / fem,
                              letterSpacing: -0.12 * fem,
                              color: pageIndex == 2
                                  ? Color(0xffe8fdf9)
                                  : Color(0xff282828),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                  
                      onTap: ()  {
                        setState(() {
                          pageIndex = 3;
                        });
                          pageState();
                      },
                      child: Column(
                        children: [
                          pageIndex == 3
                              ? Container(
                                       
                                          child: Image.asset(
                                             'assets/images/iconnotifications-iyB.png',
                                            width: size.width * 0.07,
                                            height: size.height * 0.04,
                                          ),
                                        ):Container(
                                          
                                          child: Image.asset(
                                            'assets/images/iconnotifications.png',
                                             width: size.width * 0.07,
                                            height: size.height * 0.04,
                                          ),
                                        ),
                          Text(
                            // homeKjs (I1:3155;1:3928;50:12457)
                            'Notifications',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.9166666667 * ffem / fem,
                              letterSpacing: -0.12 * fem,
                              color: pageIndex == 3
                                  ? Color(0xffe8fdf9)
                                  : Color(0xff282828),
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
      );
  }
}