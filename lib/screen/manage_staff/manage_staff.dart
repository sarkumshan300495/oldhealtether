import 'package:flutter/material.dart';
import 'package:healtether_app/widgets/add_appointment.dart';
import 'package:healtether_app/screen/home/home_screen.dart';
import 'package:healtether_app/widgets/schedule_appointment/appointment.dart';


import '../../widgets/whatsapp/chat.dart';
import '../../constatnts/constant.dart';
import '../../widgets/notification/notification.dart';

class manage_staff extends StatefulWidget {
  const manage_staff({super.key});

  @override
  State<manage_staff> createState() => _manage_staffState();
}

class _manage_staffState extends State<manage_staff> {
  int _page = 1;
  void pageState() {
    if (_page == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else if (_page == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => add_appointment()));
    } else if (_page == 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => chat()));
    } else if (_page == 3) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => notification()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      appBar: AppBar(
        title: const Text(
          'Manage Staff',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
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
    bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff00E0C7),
        type: BottomNavigationBarType.fixed,
        currentIndex: _page,
        showSelectedLabels: true,
        // selectedIconTheme: Colors.white,
        // unselectedIconTheme: Colors.black ,
        selectedItemColor:   Colors.white ,
        unselectedItemColor: Colors.black ,
        selectedLabelStyle: TextStyle(
          color: Colors.white
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.black
        ),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon_home.png',
            color: _page == 0 ? Colors.white : Colors.black ),
            label: 'Home',
           
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/uis_schedule.png',
              color: _page == 0 ? Colors.white : Colors.black  ),
            label: 'Appointments',
       
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/ion_logo-whatsapp.png',
            color: _page == 0 ? Colors.white : Colors.black  ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon_notifications.png',
           color: _page == 0 ? Colors.white : Colors.black  ),
            label: 'Notifications',
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
            pageState();
          });
        },
      ),

      body: Column(children: [
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Doctors',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
        Container(
          height: 160,
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return Container(

                  //color: Colors.black,
                  width: 165,
                  margin: const EdgeInsets.all(3.0),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        width: 120.17,
                        height: 112.17,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFE6FCF8),
                          shape: OvalBorder(),
                        ),
                      ),
                      Positioned(
                        left: 35,
                        child: SizedBox(
                          width: 80.01,
                          height: 100.20,
                          child: Image.asset("assets/doctor.png"),
                        ),
                      ),
                      Positioned(
                        top: 80,
                        child: Container(
                          width: 155.28,
                          height: 60.54,
                          padding: const EdgeInsets.all(7.48),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            //color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.37, color: Color(0xFFCFF9F1)),
                              borderRadius: BorderRadius.circular(5.98),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3FA0A0A0),
                                blurRadius: 5.23,
                                offset: Offset(1.50, 1.50),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: const SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 150.32,
                                  height: 56.99,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: SizedBox(
                                          width: 140,
                                          height: 56.99,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Dr. Ajit Bhalla',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12.96,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .arrow_forward_outlined,
                                                    color: Colors.black,
                                                    size: 14,
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 2,
                                              ),
                                              Text(
                                                'MBBS, DLO, MS(ENT)',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 9.72,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 2,
                                              ),
                                              Text(
                                                'ENT specialist',
                                                style: TextStyle(
                                                  color: Color(0xFF03BF9C),
                                                  fontSize: 8.23,
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
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ));
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Text(
                'Other Staff',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
        Container(
          height: 160,
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  width: 165,
                  margin: const EdgeInsets.all(3.0),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        width: 120.17,
                        height: 112.17,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFE6FCF8),
                          shape: OvalBorder(),
                        ),
                      ),
                      Positioned(
                        left: 35,
                        child: SizedBox(
                          width: 80.01,
                          height: 100.20,
                          child: Image.asset("assets/doctor.png"),
                        ),
                      ),
                      Positioned(
                        top: 80,
                        child: Container(
                          width: 155.28,
                          height: 60.54,
                          padding: const EdgeInsets.all(7.48),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.37, color: Color(0xFFCFF9F1)),
                              borderRadius: BorderRadius.circular(5.98),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3FA0A0A0),
                                blurRadius: 5.23,
                                offset: Offset(1.50, 1.50),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: const SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 150.32,
                                  height: 56.99,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: SizedBox(
                                          width: 140,
                                          height: 56.99,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Jay Shete',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14.96,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons.arrow_forward,
                                                        color: Colors.black,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(height: 2.99),
                                                  Text(
                                                    'Receptionist',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 9.72,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
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
                      )
                    ],
                  ));
            },
          ),
        ),
        const SizedBox(
          height: 90,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const add_member()),
            );
          },
          child: Container(
            width: 335,
            height: 59,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0xFF03BF9C),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)),
            ),
            child: const Center(
              child: Text(
                'Add Member',
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
      ]),
    );
  }
}

