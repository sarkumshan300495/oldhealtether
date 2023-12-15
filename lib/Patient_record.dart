import 'package:flutter/material.dart';
import 'package:healtether_app/widgets/bottom_navigation.dart';
import 'package:healtether_app/widgets/schedule_appointment/appointment.dart';
import 'package:healtether_app/widgets/whatsapp/chat.dart';

import 'package:healtether_app/constatnts/constant.dart';
import 'package:healtether_app/widgets/notification/notification.dart';
import 'package:healtether_app/screen/home/home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class patient_record extends StatefulWidget {
  const patient_record({super.key});

  @override
  State<patient_record> createState() => _patient_recordState();
}

class _patient_recordState extends State<patient_record> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      bottomNavigationBar: BottomNavigationWidget(),
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
       
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                children: [
                  SizedBox(
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
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    icon: const Icon(Icons.arrow_back)),
                              ),
                              const Text(
                                'Patients list',
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
                      SizedBox(width: 50,),
                        Container(
                         // padding: EdgeInsets.only(right: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(
                                    8 * fem, 6 * fem, 8 * fem, 4 * fem),
                                width: 93 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0x7af5fffd),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8 * fem),
                                    bottomLeft: Radius.circular(8 * fem),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Clinic',
                                      style: TextStyle(
                                        color: Color(0xFF121212),
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                //top: 6, left: 8, right: 40, bottom: 5)

                                width: 33 * fem,
                                height: 33 * fem,
                                child: Image.asset(
                                  'assets/images/frame-433.png',
                                  width: 33 * fem,
                                  height: 33 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
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
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextFormField(
                          controller: null,
                          decoration: const InputDecoration(
                              labelText: "Quick Search",
                              border: InputBorder.none),
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
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'All 50 patients are listed',
                        style: TextStyle(
                          color: Color(0xFF979797),
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
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
                              left: 20.0, bottom: 5.0, right: 20.0, top: 5.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const patient_info(),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 320,
                                  height: 68,
                                    decoration: BoxDecoration (
                                  color: Color(0x0f780bce),
                                  borderRadius: BorderRadius.circular(10*fem),
                                ),
                                  child: ListTile(
                                    title: const Text(
                                      'Ramesh Patel',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    subtitle: const Text(
                                      '+91 869 523145',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(width: 15,),
                                        const VerticalDivider(
                                          color: Colors.grey,
                                          thickness: 2,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const chat(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            child: Image.asset(
                                              "assets/images/whatsup-black.png",
                                              width: 28,
                                              height: 28,
                                            ),
                                          ),
                                        ),
                                        Container(
                                        
                                          child: IconButton(
                                            onPressed: () {
                                              _makePhoneCall("9080857909");
                                            },
                                            icon: const Icon(Icons.call),
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ));
  }
}

class patient_info extends StatefulWidget {
  const patient_info({super.key});

  @override
  State<patient_info> createState() => _patient_infoState();
}

class _patient_infoState extends State<patient_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Patient Record',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.cancel_presentation_rounded,
                  color: Colors.black,
                ))
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: const EdgeInsets.all(8.0),
                        child: const Stack(
                          children: [
                            SizedBox(
                              width: 150.17,
                              height: 140.17,
                              // decoration: ShapeDecoration(
                              //   color: Color(0xFFE6FCF8),
                              //   shape: OvalBorder(),
                              // ),
                            ),
                            Positioned(
                              top: 50,
                              right: 4,
                              child: SizedBox(
                                  width: 140.01,
                                  height: 140.20,
                                  child: Column(
                                    children: [
                                      Opacity(
                                        opacity: 0.3,
                                        child: Icon(
                                          Icons.camera_enhance_rounded,
                                        ),
                                      ),
                                      Opacity(
                                          opacity: 0.3,
                                          child: Text(
                                            "Add a picture",
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic),
                                          )),
                                    ],
                                  )),
                            ),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        top: 20,
                      ),
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
                          SingleChildScrollView(
                            child: Row(
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
                                const SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(255, 232, 229, 229),
                                  radius: 10,
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    icon: const Icon(
                                      Icons.edit,
                                      size: 15,
                                    ),
                                    color: Colors.black,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const personal_details()),
                                      );
                                    },
                                  ),
                                ),

                                // Padding(
                                //     padding: const EdgeInsets.only(left: 3.0),
                                //     child: Container(

                                //       child: IconButton(
                                //           highlightColor: Colors.greenAccent,
                                //           onPressed: () {
                                //             Navigator.push(
                                //               context,
                                //               MaterialPageRoute(
                                //                   builder: (context) =>
                                //                       personal_details()),
                                //             );
                                //           },
                                //           icon: Icon(
                                //             Icons.edit,
                                //             size: 20,
                                //           )),
                                //     ))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
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
                                'Male',
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
                                'height',
                                style: TextStyle(
                                  color: Color(0xFF5F5F5F),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                width: 19,
                              ),
                              Text(':'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '-',
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
                                'Weight',
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
                              Text(
                                '-',
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
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF03BF9C),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor:
                            const Color.fromARGB(255, 232, 229, 229),
                        radius: 10,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: const Icon(
                            Icons.edit,
                            size: 15,
                          ),
                          color: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const contect_details()),
                            );
                          },
                        ),
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
                        'Mobile',
                        style: TextStyle(
                          color: Color(0xFF5F5F5F),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 16,
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
                        width: 24,
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
                        width: 7,
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
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
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
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF03BF9C),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor:
                            const Color.fromARGB(255, 232, 229, 229),
                        radius: 10,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: const Icon(
                            Icons.edit,
                            size: 15,
                          ),
                          color: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const payment_details()),
                            );
                          },
                        ),
                      ),

                      // Padding(
                      //     padding: const EdgeInsets.all(3.0),
                      //     child: Container(
                      //         width: 20,
                      //    decoration: ShapeDecoration(
                      //     color: textGrey,
                      //     shape: OvalBorder(),
                      //   ),
                      //       child: IconButton(
                      //           onPressed: () {
                      //             Navigator.push(
                      //               context,
                      //               MaterialPageRoute(
                      //                   builder: (context) =>
                      //                       const payment_details()),
                      //             );
                      //           },
                      //           icon: Icon(Icons.edit)),
                      //     ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, bottom: 3),
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
                        width: 66,
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
                      SizedBox(width: 58),
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
                      SizedBox(width: 39),
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
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
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
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF03BF9C),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor:
                            const Color.fromARGB(255, 232, 229, 229),
                        radius: 10,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: const Icon(
                            Icons.edit,
                            size: 15,
                          ),
                          color: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const documents_details()),
                            );
                          },
                        ),
                      ),
                      // Padding(
                      //     padding: const EdgeInsets.all(3.0),
                      //     child: Container(
                      //         width: 10,
                      //         height: 10,
                      //    decoration: ShapeDecoration(
                      //     color: textGrey,
                      //     shape: OvalBorder(),
                      //   ),
                      //       child: IconButton(
                      //           onPressed: () {
                      //             Navigator.push(
                      //               context,
                      //               MaterialPageRoute(
                      //                   builder: (context) =>
                      //                       documents_details()),
                      //             );
                      //           },
                      //           icon: Icon(Icons.edit,size: 10,)),
                      //     ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 8.0,
                    bottom: 3,
                  ),
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
                        width: 10,
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
              ],
            ),
          ),
        ));
  }
}

