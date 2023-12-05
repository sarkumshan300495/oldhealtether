import 'package:flutter/material.dart';
import 'package:healtether_app/widgets/schedule_appointment/appointment.dart';
import 'package:healtether_app/widgets/whatsapp/chat.dart';
import 'package:healtether_app/constatnts/constant.dart';
import 'package:healtether_app/widgets/notification/notification.dart';
import 'package:flutter/src/services/text_formatter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:healtether_app/screen/home/home_screen.dart';
import 'package:intl/intl.dart';

class AppointmentData {
  final String mobile;
  final String name;
  final String birthdate;
  final String age;
  final String gender;

  AppointmentData({
    required this.mobile,
    required this.name,
    required this.birthdate,
    required this.age,
    required this.gender,
  });
}

class add_appointment extends StatefulWidget {
  const add_appointment({super.key});

  @override
  State<add_appointment> createState() => _add_appointmentState();
}

bool isChecked = false;
List<String> dataArray = [];
bool mobile_check = false;

class _add_appointmentState extends State<add_appointment> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController mobileCtr = TextEditingController();
  TextEditingController nameCtr = TextEditingController();
  TextEditingController birthdateCtr = TextEditingController();
  TextEditingController ageCtr = TextEditingController();
  TextEditingController genderCtr = TextEditingController();