class add_member extends StatefulWidget {
  const add_member({super.key});

  @override
  State<add_member> createState() => _add_memberState();
}

class _add_memberState extends State<add_member> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color:Color(0xff00E0C7),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Handle Home button pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  HomeScreen()),
                      );
                    },
                  ),
                  const Text('Home',
                      style: TextStyle(fontSize: 12, color: Colors.white)),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.calendar_month),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const appointment()),
                      );
                      // Handle Appointment button pressed
                    },
                  ),
                  const Text('Appointment', style: TextStyle(fontSize: 12)),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.chat),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const chat()),
                      );
                      // Handle Chat button pressed
                    },
                  ),
                  const Text('Chat', style: TextStyle(fontSize: 12)),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.notifications),
                    onPressed: () {
                      // Handle Notification button pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  notification()),
                      );
                    },
                  ),
                  const Text('Notification', style: TextStyle(fontSize: 12)),
                ],
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Add Member',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 42,
                  height: 8,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF03BF9C),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.75, color: Color(0xFF03BF9C)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: ShapeDecoration(
                    //color: Color(0xFF03BF9C),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.75, color: Color(0xFF03BF9C)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: ShapeDecoration(
                    // color: Color(0xFF03BF9C),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.75, color: Color(0xFF03BF9C)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: ShapeDecoration(
                    // color: Color(0xFF03BF9C),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.75, color: Color(0xFF03BF9C)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    'Personal details',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: OvalBorder(),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Add recent photo',
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF6A798A),
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 335,
                height: 59,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Postion',
                    isCollapsed: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                  textAlignVertical: TextAlignVertical.center,
                  style: const TextStyle(
                    color: Color(0xFF6A798A),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 335,
                height: 59,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'First Name',
                    isCollapsed: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                  style: const TextStyle(
                    color: Color(0xFF6A798A),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 335,
                height: 59,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Last Name',
                    isCollapsed: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                  style: const TextStyle(
                    color: Color(0xFF6A798A),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 59,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 19),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side:
                              const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Select Birthdate',
                          isCollapsed: true,
                          contentPadding: EdgeInsets.zero,
                        ),
                        style: const TextStyle(
                          color: Color(0xFF6A798A),
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 59,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 19),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side:
                              const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Age',
                          isCollapsed: true,
                          contentPadding: EdgeInsets.zero,
                        ),
                        style: const TextStyle(
                          color: Color(0xFF6A798A),
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 335,
                height: 59,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                        width: 0.50, color: Color.fromRGBO(46, 45, 50, 1)),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Gender',
                    isCollapsed: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                  style: const TextStyle(
                    color: Color(0xFF6A798A),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const add_member_Screen_two()),
                );
              },
              child: Container(
                width: 335,
                height: 59,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFF03BF9C),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class add_member_Screen_two extends StatefulWidget {
  const add_member_Screen_two({super.key});

  @override
  State<add_member_Screen_two> createState() => _add_member_Screen_twoState();
}

