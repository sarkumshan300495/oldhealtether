import 'package:flutter/material.dart';

class feedback extends StatefulWidget {
  const feedback({super.key});

  @override
  State<feedback> createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  final TextEditingController _feedbackController = TextEditingController();
  final TextEditingController _opinionctr = TextEditingController();
  int _rating = 0;
  List<String> feedbackList = [];
  void _submitFeedback() {
    String feedback = _feedbackController.text;
    if (feedback.isNotEmpty && _rating > 0) {
      // Store the feedback in the list
      feedbackList.add(feedback);

      // Clear the feedback field and reset the rating
      _feedbackController.clear();
      setState(() {
        _rating = 0;
      });

      // You can perform any other actions here like saving to a database, etc.

      // Show a confirmation dialog or snackbar
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Feedback Submitted"),
            content: Text("Thank you for your valuable feedback!"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }

  Widget _buildStarIcon(int index) {
    // The index starts from 0, but we want to show the stars from 1 to 5.
    int starNumber = index + 1;

    return GestureDetector(
      onTap: () {
        setState(() {
          _rating = starNumber;
        });
      },
      child: Row(
        children: [
           Icon(
          Icons.star,
          size: 40,
          color: starNumber <= _rating ? Colors.yellow : Colors.grey,
        ),
        SizedBox(
                                        width: 19,
                                      ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _feedbackController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: const Text(
          'Feedback',
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
       
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 30),
                child: Text(
                  'Wed Love to Hear From You!',
                  style: TextStyle(
                    color: Color(0xFF03BF9C),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 30),
                child: Text(
                  'How satisfied are you with our app?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  child: Container(
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20.0, top: 10),
                              child: Text(
                                'Rate Us ',
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
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                           // crossAxisAlignment: CrossAxisAlignment.end,

                            children: List.generate(
                                5, (index) => _buildStarIcon(index)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                // padding: const EdgeInsets.all(20.0),
                padding: const EdgeInsets.only(top: 8, left: 20.0, bottom: 5),
                child: Row(
                  children: [
                    SizedBox(
                      width: 334,
                      child: Text(
                        'What do you like most about the app?',
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
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 335,
                    height: 114,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF1F1F1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(-1, 4),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, -1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 13.0, top: 10),
                      child: TextFormField(
                        controller: _feedbackController,
                        decoration: InputDecoration.collapsed(
                          hintText: 'I liked...',
                          hintStyle: TextStyle(
                            color: Color(0xFF6A798A),
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 20.0, bottom: 5),
                child: Row(
                  children: [
                    SizedBox(
                      width: 334,
                      child: Text(
                        'What areas do you think we can improve?',
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 335,
                  height: 120,
                  padding: const EdgeInsets.only(
                    top: 14,
                    left: 16,
                    bottom: 79,
                  ),
                  decoration: ShapeDecoration(
                    color: Color(0xFFF1F1F1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(-1, 4),
                        spreadRadius: 0,
                      ),
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, -1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2.0, top: 6),
                    child: TextFormField(
                      controller: _opinionctr,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Type Your Answer here...',
                        hintStyle: TextStyle(
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
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  width: 335,
                  height: 59,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFF03BF9C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x6603BF9C),
                        blurRadius: 27,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      _submitFeedback();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Submit',
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
                ),
              )
            ]),
      ),
    );
  }
}