class personal_details extends StatefulWidget {
  const personal_details({super.key});

  @override
  State<personal_details> createState() => _personal_detailsState();
}

class _personal_detailsState extends State<personal_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationWidget(),
      appBar: AppBar(
        title: const Text(
          'Edit',
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
            // Row(
            //   children: [
            //     SizedBox(
            //       width: 15,
            //     ),
            //     Container(
            //       width: 40,
            //       height: 8,
            //       decoration: ShapeDecoration(
            //         color: Color(0xFF03BF9C),
            //         shape: RoundedRectangleBorder(
            //           side: BorderSide(width: 0.75, color: Color(0xFF03BF9C)),
            //           borderRadius: BorderRadius.circular(6),
            //         ),
            //       ),
            //     ),
            //     SizedBox(
            //       width: 7,
            //     ),
            //     Container(
            //       width: 10,
            //       height: 8,
            //       decoration: ShapeDecoration(
            //         color: Color(0xFF03BF9C),
            //         shape: RoundedRectangleBorder(
            //           side: BorderSide(width: 0.75, color: Color(0xFF03BF9C)),
            //           borderRadius: BorderRadius.circular(6),
            //         ),
            //       ),
            //     ),
            //     SizedBox(
            //       width: 7,
            //     ),
            //     Container(
            //       width: 8,
            //       height: 8,
            //       decoration: ShapeDecoration(
            //         color: Color(0xFF03BF9C),
            //         shape: RoundedRectangleBorder(
            //           side: BorderSide(width: 0.75, color: Color(0xFF03BF9C)),
            //           borderRadius: BorderRadius.circular(6),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    'Personal Details',
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
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
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
                    hintText: 'First Name',
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
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
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
                    hintText: 'Last Name',
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
                          hintText: 'Select Birthdate',
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
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          isCollapsed: true,
                          contentPadding: EdgeInsets.zero,
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
                    isCollapsed: true,
                    contentPadding: EdgeInsets.zero,
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
            const SizedBox(
              height: 80,
            ),
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => add_member_Screen_two()),
                // );
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
                      'Save',
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

class contect_details extends StatefulWidget {
  const contect_details({super.key});

  @override
  State<contect_details> createState() => _contect_detailsState();
}

class _contect_detailsState extends State<contect_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationWidget(),
      appBar: AppBar(
        title: const Text(
          'Edit',
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
            // Row(
            //   children: [
            //     SizedBox(
            //       width: 15,
            //     ),
            //     Container(
            //       width: 10,
            //       height: 8,
            //       decoration: ShapeDecoration(
            //         color: Color(0xFF03BF9C),
            //         shape: RoundedRectangleBorder(
            //           side: BorderSide(width: 0.75, color: Color(0xFF03BF9C)),
            //           borderRadius: BorderRadius.circular(6),
            //         ),
            //       ),
            //     ),
            //     SizedBox(
            //       width: 7,
            //     ),
            //     Container(
            //       width: 40,
            //       height: 8,
            //       decoration: ShapeDecoration(
            //         color: Color(0xFF03BF9C),
            //         shape: RoundedRectangleBorder(
            //           side: BorderSide(width: 0.75, color: Color(0xFF03BF9C)),
            //           borderRadius: BorderRadius.circular(6),
            //         ),
            //       ),
            //     ),
            //     SizedBox(
            //       width: 7,
            //     ),
            //     Container(
            //       width: 8,
            //       height: 8,
            //       decoration: ShapeDecoration(
            //         color: Color(0xFF03BF9C),
            //         shape: RoundedRectangleBorder(
            //           side: BorderSide(width: 0.75, color: Color(0xFF03BF9C)),
            //           borderRadius: BorderRadius.circular(6),
            //         ),
            //       ),
            //     ),
            //     SizedBox(
            //       width: 7,
            //     ),
            //     Container(
            //       width: 8,
            //       height: 8,
            //       decoration: ShapeDecoration(
            //         color: Color(0xFF03BF9C),
            //         shape: RoundedRectangleBorder(
            //           side: BorderSide(width: 0.75, color: Color(0xFF03BF9C)),
            //           borderRadius: BorderRadius.circular(6),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
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
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
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
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
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
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
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
                    isCollapsed: true,
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                    hintText: 'Street/Area',
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
                    isCollapsed: true,
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                    hintText: 'Landmarks',
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
              onTap: () {},
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
            )
          ]),
        ),
      ),
    );
  }
}

