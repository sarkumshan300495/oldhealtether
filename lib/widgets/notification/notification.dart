import 'package:flutter/material.dart';



class notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Scaffold(
 appBar: AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: InkWell(
    onTap: () {
      Navigator.pop(context);
    },
    child: Icon(
      Icons.arrow_back,
      size: 24,
      color: Colors.black,
    )),
    title: Text(
      'Notification',
      style: TextStyle(
      fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
    ),
    actions: [
      Padding(
    padding: const EdgeInsets.only(right: 16),
    child: Image.asset(
      'assets/images/iconoir_cancel.png',
      height: 28,
      width: 28,
      color: Colors.black,
    ),
      )
    ],
      ),
        body: SingleChildScrollView(
          child: Container(
            // notificationsupdatedFpy (8:4559)
            width: double.infinity,
            decoration: BoxDecoration (
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(20*fem),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                Container(
                  // autogroupcvbxhMX (NUzMLLMBSgPtxY8SLnCvBX)
                  width: 595*fem,
                  height: 1411*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // frame2609300qid (8:4564)
                        left: 16*fem,
                        top: 0*fem,
                        child: Container(
                          width: 579*fem,
                          height: 1411*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // notificationsfoundyK3 (8:4565)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                child: Text(
                                  '112 notifications found ',
                                  style: TextStyle (
                                   fontFamily: 'Arimo',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2857142857*ffem/fem,
                                    letterSpacing: 0.28*fem,
                                    color: Color(0xff979797),
                                  ),
                                ),
                              ),
                              Container(
                                // frame2609395GJ9 (8:4566)
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupwlutQQM (NUzMwV1HCL1yLm37vPwLuT)
                                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                      width: double.infinity,
                                      height: 729*fem,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // notificationcarduicomponentivq (8:4567)
                                            padding: EdgeInsets.fromLTRB(12*fem, 12*fem, 12*fem, 11*fem),
                                            width: 358*fem,
                                            decoration: BoxDecoration (
                                              border: Border.all(color: Color(0x33730ac6)),
                                              color: Color(0xbfe5d2f3),
                                              borderRadius: BorderRadius.circular(6*fem),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0x38a241ee),
                                                  offset: Offset(0*fem, 4*fem),
                                                  blurRadius: 2*fem,
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // paymentsbDw (I8:4567;8:4618)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                                  child: Text(
                                                    'Payments',
                                                    style: TextStyle (
                                                     fontFamily: 'Poppins',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.2000000477*ffem/fem,
                                                      letterSpacing: 0.32*fem,
                                                      color: Color(0xff03bf9c),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // frame2609401JPF (I8:4567;8:4619)
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        // youhavereceivedpaymentfromkris (I8:4567;8:4620)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                                        constraints: BoxConstraints (
                                                          maxWidth: 317*fem,
                                                        ),
                                                        child: RichText(
                                                          text: TextSpan(
                                                            style: TextStyle (
                                                             fontFamily: 'Arimo',
                                                              fontSize: 18*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.25*ffem/fem,
                                                              letterSpacing: 0.54*fem,
                                                              color: Color(0xff5f5f5f),
                                                            ),
                                                            children: [
                                                              TextSpan(
                                                                text: 'You have received payment from ',
                                                                style: TextStyle (
                                                                 fontFamily: 'Poppins',
                                                                  fontSize: 18*ffem,
                                                                  fontWeight: FontWeight.w400,
                                                                  height: 1.25*ffem/fem,
                                                                  letterSpacing: 0.54*fem,
                                                                  color: Color(0xff5f5f5f),
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: 'Krishna Murthy',
                                                                style: TextStyle (
                                                                 fontFamily: 'Poppins',
                                                                  fontSize: 18*ffem,
                                                                  fontWeight: FontWeight.w700,
                                                                  height: 1.25*ffem/fem,
                                                                  letterSpacing: 0.54*fem,
                                                                  color: Color(0xff5f5f5f),
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: ' ₹250/- consultation fees.',
                                                                style: TextStyle (
                                                                 fontFamily: 'Poppins',
                                                                  fontSize: 18*ffem,
                                                                  fontWeight: FontWeight.w400,
                                                                  height: 1.25*ffem/fem,
                                                                  letterSpacing: 0.54*fem,
                                                                  color: Color(0xff5f5f5f),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        // amomentagovhT (I8:4567;8:4621)
                                                        ' a moment ago',
                                                        style: TextStyle (
                                                         fontFamily: 'Poppins',
                                                          fontSize: 16*ffem,
                                                          fontWeight: FontWeight.w700,
                                                          height: 1.2000000477*ffem/fem,
                                                          letterSpacing: 0.32*fem,
                                                          color: Color(0xff8e8e8e),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4*fem,
                                          ),
                                          Container(
                                            // notificationcarduicomponent3n5 (8:4568)
                                            padding: EdgeInsets.fromLTRB(12*fem, 12*fem, 23*fem, 11*fem),
                                            width: 358*fem,
                                            decoration: BoxDecoration (
                                              border: Border.all(color: Color(0x33730ac6)),
                                              color: Color(0xfff9f4fe),
                                              borderRadius: BorderRadius.circular(6*fem),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0x38a241ee),
                                                  offset: Offset(0*fem, 4*fem),
                                                  blurRadius: 2*fem,
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // paymentsXBT (I8:4568;8:4603)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                                  child: Text(
                                                    'Payments',
                                                    style: TextStyle (
                                                     fontFamily: 'Poppins',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.2000000477*ffem/fem,
                                                      letterSpacing: 0.32*fem,
                                                      color: Color(0xff03bf9c),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // frame2609401S3X (I8:4568;8:4604)
                                                  width: double.infinity,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        // youhavereceivedpaymentfromoakk (I8:4568;8:4605)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                                        constraints: BoxConstraints (
                                                          maxWidth: 323*fem,
                                                        ),
                                                        child: RichText(
                                                          text: TextSpan(
                                                            style: TextStyle (
                                                             fontFamily: 'Arimo',
                                                              fontSize: 18*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.25*ffem/fem,
                                                              letterSpacing: 0.54*fem,
                                                              color: Color(0xff5f5f5f),
                                                            ),
                                                            children: [
                                                              TextSpan(
                                                                text: 'You have received payment from ',
                                                                style: TextStyle (
                                                                 fontFamily: 'Poppins',
                                                                  fontSize: 18*ffem,
                                                                  fontWeight: FontWeight.w400,
                                                                  height: 1.25*ffem/fem,
                                                                  letterSpacing: 0.54*fem,
                                                                  color: Color(0xff5f5f5f),
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: 'Oak Kumar',
                                                                style: TextStyle (
                                                                 fontFamily: 'Poppins',
                                                                  fontSize: 18*ffem,
                                                                  fontWeight: FontWeight.w700,
                                                                  height: 1.25*ffem/fem,
                                                                  letterSpacing: 0.54*fem,
                                                                  color: Color(0xff5f5f5f),
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: ' ₹250/- consultation fees.',
                                                                style: TextStyle (
                                                                 fontFamily: 'Poppins',
                                                                  fontSize: 18*ffem,
                                                                  fontWeight: FontWeight.w400,
                                                                  height: 1.25*ffem/fem,
                                                                  letterSpacing: 0.54*fem,
                                                                  color: Color(0xff5f5f5f),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        // minsagoZA5 (I8:4568;8:4606)
                                                        '2 mins ago',
                                                        style: TextStyle (
                                                         fontFamily: 'Poppins',
                                                          fontSize: 16*ffem,
                                                          fontWeight: FontWeight.w700,
                                                          height: 1.2000000477*ffem/fem,
                                                          letterSpacing: 0.32*fem,
                                                          color: Color(0xff8e8e8e),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4*fem,
                                          ),
                                          Container(
                                            // notificationcarduicomponenttTF (8:4569)
                                            padding: EdgeInsets.fromLTRB(12*fem, 12*fem, 12*fem, 11*fem),
                                            width: 358*fem,
                                            decoration: BoxDecoration (
                                              border: Border.all(color: Color(0x33730ac6)),
                                              color: Color(0xfff9f4fe),
                                              borderRadius: BorderRadius.circular(6*fem),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0x38a241ee),
                                                  offset: Offset(0*fem, 4*fem),
                                                  blurRadius: 2*fem,
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // appointmentsA9s (I8:4569;8:4608)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                                  child: Text(
                                                    'Appointments',
                                                    style: TextStyle (
                                                     fontFamily: 'Poppins',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.2000000477*ffem/fem,
                                                      letterSpacing: 0.32*fem,
                                                      color: Color(0xff03bf9c),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // frame2609401UgM (I8:4569;8:4609)
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        // youhaveanappointmentscheduledw (I8:4569;8:4610)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                                        constraints: BoxConstraints (
                                                          maxWidth: 290*fem,
                                                        ),
                                                        child: RichText(
                                                          text: TextSpan(
                                                            style: TextStyle (
                                                             fontFamily: 'Arimo',
                                                              fontSize: 18*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.25*ffem/fem,
                                                              letterSpacing: 0.54*fem,
                                                              color: Color(0xff5f5f5f),
                                                            ),
                                                            children: [
                                                              TextSpan(
                                                                text: 'You have an appointment scheduled with ',
                                                                style: TextStyle (
                                                                 fontFamily: 'Poppins',
                                                                  fontSize: 18*ffem,
                                                                  fontWeight: FontWeight.w400,
                                                                  height: 1.25*ffem/fem,
                                                                  letterSpacing: 0.54*fem,
                                                                  color: Color(0xff5f5f5f),
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: 'Prakash Singh',
                                                                style: TextStyle (
                                                                 fontFamily: 'Poppins',
                                                                  fontSize: 18*ffem,
                                                                  fontWeight: FontWeight.w700,
                                                                  height: 1.25*ffem/fem,
                                                                  letterSpacing: 0.54*fem,
                                                                  color: Color(0xff5f5f5f),
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: ' today at 15:30.',
                                                                style: TextStyle (
                                                                 fontFamily: 'Poppins',
                                                                  fontSize: 18*ffem,
                                                                  fontWeight: FontWeight.w400,
                                                                  height: 1.25*ffem/fem,
                                                                  letterSpacing: 0.54*fem,
                                                                  color: Color(0xff5f5f5f),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        // hrago3WV (I8:4569;8:4611)
                                                        '1 hr ago',
                                                        style: TextStyle (
                                                         fontFamily: 'Poppins',
                                                          fontSize: 16*ffem,
                                                          fontWeight: FontWeight.w700,
                                                          height: 1.2000000477*ffem/fem,
                                                          letterSpacing: 0.32*fem,
                                                          color: Color(0xff8e8e8e),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4*fem,
                                          ),
                                          Container(
                                            // autogroupykgmyf3 (NUzMbk5AwaDBiv1J8SYkgM)
                                            width: 358*fem,
                                            height: 260*fem,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // notificationcarduicomponentuob (8:4570)
                                                  left: 0*fem,
                                                  top: 0*fem,
                                                  child: Container(
                                                    padding: EdgeInsets.fromLTRB(12*fem, 12*fem, 12*fem, 11*fem),
                                                    width: 358*fem,
                                                    height: 128*fem,
                                                    decoration: BoxDecoration (
                                                      border: Border.all(color: Color(0x33730ac6)),
                                                      color: Color(0xfff9f4fe),
                                                      borderRadius: BorderRadius.circular(6*fem),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Color(0x38a241ee),
                                                          offset: Offset(0*fem, 4*fem),
                                                          blurRadius: 2*fem,
                                                        ),
                                                      ],
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          // statusz4M (I8:4570;8:4623)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                                          child: Text(
                                                            'Status',
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w700,
                                                              height: 1.2000000477*ffem/fem,
                                                              letterSpacing: 0.32*fem,
                                                              color: Color(0xff03bf9c),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          // frame2609401WoP (I8:4570;8:4624)
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Container(
                                                                // youhavechangedthestatusofmalin (I8:4570;8:4625)
                                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                                                constraints: BoxConstraints (
                                                                  maxWidth: 303*fem,
                                                                ),
                                                                child: RichText(
                                                                  text: TextSpan(
                                                                    style: TextStyle (
                                                                     fontFamily: 'Arimo',
                                                                      fontSize: 18*ffem,
                                                                      fontWeight: FontWeight.w400,
                                                                      height: 1.25*ffem/fem,
                                                                      letterSpacing: 0.54*fem,
                                                                      color: Color(0xff5f5f5f),
                                                                    ),
                                                                    children: [
                                                                      TextSpan(
                                                                        text: 'You have changed the status of ',
                                                                        style: TextStyle (
                                                                         fontFamily: 'Poppins',
                                                                          fontSize: 18*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.25*ffem/fem,
                                                                          letterSpacing: 0.54*fem,
                                                                          color: Color(0xff5f5f5f),
                                                                        ),
                                                                      ),
                                                                      TextSpan(
                                                                        text: 'Malini',
                                                                        style: TextStyle (
                                                                         fontFamily: 'Poppins',
                                                                          fontSize: 18*ffem,
                                                                          fontWeight: FontWeight.w700,
                                                                          height: 1.25*ffem/fem,
                                                                          letterSpacing: 0.54*fem,
                                                                          color: Color(0xff5f5f5f),
                                                                        ),
                                                                      ),
                                                                      TextSpan(
                                                                        text: ' as Guest.',
                                                                        style: TextStyle (
                                                                         fontFamily: 'Poppins',
                                                                          fontSize: 18*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.25*ffem/fem,
                                                                          letterSpacing: 0.54*fem,
                                                                          color: Color(0xff5f5f5f),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                // sept20237wb (I8:4570;8:4626)
                                                                '11 Sept, 2023',
                                                                style: TextStyle (
                                                                 fontFamily: 'Poppins',
                                                                  fontSize: 16*ffem,
                                                                  fontWeight: FontWeight.w700,
                                                                  height: 1.2000000477*ffem/fem,
                                                                  letterSpacing: 0.32*fem,
                                                                  color: Color(0xff8e8e8e),
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
                                                  // notificationcarduicomponent5G9 (8:4571)
                                                  left: 0*fem,
                                                  top: 132*fem,
                                                  child: Container(
                                                    padding: EdgeInsets.fromLTRB(12*fem, 12*fem, 12*fem, 11*fem),
                                                    width: 358*fem,
                                                    height: 128*fem,
                                                    decoration: BoxDecoration (
                                                      border: Border.all(color: Color(0x33730ac6)),
                                                      color: Color(0xfff9f4fe),
                                                      borderRadius: BorderRadius.circular(6*fem),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Color(0x38a241ee),
                                                          offset: Offset(0*fem, 4*fem),
                                                          blurRadius: 2*fem,
                                                        ),
                                                      ],
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          // updateXP3 (I8:4571;8:4613)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                                          child: Text(
                                                            'Update',
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w700,
                                                              height: 1.2000000477*ffem/fem,
                                                              letterSpacing: 0.32*fem,
                                                              color: Color(0xff03bf9c),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          // frame2609401F49 (I8:4571;8:4614)
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Container(
                                                                // updatefortheappisnowavailablei (I8:4571;8:4615)
                                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                                                constraints: BoxConstraints (
                                                                  maxWidth: 316*fem,
                                                                ),
                                                                child: RichText(
                                                                  text: TextSpan(
                                                                    style: TextStyle (
                                                                     fontFamily: 'Arimo',
                                                                      fontSize: 18*ffem,
                                                                      fontWeight: FontWeight.w400,
                                                                      height: 1.25*ffem/fem,
                                                                      letterSpacing: 0.54*fem,
                                                                      color: Color(0xff5f5f5f),
                                                                    ),
                                                                    children: [
                                                                      TextSpan(
                                                                        text: 'Update for the app is now available. Install the update ',
                                                                        style: TextStyle (
                                                                         fontFamily: 'Poppins',
                                                                          fontSize: 18*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.25*ffem/fem,
                                                                          letterSpacing: 0.54*fem,
                                                                          color: Color(0xff5f5f5f),
                                                                        ),
                                                                      ),
                                                                      TextSpan(
                                                                        text: 'now',
                                                                        style: TextStyle (
                                                                         fontFamily: 'Poppins',
                                                                          fontSize: 18*ffem,
                                                                          fontWeight: FontWeight.w700,
                                                                          height: 1.25*ffem/fem,
                                                                          letterSpacing: 0.54*fem,
                                                                          color: Color(0xff730ac6),
                                                                        ),
                                                                      ),
                                                                      TextSpan(
                                                                        text: '.',
                                                                        style: TextStyle (
                                                                         fontFamily: 'Poppins',
                                                                          fontSize: 18*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.25*ffem/fem,
                                                                          letterSpacing: 0.54*fem,
                                                                          color: Color(0xff5f5f5f),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                // oct2023TT3 (I8:4571;8:4616)
                                                                '15 Oct, 2023',
                                                                style: TextStyle (
                                                                 fontFamily: 'Poppins',
                                                                  fontSize: 16*ffem,
                                                                  fontWeight: FontWeight.w700,
                                                                  height: 1.2000000477*ffem/fem,
                                                                  letterSpacing: 0.32*fem,
                                                                  color: Color(0xff8e8e8e),
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
                                                  // addappointmentzSy (8:4731)
                                                  left: 273*fem,
                                                  top: 87*fem,
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    style: TextButton.styleFrom (
                                                      padding: EdgeInsets.zero,
                                                    ),
                                                    child: Container(
                                                      padding: EdgeInsets.fromLTRB(20*fem, 27.25*fem, 22*fem, 27.25*fem),
                                                      width: 72*fem,
                                                      height: 72*fem,
                                                      decoration: BoxDecoration (
                                                        color: Color(0xff00796b),
                                                        borderRadius: BorderRadius.circular(36*fem),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Color(0x7a050505),
                                                            offset: Offset(0*fem, 4*fem),
                                                            blurRadius: 3*fem,
                                                          ),
                                                        ],
                                                      ),
                                                      child: Center(
                                                        // mdiaccountmultipleaddFNu (I8:4731;1:3741)
                                                        child: SizedBox(
                                                          width: 30*fem,
                                                          height: 17.5*fem,
                                                          child: Image.asset(
                                                            'assets/images/floatadd.png',
                                                            width: 30*fem,
                                                            height: 17.5*fem,
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
                                    Container(
                                      // notificationcarduicomponentZuP (8:4572)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                      padding: EdgeInsets.fromLTRB(12*fem, 12*fem, 0*fem, 11*fem),
                                      width: double.infinity,
                                      height: 128*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0x33730ac6)),
                                        color: Color(0xfff9f4fe),
                                        borderRadius: BorderRadius.circular(6*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x38a241ee),
                                            offset: Offset(0*fem, 4*fem),
                                            blurRadius: 2*fem,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // updateDyw (I8:4572;8:4613)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                            child: Text(
                                              'Update',
                                              style: TextStyle (
                                               fontFamily: 'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2000000477*ffem/fem,
                                                letterSpacing: 0.32*fem,
                                                color: Color(0xff03bf9c),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // frame2609401vNZ (I8:4572;8:4614)
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // updatefortheappisnowavailablei (I8:4572;8:4615)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 33*fem),
                                                  child: RichText(
                                                    text: TextSpan(
                                                      style: TextStyle (
                                                       fontFamily: 'Arimo',
                                                        fontSize: 18*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.25*ffem/fem,
                                                        letterSpacing: 0.54*fem,
                                                        color: Color(0xff5f5f5f),
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                          text: 'Update for the app is now available. Install the update ',
                                                          style: TextStyle (
                                                           fontFamily: 'Poppins',
                                                            fontSize: 18*ffem,
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.25*ffem/fem,
                                                            letterSpacing: 0.54*fem,
                                                            color: Color(0xff5f5f5f),
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: 'now',
                                                          style: TextStyle (
                                                           fontFamily: 'Poppins',
                                                            fontSize: 18*ffem,
                                                            fontWeight: FontWeight.w700,
                                                            height: 1.25*ffem/fem,
                                                            letterSpacing: 0.54*fem,
                                                            color: Color(0xff730ac6),
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: '.',
                                                          style: TextStyle (
                                                           fontFamily: 'Poppins',
                                                            fontSize: 18*ffem,
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.25*ffem/fem,
                                                            letterSpacing: 0.54*fem,
                                                            color: Color(0xff5f5f5f),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // oct2023fss (I8:4572;8:4616)
                                                  '15 Oct, 2023',
                                                  style: TextStyle (
                                                   fontFamily: 'Poppins',
                                                    fontSize: 16*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2000000477*ffem/fem,
                                                    letterSpacing: 0.32*fem,
                                                    color: Color(0xff8e8e8e),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // notificationcarduicomponentoUH (8:4573)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                      padding: EdgeInsets.fromLTRB(12*fem, 12*fem, 0*fem, 11*fem),
                                      width: double.infinity,
                                      height: 128*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0x33730ac6)),
                                        color: Color(0xfff9f4fe),
                                        borderRadius: BorderRadius.circular(6*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x38a241ee),
                                            offset: Offset(0*fem, 4*fem),
                                            blurRadius: 2*fem,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // updateUaR (I8:4573;8:4613)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                            child: Text(
                                              'Update',
                                              style: TextStyle (
                                               fontFamily: 'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2000000477*ffem/fem,
                                                letterSpacing: 0.32*fem,
                                                color: Color(0xff03bf9c),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // frame2609401o6u (I8:4573;8:4614)
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // updatefortheappisnowavailablei (I8:4573;8:4615)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 33*fem),
                                                  child: RichText(
                                                    text: TextSpan(
                                                      style: TextStyle (
                                                       fontFamily: 'Arimo',
                                                        fontSize: 18*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.25*ffem/fem,
                                                        letterSpacing: 0.54*fem,
                                                        color: Color(0xff5f5f5f),
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                          text: 'Update for the app is now available. Install the update ',
                                                          style: TextStyle (
                                                           fontFamily: 'Poppins',
                                                            fontSize: 18*ffem,
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.25*ffem/fem,
                                                            letterSpacing: 0.54*fem,
                                                            color: Color(0xff5f5f5f),
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: 'now',
                                                          style: TextStyle (
                                                           fontFamily: 'Poppins',
                                                            fontSize: 18*ffem,
                                                            fontWeight: FontWeight.w700,
                                                            height: 1.25*ffem/fem,
                                                            letterSpacing: 0.54*fem,
                                                            color: Color(0xff730ac6),
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: '.',
                                                          style: TextStyle (
                                                           fontFamily: 'Poppins',
                                                            fontSize: 18*ffem,
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.25*ffem/fem,
                                                            letterSpacing: 0.54*fem,
                                                            color: Color(0xff5f5f5f),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // oct2023Kss (I8:4573;8:4616)
                                                  '15 Oct, 2023',
                                                  style: TextStyle (
                                                   fontFamily: 'Poppins',
                                                    fontSize: 16*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2000000477*ffem/fem,
                                                    letterSpacing: 0.32*fem,
                                                    color: Color(0xff8e8e8e),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // notificationcarduicomponentfB3 (8:4574)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                      padding: EdgeInsets.fromLTRB(12*fem, 12*fem, 0*fem, 11*fem),
                                      width: double.infinity,
                                      height: 128*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0x33730ac6)),
                                        color: Color(0xfff9f4fe),
                                        borderRadius: BorderRadius.circular(6*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x38a241ee),
                                            offset: Offset(0*fem, 4*fem),
                                            blurRadius: 2*fem,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // updateXDF (I8:4574;8:4613)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                            child: Text(
                                              'Update',
                                              style: TextStyle (
                                               fontFamily: 'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2000000477*ffem/fem,
                                                letterSpacing: 0.32*fem,
                                                color: Color(0xff03bf9c),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // frame2609401Sb7 (I8:4574;8:4614)
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // updatefortheappisnowavailablei (I8:4574;8:4615)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 33*fem),
                                                  child: RichText(
                                                    text: TextSpan(
                                                      style: TextStyle (
                                                       fontFamily: 'Arimo',
                                                        fontSize: 18*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.25*ffem/fem,
                                                        letterSpacing: 0.54*fem,
                                                        color: Color(0xff5f5f5f),
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                          text: 'Update for the app is now available. Install the update ',
                                                          style: TextStyle (
                                                           fontFamily: 'Poppins',
                                                            fontSize: 18*ffem,
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.25*ffem/fem,
                                                            letterSpacing: 0.54*fem,
                                                            color: Color(0xff5f5f5f),
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: 'now',
                                                          style: TextStyle (
                                                           fontFamily: 'Poppins',
                                                            fontSize: 18*ffem,
                                                            fontWeight: FontWeight.w700,
                                                            height: 1.25*ffem/fem,
                                                            letterSpacing: 0.54*fem,
                                                            color: Color(0xff730ac6),
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: '.',
                                                          style: TextStyle (
                                                           fontFamily: 'Poppins',
                                                            fontSize: 18*ffem,
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.25*ffem/fem,
                                                            letterSpacing: 0.54*fem,
                                                            color: Color(0xff5f5f5f),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // oct2023PoB (I8:4574;8:4616)
                                                  '15 Oct, 2023',
                                                  style: TextStyle (
                                                   fontFamily: 'Poppins',
                                                    fontSize: 16*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2000000477*ffem/fem,
                                                    letterSpacing: 0.32*fem,
                                                    color: Color(0xff8e8e8e),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // notificationcarduicomponentjMF (8:4575)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                      padding: EdgeInsets.fromLTRB(12*fem, 12*fem, 0*fem, 11*fem),
                                      width: double.infinity,
                                      height: 128*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0x33730ac6)),
                                        color: Color(0xfff9f4fe),
                                        borderRadius: BorderRadius.circular(6*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x38a241ee),
                                            offset: Offset(0*fem, 4*fem),
                                            blurRadius: 2*fem,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // updatePwb (I8:4575;8:4613)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                            child: Text(
                                              'Update',
                                              style: TextStyle (
                                               fontFamily: 'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2000000477*ffem/fem,
                                                letterSpacing: 0.32*fem,
                                                color: Color(0xff03bf9c),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // frame26094017sb (I8:4575;8:4614)
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // updatefortheappisnowavailablei (I8:4575;8:4615)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 33*fem),
                                                  child: RichText(
                                                    text: TextSpan(
                                                      style: TextStyle (
                                                       fontFamily: 'Arimo',
                                                        fontSize: 18*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.25*ffem/fem,
                                                        letterSpacing: 0.54*fem,
                                                        color: Color(0xff5f5f5f),
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                          text: 'Update for the app is now available. Install the update ',
                                                          style: TextStyle (
                                                           fontFamily: 'Poppins',
                                                            fontSize: 18*ffem,
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.25*ffem/fem,
                                                            letterSpacing: 0.54*fem,
                                                            color: Color(0xff5f5f5f),
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: 'now',
                                                          style: TextStyle (
                                                           fontFamily: 'Poppins',
                                                            fontSize: 18*ffem,
                                                            fontWeight: FontWeight.w700,
                                                            height: 1.25*ffem/fem,
                                                            letterSpacing: 0.54*fem,
                                                            color: Color(0xff730ac6),
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: '.',
                                                          style: TextStyle (
                                                           fontFamily: 'Poppins',
                                                            fontSize: 18*ffem,
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.25*ffem/fem,
                                                            letterSpacing: 0.54*fem,
                                                            color: Color(0xff5f5f5f),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // oct20236sw (I8:4575;8:4616)
                                                  '15 Oct, 2023',
                                                  style: TextStyle (
                                                   fontFamily: 'Poppins',
                                                    fontSize: 16*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2000000477*ffem/fem,
                                                    letterSpacing: 0.32*fem,
                                                    color: Color(0xff8e8e8e),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // notificationcarduicomponentqKj (8:4576)
                                      padding: EdgeInsets.fromLTRB(12*fem, 12*fem, 0*fem, 11*fem),
                                      width: double.infinity,
                                      height: 128*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0x33730ac6)),
                                        color: Color(0xfff9f4fe),
                                        borderRadius: BorderRadius.circular(6*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x38a241ee),
                                            offset: Offset(0*fem, 4*fem),
                                            blurRadius: 2*fem,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // updateieR (I8:4576;8:4613)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                            child: Text(
                                              'Update',
                                              style: TextStyle (
                                               fontFamily: 'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2000000477*ffem/fem,
                                                letterSpacing: 0.32*fem,
                                                color: Color(0xff03bf9c),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // frame2609401eHB (I8:4576;8:4614)
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // updatefortheappisnowavailablei (I8:4576;8:4615)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 33*fem),
                                                  child: RichText(
                                                    text: TextSpan(
                                                      style: TextStyle (
                                                       fontFamily: 'Arimo',
                                                        fontSize: 18*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.25*ffem/fem,
                                                        letterSpacing: 0.54*fem,
                                                        color: Color(0xff5f5f5f),
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                          text: 'Update for the app is now available. Install the update ',
                                                          style: TextStyle (
                                                           fontFamily: 'Poppins',
                                                            fontSize: 18*ffem,
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.25*ffem/fem,
                                                            letterSpacing: 0.54*fem,
                                                            color: Color(0xff5f5f5f),
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: 'now',
                                                          style: TextStyle (
                                                           fontFamily: 'Poppins',
                                                            fontSize: 18*ffem,
                                                            fontWeight: FontWeight.w700,
                                                            height: 1.25*ffem/fem,
                                                            letterSpacing: 0.54*fem,
                                                            color: Color(0xff730ac6),
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: '.',
                                                          style: TextStyle (
                                                           fontFamily: 'Poppins',
                                                            fontSize: 18*ffem,
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.25*ffem/fem,
                                                            letterSpacing: 0.54*fem,
                                                            color: Color(0xff5f5f5f),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // oct2023cmj (I8:4576;8:4616)
                                                  '15 Oct, 2023',
                                                  style: TextStyle (
                                                   fontFamily: 'Poppins',
                                                    fontSize: 16*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2000000477*ffem/fem,
                                                    letterSpacing: 0.32*fem,
                                                    color: Color(0xff8e8e8e),
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
                    
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
          );
  }
}