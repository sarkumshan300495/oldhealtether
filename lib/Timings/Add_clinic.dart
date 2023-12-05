import 'package:flutter/material.dart';

import '../constatnts/constant.dart';

class add_clinic extends StatefulWidget {
  const add_clinic({super.key});

  @override
  State<add_clinic> createState() => _add_clinicState();
}

class _add_clinicState extends State<add_clinic> {
  final _formKey = GlobalKey<FormState>();

  // Define variables to hold form field values
  TextEditingController clinicName = TextEditingController();
  TextEditingController addressLine1 = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController _state = TextEditingController();
  TextEditingController pincode = TextEditingController();
  TextEditingController fees = TextEditingController();
  TextEditingController followUpFees = TextEditingController();
  // Map to store the form data
  Map<String, dynamic> formData = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(15.0),
        child: FloatingActionButton.extended(
          backgroundColor: kprimarycolor,
          label: Text("Create Slots"),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save(); // Save the form data

              // Add the form data to the map
              formData = {
                'clinicName': clinicName,
                'addressLine1': addressLine1,
                'city': city,
                'pincode': pincode,
                'fees': fees,
                'followUpFees': followUpFees,
              };

              // Do something with the formData map (e.g., save it to a database).
              // For now, let's just print it to the console.
              print(formData);
            }
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
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
                                'Add Clinics',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Create Online Clinic",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 130, 128, 128)),
                              ),
                              Switch(
                                value: false,
                                onChanged: (value) {},
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "*Only one online clinic is allowed",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Text("")
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Enter Clinic Name",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 30, 28, 28)),
                              ),
                              Text("")
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 280,
                                  height: 40,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFF2E2D32)),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: TextFormField(
                                          controller: clinicName,
                                          decoration: InputDecoration.collapsed(
                                              hintText: "")),
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Enter Address Line 1",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 30, 28, 28)),
                              ),
                              Text("")
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 280,
                                  height: 40,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFF2E2D32)),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: TextFormField(
                                          controller: addressLine1,
                                          decoration: InputDecoration.collapsed(
                                              hintText: "")),
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Enter Address Line 2",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 30, 28, 28)),
                              ),
                              Text("")
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 280,
                                  height: 40,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFF2E2D32)),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: TextFormField(
                                          decoration: InputDecoration.collapsed(
                                              hintText: "")),
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Enter City",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 30, 28, 28)),
                              ),
                              Text("")
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 280,
                                  height: 40,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFF2E2D32)),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: TextFormField(
                                          controller: city,
                                          decoration: InputDecoration.collapsed(
                                              hintText: "")),
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Enter State",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 30, 28, 28)),
                              ),
                              Text("")
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 280,
                                  height: 40,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFF2E2D32)),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: TextFormField(
                                          controller: _state,
                                          decoration: InputDecoration.collapsed(
                                              hintText: "")),
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Enter Pincode",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 30, 28, 28)),
                              ),
                              Text("")
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: 150,
                                    height: 40,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.50,
                                            color: Color(0xFF2E2D32)),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: TextFormField(
                                            controller: pincode,
                                            decoration:
                                                InputDecoration.collapsed(
                                                    hintText: "")),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Enter Fees",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 30, 28, 28)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Text(
                                  "Enter Follow Up Fees",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 30, 28, 28)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 13.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: 120,
                                    height: 40,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.50,
                                            color: Color(0xFF2E2D32)),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: TextFormField(
                                            controller: fees,
                                            decoration:
                                                InputDecoration.collapsed(
                                                    hintText: "")),
                                      ),
                                    )),
                                Container(
                                    width: 120,
                                    height: 40,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.50,
                                            color: Color(0xFF2E2D32)),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: TextFormField(
                                            decoration:
                                                InputDecoration.collapsed(
                                                    hintText: "")),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Enter Google My Business Link",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 30, 28, 28)),
                              ),
                              Text("")
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 280,
                                  height: 40,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFF2E2D32)),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: TextFormField(
                                        decoration: InputDecoration.collapsed(
                                            hintText: ""),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Enter Google Maps Link",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 30, 28, 28)),
                              ),
                              Text("")
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 280,
                                  height: 40,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFF2E2D32)),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: TextFormField(
                                          decoration: InputDecoration.collapsed(
                                              hintText: "")),
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 60,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