class _add_member_Screen_twoState extends State<add_member_Screen_two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    icon: const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Handle Home button pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  HomeScreen()),
                      );
                    },
                  ),
                  const Text('Home',
                      style: TextStyle(fontSize: 12, color: Colors.white)),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.calendar_month),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const appointment()),
                      );
                      // Handle Appointment button pressed
                    },
                  ),
                  const Text('Appointment', style: TextStyle(fontSize: 12)),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.chat),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const chat()),
                      );
                      // Handle Chat button pressed
                    },
                  ),
                  const Text('Chat', style: TextStyle(fontSize: 12)),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.notifications),
                    onPressed: () {
                      // Handle Notification button pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  notification()),
                      );
                    },
                  ),
                  const Text('Notification', style: TextStyle(fontSize: 12)),
                ],
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Add Member',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF03BF9C),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.75, color: Color(0xFF03BF9C)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  width: 40,
                  height: 8,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF03BF9C),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.75, color: Color(0xFF03BF9C)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: ShapeDecoration(
                    // color: Color(0xFF03BF9C),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.75, color: Color(0xFF03BF9C)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: ShapeDecoration(
                    // color: Color(0xFF03BF9C),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.75, color: Color(0xFF03BF9C)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    'Contact Details ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: 335,
                height: 59,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: const InputDecoration(
                    isCollapsed: true,
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                    hintText: 'Phone',
                  ),
                  style: const TextStyle(
                    color: Color(0xFF6A798A),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 3.0),
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: kprimarycolor,
                  ),
                  Text(
                    'Add phone no.',
                    style: TextStyle(
                      color: Color(0xFF009176),
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: 335,
                height: 59,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    isCollapsed: true,
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                    hintText: 'Email',
                  ),
                  style: const TextStyle(
                    color: Color(0xFF6A798A),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 3.0),
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: kprimarycolor,
                  ),
                  Text(
                    'Add email',
                    style: TextStyle(
                      color: Color(0xFF009176),
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    'Address ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: 335,
                height: 59,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    isCollapsed: true,
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                    hintText: 'House / Building / room no',
                  ),
                  style: const TextStyle(
                    color: Color(0xFF6A798A),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: 59,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  textAlignVertical: TextAlignVertical.center,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Street/Area',
                    isCollapsed: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                  style: const TextStyle(
                    color: Color(0xFF6A798A),
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: 59,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Landmarks',
                    isCollapsed: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                  style: const TextStyle(
                    color: Color(0xFF6A798A),
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: 335,
                height: 59,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                        width: 0.50, color: Color.fromRGBO(46, 45, 50, 1)),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: const InputDecoration(
                      isCollapsed: true,
                      contentPadding: EdgeInsets.zero,
                      border: InputBorder.none,
                      hintText: "City"),
                  style: const TextStyle(
                    color: Color(0xFF6A798A),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const add_member_Screen_three()),
                );
              },
              child: Container(
                width: 335,
                height: 59,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFF03BF9C),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                ),
                child: const Center(
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class add_member_Screen_three extends StatefulWidget {
  const add_member_Screen_three({super.key});

  @override
  State<add_member_Screen_three> createState() =>
      _add_member_Screen_threeState();
}

class _add_member_Screen_threeState extends State<add_member_Screen_three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    icon: const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Handle Home button pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  HomeScreen()),
                      );
                    },
                  ),
                  const Text('Home',
                      style: TextStyle(fontSize: 12, color: Colors.white)),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.calendar_month),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const appointment()),
                      );
                      // Handle Appointment button pressed
                    },
                  ),
                  const Text('Appointment', style: TextStyle(fontSize: 12)),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.chat),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const chat()),
                      );
                      // Handle Chat button pressed
                    },
                  ),
                  const Text('Chat', style: TextStyle(fontSize: 12)),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.notifications),
                    onPressed: () {
                      // Handle Notification button pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  notification()),
                      );
                    },
                  ),
                  const Text('Notification', style: TextStyle(fontSize: 12)),
                ],
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Add Member',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
         Padding(
        padding: const EdgeInsets.only(right: 16),

        child: Row(
             crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                                    // skip8c5 (1:2059)
                                    margin: EdgeInsets.fromLTRB(0, 1, 8, 0),
                                    child: TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom (
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Text(
                                        'Skip',
                                        style: TextStyle (
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                         
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
 Image.asset(
            'assets/images/iconoir_cancel.png',
            height: 28,
            width: 28,
            color: Colors.black,
          ),
          ],
        )

         
          
      )
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: ShapeDecoration(
                    //color: Color(0xFF03BF9C),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.75, color: Color(0xFF03BF9C)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: ShapeDecoration(
                    // color: Color(0xFF03BF9C),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.75, color: Color(0xFF03BF9C)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  width: 40,
                  height: 8,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF03BF9C),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.75, color: Color(0xFF03BF9C)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: ShapeDecoration(
                    //  color: Color(0xFF03BF9C),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.75, color: Color(0xFF03BF9C)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    'Documents ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 334,
              height: 74,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Select ID-proof ',
                    style: TextStyle(
                      color: Color(0xFF1F1F1F),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Container(
                    height: 59,
                    width:MediaQuery.of(context).size.width*0.45,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 19),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child:  Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Select',
                          style: TextStyle(
                            color: Color(0xFF6A798A),
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                    SizedBox(width: 60),
                         Container(
                                        // frame340yL9 (1:2108)
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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: 335,
                height: 59,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ID no.',
                      style: TextStyle(
                        color: Color(0xFF6A798A),
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 3.0),
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: kprimarycolor,
                  ),
                  Text(
                    'Add another ID',
                    style: TextStyle(
                      color: Color(0xFF009176),
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: SizedBox(
                width: 380.80,
                height: 164.83,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Curriculum vite',
                      style: TextStyle(
                        color: Color(0xFF1F1F1F),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 317,
                            // color: Colors.black,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration (
                                    color: Color(0xffdadada),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    constraints: BoxConstraints (
                                          maxWidth: 92,
                                        ),
                                        width: 122,
                                  child: const Text(
                                    'Upload CV file here',
                                    maxLines: 2,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),

                                //const SizedBox(width: 108),
                                 Container(
                                        // uploadcloudx7X (1:2122)
                                        width: 61.24,
                                        height: 43.36,
                                        child: Image.asset(
                                          'assets/images/upload-cloud.png',
                                          width: 61.24,
                                          height: 43.36,
                                        ),
                                      ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          const SizedBox(
                            width: 334,
                            child: Text(
                              'Please upload image/document of size less than 50Mb',
                              style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 13,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                     SizedBox(
                              height: 8,
                            ),
                            Container(
                              // frame399Jr1 (1:2047)
                              margin: EdgeInsets.fromLTRB(0, 0, 133.8, 0),
                              width: double.infinity,
                              height: 20,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // group36373EUm (1:2048)
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
                                    // addotherdocumentswe5 (1:2051)
                                    'Add other documents ',
                                    style: TextStyle (
                                    fontFamily:  'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                
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
                    // const SizedBox(height: 8),
                    // Container(
                    
        
                  
                    //   child: Row(
                    //     mainAxisSize: MainAxisSize.min,
                    //     mainAxisAlignment: MainAxisAlignment.start,
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     children: [
                    //       Icon(
                    //         Icons.add,
                    //         color: kprimarycolor,
                    //       ),
                    //       Text(
                    //         'Add other documents ',
                    //         style: TextStyle(
                    //           color: Color(0xFF009176),
                    //           fontSize: 16,
                    //           fontStyle: FontStyle.italic,
                    //           fontFamily: 'Poppins',
                    //           fontWeight: FontWeight.w400,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const add_member_Screen_four()),
                );
              },
              child: Container(
                width: 335,
                height: 59,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFF03BF9C),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                ),
                child: const Center(
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class add_member_Screen_four extends StatefulWidget {
  const add_member_Screen_four({super.key});

  @override
  State<add_member_Screen_four> createState() => _add_member_Screen_fourState();
}

class _add_member_Screen_fourState extends State<add_member_Screen_four> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      icon: const Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Handle Home button pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  HomeScreen()),
                        );
                      },
                    ),
                    const Text('Home',
                        style: TextStyle(fontSize: 12, color: Colors.white)),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.calendar_month),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const appointment()),
                        );
                        // Handle Appointment button pressed
                      },
                    ),
                    const Text('Appointment', style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chat),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const chat()),
                        );
                        // Handle Chat button pressed
                      },
                    ),
                    const Text('Chat', style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.notifications),
                      onPressed: () {
                        // Handle Notification button pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  notification()),
                        );
                      },
                    ),
                    const Text('Notification', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text(
            'Add Member',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
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
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: ShapeDecoration(
                         // color: Color(0xFF03BF9C),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.75, color: Color(0xFF03BF9C)),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: ShapeDecoration(
                         // color: Color(0xFF03BF9C),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.75, color: Color(0xFF03BF9C)),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        width: 9,
                        height: 8,
                        decoration: ShapeDecoration(
                          //color: Color(0xFF03BF9C),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.75, color: Color(0xFF03BF9C)),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        width: 40,
                        height: 8,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF03BF9C),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.75, color: Color(0xFF03BF9C)),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text(
                          'Payment Details ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
           Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SizedBox(
                      width: 335,
                  
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'UPI ID',
                            style: TextStyle(
                              color: Color(0xFF1F1F1F),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: 335,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 19),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.50, color: Color(0xFF2E2D32)),
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Add your UPI ID',
                                  style: TextStyle(
                                    color: Color(0xFF6A798A),
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
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
                  const Padding(
                    padding: EdgeInsets.only(left: 3.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: kprimarycolor,
                        ),
                        Text(
                          'Add another UPI ID ',
                          style: TextStyle(
                            color: Color(0xFF009176),
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 9.0, left: 13),
                    child: Row(
                      children: [
                        Text(
                          'Bank Details',
                          style: TextStyle(
                            color: Color(0xFF1F1F1F),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 335,
                      height: 59,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 19),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side:
                              const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        textAlignVertical: TextAlignVertical.center,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Bank name',
                          isCollapsed: true,
                          contentPadding: EdgeInsets.zero,
                        ),
                        style: const TextStyle(
                          color: Color(0xFF6A798A),
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 335,
                      height: 59,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 19),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side:
                              const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: const InputDecoration(
                          
                          border: InputBorder.none,
                          hintText: 'Account no.',
                             isCollapsed: true,
                          contentPadding: EdgeInsets.zero,
                        ),
                        style: const TextStyle(
                          color: Color(0xFF6A798A),
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 335,
                      height: 59,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 19),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side:
                              const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'IFSC Code',
                             isCollapsed: true,
                          contentPadding: EdgeInsets.zero,
                        ),
                        style: const TextStyle(
                          color: Color(0xFF6A798A),
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 335,
                      height: 59,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 19),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side:
                              const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Account holder',
                             isCollapsed: true,
                          contentPadding: EdgeInsets.zero,
                        ),
                        style: const TextStyle(
                          color: Color(0xFF6A798A),
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 3.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: kprimarycolor,
                        ),
                        Text(
                          'Add another bank',
                          style: TextStyle(
                            color: Color(0xFF009176),
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height:15),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const staff_profile()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 335,
                        height: 59,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 19),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF03BF9C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                        ),
                        child: const Center(
                          child: Text(
                            'Save',
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
                  )
                ]))));
  }
}

