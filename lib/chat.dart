import 'package:flutter/material.dart';
import 'package:healtether_app/screen/chat_display.dart';
import 'package:healtether_app/constatnts/constant.dart';

class chat extends StatefulWidget {
  const chat({super.key});

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor:    Color(0xff03bf9c),
          leading: Container(
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => chat_display(),
                    ),
                  );
                },
                icon: Icon(Icons.arrow_back)),
          ),
          title: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Ramesh Patel',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: IconButton(
                  icon: Icon(Icons.attach_file_outlined),
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          // <-- SEE HERE
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                          ),
                        ),
                        builder: (context) {
                          return SizedBox(
                              height: 200,
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 173,
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0xFFC7E9E3),
                                      blurRadius: 22,
                                      offset: Offset(0, -4),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Add files',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: IconButton(
                                            icon: Icon(Icons.close),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 101,
                                                  height: 86,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xCC03BF9C),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          width: 0.50,
                                                          color: Color(
                                                              0xCC03BF9C)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                          width: 30,
                                                          height: 30,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Icon(Icons
                                                              .person_add_alt_rounded)),
                                                      const SizedBox(height: 4),
                                                      Text(
                                                        'Schedule\nAppointment',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 101,
                                                  height: 86,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xCC03BF9C),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          width: 0.50,
                                                          color: Color(
                                                              0xCC03BF9C)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                          width: 30,
                                                          height: 30,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Icon(Icons
                                                              .folder_shared)),
                                                      const SizedBox(height: 4),
                                                      Text(
                                                        'Send\nPrescription',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 101,
                                                  height: 86,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xCC03BF9C),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          width: 0.50,
                                                          color: Color(
                                                              0xCC03BF9C)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                          width: 30,
                                                          height: 30,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Icon(Icons
                                                              .sticky_note_2_outlined)),
                                                      const SizedBox(height: 4),
                                                      Text(
                                                        'Send\nInvoice',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ));
                        });
                  }),
            )
          ],
        ),
        body: Column(children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 100,
              ),
              Container(
                width: 248,
                height: 51,
                decoration: ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: SizedBox(
                  width: 225,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Hello, I want to book an appointment',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Container(
                  width: 248,
                  height: 51,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  child: SizedBox(
                    width: 225,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Hello, I want to book an appointment',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 145,
              ),
              Container(
                width: 200,
                height: 51,
                decoration: ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: SizedBox(
                  width: 200,
                  child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'I would like to visit the doctor.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 100,
              ),
              Container(
                width: 248,
                height: 51,
                decoration: ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: SizedBox(
                  width: 225,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Hello, I want to book an appointment',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ]),
        bottomNavigationBar: BottomAppBar(
             color: Color(0xfffffee9),
          child:      Container(
            // frame482FNm (1:5462)
            width: double.infinity,
            height: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // group36338bhX (1:5463)
                  margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                  width: 270,
                  height: double.infinity,
                  // decoration: BoxDecoration (
                  //   borderRadius: BorderRadius.circular(7),
                  // ),
                  child: Container(
                    // frame152L9K (1:5464)
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xff2e2d32)),
                      color: Color(0xfff6f6f6),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle (
                             fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 1.28125,
                            letterSpacing: -0.16,
                            fontStyle: FontStyle.italic,
                            color: Color(0xff6a798a),
                          ),
                          children: [
                            TextSpan(
                              text: 'Write your message here',
                            ),
                            TextSpan(
                              text: '.',
                              style: TextStyle (
                               fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                height: 1.28125,
                                letterSpacing: 0.48,
                                fontStyle: FontStyle.italic,
                                color: Color(0xff6a798a),
                              ),
                            ),
                            TextSpan(
                              text: '.',
                              style: TextStyle (
                                fontFamily:  'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                height: 1.28125,
                                letterSpacing: 0.8,
                                fontStyle: FontStyle.italic,
                                color: Color(0xff6a798a),
                              ),
                            ),
                            TextSpan(
                              text: '.',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // actionbuttonpcD (1:5466)
                  margin: EdgeInsets.fromLTRB(0, 0.5, 0, 0.5),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(21, 20, 20.67, 19.67),
                      height: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xff03bf9c),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        // icroundaddVyF (I1:5466;41:8644)
                        child: SizedBox(
                          width: 18.33,
                          height: 18.33,
                          child: Image.asset(
                            'assets/images/ic-round-add.png',
                            width: 18.33,
                            height: 18.33,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