//Nodata check
  var isnamedata = 0;
  var ismobdata = 0;
  var isdobdata = 0;
  var isagedata = 0;
  var isgenderdata = 0;

  bool isChecked = false;

  @override
  void dispose() {
    mobileCtr.dispose();
    nameCtr.dispose();
    birthdateCtr.dispose();
    ageCtr.dispose();
    genderCtr.dispose();
    super.dispose();
  }

  // var _check = false;
  @override
  void initState() {
    super.initState();
    mobile_check = false;
  }

  var Selecteddob = "";
  DateTime? dob = DateTime.now();
  // String? _formattedate;
  Future<void> opendatepicker() async {
    final formattedate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1980),
        lastDate: DateTime(2024));
    if (formattedate != null) {
      // not equal to null naal
      setState(() {
        dob = formattedate;
        Selecteddob = getFormatedAmount(dob).toString();
        print('dob as $Selecteddob');
      });
    }
  }

  getFormatedAmount(var dob) {
    var mdate = DateFormat.yMMMd().format(dob).toString();
    return mdate.toString();
  }

  int _page = 1;
  void pageState() {
    if (_page == 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else if (_page == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => add_appointment()));
    } else if (_page == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => chat()));
    } else if (_page == 3) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => notification()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff00E0C7),
        type: BottomNavigationBarType.fixed,
        currentIndex: _page,
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.black),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon_home.png',
                color: _page == 0 ? Colors.white : Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/uis_schedule.png',
                color: _page == 1 ? Colors.white : Colors.black),
            label: 'Appointments',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/ion_logo-whatsapp.png',
                color: _page == 2 ? Colors.white : Colors.black),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon_notifications.png',
                color: _page == 3 ? Colors.white : Colors.black),
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
      appBar: AppBar(
        title: const Text(
          'Add Appointment',
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
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
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
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text(
                        'Personal Details of the patient',
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
                        side: const BorderSide(
                            width: 0.50, color: Color(0xFF2E2D32)),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      controller: mobileCtr,
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value.toString().isEmpty ||
                            value.toString().length < 10) {
                          // return "Mobile Number Required";
                          setState(() {
                            ismobdata = 1;
                          });
                        } else {
                          setState(() {
                            ismobdata = 0;
                          });
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                        isCollapsed: true,
                        contentPadding: EdgeInsets.zero,
                        suffixIcon: Icon(
                          Icons.info,
                          color:
                              ismobdata == 1 ? Colors.red : Colors.transparent,
                        ),
                        border: InputBorder.none,
                        hintText: 'Mobile',
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
                Visibility(
                  visible: mobile_check == true ? true : false,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'The mobile is already registered.',
                              style: TextStyle(
                                color: Color(0xFF730AC6),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Do you want to add new patient?',
                              style: TextStyle(
                                color: Color(0xFF6A798A),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 54,
                              height: 38,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF03BF9C),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              child: const Center(
                                child: Text(
                                  'Yes',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 49,
                              height: 38,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 0.50),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'No',
                                  style: TextStyle(
                                    color: Color(0xFF6A798A),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
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
                        side: const BorderSide(
                            width: 0.50, color: Color(0xFF2E2D32)),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: nameCtr,
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          setState(() {
                            isnamedata = 1;
                          });

                          // return "Name is Required";
                        } else {
                          setState(() {
                            isnamedata = 0;
                          });
                        }

                        return null;
                      },
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        isCollapsed: true,
                        contentPadding: EdgeInsets.zero,
                        suffixIcon: Icon(
                          Icons.info,
                          color:
                              isnamedata == 1 ? Colors.red : Colors.transparent,
                        ),
                        border: InputBorder.none,
                        hintText: 'Name',
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
                              side: const BorderSide(
                                  width: 0.50, color: Color(0xFF2E2D32)),
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                              isCollapsed: true,
                              contentPadding: EdgeInsets.zero,
                              border: InputBorder.none,
                              hintText: "Select Birthdate",
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
                              side: const BorderSide(
                                  width: 0.50, color: Color(0xFF2E2D32)),
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(3)
                            ],
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            controller: ageCtr,
                            validator: (value) {
                              if (value.toString().isEmpty) {
                                // return "Age is Required";
                                // print(object)
                                setState(() {
                                  isagedata = 1;
                                });
                              } else {
                                setState(() {
                                  isagedata = 0;
                                });
                              }

                              return null;
                            },
                            decoration: InputDecoration(
                              isCollapsed: true,
                              contentPadding: EdgeInsets.zero,
                              suffixIcon: Icon(Icons.info,
                                  color: isagedata == 1
                                      ? Colors.red
                                      : Colors.transparent),
                              border: InputBorder.none,
                              hintText: 'Age',
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 19),
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
                      controller: genderCtr,
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          // return "Gender is Required";
                          setState(() {
                            isgenderdata = 1;
                          });
                        } else {
                          setState(() {
                            isgenderdata = 0;
                          });
                        }

                        return null;
                      },
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        isCollapsed: true,
                        contentPadding: EdgeInsets.zero,
                        suffixIcon: Icon(
                          Icons.info,
                          color: isgenderdata == 1
                              ? Colors.red
                              : Colors.transparent,
                        ),
                        border: InputBorder.none,
                        hintText: 'Gender',
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      const Text(
                        'Virtual Consultation',
                        style: TextStyle(
                          color: Color(0xFF454545),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                        ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      if (mobileCtr.text.isNotEmpty &&
                              nameCtr.text.isNotEmpty ||
                          Selecteddob.isNotEmpty ||
                          ageCtr.text.isNotEmpty ||
                          genderCtr.text.isNotEmpty) {
                        final String mobile = mobileCtr.text;
                        final String name = nameCtr.text;
                        final String birthdate = Selecteddob;
                        final String age = ageCtr.text;
                        final String gender = genderCtr.text;

                        // Create an instance of AppointmentData
                        AppointmentData appointmentData = AppointmentData(
                          mobile: mobile,
                          name: name,
                          birthdate: birthdate,
                          age: age,
                          gender: gender,
                        );
                        // Check if the same mobile number is already present in dataArray
                        if (dataArray.contains(mobile)) {
                          print("Same number");
                          setState(() {
                            mobile_check = true;
                          });
                        } else {
                          setState(() {
                            dataArray = [mobile, name, birthdate, age, gender];
                          });

                          // Clear the form fields
                          mobileCtr.clear();
                          nameCtr.clear();
                          birthdateCtr.clear();
                          ageCtr.clear();
                          genderCtr.clear();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Screen_two_appointment(appointmentData)),
                          );
                        }
                      } else {
                        toast(context, "Check Above");
                        print("check above");
                      }
                    }
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
                          'Schedule now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 335,
                      height: 59,
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
                      child: const Center(
                        child: Text(
                          'Schedule for later',
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  toast(BuildContext context, msg) {
    Fluttertoast.showToast(
        msg: msg, backgroundColor: Colors.grey, gravity: ToastGravity.CENTER);
  }
}

class Screen_two_appointment extends StatefulWidget {
  final AppointmentData appointmentData;
  const Screen_two_appointment(this.appointmentData, {super.key});

  @override
  State<Screen_two_appointment> createState() =>
      _Screen_two_appointmentState(appointmentData);
}

class _Screen_two_appointmentState extends State<Screen_two_appointment> {
  final _formkey = GlobalKey<FormState>();

  var appointmentData;

  var Selecteddob = "";
  DateTime? dob = DateTime.now();
  // String? _formattedate;
  Future<void> opendatepicker() async {
    final formattedate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1980),
        lastDate: DateTime(2024));
    if (formattedate != null) {
      // not equal to null naal
      setState(() {
        dob = formattedate;
        Selecteddob = getFormatedAmount(dob).toString();
        print('dob as $Selecteddob');
      });
    }
  }

  getFormatedAmount(var dob) {
    var mdate = DateFormat.yMMMd().format(dob).toString();
    return mdate.toString();
  }

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
  _Screen_two_appointmentState(this.appointmentData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff00E0C7),
        type: BottomNavigationBarType.fixed,
        currentIndex: _page,
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(
          color: Colors.white
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.black
        ),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon_home.png',
                color: _page == 0 ? Colors.white : Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/uis_schedule.png',
                color: _page == 1 ? Colors.white : Colors.black),
            label: 'Appointments',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/ion_logo-whatsapp.png',
                color: _page == 2 ? Colors.white : Colors.black),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon_notifications.png',
                color: _page == 3 ? Colors.white : Colors.black),
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


      appBar: AppBar(
        title: const Text(
          'Add Appointment',
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
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 10,
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
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text(
                        'Appointment Details',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      opendatepicker();
                    },
                    child: Container(
                        width: 335,
                        height: 63,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.50, color: Color(0xFF2E2D32)),
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 204, 0),
                                child: Text(
                                    Selecteddob == ""
                                        ? "Select Date"
                                        : Selecteddob,
                                    style: const TextStyle(
                                      color: Color(0xFF6A798A),
                                      fontSize: 16,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    )),
                              ),
                              Container(
                                // frame354HTB (1:1438)
                                margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                width: 9,
                                height: 5,
                                child: Image.asset(
                                  'assets/images/frame.png',
                                  width: 9,
                                  height: 5,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      opendatepicker();
                    },
                    child: Container(
                        width: 335,
                        height: 63,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.50, color: Color(0xFF2E2D32)),
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 170, 0),
                                child: Text(
                                    Selecteddob == ""
                                        ? "Select Time Slot"
                                        : Selecteddob,
                                    style: const TextStyle(
                                      color: Color(0xFF6A798A),
                                      fontSize: 16,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    )),
                              ),
                              Container(
                                // frame354HTB (1:1438)
                                margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                width: 9,
                                height: 5,
                                child: Image.asset(
                                  'assets/images/frame.png',
                                  width: 9,
                                  height: 5,
                                ),
                              ),
                            ],
                          ),
                        )),
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
                        side: const BorderSide(
                            width: 0.50, color: Color(0xFF2E2D32)),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        isCollapsed: true,
                        contentPadding: EdgeInsets.zero,
                        labelText: 'Exact time',
                        labelStyle: TextStyle(
                          color: Color(0xFF6A798A),
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      opendatepicker();
                    },
                    child: Container(
                        width: 335,
                        height: 63,
                        padding: EdgeInsets.fromLTRB(16, 19, 17, 23),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.50, color: Color(0xFF2E2D32)),
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 160, 0),
                              child: Text(
                                  Selecteddob == ""
                                      ? "Attending Doctor"
                                      : Selecteddob,
                                  style: const TextStyle(
                                    color: Color(0xFF6A798A),
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                            Container(
                              // frame354HTB (1:1438)
                              margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                              width: 9,
                              height: 5,
                              child: Image.asset(
                                'assets/images/frame.png',
                                width: 9,
                                height: 5,
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 335,
                    height: 59,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 0.50, color: Color(0xFF2E2D32)),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Appointment Reason',
                          labelStyle: TextStyle(
                            color: Color(0xFF6A798A),
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: kprimarycolor,
                      ),
                      Text(
                        'Add notes ',
                        style: TextStyle(
                          color: Color(0xFF009176),
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const Screen_three_appoinment()),
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
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.50, color: Color(0xFF2E2D32)),
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Schedule appointment',
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Screen_three_appoinment extends StatefulWidget {
  const Screen_three_appoinment({super.key});

  @override
  State<Screen_three_appoinment> createState() =>
      _Screen_three_appoinmentState();
}

class _Screen_three_appoinmentState extends State<Screen_three_appoinment> {
  
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
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff00E0C7),
        type: BottomNavigationBarType.fixed,
        currentIndex: _page,
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(
          color: Colors.white
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.black
        ),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon_home.png',
                color: _page == 0 ? Colors.white : Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/uis_schedule.png',
                color: _page == 1 ? Colors.white : Colors.black),
            label: 'Appointments',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/ion_logo-whatsapp.png',
                color: _page == 2 ? Colors.white : Colors.black),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon_notifications.png',
                color: _page == 3 ? Colors.white : Colors.black),
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
      appBar: AppBar(
        title: const Text(
          'Add Appointment',
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
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              // charmcircletickgDb (1:6604)
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20.47),
              width: 45.06,
              height: 45.02,
              child: Image.asset(
                'assets/images/charm-circle-tick.png',
                width: 45.06,
                height: 45.02,
              ),
            ),
            Container(
              // theappointmenthasbeenscheduled (1:6608)
              constraints: BoxConstraints(
                maxWidth: 223,
              ),
              child: Text(
                'The appointment has been scheduled successfully.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.3899999857 * ffem / fem,
                  letterSpacing: 0.16,
                  color: Color(0xff393939),
                ),
              ),
            ),
            // Container(
            //   width: 206,
            //   height: 155,
            //   decoration: const ShapeDecoration(
            //     color: Color(0xFF730AC6),
            //     shape: StarBorder(
            //       points: 16,
            //       innerRadiusRatio: 0.83,
            //       pointRounding: 0,
            //       valleyRounding: 0,
            //       rotation: 0,
            //       squash: 0,
            //     ),
            //   ),
            //   child: const Center(
            //     child: Text(
            //       'Token \n10',
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 36,
            //         fontFamily: 'Poppins',
            //         fontWeight: FontWeight.w400,
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(height: 20,),
            Container(
                                // frame2609237fLR (1:6609)
                                margin: EdgeInsets.fromLTRB(134.5*fem, 0*fem, 134.5*fem, 0*fem),
                                width: double.infinity,
                                height: 120*fem,
                                decoration: BoxDecoration (
                                  image: DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/images/polygon-9.png',
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // polygon8yM7 (1:6611)
                                      left: 10*fem,
                                      top: 10*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 100*fem,
                                          height: 100*fem,
                                          child: Image.asset(
                                            'assets/images/polygon-8.png',
                                            width: 100*fem,
                                            height: 100*fem,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // tDB (1:6612)
                                      left: 43.5*fem,
                                      top: 45*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 33*fem,
                                          height: 30*fem,
                                          child: Text(
                                            '10',
                                            textAlign: TextAlign.center,
                                            style: TextStyle (
                                             fontFamily: 'Arimo',
                                              fontSize: 28*ffem,
                                              height: 1.0714285714*ffem/fem,
                                              letterSpacing: 0.56*fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
            const SizedBox(
              height: 20,
            ),
            Container(
                          // frame376mnm (1:6613)
                          padding: EdgeInsets.fromLTRB(22*fem, 21*fem, 26.5*fem, 11*fem),
                          width: 253,
                          decoration: BoxDecoration (
                            color: Color(0xfff9f4fe),
                            borderRadius: BorderRadius.circular(12*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x93a241ee),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 2*fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame2609246rpD (1:6615)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // appointmentdetailsQ53 (1:6616)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                      child: Text(
                                        'Appointment details',
                                        style: TextStyle (
                                         fontFamily:'Poppins',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.7142857143*ffem/fem,
                                          letterSpacing: 0.28*fem,
                                          color: Color(0xff006270),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // frame2609245hZw (1:6617)
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupwgmbqw3 (NUyy2j1f9mSm2ZymX9WGmb)
                                            padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // frame2609238yXT (1:6618)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 56.5*fem, 8*fem),
                                                  width: double.infinity,
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // patientnameVkh (1:6619)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                                                        child: Text(
                                                          'Patient name :',
                                                          style: TextStyle (
                                                             fontFamily:'Poppins',
                                                            fontSize: 12*ffem,
                                                            fontWeight: FontWeight.w500,
                                                            height: 1.1999999682*ffem/fem,
                                                            letterSpacing: 0.24*fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        // rameshpatelCQD (1:6620)
                                                        'Ramesh Patel',
                                                        style: TextStyle (
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.1999999682*ffem/fem,
                                                          letterSpacing: 0.24*fem,
                                                          color: Color(0xff006270),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // frame2609244LWR (1:6621)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                                                  width: double.infinity,
                                                  height: 15*fem,
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // frame2609242U6q (1:6622)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20.5*fem, 0*fem),
                                                        height: double.infinity,
                                                        child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              // mode16m (1:6623)
                                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                                                              child: Text(
                                                                'Mode :',
                                                                style: TextStyle (
                                                                  fontFamily: 'Poppins',
                                                                  fontSize: 12*ffem,
                                                                  fontWeight: FontWeight.w500,
                                                                  height: 1.1999999682*ffem/fem,
                                                                  letterSpacing: 0.24*fem,
                                                                  color: Color(0xff000000),
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              // physicalJbf (1:6624)
                                                              'Physical ',
                                                              style: TextStyle (
                                                               fontFamily:  'Poppins',
                                                                fontSize: 12*ffem,
                                                                fontWeight: FontWeight.w400,
                                                                height: 1.1999999682*ffem/fem,
                                                                letterSpacing: 0.24*fem,
                                                                color: Color(0xff006270),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        // frame26092403JM (1:6625)
                                                        height: double.infinity,
                                                        child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              // datePt1 (1:6626)
                                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                                                              child: Text(
                                                                'Date :',
                                                                style: TextStyle (
                                                                  fontFamily: 'Poppins',
                                                                  fontSize: 12*ffem,
                                                                  fontWeight: FontWeight.w500,
                                                                  height: 1.1999999682*ffem/fem,
                                                                  letterSpacing: 0.24*fem,
                                                                  color: Color(0xff000000),
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              // july2023ubT (1:6627)
                                                              '1 July, 2023',
                                                              style: TextStyle (
                                                                fontFamily: 'Poppins',
                                                                fontSize: 12*ffem,
                                                                fontWeight: FontWeight.w400,
                                                                height: 1.1999999682*ffem/fem,
                                                                letterSpacing: 0.24*fem,
                                                                color: Color(0xff006270),
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
                                                  // frame2609244LWR (1:6621)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                                                  width: double.infinity,
                                                  height: 15*fem,
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // frame2609242U6q (1:6622)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 50.5*fem, 0*fem),
                                                        height: double.infinity,
                                                        child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              // mode16m (1:6623)
                                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                                                              child: Text(
                                                                'Slot no :',
                                                                style: TextStyle (
                                                                  fontFamily: 'Poppins',
                                                                  fontSize: 12*ffem,
                                                                  fontWeight: FontWeight.w500,
                                                                  height: 1.1999999682*ffem/fem,
                                                                  letterSpacing: 0.24*fem,
                                                                  color: Color(0xff000000),
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              // physicalJbf (1:6624)
                                                              '2 ',
                                                              style: TextStyle (
                                                               fontFamily:  'Poppins',
                                                                fontSize: 12*ffem,
                                                                fontWeight: FontWeight.w400,
                                                                height: 1.1999999682*ffem/fem,
                                                                letterSpacing: 0.24*fem,
                                                                color: Color(0xff006270),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        // frame26092403JM (1:6625)
                                                        height: double.infinity,
                                                        child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              // datePt1 (1:6626)
                                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                                                              child: Text(
                                                                'Time :',
                                                                style: TextStyle (
                                                                  fontFamily: 'Poppins',
                                                                  fontSize: 12*ffem,
                                                                  fontWeight: FontWeight.w500,
                                                                  height: 1.1999999682*ffem/fem,
                                                                  letterSpacing: 0.24*fem,
                                                                  color: Color(0xff000000),
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              // july2023ubT (1:6627)
                                                              '14.20-14.40',
                                                              style: TextStyle (
                                                                fontFamily: 'Poppins',
                                                                fontSize: 12*ffem,
                                                                fontWeight: FontWeight.w400,
                                                                height: 1.1999999682*ffem/fem,
                                                                letterSpacing: 0.24*fem,
                                                                color: Color(0xff006270),
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
                                // appointmentbookedon1july20231R (1:6614)
                                margin: EdgeInsets.fromLTRB(4.5*fem, 0*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Appointment Booked on 1 July, 2023 ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle (
                                   fontFamily:  'Poppins',
                                    fontSize: 10*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2*ffem/fem,
                                    letterSpacing: 0.3*fem,
                                    color: Color(0xff6b6b6b),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
        
            const SizedBox(
              height: 30,
            ),
            Container(
                    // frame429JfX (8:4735)
                    margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 0*fem, 0*fem),
                    width: 335*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame356EJH (8:4736)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 59*fem,
                              decoration: BoxDecoration (
                                color: Color(0xff03bf9c),
                                borderRadius: BorderRadius.circular(7*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Send ',
                                  style: TextStyle (
                                    fontFamily:'Poppins',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.28125*ffem/fem,
                                    letterSpacing: 0.16*fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          // frame357Twj (8:4738)
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 59*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff2e2d32)),
                              borderRadius: BorderRadius.circular(7*fem),
                            ),
                            child: Center(
                              child: Text(
                                'Back to home',
                                style: TextStyle (
                                 fontFamily:'Poppins',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.28125*ffem/fem,
                                  letterSpacing: 0.16*fem,
                                  color: Color(0xff6a798a),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
          ]),
        ),
      ),
    );
  }
}