class staff_profile extends StatefulWidget {
  const staff_profile({super.key});

  @override
  State<staff_profile> createState() => _staff_profileState();
}

class _staff_profileState extends State<staff_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      icon: const Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Handle Home button pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  HomeScreen()),
                        );
                      },
                    ),
                    const Text('Home',
                        style: TextStyle(fontSize: 12, color: Colors.white)),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.calendar_month),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const appointment()),
                        );
                        // Handle Appointment button pressed
                      },
                    ),
                    const Text('Appointment', style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chat),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const chat()),
                        );
                        // Handle Chat button pressed
                      },
                    ),
                    const Text('Chat', style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.notifications),
                      onPressed: () {
                        // Handle Notification button pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  notification()),
                        );
                      },
                    ),
                    const Text('Notification', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text(
            'Manage Staff',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
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
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                              width: 150.17,
                              height: 140.17,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFE6FCF8),
                                shape: OvalBorder(),
                              ),
                            ),
                            Positioned(
                              top: 8,
                              right: 4,
                              child: SizedBox(
                                width:150.17,
                                height: 140.20,
                                child: Image.asset("assets/doctor.png"),
                              ),
                            ),
                          ],
                        )),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10.0, top: 20, right: 3),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Ram Menon',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            'WARD BOY',
                            style: TextStyle(
                              color: Color(0xFF03BF9C),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'PERSONAL DETAILS',
                                    style: TextStyle(
                                      color: Color(0xFF7A7A7A),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Container(
                                    width: 37.01,
                                    decoration: const ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.50,
                                          strokeAlign:
                                              BorderSide.strokeAlignCenter,
                                          color: Color(0xFF03BF9C),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Icon(
                                  Icons.edit,
                                  size: 10,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Birthday',
                                style: TextStyle(
                                  color: Color(0xFF5F5F5F),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(':'),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                '04/12/1993',
                                style: TextStyle(
                                  color: Color(0xFF03BF9C),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Row(
                            children: [
                              Text(
                                'Age',
                                style: TextStyle(
                                  color: Color(0xFF5F5F5F),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 34),
                              Text(':'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '30',
                                style: TextStyle(
                                  color: Color(0xFF03BF9C),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Row(
                            children: [
                              Text(
                                'Gender',
                                style: TextStyle(
                                  color: Color(0xFF5F5F5F),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                width: 13,
                              ),
                              Text(':'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                  color: Color(0xFF03BF9C),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'CONTACT DETAILS',
                            style: TextStyle(
                              color: Color(0xFF7A7A7A),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            width: 37.01,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0.50,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF03BF9C),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Icon(
                          Icons.edit,
                          size: 10,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, bottom: 3),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mobile',
                        style: TextStyle(
                          color: Color(0xFF5F5F5F),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(':'),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            '+91 986 563214',
                            style: TextStyle(
                              color: Color(0xFF03BF9C),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '+91 896 452167',
                            style: TextStyle(
                              color: Color(0xFF03BF9C),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, bottom: 3),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                          color: Color(0xFF5F5F5F),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Text(':'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'ashiwin99@gmail.com',
                        style: TextStyle(
                          color: Color(0xFF03BF9C),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 6),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Address',
                        style: TextStyle(
                          color: Color(0xFF5F5F5F),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(':'),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'Plot No. 4-75/1, Madhavi Nagar, \nOpposite BHEL R(&)D Gate, \nBalaNagar Hyderabad, Telangana, 500037.',
                          maxLines: 4,
                          overflow: TextOverflow.visible,
                          
                          style: TextStyle(
                            color: Color(0xFF03BF9C),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                         
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'PAYMENT DETAILS',
                            style: TextStyle(
                              color: Color(0xFF7A7A7A),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            width: 37.01,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0.50,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF03BF9C),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Icon(
                          Icons.edit,
                          size: 10,
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 6),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'UPI ID',
                        style: TextStyle(
                          color: Color(0xFF5F5F5F),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 64,
                      ),
                      Text(':'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'ram214@ybl',
                        style: TextStyle(
                          color: Color(0xFF03BF9C),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 6),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BANK',
                        style: TextStyle(
                          color: Color(0xFF5F5F5F),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 67,
                      ),
                      Text(':'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Indian Bank',
                        style: TextStyle(
                          color: Color(0xFF03BF9C),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 6),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'A/c no ',
                        style: TextStyle(
                          color: Color(0xFF5F5F5F),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 59),
                      Text(':'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '5213 5123 6554 5289',
                        style: TextStyle(
                          color: Color(0xFF03BF9C),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 6),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IFSC code',
                        style: TextStyle(
                          color: Color(0xFF5F5F5F),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 40),
                      Text(':'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'IDIB000H013  ',
                        style: TextStyle(
                          color: Color(0xFF03BF9C),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 6),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Account Holder',
                        style: TextStyle(
                          color: Color(0xFF5F5F5F),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(':'),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        ' Ram Menon',
                        style: TextStyle(
                          color: Color(0xFF03BF9C),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'DOCUMENTS',
                            style: TextStyle(
                              color: Color(0xFF7A7A7A),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            width: 37.01,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0.50,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF03BF9C),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Icon(
                          Icons.edit,
                          size: 10,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 6),
                  child: Row(
                    children: [
                      Text(
                        'ID',
                        style: TextStyle(
                          color: Color(0xFF5F5F5F),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 36,
                      ),
                      Text(':'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Aadhar',
                        style: TextStyle(
                          color: Color(0xFF03BF9C),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 6),
                  child: Row(
                    children: [
                      Text(
                        'ID no  ',
                        style: TextStyle(
                          color: Color(0xFF5F5F5F),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Text(':'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '9658 4521 3652 4589',
                        style: TextStyle(
                          color: Color(0xFF03BF9C),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                 const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CV',
                      style: TextStyle(
                        color: Color(0xFF5F5F5F),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 31,
                    ),
                    Text(':'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'https://docs.google.com/document/d/\nfsbrsrthbnsfhndntghdfu',
                      style: TextStyle(
                        color: Color(0xFF03BF9C),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 8.0, bottom: 6),
                //   child: Row(
                //     children: [
                //       Text(
                //         'CV',
                //         style: TextStyle(
                //           color: Color(0xFF5F5F5F),
                //           fontSize: 14,
                //           fontFamily: 'Poppins',
                //           fontWeight: FontWeight.w500,
                //         ),
                //       ),
                //       SizedBox(
                //         width: 28,
                //       ),
                //       Text(':'),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       Expanded(
                //         child: Text(
                //           'https://docs.google.com/document/d/\nfsbrsrthbnsfhndntghdfu',
                //           maxLines: 2,overflow: TextOverflow.visible,
                //           style: TextStyle(
                //             color: Color(0xFF03BF9C),
                //             fontSize: 14,
                //             fontFamily: 'Poppins',
                //             fontWeight: FontWeight.w500,
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ));
  }
}