class payment_details extends StatefulWidget {
  const payment_details({super.key});

  @override
  State<payment_details> createState() => _payment_detailsState();
}

class _payment_detailsState extends State<payment_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar:BottomNavigationWidget(),
        appBar: AppBar(
          title: const Text(
            'Edit',
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
                  // Row(
                  //   children: [
                  //     SizedBox(
                  //       width: 15,
                  //     ),
                  //     Container(
                  //       width: 8,
                  //       height: 8,
                  //       decoration: ShapeDecoration(
                  //         color: Color(0xFF03BF9C),
                  //         shape: RoundedRectangleBorder(
                  //           side: BorderSide(
                  //               width: 0.75, color: Color(0xFF03BF9C)),
                  //           borderRadius: BorderRadius.circular(6),
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 7,
                  //     ),
                  //     Container(
                  //       width: 8,
                  //       height: 8,
                  //       decoration: ShapeDecoration(
                  //         color: Color(0xFF03BF9C),
                  //         shape: RoundedRectangleBorder(
                  //           side: BorderSide(
                  //               width: 0.75, color: Color(0xFF03BF9C)),
                  //           borderRadius: BorderRadius.circular(6),
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 7,
                  //     ),
                  //     Container(
                  //       width: 9,
                  //       height: 8,
                  //       decoration: ShapeDecoration(
                  //         color: Color(0xFF03BF9C),
                  //         shape: RoundedRectangleBorder(
                  //           side: BorderSide(
                  //               width: 0.75, color: Color(0xFF03BF9C)),
                  //           borderRadius: BorderRadius.circular(6),
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 7,
                  //     ),
                  //     Container(
                  //       width: 40,
                  //       height: 8,
                  //       decoration: ShapeDecoration(
                  //         color: Color(0xFF03BF9C),
                  //         shape: RoundedRectangleBorder(
                  //           side: BorderSide(
                  //               width: 0.75, color: Color(0xFF03BF9C)),
                  //           borderRadius: BorderRadius.circular(6),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
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
                          hintText: 'Bank name',
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
                          hintText: 'Account no.',
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
                          hintText: 'IFSC Code',
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
                          hintText: 'Account holder',
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const patient_record()),
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

class documents_details extends StatefulWidget {
  const documents_details({super.key});

  @override
  State<documents_details> createState() => _documents_detailsState();
}

class _documents_detailsState extends State<documents_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationWidget(),
      appBar: AppBar(
        title: const Text(
          'Edit',
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
                  const SizedBox(width: 38),
                  Container(
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
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Select',
                          style: TextStyle(
                            color: Color(0xFF6A798A),
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 67),
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
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
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
                                     //margin: EdgeInsets.fromLTRB(0, 0, 140.77, 0.01),
                                        constraints: BoxConstraints (
                                          maxWidth: 92,
                                        ),
                                  width: 122,
                                  child: Text(
                                    'Upload file here',
                                    maxLines: 2,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const patient_info()),
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
            )
          ]),
        ),
      ),
    );
  }
}
