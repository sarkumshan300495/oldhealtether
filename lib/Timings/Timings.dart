import 'package:flutter/material.dart';
import 'package:healtether_app/Timings/Add_clinic.dart';
import 'package:healtether_app/widgets/schedule_appointment/appointment.dart';

import 'package:healtether_app/constatnts/constant.dart';
import 'package:healtether_app/screen/home/home_screen.dart';
import 'package:healtether_app/widgets/whatsapp/chat_list.dart';

import '../widgets/notification/notification.dart';

class timing extends StatefulWidget {
  const timing({super.key});

  @override
  State<timing> createState() => _timingState();
}

class _timingState extends State<timing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          isExtended: true,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => add_clinic()));
          },
          backgroundColor: kprimarycolor,
          child: Row(
            children: [
              Icon(
                Icons.add,
                color: Colors.white,
              ),
              Text(
                "Add",
                style: TextStyle(fontSize: 12, color: Colors.white),
              )
            ],
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
                        MaterialPageRoute(builder: (context) => appointment()),
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
                        MaterialPageRoute(builder: (context) => chat_display()),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
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
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: Icon(Icons.arrow_back)),
                          ),
                          Text(
                            'My Clinics',
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
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Card(
                elevation: 2.0,
                child: Container(
                  height: 100,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 5.0, right: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  width: 6,
                                  height: 6,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Text("Dr. ashwin's clinic"),
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 233, 227, 227),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.edit,
                                      size: 15,
                                    ),
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: Text(
                                          "Edit Details",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: kprimarycolor),
                                        )),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Dr. ashwin's clinic, India",
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(width: 45, child: Text(""))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 260,
                          height: 1.0,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Fees: Rs.1000.0",
                            style: TextStyle(fontSize: 11),
                          ),
                          Text(
                            "Follow-up Fees: Rs. 500.0",
                            style: TextStyle(fontSize: 11),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                elevation: 2.0,
                child: Container(
                  height: 80,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, right: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  width: 6,
                                  height: 6,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Text("Virtual Clinic"),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 233, 227, 227),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.edit,
                                        size: 15,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: Text(
                                          "Edit Details",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: kprimarycolor),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 260,
                          height: 1.0,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Fees: Rs.1000.0",
                            style: TextStyle(fontSize: 11),
                          ),
                          Text(
                            "Follow-up Fees: Rs. 500.0",
                            style: TextStyle(fontSize: 11),
                          )
                        ],
                      )
                    ],
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
