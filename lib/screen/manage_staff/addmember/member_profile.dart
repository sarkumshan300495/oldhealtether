// import 'package:flutter/material.dart';


// class Member_Profile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 390;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//     return Scaffold(
//          appBar: AppBar(
//           title: const Text(
//             'Staff Records',
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 20,
//               fontFamily: 'Poppins',
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           actions: [
//             Padding(
//         padding: const EdgeInsets.only(right: 16),
//         child: Image.asset(
//           'assets/images/iconoir_cancel.png',
//           height: 28,
//           width: 28,
//           color: Colors.black,
//         ),
//       )
//           ],
//           backgroundColor: Colors.white,
//           elevation: 0,
//           leading: IconButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               icon: const Icon(
//                 Icons.arrow_back,
//                 color: Colors.black,
//               )),
//         ),
//       body: Container(
//         width: double.infinity,
//         child: Container(
//           // memberprofileK6m (126:4765)
//           width: double.infinity,
//           decoration: BoxDecoration (
//             color: Color(0xffffffff),
//             borderRadius: BorderRadius.circular(20*fem),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
              
//               Container(
//                 // staffinfoXEm (128:5523)
//                 margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
//                 width: 432*fem,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       // frame2609372qFT (128:5559)
//                       margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 8*fem),
//                       width: 357*fem,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             // frame2609371Mjb (128:5560)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 57*fem, 13.5*fem),
//                             width: double.infinity,
//                             height: 173*fem,
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   // ellipse759HdF (128:5561)
//                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
//                                   width: 120*fem,
//                                   height: 120*fem,
//                                   decoration: BoxDecoration (
//                                     borderRadius: BorderRadius.circular(60*fem),
//                                     image: DecorationImage (
//                                       fit: BoxFit.cover,
//                                       image: AssetImage (
//                                         'assets/design/images/ellipse-759-bg-i5B.png',
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   // namez1s (128:5562)
//                                   width: 164*fem,
//                                   height: double.infinity,
//                                   child: Column(
//                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                         // autogroups4pp8Ny (5vSzEsS3n2LngsF7k6s4PP)
//                                         padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
//                                         width: double.infinity,
//                                         child: Column(
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           children: [
//                                             Container(
//                                               // statusbuttoneMK (128:5563)
//                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
//                                               child: TextButton(
//                                                 onPressed: () {},
//                                                 style: TextButton.styleFrom (
//                                                   padding: EdgeInsets.zero,
//                                                 ),
//                                                 child: Container(
//                                                   width: 63*fem,
//                                                   height: 30*fem,
//                                                   decoration: BoxDecoration (
//                                                     color: Color(0xffbb66ff),
//                                                     borderRadius: BorderRadius.circular(8*fem),
//                                                   ),
//                                                   child: Center(
//                                                     child: Text(
//                                                       'Admin',
//                                                       textAlign: TextAlign.center,
//                                                       style: TextStyle (
//                                                         fontFamily:   'Poppins',
//                                                         fontSize: 14*ffem,
//                                                         fontWeight: FontWeight.w600,
//                                                         height: 1.2857142857*ffem/fem,
//                                                         letterSpacing: -0.14*fem,
//                                                         color: Color(0xffffffff),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                             Container(
//                                               // staffinfo5Sd (128:5565)
//                                               child: Column(
//                                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                                 children: [
//                                                   Text(
//                                                     // namedj3 (128:5566)
//                                                     'Ajit Bhalla',
//                                                     style: TextStyle (
//                                                       fontFamily:   'Poppins',
//                                                       fontSize: 24*ffem,
//                                                       fontWeight: FontWeight.w700,
//                                                       height: 1.5*ffem/fem,
//                                                       color: Color(0xff000000),
//                                                     ),
//                                                   ),
//                                                   SizedBox(
//                                                     height: 6*fem,
//                                                   ),
//                                                   Text(
//                                                     // specializationZMo (128:5567)
//                                                     'MBBS, DLO, MS(ENT)',
//                                                     style: TextStyle (
//                                                       fontFamily:   'Poppins',
//                                                       fontSize: 16*ffem,
//                                                       fontWeight: FontWeight.w500,
//                                                       height: 1.5*ffem/fem,
//                                                       letterSpacing: -0.16*fem,
//                                                       color: Color(0xff000000),
//                                                     ),
//                                                   ),
//                                                   SizedBox(
//                                                     height: 6*fem,
//                                                   ),
//                                                   Text(
//                                                     // rolefvd (128:5568)
//                                                     'ENT specialist',
//                                                     style: TextStyle (
//                                                       fontFamily:   'Poppins',
//                                                       fontSize: 14*ffem,
//                                                       fontWeight: FontWeight.w600,
//                                                       height: 1.5*ffem/fem,
//                                                       letterSpacing: -0.14*fem,
//                                                       color: Color(0xff730ac6),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Container(
//                                         // frame26093881jb (128:5569)
//                                         width: double.infinity,
//                                         height: 26*fem,
//                                         child: Container(
//                                           // editbuttonAsP (128:5570)
//                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 75*fem, 0*fem),
//                                           width: 89*fem,
//                                           height: double.infinity,
//                                           decoration: BoxDecoration (
//                                             color: Color(0xff03bf9c),
//                                             borderRadius: BorderRadius.circular(6*fem),
//                                             boxShadow: [
//                                               BoxShadow(
//                                                 color: Color(0x3f03bf9c),
//                                                 offset: Offset(0*fem, 4*fem),
//                                                 blurRadius: 2*fem,
//                                               ),
//                                             ],
//                                           ),
//                                           child: Center(
//                                             child: Text(
//                                               'Edit Profile',
//                                               textAlign: TextAlign.center,
//                                               style: TextStyle (
//                                                 fontFamily:   'Poppins',
//                                                 fontSize: 14*ffem,
//                                                 fontWeight: FontWeight.w600,
//                                                 height: 1.2857142857*ffem/fem,
//                                                 letterSpacing: -0.14*fem,
//                                                 color: Color(0xffffffff),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             // rectangle1227cDb (128:5574)
//                             width: double.infinity,
//                             height: 1*fem,
//                             decoration: BoxDecoration (
//                               color: Color(0xffd9d9d9),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       // staffinfoMgy (128:5524)
//                       width: double.infinity,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             // autogroupkhghJs7 (5vSs4zYftpZMDWTbLLkHGH)
//                             padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
//                             width: double.infinity,
//                             height: 714.5*fem,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   // autogroupdywfSCd (5vSpMuPkhNFtCsfGE9DYwf)
//                                   width: 356*fem,
//                                   height: 348.5*fem,
//                                   child: Stack(
//                                     children: [
//                                       Positioned(
//                                         // personaldetailsnGV (128:5525)
//                                         left: 0*fem,
//                                         top: 0*fem,
//                                         child: Container(
//                                           width: 356*fem,
//                                           height: 162*fem,
//                                           decoration: BoxDecoration (
//                                             border: Border.all(color: Color(0xffd9d9d9)),
//                                           ),
//                                           child: Column(
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                               Container(
//                                                 // headingVgh (I128:5525;218:34415;218:34783)
//                                                 margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
//                                                 width: 225*fem,
//                                                 height: 27*fem,
//                                                 child: Container(
//                                                   // autogroupwdidDch (5vSpYyudSQ5g7nPA1WWdiD)
//                                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 91*fem, 1*fem),
//                                                   width: 134*fem,
//                                                   height: 26*fem,
//                                                   child: Text(
//                                                     'PERSONAL DETAILS',
//                                                     style: TextStyle (
//                                                       fontFamily:   'Poppins',
//                                                       fontSize: 14*ffem,
//                                                       fontWeight: FontWeight.w700,
//                                                       height: 1.6428571429*ffem/fem,
//                                                       letterSpacing: 0.14*fem,
//                                                       color: Color(0xff202741),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                               Container(
//                                                 // personalinfo5uo (I128:5525;218:34416)
//                                                 padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 50*fem),
//                                                 width: 212*fem,
//                                                 child: Column(
//                                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                                   children: [
//                                                     Container(
//                                                       // group36389CjX (I128:5525;218:34417)
//                                                       width: double.infinity,
//                                                       height: 25*fem,
//                                                       decoration: BoxDecoration (
//                                                         borderRadius: BorderRadius.circular(8*fem),
//                                                       ),
//                                                       child: Row(
//                                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                                         children: [
//                                                           Container(
//                                                             // autogroupcsffYHb (5vSprtZTT4MSgYcoVVcSff)
//                                                             padding: EdgeInsets.fromLTRB(0*fem, 3*fem, 7*fem, 4*fem),
//                                                             height: double.infinity,
//                                                             child: Row(
//                                                               crossAxisAlignment: CrossAxisAlignment.center,
//                                                               children: [
//                                                                 Container(
//                                                                   // birthdayfd7 (I128:5525;218:34418)
//                                                                   margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 8*fem, 0*fem),
//                                                                   child: Text(
//                                                                     'Birthday',
//                                                                     style: TextStyle (
//                                                                       fontFamily:   'Poppins',
//                                                                       fontSize: 14*ffem,
//                                                                       fontWeight: FontWeight.w500,
//                                                                       height: 1.1999999455*ffem/fem,
//                                                                       letterSpacing: 0.14*fem,
//                                                                       color: Color(0xff006270),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                                 Text(
//                                                                   // mAM (I128:5525;218:34419)
//                                                                   ': ',
//                                                                   style: TextStyle (
//                                                                     fontFamily:   'Poppins',
//                                                                     fontSize: 12*ffem,
//                                                                     fontWeight: FontWeight.w500,
//                                                                     height: 1.4332596461*ffem/fem,
//                                                                     letterSpacing: 0.12*fem,
//                                                                     color: Color(0xff5f5f5f),
//                                                                   ),
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             // frame2609268W7w (I128:5525;218:34420)
//                                                             padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
//                                                             width: 129*fem,
//                                                             height: double.infinity,
//                                                             decoration: BoxDecoration (
//                                                               borderRadius: BorderRadius.circular(8*fem),
//                                                             ),
//                                                             child: Text(
//                                                               '12/1/1993',
//                                                               style: TextStyle (
//                                                                 fontFamily:   'Poppins',
//                                                                 fontSize: 14*ffem,
//                                                                 fontWeight: FontWeight.w400,
//                                                                 height: 1.1999999455*ffem/fem,
//                                                                 letterSpacing: 0.14*fem,
//                                                                 color: Color(0xff009394),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                     Container(
//                                                       // group36394z37 (I128:5525;218:34422)
//                                                       width: double.infinity,
//                                                       height: 25*fem,
//                                                       decoration: BoxDecoration (
//                                                         borderRadius: BorderRadius.circular(8*fem),
//                                                       ),
//                                                       child: Row(
//                                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                                         children: [
//                                                           Container(
//                                                             // autogrouptvaqijo (5vSq43uXUYnvBsHXCQTvaq)
//                                                             padding: EdgeInsets.fromLTRB(0*fem, 3*fem, 7*fem, 4*fem),
//                                                             height: double.infinity,
//                                                             child: Row(
//                                                               crossAxisAlignment: CrossAxisAlignment.center,
//                                                               children: [
//                                                                 Container(
//                                                                   // ages6u (I128:5525;218:34423)
//                                                                   margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 40*fem, 0*fem),
//                                                                   child: Text(
//                                                                     'Age',
//                                                                     style: TextStyle (
//                                                                       fontFamily:   'Poppins',
//                                                                       fontSize: 14*ffem,
//                                                                       fontWeight: FontWeight.w500,
//                                                                       height: 1.1999999455*ffem/fem,
//                                                                       letterSpacing: 0.14*fem,
//                                                                       color: Color(0xff006270),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                                 Text(
//                                                                   // Arh (I128:5525;218:34424)
//                                                                   ': ',
//                                                                   style: TextStyle (
//                                                                     fontFamily:   'Poppins',
//                                                                     fontSize: 12*ffem,
//                                                                     fontWeight: FontWeight.w500,
//                                                                     height: 1.4332596461*ffem/fem,
//                                                                     letterSpacing: 0.12*fem,
//                                                                     color: Color(0xff5f5f5f),
//                                                                   ),
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             // frame2609268Wff (I128:5525;218:34425)
//                                                             padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
//                                                             width: 129*fem,
//                                                             height: double.infinity,
//                                                             decoration: BoxDecoration (
//                                                               borderRadius: BorderRadius.circular(8*fem),
//                                                             ),
//                                                             child: Text(
//                                                               '30',
//                                                               style: TextStyle (
//                                                                 fontFamily:   'Poppins',
//                                                                 fontSize: 14*ffem,
//                                                                 fontWeight: FontWeight.w400,
//                                                                 height: 1.1999999455*ffem/fem,
//                                                                 letterSpacing: 0.14*fem,
//                                                                 color: Color(0xff009394),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                     Container(
//                                                       // group36395C2h (I128:5525;218:34427)
//                                                       width: double.infinity,
//                                                       height: 25*fem,
//                                                       decoration: BoxDecoration (
//                                                         borderRadius: BorderRadius.circular(8*fem),
//                                                       ),
//                                                       child: Row(
//                                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                                         children: [
//                                                           Container(
//                                                             // autogroupb2nyL8u (5vSqDToWYQK4EX6tWtb2Ny)
//                                                             padding: EdgeInsets.fromLTRB(0*fem, 3*fem, 7*fem, 4*fem),
//                                                             height: double.infinity,
//                                                             child: Row(
//                                                               crossAxisAlignment: CrossAxisAlignment.center,
//                                                               children: [
//                                                                 Container(
//                                                                   // gender56V (I128:5525;218:34428)
//                                                                   margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 16*fem, 0*fem),
//                                                                   child: Text(
//                                                                     'Gender',
//                                                                     style: TextStyle (
//                                                                       fontFamily:   'Poppins',
//                                                                       fontSize: 14*ffem,
//                                                                       fontWeight: FontWeight.w500,
//                                                                       height: 1.1999999455*ffem/fem,
//                                                                       letterSpacing: 0.14*fem,
//                                                                       color: Color(0xff006270),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                                 Text(
//                                                                   // PN5 (I128:5525;218:34429)
//                                                                   ': ',
//                                                                   style: TextStyle (
//                                                                     fontFamily:   'Poppins',
//                                                                     fontSize: 12*ffem,
//                                                                     fontWeight: FontWeight.w500,
//                                                                     height: 1.4332596461*ffem/fem,
//                                                                     letterSpacing: 0.12*fem,
//                                                                     color: Color(0xff5f5f5f),
//                                                                   ),
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             // frame2609268vso (I128:5525;218:34430)
//                                                             padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
//                                                             width: 129*fem,
//                                                             height: double.infinity,
//                                                             decoration: BoxDecoration (
//                                                               borderRadius: BorderRadius.circular(8*fem),
//                                                             ),
//                                                             child: Text(
//                                                               'Male',
//                                                               style: TextStyle (
//                                                                 fontFamily:   'Poppins',
//                                                                 fontSize: 14*ffem,
//                                                                 fontWeight: FontWeight.w400,
//                                                                 height: 1.1999999455*ffem/fem,
//                                                                 letterSpacing: 0.14*fem,
//                                                                 color: Color(0xff009394),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                       Positioned(
//                                         // contactdetails1PT (128:5526)
//                                         left: 0*fem,
//                                         top: 140*fem,
//                                         child: Container(
//                                           padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
//                                           width: 356*fem,
//                                           height: 208.5*fem,
//                                           decoration: BoxDecoration (
//                                             border: Border.all(color: Color(0xffd9d9d9)),
//                                           ),
//                                           child: Column(
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                               Container(
//                                                 // headinghXB (I128:5526;218:34466;218:34783)
//                                                 margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
//                                                 width: 225*fem,
//                                                 height: 27*fem,
//                                                 child: Container(
//                                                   // autogrouppfimdfj (5vSr7mdgkafkqnjnGbPfim)
//                                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 94*fem, 1*fem),
//                                                   width: 131*fem,
//                                                   height: 26*fem,
//                                                   child: Text(
//                                                     'CONTACT DETAILS',
//                                                     style: TextStyle (
//                                                       fontFamily:   'Poppins',
//                                                       fontSize: 14*ffem,
//                                                       fontWeight: FontWeight.w700,
//                                                       height: 1.6428571429*ffem/fem,
//                                                       letterSpacing: 0.14*fem,
//                                                       color: Color(0xff202741),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                               Container(
//                                                 // contactinfouNM (I128:5526;218:34467)
//                                                 width: double.infinity,
//                                                 child: Column(
//                                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                                   children: [
//                                                     Container(
//                                                       // mobileFx1 (I128:5526;218:34468)
//                                                       width: double.infinity,
//                                                       decoration: BoxDecoration (
//                                                         borderRadius: BorderRadius.circular(4*fem),
//                                                       ),
//                                                       child: Column(
//                                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                                         children: [
//                                                           Container(
//                                                             // autogroup2hvfzeh (5vSrR1dxVa24fFQpNE2HVF)
//                                                             width: double.infinity,
//                                                             height: 25*fem,
//                                                             child: Row(
//                                                               crossAxisAlignment: CrossAxisAlignment.center,
//                                                               children: [
//                                                                 Container(
//                                                                   // autogroupf2bwYRK (5vSrX1TxvcKDNyUJqQF2Bw)
//                                                                   padding: EdgeInsets.fromLTRB(0*fem, 3*fem, 11*fem, 4*fem),
//                                                                   height: double.infinity,
//                                                                   child: Row(
//                                                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                                                     children: [
//                                                                       Container(
//                                                                         // mobile4eZ (I128:5526;218:34469)
//                                                                         margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 21*fem, 0*fem),
//                                                                         child: Text(
//                                                                           'Mobile',
//                                                                           style: TextStyle (
//                                                                             fontFamily:   'Poppins',
//                                                                             fontSize: 14*ffem,
//                                                                             fontWeight: FontWeight.w500,
//                                                                             height: 1.1999999455*ffem/fem,
//                                                                             letterSpacing: 0.14*fem,
//                                                                             color: Color(0xff006270),
//                                                                           ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         // NfF (I128:5526;218:34470)
//                                                                         ':',
//                                                                         style: TextStyle (
//                                                                           fontFamily:   'Poppins',
//                                                                           fontSize: 12*ffem,
//                                                                           fontWeight: FontWeight.w500,
//                                                                           height: 1.4332596461*ffem/fem,
//                                                                           letterSpacing: 0.12*fem,
//                                                                           color: Color(0xff5f5f5f),
//                                                                         ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ),
//                                                                 Container(
//                                                                   // mobileVzm (I128:5526;218:34471)
//                                                                   padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
//                                                                   width: 272*fem,
//                                                                   height: double.infinity,
//                                                                   decoration: BoxDecoration (
//                                                                     borderRadius: BorderRadius.circular(4*fem),
//                                                                   ),
//                                                                   child: Text(
//                                                                     '+91 9865 632142',
//                                                                     style: TextStyle (
//                                                                       fontFamily:   'Poppins',
//                                                                       fontSize: 14*ffem,
//                                                                       fontWeight: FontWeight.w400,
//                                                                       height: 1.1999999455*ffem/fem,
//                                                                       letterSpacing: 0.14*fem,
//                                                                       color: Color(0xff009394),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             // whatsappnoBMo (I128:5526;218:34473)
//                                                             margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 70*fem, 0*fem),
//                                                             padding: EdgeInsets.fromLTRB(8.94*fem, 4*fem, 80*fem, 4*fem),
//                                                             width: double.infinity,
//                                                             decoration: BoxDecoration (
//                                                               borderRadius: BorderRadius.circular(4*fem),
//                                                             ),
//                                                             child: Row(
//                                                               crossAxisAlignment: CrossAxisAlignment.center,
//                                                               children: [
//                                                                 Container(
//                                                                   // ionlogowhatsappgZT (I128:5526;218:34474)
//                                                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 54.94*fem, 0*fem),
//                                                                   width: 13.13*fem,
//                                                                   height: 13.13*fem,
//                                                                   child: Image.asset(
//                                                                     'assets/design/images/ion-logo-whatsapp-6r9.png',
//                                                                     width: 13.13*fem,
//                                                                     height: 13.13*fem,
//                                                                   ),
//                                                                 ),
//                                                                 Text(
//                                                                   // zKF (I128:5526;218:34476)
//                                                                   '+91 8964 521674',
//                                                                   style: TextStyle (
//                                                                     fontFamily:   'Poppins',
//                                                                     fontSize: 14*ffem,
//                                                                     fontWeight: FontWeight.w400,
//                                                                     height: 1.1999999455*ffem/fem,
//                                                                     letterSpacing: 0.14*fem,
//                                                                     color: Color(0xff009394),
//                                                                   ),
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                     SizedBox(
//                                                       height: 2*fem,
//                                                     ),
//                                                     Container(
//                                                       // emailWHb (I128:5526;218:34477)
//                                                       width: double.infinity,
//                                                       height: 25*fem,
//                                                       decoration: BoxDecoration (
//                                                         borderRadius: BorderRadius.circular(4*fem),
//                                                       ),
//                                                       child: Row(
//                                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                                         children: [
//                                                           Container(
//                                                             // autogroupuej13HX (5vSrpzwzDjCfY9enEvuEJ1)
//                                                             padding: EdgeInsets.fromLTRB(0*fem, 3*fem, 11*fem, 4*fem),
//                                                             height: double.infinity,
//                                                             child: Row(
//                                                               crossAxisAlignment: CrossAxisAlignment.center,
//                                                               children: [
//                                                                 Container(
//                                                                   // emailmUR (I128:5526;218:34478)
//                                                                   margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 29*fem, 0*fem),
//                                                                   child: Text(
//                                                                     'Email',
//                                                                     style: TextStyle (
//                                                                       fontFamily:   'Poppins',
//                                                                       fontSize: 14*ffem,
//                                                                       fontWeight: FontWeight.w500,
//                                                                       height: 1.1999999455*ffem/fem,
//                                                                       letterSpacing: 0.14*fem,
//                                                                       color: Color(0xff006270),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                                 Text(
//                                                                   // gLV (I128:5526;218:34479)
//                                                                   ':',
//                                                                   style: TextStyle (
//                                                                     fontFamily:   'Poppins',
//                                                                     fontSize: 12*ffem,
//                                                                     fontWeight: FontWeight.w500,
//                                                                     height: 1.4332596461*ffem/fem,
//                                                                     letterSpacing: 0.12*fem,
//                                                                     color: Color(0xff5f5f5f),
//                                                                   ),
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             // emailRYy (I128:5526;218:34480)
//                                                             padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
//                                                             width: 272*fem,
//                                                             height: double.infinity,
//                                                             decoration: BoxDecoration (
//                                                               borderRadius: BorderRadius.circular(4*fem),
//                                                             ),
//                                                             child: Text(
//                                                               'bhalla5ajit@gmail.com',
//                                                               style: TextStyle (
//                                                                 fontFamily:   'Poppins',
//                                                                 fontSize: 14*ffem,
//                                                                 fontWeight: FontWeight.w400,
//                                                                 height: 1.1999999455*ffem/fem,
//                                                                 letterSpacing: 0.14*fem,
//                                                                 color: Color(0xff009394),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                     SizedBox(
//                                                       height: 2*fem,
//                                                     ),
//                                                     Container(
//                                                       // addressiHB (I128:5526;218:34482)
//                                                       width: double.infinity,
//                                                       decoration: BoxDecoration (
//                                                         borderRadius: BorderRadius.circular(4*fem),
//                                                       ),
//                                                       child: Row(
//                                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                                         children: [
//                                                           Container(
//                                                             // addressTVf (I128:5526;218:34484)
//                                                             margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 6*fem, 0*fem),
//                                                             child: Text(
//                                                               'Address ',
//                                                               style: TextStyle (
//                                                                 fontFamily:   'Poppins',
//                                                                 fontSize: 14*ffem,
//                                                                 fontWeight: FontWeight.w500,
//                                                                 height: 1.1999999455*ffem/fem,
//                                                                 letterSpacing: 0.14*fem,
//                                                                 color: Color(0xff006270),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             // a4V (I128:5526;218:34483)
//                                                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
//                                                             child: Text(
//                                                               ':',
//                                                               style: TextStyle (
//                                                                 fontFamily:   'Poppins',
//                                                                 fontSize: 12*ffem,
//                                                                 fontWeight: FontWeight.w500,
//                                                                 height: 1.4332596461*ffem/fem,
//                                                                 letterSpacing: 0.12*fem,
//                                                                 color: Color(0xff5f5f5f),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             // addressgdK (I128:5526;218:34485)
//                                                             margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
//                                                             padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 15*fem, 4*fem),
//                                                             width: 272*fem,
//                                                             height: 82*fem,
//                                                             decoration: BoxDecoration (
//                                                               borderRadius: BorderRadius.circular(4*fem),
//                                                             ),
//                                                             child: Center(
//                                                               // plotno4751madhavinagaropposite (I128:5526;218:34486)
//                                                               child: SizedBox(
//                                                                 child: Container(
//                                                                   constraints: BoxConstraints (
//                                                                     maxWidth: 249*fem,
//                                                                   ),
//                                                                   child: Text(
//                                                                     'Plot No. 4-75/1, Madhavi Nagar, \nOppo BHEL R&D Gate,\nBalaNagar, Hyderabad, Telangana,\n500037.',
//                                                                     style: TextStyle (
//                                                                       fontFamily:   'Poppins',
//                                                                       fontSize: 14*ffem,
//                                                                       fontWeight: FontWeight.w400,
//                                                                       height: 1.1999999455*ffem/fem,
//                                                                       letterSpacing: 0.14*fem,
//                                                                       color: Color(0xff009394),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 18*fem,
//                                 ),
//                                 Container(
//                                   // bankdetailsE2Z (128:5527)
//                                   padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
//                                   width: 356*fem,
//                                   height: 172*fem,
//                                   decoration: BoxDecoration (
//                                     border: Border.all(color: Color(0xffd9d9d9)),
//                                   ),
//                                   child: Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       Container(
//                                         // headingwSm (I128:5528;218:34783)
//                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
//                                         width: 225*fem,
//                                         height: 27*fem,
//                                         child: Container(
//                                           // autogroupbqstsrD (5vStRnciLvZ8W4hEf5BqsT)
//                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 124*fem, 1*fem),
//                                           width: 101*fem,
//                                           height: 26*fem,
//                                           child: Text(
//                                             'BANK DETAILS',
//                                             style: TextStyle (
//                                               fontFamily:   'Poppins',
//                                               fontSize: 14*ffem,
//                                               fontWeight: FontWeight.w700,
//                                               height: 1.6428571429*ffem/fem,
//                                               letterSpacing: 0.14*fem,
//                                               color: Color(0xff202741),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       Container(
//                                         // personalinfomAu (128:5529)
//                                         width: double.infinity,
//                                         child: Column(
//                                           crossAxisAlignment: CrossAxisAlignment.center,
//                                           children: [
//                                             Container(
//                                               // group36389W8V (128:5530)
//                                               width: double.infinity,
//                                               height: 25*fem,
//                                               decoration: BoxDecoration (
//                                                 borderRadius: BorderRadius.circular(4*fem),
//                                               ),
//                                               child: Row(
//                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                 children: [
//                                                   Container(
//                                                     // autogroupmgxmqgZ (5vSthXfUyeq9e6MQ8umGxm)
//                                                     padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 12*fem, 3*fem),
//                                                     height: double.infinity,
//                                                     child: Row(
//                                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                                       children: [
//                                                         Container(
//                                                           // upiidZsT (128:5531)
//                                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 84*fem, 1*fem),
//                                                           child: Text(
//                                                             'UPI ID',
//                                                             style: TextStyle (
//                                                               fontFamily:   'Poppins',
//                                                               fontSize: 14*ffem,
//                                                               fontWeight: FontWeight.w500,
//                                                               height: 1.1999999455*ffem/fem,
//                                                               letterSpacing: 0.28*fem,
//                                                               color: Color(0xff006270),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         Text(
//                                                           // gBP (128:5532)
//                                                           ': ',
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 12*ffem,
//                                                             fontWeight: FontWeight.w500,
//                                                             height: 1.4332596461*ffem/fem,
//                                                             letterSpacing: 0.12*fem,
//                                                             color: Color(0xff5f5f5f),
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                   Container(
//                                                     // frame2609268pHb (128:5533)
//                                                     padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
//                                                     width: 212*fem,
//                                                     height: double.infinity,
//                                                     decoration: BoxDecoration (
//                                                       borderRadius: BorderRadius.circular(4*fem),
//                                                     ),
//                                                     child: Text(
//                                                       'ajitbhalla@ybl',
//                                                       style: TextStyle (
//                                                         fontFamily:   'Poppins',
//                                                         fontSize: 14*ffem,
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 1.1999999455*ffem/fem,
//                                                         letterSpacing: 0.14*fem,
//                                                         color: Color(0xff6c6c6c),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                             Container(
//                                               // group36394JTf (128:5535)
//                                               width: double.infinity,
//                                               height: 25*fem,
//                                               decoration: BoxDecoration (
//                                                 borderRadius: BorderRadius.circular(4*fem),
//                                               ),
//                                               child: Row(
//                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                 children: [
//                                                   Container(
//                                                     // autogroupkychqiV (5vStrrjGm3jc6LDwXrKycH)
//                                                     padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 12*fem, 3*fem),
//                                                     height: double.infinity,
//                                                     child: Row(
//                                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                                       children: [
//                                                         Container(
//                                                           // bankJc5 (128:5536)
//                                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88*fem, 1*fem),
//                                                           child: Text(
//                                                             'Bank',
//                                                             style: TextStyle (
//                                                               fontFamily:   'Poppins',
//                                                               fontSize: 14*ffem,
//                                                               fontWeight: FontWeight.w500,
//                                                               height: 1.1999999455*ffem/fem,
//                                                               letterSpacing: 0.28*fem,
//                                                               color: Color(0xff006270),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         Text(
//                                                           // 1Fb (128:5537)
//                                                           ': ',
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 12*ffem,
//                                                             fontWeight: FontWeight.w500,
//                                                             height: 1.4332596461*ffem/fem,
//                                                             letterSpacing: 0.12*fem,
//                                                             color: Color(0xff5f5f5f),
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                   Container(
//                                                     // frame2609268kU5 (128:5538)
//                                                     padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
//                                                     width: 212*fem,
//                                                     height: double.infinity,
//                                                     decoration: BoxDecoration (
//                                                       borderRadius: BorderRadius.circular(4*fem),
//                                                     ),
//                                                     child: Text(
//                                                       'Indian Bank',
//                                                       style: TextStyle (
//                                                         fontFamily:   'Poppins',
//                                                         fontSize: 14*ffem,
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 1.1999999455*ffem/fem,
//                                                         letterSpacing: 0.14*fem,
//                                                         color: Color(0xff6c6c6c),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                             Container(
//                                               // group36395dnm (128:5540)
//                                               width: double.infinity,
//                                               height: 25*fem,
//                                               decoration: BoxDecoration (
//                                                 borderRadius: BorderRadius.circular(4*fem),
//                                               ),
//                                               child: Row(
//                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                 children: [
//                                                   Container(
//                                                     // autogroupjfphB3b (5vSu4BjjMTQSnUnK5rJFph)
//                                                     padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 12*fem, 3*fem),
//                                                     height: double.infinity,
//                                                     child: Row(
//                                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                                       children: [
//                                                         Container(
//                                                           // acnotyb (128:5541)
//                                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 73*fem, 1*fem),
//                                                           child: Text(
//                                                             'A/c no.',
//                                                             style: TextStyle (
//                                                               fontFamily:   'Poppins',
//                                                               fontSize: 14*ffem,
//                                                               fontWeight: FontWeight.w500,
//                                                               height: 1.1999999455*ffem/fem,
//                                                               letterSpacing: 0.14*fem,
//                                                               color: Color(0xff006270),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         Text(
//                                                           // QS9 (128:5542)
//                                                           ': ',
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 12*ffem,
//                                                             fontWeight: FontWeight.w500,
//                                                             height: 1.4332596461*ffem/fem,
//                                                             letterSpacing: 0.12*fem,
//                                                             color: Color(0xff5f5f5f),
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                   Container(
//                                                     // frame26092689uX (128:5543)
//                                                     padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
//                                                     width: 212*fem,
//                                                     height: double.infinity,
//                                                     decoration: BoxDecoration (
//                                                       borderRadius: BorderRadius.circular(4*fem),
//                                                     ),
//                                                     child: Text(
//                                                       '5213 5123 6554 5894',
//                                                       style: TextStyle (
//                                                         fontFamily:   'Poppins',
//                                                         fontSize: 14*ffem,
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 1.1999999455*ffem/fem,
//                                                         letterSpacing: 0.14*fem,
//                                                         color: Color(0xff6f6f6f),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                             Container(
//                                               // group36396FxZ (128:5545)
//                                               width: double.infinity,
//                                               height: 25*fem,
//                                               decoration: BoxDecoration (
//                                                 borderRadius: BorderRadius.circular(4*fem),
//                                               ),
//                                               child: Row(
//                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                 children: [
//                                                   Container(
//                                                     // autogroupykmtCcu (5vSuDgTuhmYGRYYWKsykmT)
//                                                     padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 12*fem, 3*fem),
//                                                     height: double.infinity,
//                                                     child: Row(
//                                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                                       children: [
//                                                         Container(
//                                                           // ifsccode8Ff (128:5546)
//                                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 54*fem, 1*fem),
//                                                           child: Text(
//                                                             'IFSC code',
//                                                             style: TextStyle (
//                                                               fontFamily:   'Poppins',
//                                                               fontSize: 14*ffem,
//                                                               fontWeight: FontWeight.w500,
//                                                               height: 1.1999999455*ffem/fem,
//                                                               letterSpacing: 0.14*fem,
//                                                               color: Color(0xff006270),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         Text(
//                                                           // dy7 (128:5547)
//                                                           ': ',
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 12*ffem,
//                                                             fontWeight: FontWeight.w500,
//                                                             height: 1.4332596461*ffem/fem,
//                                                             letterSpacing: 0.12*fem,
//                                                             color: Color(0xff5f5f5f),
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                   Container(
//                                                     // frame2609268adT (128:5548)
//                                                     padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
//                                                     width: 212*fem,
//                                                     height: double.infinity,
//                                                     decoration: BoxDecoration (
//                                                       borderRadius: BorderRadius.circular(4*fem),
//                                                     ),
//                                                     child: Text(
//                                                       'IDBI000H013',
//                                                       style: TextStyle (
//                                                         fontFamily:   'Poppins',
//                                                         fontSize: 14*ffem,
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 1.1999999455*ffem/fem,
//                                                         letterSpacing: 0.14*fem,
//                                                         color: Color(0xff6c6c6c),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                             Container(
//                                               // group36397gAh (128:5550)
//                                               width: double.infinity,
//                                               height: 25*fem,
//                                               decoration: BoxDecoration (
//                                                 borderRadius: BorderRadius.circular(4*fem),
//                                               ),
//                                               child: Row(
//                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                 children: [
//                                                   Container(
//                                                     // autogroupderqR8H (5vSuPG2HLYHmf2FXVTDerq)
//                                                     padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 12*fem, 3*fem),
//                                                     height: double.infinity,
//                                                     child: Row(
//                                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                                       children: [
//                                                         Container(
//                                                           // accountholder9a5 (128:5551)
//                                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 1*fem),
//                                                           child: Text(
//                                                             'Account Holder',
//                                                             style: TextStyle (
//                                                               fontFamily:   'Poppins',
//                                                               fontSize: 14*ffem,
//                                                               fontWeight: FontWeight.w500,
//                                                               height: 1.1999999455*ffem/fem,
//                                                               letterSpacing: 0.14*fem,
//                                                               color: Color(0xff006270),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         Text(
//                                                           // ErR (128:5552)
//                                                           ': ',
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 12*ffem,
//                                                             fontWeight: FontWeight.w500,
//                                                             height: 1.4332596461*ffem/fem,
//                                                             letterSpacing: 0.12*fem,
//                                                             color: Color(0xff5f5f5f),
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                   Container(
//                                                     // frame2609268BWm (128:5553)
//                                                     padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
//                                                     width: 212*fem,
//                                                     height: double.infinity,
//                                                     decoration: BoxDecoration (
//                                                       borderRadius: BorderRadius.circular(4*fem),
//                                                     ),
//                                                     child: Text(
//                                                       'Ajit Bhalla',
//                                                       style: TextStyle (
//                                                         fontFamily:   'Poppins',
//                                                         fontSize: 14*ffem,
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 1.1999999455*ffem/fem,
//                                                         letterSpacing: 0.14*fem,
//                                                         color: Color(0xff6c6c6c),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 18*fem,
//                                 ),
//                                 Container(
//                                   // documentsEzq (128:5555)
//                                   width: 356*fem,
//                                   decoration: BoxDecoration (
//                                     border: Border.all(color: Color(0xffd9d9d9)),
//                                   ),
//                                   child: Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       Container(
//                                         // headingB9P (I128:5555;218:34576;218:34783)
//                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
//                                         width: 225*fem,
//                                         height: 27*fem,
//                                         child: Container(
//                                           // autogrouptirhWSZ (5vSubb15LTLoU89p7ytirh)
//                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 130*fem, 1*fem),
//                                           width: 95*fem,
//                                           height: 26*fem,
//                                           child: Text(
//                                             'DOCUMENTS ',
//                                             style: TextStyle (
//                                             fontFamily:  'Arimo',
//                                               fontSize: 14*ffem,
//                                               fontWeight: FontWeight.w700,
//                                               height: 1.6428571429*ffem/fem,
//                                               letterSpacing: 0.14*fem,
//                                               color: Color(0xff202741),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       Container(
//                                         // documentsC4V (I128:5555;218:34577)
//                                         width: double.infinity,
//                                         child: Column(
//                                           crossAxisAlignment: CrossAxisAlignment.center,
//                                           children: [
//                                             Container(
//                                               // idtypejq7 (I128:5555;218:34578)
//                                               width: double.infinity,
//                                               height: 25*fem,
//                                               decoration: BoxDecoration (
//                                                 borderRadius: BorderRadius.circular(4*fem),
//                                               ),
//                                               child: Row(
//                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                 children: [
//                                                   Container(
//                                                     // autogroupgtehGa9 (5vSuyKsrQDuyKssU4zgteh)
//                                                     padding: EdgeInsets.fromLTRB(0*fem, 3*fem, 11*fem, 4*fem),
//                                                     height: double.infinity,
//                                                     child: Row(
//                                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                                       children: [
//                                                         Container(
//                                                           // idtypeQAZ (I128:5555;218:34579)
//                                                           margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 19*fem, 0*fem),
//                                                           child: Text(
//                                                             'ID type',
//                                                             style: TextStyle (
//                                                               fontFamily:   'Poppins',
//                                                               fontSize: 14*ffem,
//                                                               fontWeight: FontWeight.w500,
//                                                               height: 1.1999999455*ffem/fem,
//                                                               letterSpacing: 0.14*fem,
//                                                               color: Color(0xff006270),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         Text(
//                                                           // 6ZB (I128:5555;218:34580)
//                                                           ':',
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 12*ffem,
//                                                             fontWeight: FontWeight.w500,
//                                                             height: 1.4332596461*ffem/fem,
//                                                             letterSpacing: 0.12*fem,
//                                                             color: Color(0xff5f5f5f),
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                   Container(
//                                                     // mobileEfP (I128:5555;218:34581)
//                                                     padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
//                                                     width: 272*fem,
//                                                     height: double.infinity,
//                                                     decoration: BoxDecoration (
//                                                       borderRadius: BorderRadius.circular(4*fem),
//                                                     ),
//                                                     child: Text(
//                                                       'Aadhar',
//                                                       style: TextStyle (
//                                                         fontFamily:   'Poppins',
//                                                         fontSize: 14*ffem,
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 1.1999999455*ffem/fem,
//                                                         letterSpacing: 0.14*fem,
//                                                         color: Color(0xff6c6c6c),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                             Container(
//                                               // idnoJ9T (I128:5555;218:34584)
//                                               width: double.infinity,
//                                               height: 25*fem,
//                                               decoration: BoxDecoration (
//                                                 borderRadius: BorderRadius.circular(4*fem),
//                                               ),
//                                               child: Row(
//                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                 children: [
//                                                   Container(
//                                                     // autogrouptacddhX (5vSvB53HQvfDz69yEiTAcD)
//                                                     padding: EdgeInsets.fromLTRB(0*fem, 3*fem, 11*fem, 4*fem),
//                                                     height: double.infinity,
//                                                     child: Row(
//                                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                                       children: [
//                                                         Container(
//                                                           // idnoASZ (I128:5555;218:34585)
//                                                           margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 29*fem, 0*fem),
//                                                           child: Text(
//                                                             'ID no.',
//                                                             style: TextStyle (
//                                                               fontFamily:   'Poppins',
//                                                               fontSize: 14*ffem,
//                                                               fontWeight: FontWeight.w500,
//                                                               height: 1.1999999455*ffem/fem,
//                                                               letterSpacing: 0.14*fem,
//                                                               color: Color(0xff006270),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         Text(
//                                                           // UTF (I128:5555;218:34586)
//                                                           ':',
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 12*ffem,
//                                                             fontWeight: FontWeight.w500,
//                                                             height: 1.4332596461*ffem/fem,
//                                                             letterSpacing: 0.12*fem,
//                                                             color: Color(0xff5f5f5f),
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                   Container(
//                                                     // emailokR (I128:5555;218:34587)
//                                                     padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
//                                                     width: 272*fem,
//                                                     height: double.infinity,
//                                                     decoration: BoxDecoration (
//                                                       borderRadius: BorderRadius.circular(4*fem),
//                                                     ),
//                                                     child: Text(
//                                                       '9658 4521 6563 8954',
//                                                       style: TextStyle (
//                                                         fontFamily:   'Poppins',
//                                                         fontSize: 14*ffem,
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 1.1999999455*ffem/fem,
//                                                         letterSpacing: 0.14*fem,
//                                                         color: Color(0xff6c6c6c),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                             Container(
//                                               // otherdocsh57 (I128:5555;218:34589)
//                                               width: double.infinity,
//                                               height: 64*fem,
//                                               child: Stack(
//                                                 children: [
//                                                   Positioned(
//                                                     // 3Ps (I128:5555;218:34590)
//                                                     left: 130*fem,
//                                                     top: 0*fem,
//                                                     child: Align(
//                                                       child: SizedBox(
//                                                         width: 4*fem,
//                                                         height: 18*fem,
//                                                         child: Text(
//                                                           ':',
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 12*ffem,
//                                                             fontWeight: FontWeight.w500,
//                                                             height: 1.4332596461*ffem/fem,
//                                                             letterSpacing: 0.12*fem,
//                                                             color: Color(0xff5f5f5f),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Positioned(
//                                                     // otherdocuments9C1 (I128:5555;218:34591)
//                                                     left: 0*fem,
//                                                     top: 1*fem,
//                                                     child: Container(
//                                                       width: 356*fem,
//                                                       height: 63*fem,
//                                                       child: Text(
//                                                         'Other Documents  ',
//                                                         style: TextStyle (
//                                                           fontFamily:   'Poppins',
//                                                           fontSize: 14*ffem,
//                                                           fontWeight: FontWeight.w500,
//                                                           height: 1.1999999455*ffem/fem,
//                                                           letterSpacing: 0.14*fem,
//                                                           color: Color(0xff006270),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             // paymentshistoryRQR (128:5556)
//                             width: double.infinity,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   // headingB8h (I128:5557;218:34783)
//                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
//                                   width: 225*fem,
//                                   height: 27*fem,
//                                   child: Container(
//                                     // autogroupmtfwhsj (5vSxtaMB2g36xngRxdmtfw)
//                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 79*fem, 1*fem),
//                                     width: 146*fem,
//                                     height: 26*fem,
//                                     child: Text(
//                                       'PAYMENTS HISTORY ',
//                                       style: TextStyle (
//                                         fontFamily:   'Poppins',
//                                         fontSize: 14*ffem,
//                                         fontWeight: FontWeight.w700,
//                                         height: 1.6428571429*ffem/fem,
//                                         letterSpacing: 0.14*fem,
//                                         color: Color(0xff202741),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   // paymentsBnu (128:5558)
//                                   width: double.infinity,
//                                   decoration: BoxDecoration (
//                                     border: Border.all(color: Color(0xffd9d9d9)),
//                                   ),
//                                   child: Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       Container(
//                                         // appointhistoryvkV (I128:5558;218:34717)
//                                         margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 11*fem),
//                                         width: double.infinity,
//                                         height: 72*fem,
//                                         child: Row(
//                                           crossAxisAlignment: CrossAxisAlignment.center,
//                                           children: [
//                                             Container(
//                                               // autogroup2xd73q7 (5vSyAZtXWnAAt4B5D72XD7)
//                                               padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 16*fem, 2*fem),
//                                               height: double.infinity,
//                                               child: Row(
//                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                 children: [
//                                                   Container(
//                                                     // srnoaKF (I128:5558;218:34718)
//                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
//                                                     height: double.infinity,
//                                                     child: Column(
//                                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                                       children: [
//                                                         Text(
//                                                           // nouMX (I128:5558;218:34719)
//                                                           'No.',
//                                                           textAlign: TextAlign.center,
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 12*ffem,
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 1.5*ffem/fem,
//                                                             letterSpacing: 0.24*fem,
//                                                             color: Color(0xff5f5f5f),
//                                                           ),
//                                                         ),
//                                                         SizedBox(
//                                                           height: 8*fem,
//                                                         ),
//                                                         Text(
//                                                           // Ram (I128:5558;218:34720)
//                                                           ' 1',
//                                                           textAlign: TextAlign.center,
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 14*ffem,
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 1.1999999455*ffem/fem,
//                                                             letterSpacing: 0.14*fem,
//                                                             color: Color(0xff009394),
//                                                           ),
//                                                         ),
//                                                         SizedBox(
//                                                           height: 8*fem,
//                                                         ),
//                                                         Text(
//                                                           // YQV (I128:5558;218:34721)
//                                                           ' 2',
//                                                           textAlign: TextAlign.center,
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 14*ffem,
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 1.1999999455*ffem/fem,
//                                                             letterSpacing: 0.14*fem,
//                                                             color: Color(0xff009394),
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                   Container(
//                                                     // date5fK (I128:5558;218:34722)
//                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10.5*fem, 0*fem),
//                                                     height: double.infinity,
//                                                     child: Column(
//                                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                                       children: [
//                                                         Container(
//                                                           // dateRUH (I128:5558;218:34723)
//                                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
//                                                           child: Text(
//                                                             'Date',
//                                                             textAlign: TextAlign.center,
//                                                             style: TextStyle (
//                                                               fontFamily:   'Poppins',
//                                                               fontSize: 12*ffem,
//                                                               fontWeight: FontWeight.w400,
//                                                               height: 1.5*ffem/fem,
//                                                               letterSpacing: 0.24*fem,
//                                                               color: Color(0xff5f5f5f),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         SizedBox(
//                                                           height: 8*fem,
//                                                         ),
//                                                         Container(
//                                                           // jjs (I128:5558;218:34724)
//                                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
//                                                           child: Text(
//                                                             '01/07/23',
//                                                             textAlign: TextAlign.center,
//                                                             style: TextStyle (
//                                                               fontFamily:   'Poppins',
//                                                               fontSize: 14*ffem,
//                                                               fontWeight: FontWeight.w400,
//                                                               height: 1.1999999455*ffem/fem,
//                                                               letterSpacing: 0.14*fem,
//                                                               color: Color(0xff009394),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         SizedBox(
//                                                           height: 8*fem,
//                                                         ),
//                                                         Text(
//                                                           // EwX (I128:5558;218:34725)
//                                                           '01/06/23',
//                                                           textAlign: TextAlign.center,
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 14*ffem,
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 1.1999999455*ffem/fem,
//                                                             letterSpacing: 0.14*fem,
//                                                             color: Color(0xff009394),
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                   Container(
//                                                     // dayyeD (I128:5558;218:34726)
//                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23*fem, 0*fem),
//                                                     height: double.infinity,
//                                                     child: Column(
//                                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                                       children: [
//                                                         Text(
//                                                           // dayKTB (I128:5558;218:34727)
//                                                           'Day',
//                                                           textAlign: TextAlign.center,
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 12*ffem,
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 1.5*ffem/fem,
//                                                             letterSpacing: 0.24*fem,
//                                                             color: Color(0xff5f5f5f),
//                                                           ),
//                                                         ),
//                                                         SizedBox(
//                                                           height: 8*fem,
//                                                         ),
//                                                         Text(
//                                                           // satqgR (I128:5558;218:34728)
//                                                           'Sat.',
//                                                           textAlign: TextAlign.center,
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 14*ffem,
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 1.1999999455*ffem/fem,
//                                                             letterSpacing: 0.14*fem,
//                                                             color: Color(0xff009394),
//                                                           ),
//                                                         ),
//                                                         SizedBox(
//                                                           height: 8*fem,
//                                                         ),
//                                                         Text(
//                                                           // monmpy (I128:5558;218:34729)
//                                                           'Mon.',
//                                                           textAlign: TextAlign.center,
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 14*ffem,
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 1.1999999455*ffem/fem,
//                                                             letterSpacing: 0.14*fem,
//                                                             color: Color(0xff009394),
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                   Container(
//                                                     // datevC5 (I128:5558;218:34730)
//                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 48.5*fem, 0*fem),
//                                                     height: double.infinity,
//                                                     child: Column(
//                                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                                       children: [
//                                                         Text(
//                                                           // modeeds (I128:5558;218:34731)
//                                                           'Mode',
//                                                           textAlign: TextAlign.center,
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 12*ffem,
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 1.5*ffem/fem,
//                                                             letterSpacing: 0.24*fem,
//                                                             color: Color(0xff5f5f5f),
//                                                           ),
//                                                         ),
//                                                         SizedBox(
//                                                           height: 8*fem,
//                                                         ),
//                                                         Text(
//                                                           // upiPLZ (I128:5558;218:34732)
//                                                           'UPI',
//                                                           textAlign: TextAlign.center,
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 14*ffem,
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 1.1999999455*ffem/fem,
//                                                             letterSpacing: 0.14*fem,
//                                                             color: Color(0xff009394),
//                                                           ),
//                                                         ),
//                                                         SizedBox(
//                                                           height: 8*fem,
//                                                         ),
//                                                         Text(
//                                                           // bankJyK (I128:5558;218:34733)
//                                                           'Bank',
//                                                           textAlign: TextAlign.center,
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 14*ffem,
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 1.1999999455*ffem/fem,
//                                                             letterSpacing: 0.14*fem,
//                                                             color: Color(0xff009394),
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                   Container(
//                                                     // doctorrV3 (I128:5558;218:34734)
//                                                     width: 58*fem,
//                                                     height: double.infinity,
//                                                     child: Column(
//                                                       crossAxisAlignment: CrossAxisAlignment.end,
//                                                       children: [
//                                                         Container(
//                                                           // amountCoo (I128:5558;218:34735)
//                                                           width: double.infinity,
//                                                           child: Text(
//                                                             'Amount',
//                                                             textAlign: TextAlign.center,
//                                                             style: TextStyle (
//                                                               fontFamily:   'Poppins',
//                                                               fontSize: 12*ffem,
//                                                               fontWeight: FontWeight.w400,
//                                                               height: 1.5*ffem/fem,
//                                                               letterSpacing: 0.24*fem,
//                                                               color: Color(0xff5f5f5f),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         SizedBox(
//                                                           height: 8*fem,
//                                                         ),
//                                                         Text(
//                                                           // 7Qy (I128:5558;218:34736)
//                                                           '₹ 2000',
//                                                           textAlign: TextAlign.right,
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 14*ffem,
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 1.1999999455*ffem/fem,
//                                                             letterSpacing: 0.14*fem,
//                                                             color: Color(0xff009394),
//                                                           ),
//                                                         ),
//                                                         SizedBox(
//                                                           height: 8*fem,
//                                                         ),
//                                                         Text(
//                                                           // RwT (I128:5558;218:34737)
//                                                           '₹ 2000',
//                                                           textAlign: TextAlign.right,
//                                                           style: TextStyle (
//                                                             fontFamily:   'Poppins',
//                                                             fontSize: 14*ffem,
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 1.1999999455*ffem/fem,
//                                                             letterSpacing: 0.14*fem,
//                                                             color: Color(0xff009394),
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                             Container(
//                                               // consultationZXs (I128:5558;218:34738)
//                                               width: 114*fem,
//                                               height: double.infinity,
//                                               child: Column(
//                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                 children: [
//                                                   Container(
//                                                     // receiptuLq (I128:5558;218:34739)
//                                                     margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 0*fem, 0*fem),
//                                                     child: Text(
//                                                       'Receipt',
//                                                       textAlign: TextAlign.center,
//                                                       style: TextStyle (
//                                                         fontFamily:   'Poppins',
//                                                         fontSize: 12*ffem,
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 1.5*ffem/fem,
//                                                         letterSpacing: 0.24*fem,
//                                                         color: Color(0xff5f5f5f),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   SizedBox(
//                                                     height: 8*fem,
//                                                   ),
//                                                   Container(
//                                                     // consultationzt5 (I128:5558;218:34740)
//                                                     width: double.infinity,
//                                                     height: 19*fem,
//                                                     child: Stack(
//                                                       children: [
//                                                         Positioned(
//                                                           // highfeverreceipt01july23pdfkMT (I128:5558;218:34741)
//                                                           left: 0*fem,
//                                                           top: 0*fem,
//                                                           child: Align(
//                                                             child: SizedBox(
//                                                               width: 100*fem,
//                                                               height: 17*fem,
//                                                               child: Text(
//                                                                 'Salary_aug23',
//                                                                 textAlign: TextAlign.center,
//                                                                 style: TextStyle (
//                                                                   fontFamily:   'Poppins',
//                                                                   fontSize: 14*ffem,
//                                                                   fontWeight: FontWeight.w400,
//                                                                   height: 1.1999999455*ffem/fem,
//                                                                   letterSpacing: 0.14*fem,
//                                                                   color: Color(0xff009394),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         Positioned(
//                                                           // mdiprintpreviewps7 (I128:5558;218:34742)
//                                                           left: 96.8330078125*fem,
//                                                           top: 3.4165039062*fem,
//                                                           child: Align(
//                                                             child: SizedBox(
//                                                               width: 11.33*fem,
//                                                               height: 14.17*fem,
//                                                               child: Image.asset(
//                                                                 'assets/design/images/mdi-print-preview-6LV.png',
//                                                                 width: 11.33*fem,
//                                                                 height: 14.17*fem,
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                   SizedBox(
//                                                     height: 8*fem,
//                                                   ),
//                                                   Container(
//                                                     // consultationKJ5 (I128:5558;218:34744)
//                                                     margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
//                                                     width: 112*fem,
//                                                     height: 19*fem,
//                                                     child: Stack(
//                                                       children: [
//                                                         Positioned(
//                                                           // salineconsultation01july23pdfq (I128:5558;218:34745)
//                                                           left: 0*fem,
//                                                           top: 0*fem,
//                                                           child: Align(
//                                                             child: SizedBox(
//                                                               width: 96*fem,
//                                                               height: 17*fem,
//                                                               child: Text(
//                                                                 'Salary_july23',
//                                                                 textAlign: TextAlign.center,
//                                                                 style: TextStyle (
//                                                                   fontFamily:   'Poppins',
//                                                                   fontSize: 14*ffem,
//                                                                   fontWeight: FontWeight.w400,
//                                                                   height: 1.1999999455*ffem/fem,
//                                                                   letterSpacing: 0.14*fem,
//                                                                   color: Color(0xff009394),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         Positioned(
//                                                           // mdiprintpreview8WR (I128:5558;218:34746)
//                                                           left: 94.8330078125*fem,
//                                                           top: 3.4165039062*fem,
//                                                           child: Align(
//                                                             child: SizedBox(
//                                                               width: 11.33*fem,
//                                                               height: 14.17*fem,
//                                                               child: Image.asset(
//                                                                 'assets/design/images/mdi-print-preview-RYy.png',
//                                                                 width: 11.33*fem,
//                                                                 height: 14.17*fem,
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       TextButton(
//                                         // rectangle13133NV (I128:5558;218:34748)
//                                         onPressed: () {},
//                                         style: TextButton.styleFrom (
//                                           padding: EdgeInsets.zero,
//                                         ),
//                                         child: Container(
//                                           width: 289*fem,
//                                           height: 8*fem,
//                                           decoration: BoxDecoration (
//                                             borderRadius: BorderRadius.circular(2*fem),
//                                             color: Color(0xffd9d9d9),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//             ),
//     );
//   }
// }


import 'package:flutter/material.dart';


class Member_Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
       appBar: AppBar(
          title: const Text(
            'Staff Records',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
      
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
          child: Container(
            // staffdetailse21 (126:4727)
            width: double.infinity,
            decoration: BoxDecoration (
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(20*fem),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Container(
                  // staffinfo3rm (128:5165)
                  margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                  width: 432*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // frame2609372mGy (128:5201)
                        margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 8*fem),
                        width: 357*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // frame2609371J21 (128:5202)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 53*fem, 13.5*fem),
                              width: double.infinity,
                              height: 192*fem,
                            
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // ellipse759cYV (128:5203)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                                    width: 120*fem,
                                    height: 120*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(60*fem),
                                      image: DecorationImage (
                                        fit: BoxFit.cover,
                                        image: AssetImage (
                                          'assets/images/ellipse-759-bg.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // nameWtm (128:5204)
                                    width: 168*fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        TextButton(
                                          // statusbuttonTZ7 (128:5205)
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: Container(
                                            width: 63*fem,
                                            height: 30*fem,
                                            decoration: BoxDecoration (
                                              color: Color(0xffbb66ff),
                                              borderRadius: BorderRadius.circular(8*fem),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Admin',
                                                textAlign: TextAlign.center,
                                                style: TextStyle (
                                                 fontFamily: 'Poppins',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w600,
                                                //  height: 1.2857142857*ffem/fem,
                                                  letterSpacing: -0.14*fem,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        // SizedBox(
                                        //   height: 7*fem,
                                        // ),
                                        Container(
                                          // staffinfotuK (128:5207)
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                // nameqZf (128:5208)
                                                'Dr. Kim Jones',
                                                style: TextStyle (
                                                 fontFamily: 'Poppins',
                                                  fontSize: 24*ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 6*fem,
                                              ),
                                              Text(
                                                // specializationmCR (128:5209)
                                                'MBBS, DLO, MS(ENT)',
                                                style: TextStyle (
                                                 fontFamily: 'Poppins',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  letterSpacing: -0.16*fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 6*fem,
                                              ),
                                              Text(
                                                // role5yo (128:5210)
                                                'ENT specialist',
                                                style: TextStyle (
                                                 fontFamily: 'Poppins',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5*ffem/fem,
                                                  letterSpacing: -0.14*fem,
                                                  color: Color(0xff730ac6),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        // SizedBox(
                                        //   height: 7*fem,
                                        // ),
                                        TextButton(
                                          // frame260938816m (128:5211)
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: Container(
                                            width: 164*fem,
                                            height: 26*fem,
                                            child: Container(
                                              // editbutton9Cy (128:5212)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 75*fem, 0*fem),
                                              width: 89*fem,
                                              height: double.infinity,
                                              decoration: BoxDecoration (
                                                color: Color(0xff03bf9c),
                                                borderRadius: BorderRadius.circular(6*fem),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(0x3f03bf9c),
                                                    offset: Offset(0*fem, 4*fem),
                                                    blurRadius: 2*fem,
                                                  ),
                                                ],
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Edit Profile',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle (
                                                   fontFamily: 'Poppins',
                                                    fontSize: 14*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.2857142857*ffem/fem,
                                                    letterSpacing: -0.14*fem,
                                                    color: Color(0xffffffff),
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
                              // rectangle1227B9f (128:5216)
                              width: double.infinity,
                              height: 1*fem,
                              decoration: BoxDecoration (
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // staffinfovd3 (128:5166)
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupezqvUuT (5vSgqcviHjkCNNHJe5EzQV)
                              padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                              width: double.infinity,
                              height: 714.5*fem,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // autogroupdeb7CqT (5vSeWSJxiyFGQK6HKydEB7)
                                    width: 356*fem,
                                   height: 348.5*fem,
                                   
                                    child: Stack(
                                      children: [
                                        Positioned(
                                        
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Container(
                                            width: 356*fem,
                                            height: 165*fem,
                                          
                                            // decoration: BoxDecoration (
                                            //   // color: Colors.black,
                                            // // border: Border(bottom:BorderSide(color: Color(0xffd9d9d9))),
                                            // //  border: Border.all(color: Color(0xffd9d9d9)),
                                            // ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // headingGKX (I128:5167;218:34415;218:34783)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                                  width: 225*fem,
                                                  height: 27*fem,
                                                  child: Container(
                                                    // autogroupower12D (5vSehMASu5qh8PvXGFoWeR)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 91*fem, 1*fem),
                                                    width: 134*fem,
                                                    height: 26*fem,
                                                    child: Text(
                                                      'PERSONAL DETAILS',
                                                      style: TextStyle (
                                                       fontFamily: 'Poppins',
                                                        fontSize: 14*ffem,
                                                        fontWeight: FontWeight.w700,
                                                        height: 1.6428571429*ffem/fem,
                                                        letterSpacing: 0.14*fem,
                                                        color: Color(0xff202741),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // personalinfoTeu (I128:5167;218:34416)
                                                  padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 50*fem),
                                                  width: 212*fem,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // group36389Nms (I128:5167;218:34417)
                                                        width: double.infinity,
                                                        height: 25*fem,
                                                        decoration: BoxDecoration (
                                                          borderRadius: BorderRadius.circular(8*fem),
                                                        ),
                                                        child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              // autogroupvk65JvR (5vSf268DkLGHdHcRygVK65)
                                                              padding: EdgeInsets.fromLTRB(0*fem, 3*fem, 7*fem, 4*fem),
                                                              height: double.infinity,
                                                              child: Row(
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children: [
                                                                  Container(
                                                                    // birthdayqfT (I128:5167;218:34418)
                                                                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 8*fem, 0*fem),
                                                                    child: Text(
                                                                      'Birthday',
                                                                      style: TextStyle (
                                                                       fontFamily: 'Poppins',
                                                                        fontSize: 14*ffem,
                                                                        fontWeight: FontWeight.w500,
                                                                        height: 1.1999999455*ffem/fem,
                                                                        letterSpacing: 0.14*fem,
                                                                        color: Color(0xff006270),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    // k1j (I128:5167;218:34419)
                                                                    ': ',
                                                                    style: TextStyle (
                                                                     fontFamily: 'Poppins',
                                                                      fontSize: 12*ffem,
                                                                      fontWeight: FontWeight.w500,
                                                                      height: 1.4332596461*ffem/fem,
                                                                      letterSpacing: 0.12*fem,
                                                                      color: Color(0xff5f5f5f),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              // frame2609268541 (I128:5167;218:34420)
                                                              padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
                                                              width: 129*fem,
                                                              height: double.infinity,
                                                              decoration: BoxDecoration (
                                                                borderRadius: BorderRadius.circular(8*fem),
                                                              ),
                                                              child: Text(
                                                                '4/12/1993',
                                                                style: TextStyle (
                                                                 fontFamily: 'Poppins',
                                                                  fontSize: 14*ffem,
                                                                  fontWeight: FontWeight.w400,
                                                                  height: 1.1999999455*ffem/fem,
                                                                  letterSpacing: 0.14*fem,
                                                                  color: Color(0xff009394),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        // group3639493s (I128:5167;218:34422)
                                                        width: double.infinity,
                                                        height: 25*fem,
                                                        decoration: BoxDecoration (
                                                          borderRadius: BorderRadius.circular(8*fem),
                                                        ),
                                                        child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              // autogroupozcdHA5 (5vSfDv7r3VdDsuqm4wozCD)
                                                              padding: EdgeInsets.fromLTRB(0*fem, 3*fem, 7*fem, 4*fem),
                                                              height: double.infinity,
                                                              child: Row(
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children: [
                                                                  Container(
                                                                    // ageD3j (I128:5167;218:34423)
                                                                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 40*fem, 0*fem),
                                                                    child: Text(
                                                                      'Age',
                                                                      style: TextStyle (
                                                                       fontFamily: 'Poppins',
                                                                        fontSize: 14*ffem,
                                                                        fontWeight: FontWeight.w500,
                                                                        height: 1.1999999455*ffem/fem,
                                                                        letterSpacing: 0.14*fem,
                                                                        color: Color(0xff006270),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    // imB (I128:5167;218:34424)
                                                                    ': ',
                                                                    style: TextStyle (
                                                                     fontFamily: 'Poppins',
                                                                      fontSize: 12*ffem,
                                                                      fontWeight: FontWeight.w500,
                                                                      height: 1.4332596461*ffem/fem,
                                                                      letterSpacing: 0.12*fem,
                                                                      color: Color(0xff5f5f5f),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              // frame2609268rsP (I128:5167;218:34425)
                                                              padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
                                                              width: 129*fem,
                                                              height: double.infinity,
                                                              decoration: BoxDecoration (
                                                                borderRadius: BorderRadius.circular(8*fem),
                                                              ),
                                                              child: Text(
                                                                '30',
                                                                style: TextStyle (
                                                                 fontFamily: 'Poppins',
                                                                  fontSize: 14*ffem,
                                                                  fontWeight: FontWeight.w400,
                                                                  height: 1.1999999455*ffem/fem,
                                                                  letterSpacing: 0.14*fem,
                                                                  color: Color(0xff009394),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        // group36395XTj (I128:5167;218:34427)
                                                        width: double.infinity,
                                                        height: 25*fem,
                                                        decoration: BoxDecoration (
                                                       
                                                          borderRadius: BorderRadius.circular(8*fem),
                                                        ),
                                                        child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              // autogroupagaq4iZ (5vSfPfLcFBc6JDSS5cAgaq)
                                                              padding: EdgeInsets.fromLTRB(0*fem, 3*fem, 7*fem, 4*fem),
                                                              height: double.infinity,
                                                              child: Row(
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children: [
                                                                  Container(
                                                                    // genderCZs (I128:5167;218:34428)
                                                                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 16*fem, 0*fem),
                                                                    child: Text(
                                                                      'Gender',
                                                                      style: TextStyle (
                                                                       fontFamily: 'Poppins',
                                                                        fontSize: 14*ffem,
                                                                        fontWeight: FontWeight.w500,
                                                                        height: 1.1999999455*ffem/fem,
                                                                        letterSpacing: 0.14*fem,
                                                                        color: Color(0xff006270),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    // WqT (I128:5167;218:34429)
                                                                    ': ',
                                                                    style: TextStyle (
                                                                     fontFamily: 'Poppins',
                                                                      fontSize: 12*ffem,
                                                                      fontWeight: FontWeight.w500,
                                                                      height: 1.4332596461*ffem/fem,
                                                                      letterSpacing: 0.12*fem,
                                                                      color: Color(0xff5f5f5f),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              // frame26092684MB (I128:5167;218:34430)
                                                              padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
                                                              width: 129*fem,
                                                              height: double.infinity,
                                                              decoration: BoxDecoration (
                                                                borderRadius: BorderRadius.circular(8*fem),
                                                              ),
                                                              child: Text(
                                                                'Male',
                                                                style: TextStyle (
                                                                 fontFamily: 'Poppins',
                                                                  fontSize: 14*ffem,
                                                                  fontWeight: FontWeight.w400,
                                                                  height: 1.1999999455*ffem/fem,
                                                                  letterSpacing: 0.14*fem,
                                                                  color: Color(0xff009394),
                                                                ),
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
                                        Positioned(
                                         
                                          left: 0*fem,
                                          top: 140*fem,
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                            width: 356*fem,
                                            height: 235.5*fem,
                                       
                                            // decoration: BoxDecoration (
                                            //   border: Border.all(color: Color(0xffd9d9d9)),
                                            // ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                    Divider(thickness: 1,color: Color(0xffd9d9d9) ,),
                                                Container(
                                                  // headingScd (I128:5168;218:34466;218:34783)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 10*fem),
                                                  width: 225*fem,
                                                  height: 27*fem,
                                                  child: Container(
                                                    // autogroupm973BaD (5vSfwtuu4mhGuzGCMBM973)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 94*fem, 1*fem),
                                                    width: 131*fem,
                                                    height: 26*fem,
                                                    child: Text(
                                                      'CONTACT DETAILS',
                                                      style: TextStyle (
                                                       fontFamily: 'Poppins',
                                                        fontSize: 14*ffem,
                                                        fontWeight: FontWeight.w700,
                                                        height: 1.6428571429*ffem/fem,
                                                        letterSpacing: 0.14*fem,
                                                        color: Color(0xff202741),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // contactinfosC9 (I128:5168;218:34467)
                                                  width: double.infinity,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // mobileDG1 (I128:5168;218:34468)
                                                        width: double.infinity,
                                                        decoration: BoxDecoration (
                                                          borderRadius: BorderRadius.circular(4*fem),
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Container(
                                                              // autogroupspxbmHX (5vSgC91AbEu1NauVDDsPXB)
                                                              width: double.infinity,
                                                              height: 25*fem,
                                                              child: Row(
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children: [
                                                                  Container(
                                                                    // autogroupjjl9KK3 (5vSgHdr1KXW4XqJ298jjL9)
                                                                    padding: EdgeInsets.fromLTRB(0*fem, 3*fem, 11*fem, 4*fem),
                                                                    height: double.infinity,
                                                                    child: Row(
                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                      children: [
                                                                        Container(
                                                                          // mobileeMK (I128:5168;218:34469)
                                                                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 21*fem, 0*fem),
                                                                          child: Text(
                                                                            'Mobile',
                                                                            style: TextStyle (
                                                                             fontFamily: 'Poppins',
                                                                              fontSize: 14*ffem,
                                                                              fontWeight: FontWeight.w500,
                                                                              height: 1.1999999455*ffem/fem,
                                                                              letterSpacing: 0.14*fem,
                                                                              color: Color(0xff006270),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          // xcu (I128:5168;218:34470)
                                                                          ':',
                                                                          style: TextStyle (
                                                                           fontFamily: 'Poppins',
                                                                            fontSize: 12*ffem,
                                                                            fontWeight: FontWeight.w500,
                                                                            height: 1.4332596461*ffem/fem,
                                                                            letterSpacing: 0.12*fem,
                                                                            color: Color(0xff5f5f5f),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    // mobilehaV (I128:5168;218:34471)
                                                                    padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
                                                                    width: 272*fem,
                                                                    height: double.infinity,
                                                                    decoration: BoxDecoration (
                                                                      borderRadius: BorderRadius.circular(4*fem),
                                                                    ),
                                                                    child: Text(
                                                                      '+91 9865 632142',
                                                                      style: TextStyle (
                                                                       fontFamily: 'Poppins',
                                                                        fontSize: 14*ffem,
                                                                        fontWeight: FontWeight.w400,
                                                                        height: 1.1999999455*ffem/fem,
                                                                        letterSpacing: 0.14*fem,
                                                                        color: Color(0xff009394),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              // whatsappnoNwX (I128:5168;218:34473)
                                                              margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 70*fem, 0*fem),
                                                              padding: EdgeInsets.fromLTRB(8.94*fem, 4*fem, 80*fem, 4*fem),
                                                              width: double.infinity,
                                                              decoration: BoxDecoration (
                                                                borderRadius: BorderRadius.circular(4*fem),
                                                              ),
                                                              child: Row(
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children: [
                                                                  Container(
                                                                    // ionlogowhatsappghK (I128:5168;218:34474)
                                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 54.94*fem, 0*fem),
                                                                    width: 13.13*fem,
                                                                    height: 13.13*fem,
                                                                    child: Image.asset(
                                                                      'assets/images/ion-logo-whatsapp-tXf.png',
                                                                      width: 13.13*fem,
                                                                      height: 13.13*fem,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    // Pbj (I128:5168;218:34476)
                                                                    '+91 8964 521674',
                                                                    style: TextStyle (
                                                                     fontFamily: 'Poppins',
                                                                      fontSize: 14*ffem,
                                                                      fontWeight: FontWeight.w400,
                                                                      height: 1.1999999455*ffem/fem,
                                                                      letterSpacing: 0.14*fem,
                                                                      color: Color(0xff009394),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 2*fem,
                                                      ),
                                                      Container(
                                                        // emailWgM (I128:5168;218:34477)
                                                        width: double.infinity,
                                                        height: 25*fem,
                                                        decoration: BoxDecoration (
                                                          borderRadius: BorderRadius.circular(4*fem),
                                                        ),
                                                        child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              // autogroupxlaqqid (5vSgbiADu71CHRRKUCxLaq)
                                                              padding: EdgeInsets.fromLTRB(0*fem, 3*fem, 11*fem, 4*fem),
                                                              height: double.infinity,
                                                              child: Row(
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children: [
                                                                  Container(
                                                                    // emailAku (I128:5168;218:34478)
                                                                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 29*fem, 0*fem),
                                                                    child: Text(
                                                                      'Email',
                                                                      style: TextStyle (
                                                                       fontFamily: 'Poppins',
                                                                        fontSize: 14*ffem,
                                                                        fontWeight: FontWeight.w500,
                                                                        height: 1.1999999455*ffem/fem,
                                                                        letterSpacing: 0.14*fem,
                                                                        color: Color(0xff006270),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    // 68m (I128:5168;218:34479)
                                                                    ':',
                                                                    style: TextStyle (
                                                                     fontFamily: 'Poppins',
                                                                      fontSize: 12*ffem,
                                                                      fontWeight: FontWeight.w500,
                                                                      height: 1.4332596461*ffem/fem,
                                                                      letterSpacing: 0.12*fem,
                                                                      color: Color(0xff5f5f5f),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              // emailSCd (I128:5168;218:34480)
                                                              padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
                                                              width: 272*fem,
                                                              height: double.infinity,
                                                              decoration: BoxDecoration (
                                                                borderRadius: BorderRadius.circular(4*fem),
                                                              ),
                                                              child: Text(
                                                                'kimjones@gmail.com',
                                                                style: TextStyle (
                                                                 fontFamily: 'Poppins',
                                                                  fontSize: 14*ffem,
                                                                  fontWeight: FontWeight.w400,
                                                                  height: 1.1999999455*ffem/fem,
                                                                  letterSpacing: 0.14*fem,
                                                                  color: Color(0xff009394),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 2*fem,
                                                      ),
                                                      Container(
                                                        // address7pZ (I128:5168;218:34482)
                                                        width: double.infinity,
                                                        decoration: BoxDecoration (
                                                          borderRadius: BorderRadius.circular(4*fem),
                                                        ),
                                                        child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Container(
                                                              // addressrn9 (I128:5168;218:34484)
                                                              margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 6*fem, 0*fem),
                                                              child: Text(
                                                                'Address ',
                                                                style: TextStyle (
                                                                 fontFamily: 'Poppins',
                                                                  fontSize: 14*ffem,
                                                                  fontWeight: FontWeight.w500,
                                                                  height: 1.1999999455*ffem/fem,
                                                                  letterSpacing: 0.14*fem,
                                                                  color: Color(0xff006270),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              // 8jf (I128:5168;218:34483)
                                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                                                              child: Text(
                                                                ':',
                                                                style: TextStyle (
                                                                 fontFamily: 'Poppins',
                                                                  fontSize: 12*ffem,
                                                                  fontWeight: FontWeight.w500,
                                                                  height: 1.4332596461*ffem/fem,
                                                                  letterSpacing: 0.12*fem,
                                                                  color: Color(0xff5f5f5f),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                            
                                                                 
                                                             margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
                                                             padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 15*fem, 4*fem),
                                                              width: 272*fem,
                                                              height: 82*fem,
                                                              decoration: BoxDecoration (
                                                                borderRadius: BorderRadius.circular(4*fem),
                                                              ),
                                                              child: Center(
                                                              
                                                                child: SizedBox(
                                                                  child: Container(
                                                                    //color: Colors.black26,
                                                                    constraints: BoxConstraints (
                                                                      maxWidth: 249*fem,
                                                                    ),
                                                                    child: Text(
                                                                      'Plot No. 4-75/1, Madhavi Nagar, \nOppo BHEL R&D Gate,\nBalaNagar, Hyderabad, Telangana,\n500037.',
                                                                      style: TextStyle (
                                                                       fontFamily: 'Poppins',
                                                                        fontSize: 14*ffem,
                                                                        fontWeight: FontWeight.w400,
                                                                        height: 1.1999999455*ffem/fem,
                                                                        letterSpacing: 0.14*fem,
                                                                        color: Color(0xff009394),
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
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 18*fem,
                                  ),
                                  Container(
                                    // bankdetails1qP (128:5169)
                                    padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                    width: 356*fem,
                                    // decoration: BoxDecoration (
                                    //   border: Border.all(color: Color(0xffd9d9d9)),
                                    // ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Divider(thickness: 1,color: Color(0xffd9d9d9) ,),
                                        Container(
                                          // headinghiD (I128:5170;218:34783)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                          width: 225*fem,
                                          height: 27*fem,
                                          child: Container(
                                            // autogroup1mzodLy (5vSiCAWAtTtvsggUCB1MZo)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 124*fem, 1*fem),
                                            width: 101*fem,
                                            height: 26*fem,
                                            child: Text(
                                              'BANK DETAILS',
                                              style: TextStyle (
                                               fontFamily: 'Poppins',
                                                fontSize: 14*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.6428571429*ffem/fem,
                                                letterSpacing: 0.14*fem,
                                                color: Color(0xff202741),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // personalinfoVe5 (128:5171)
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // group36389qT3 (128:5172)
                                                width: double.infinity,
                                                height: 25*fem,
                                                decoration: BoxDecoration (
                                                  borderRadius: BorderRadius.circular(4*fem),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // autogroupcnzhyZF (5vSiUf2h5Ki6MRr4yucNzh)
                                                      padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 12*fem, 3*fem),
                                                      height: double.infinity,
                                                      child: Row(
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                            // upiidJrR (128:5173)
                                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 84*fem, 1*fem),
                                                            child: Text(
                                                              'UPI ID',
                                                              style: TextStyle (
                                                               fontFamily: 'Poppins',
                                                                fontSize: 14*ffem,
                                                                fontWeight: FontWeight.w500,
                                                                height: 1.1999999455*ffem/fem,
                                                                letterSpacing: 0.28*fem,
                                                                color: Color(0xff006270),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            // DTb (128:5174)
                                                            ': ',
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 12*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.4332596461*ffem/fem,
                                                              letterSpacing: 0.12*fem,
                                                              color: Color(0xff5f5f5f),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // frame2609268MZo (128:5175)
                                                      padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
                                                      width: 212*fem,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration (
                                                        borderRadius: BorderRadius.circular(4*fem),
                                                      ),
                                                      child: Text(
                                                        'kimjones@ybl',
                                                        style: TextStyle (
                                                         fontFamily: 'Poppins',
                                                          fontSize: 14*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.1999999455*ffem/fem,
                                                          letterSpacing: 0.14*fem,
                                                          color: Color(0xff6c6c6c),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // group363943Sd (128:5177)
                                                width: double.infinity,
                                                height: 25*fem,
                                                decoration: BoxDecoration (
                                                  borderRadius: BorderRadius.circular(4*fem),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // autogroup4hlynf7 (5vSidpS6HoPBcqpxXm4HLy)
                                                      padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 12*fem, 3*fem),
                                                      height: double.infinity,
                                                      child: Row(
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                            // bankXMo (128:5178)
                                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88*fem, 1*fem),
                                                            child: Text(
                                                              'Bank',
                                                              style: TextStyle (
                                                               fontFamily: 'Poppins',
                                                                fontSize: 14*ffem,
                                                                fontWeight: FontWeight.w500,
                                                                height: 1.1999999455*ffem/fem,
                                                                letterSpacing: 0.28*fem,
                                                                color: Color(0xff006270),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            // SUm (128:5179)
                                                            ': ',
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 12*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.4332596461*ffem/fem,
                                                              letterSpacing: 0.12*fem,
                                                              color: Color(0xff5f5f5f),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // frame2609268nYd (128:5180)
                                                      padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
                                                      width: 212*fem,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration (
                                                        borderRadius: BorderRadius.circular(4*fem),
                                                      ),
                                                      child: Text(
                                                        'Indian Bank',
                                                        style: TextStyle (
                                                         fontFamily: 'Poppins',
                                                          fontSize: 14*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.1999999455*ffem/fem,
                                                          letterSpacing: 0.14*fem,
                                                          color: Color(0xff6c6c6c),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // group36395UgM (128:5182)
                                                width: double.infinity,
                                                height: 25*fem,
                                                decoration: BoxDecoration (
                                                  borderRadius: BorderRadius.circular(4*fem),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // autogroupkmmwpVK (5vSip9UDUhfqC33R1EKmmw)
                                                      padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 12*fem, 3*fem),
                                                      height: double.infinity,
                                                      child: Row(
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                            // acnoxLd (128:5183)
                                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 73*fem, 1*fem),
                                                            child: Text(
                                                              'A/c no.',
                                                              style: TextStyle (
                                                               fontFamily: 'Poppins',
                                                                fontSize: 14*ffem,
                                                                fontWeight: FontWeight.w500,
                                                                height: 1.1999999455*ffem/fem,
                                                                letterSpacing: 0.14*fem,
                                                                color: Color(0xff006270),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            // g1j (128:5184)
                                                            ': ',
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 12*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.4332596461*ffem/fem,
                                                              letterSpacing: 0.12*fem,
                                                              color: Color(0xff5f5f5f),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // frame260926825b (128:5185)
                                                      padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
                                                      width: 212*fem,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration (
                                                        borderRadius: BorderRadius.circular(4*fem),
                                                      ),
                                                      child: Text(
                                                        '5213 5123 6554 5894',
                                                        style: TextStyle (
                                                         fontFamily: 'Poppins',
                                                          fontSize: 14*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.1999999455*ffem/fem,
                                                          letterSpacing: 0.14*fem,
                                                          color: Color(0xff6f6f6f),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // group363966r9 (128:5187)
                                                width: double.infinity,
                                                height: 25*fem,
                                                decoration: BoxDecoration (
                                                  borderRadius: BorderRadius.circular(4*fem),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // autogroupi4w9e6y (5vSizeAjEXBqx49XKni4W9)
                                                      padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 12*fem, 3*fem),
                                                      height: double.infinity,
                                                      child: Row(
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                            // ifsccodeNHs (128:5188)
                                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 54*fem, 1*fem),
                                                            child: Text(
                                                              'IFSC code',
                                                              style: TextStyle (
                                                               fontFamily: 'Poppins',
                                                                fontSize: 14*ffem,
                                                                fontWeight: FontWeight.w500,
                                                                height: 1.1999999455*ffem/fem,
                                                                letterSpacing: 0.14*fem,
                                                                color: Color(0xff006270),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            // 5i5 (128:5189)
                                                            ': ',
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 12*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.4332596461*ffem/fem,
                                                              letterSpacing: 0.12*fem,
                                                              color: Color(0xff5f5f5f),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // frame26092682dK (128:5190)
                                                      padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
                                                      width: 212*fem,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration (
                                                        borderRadius: BorderRadius.circular(4*fem),
                                                      ),
                                                      child: Text(
                                                        'IDBI000H013',
                                                        style: TextStyle (
                                                         fontFamily: 'Poppins',
                                                          fontSize: 14*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.1999999455*ffem/fem,
                                                          letterSpacing: 0.14*fem,
                                                          color: Color(0xff6c6c6c),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // group36397ux1 (128:5192)
                                                width: double.infinity,
                                                height: 25*fem,
                                                decoration: BoxDecoration (
                                                  borderRadius: BorderRadius.circular(4*fem),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // autogroupbzc1r6Z (5vSjAZ3t18Q5ZBdrBYBZC1)
                                                      padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 12*fem, 3*fem),
                                                      height: double.infinity,
                                                      child: Row(
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                            // accountholderP6V (128:5193)
                                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 1*fem),
                                                            child: Text(
                                                              'Account Holder',
                                                              style: TextStyle (
                                                               fontFamily: 'Poppins',
                                                                fontSize: 14*ffem,
                                                                fontWeight: FontWeight.w500,
                                                                height: 1.1999999455*ffem/fem,
                                                                letterSpacing: 0.14*fem,
                                                                color: Color(0xff006270),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            // u4q (128:5194)
                                                            ': ',
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 12*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.4332596461*ffem/fem,
                                                              letterSpacing: 0.12*fem,
                                                              color: Color(0xff5f5f5f),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // frame2609268qjB (128:5195)
                                                      padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
                                                      width: 212*fem,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration (
                                                        borderRadius: BorderRadius.circular(4*fem),
                                                      ),
                                                      child: Text(
                                                        'Kim Jones',
                                                        style: TextStyle (
                                                         fontFamily: 'Poppins',
                                                          fontSize: 14*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.1999999455*ffem/fem,
                                                          letterSpacing: 0.14*fem,
                                                          color: Color(0xff6c6c6c),
                                                        ),
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
                                  SizedBox(
                                    height: 10*fem,
                                  ),
                                  Container(
                               
                                    width: 356*fem,
                                    // decoration: BoxDecoration (
                                    //   border: Border.all(color: Color(0xffd9d9d9)),
                                    // ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Divider(thickness: 1,color:Color(0xffd9d9d9) ,),
                                        Container(
                                          // headingZob (I128:5197;218:34576;218:34783)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                          width: 225*fem,
                                          height: 27*fem,
                                          child: Container(
                                            // autogroupr2lvWD3 (5vSjNxrsHW4nxhUxjcR2LV)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 130*fem, 1*fem),
                                            width: 95*fem,
                                            height: 26*fem,
                                            child: Text(
                                              'DOCUMENTS ',
                                              style: TextStyle (
                                               fontFamily: 'Arimo',
                                                fontSize: 14*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.6428571429*ffem/fem,
                                                letterSpacing: 0.14*fem,
                                                color: Color(0xff202741),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                        
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                              
                                                width: double.infinity,
                                                height: 25*fem,
                                                // decoration: BoxDecoration (
                                                //   borderRadius: BorderRadius.circular(4*fem),
                                                // ),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                     
                                                      padding: EdgeInsets.fromLTRB(0*fem, 3*fem, 11*fem, 4*fem),
                                                      height: double.infinity,
                                                      child: Row(
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                           
                                                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 19*fem, 0*fem),
                                                            child: Text(
                                                              'ID type',
                                                              style: TextStyle (
                                                               fontFamily: 'Poppins',
                                                                fontSize: 14*ffem,
                                                                fontWeight: FontWeight.w500,
                                                                height: 1.1999999455*ffem/fem,
                                                                letterSpacing: 0.14*fem,
                                                                color: Color(0xff006270),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            // 7s3 (I128:5197;218:34580)
                                                            ':',
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 12*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.4332596461*ffem/fem,
                                                              letterSpacing: 0.12*fem,
                                                              color: Color(0xff5f5f5f),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // mobilesLR (I128:5197;218:34581)
                                                      padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
                                                      width: 272*fem,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration (
                                                        borderRadius: BorderRadius.circular(4*fem),
                                                      ),
                                                      child: Text(
                                                        'Aadhar',
                                                        style: TextStyle (
                                                         fontFamily: 'Poppins',
                                                          fontSize: 14*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.1999999455*ffem/fem,
                                                          letterSpacing: 0.14*fem,
                                                          color: Color(0xff6c6c6c),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // idnoxcm (I128:5197;218:34584)
                                                width: double.infinity,
                                                height: 25*fem,
                                                decoration: BoxDecoration (
                                                  borderRadius: BorderRadius.circular(4*fem),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // autogroupsxgz5hP (5vSjrcjTVrKRwmKHEFsXgZ)
                                                      padding: EdgeInsets.fromLTRB(0*fem, 3*fem, 11*fem, 4*fem),
                                                      height: double.infinity,
                                                      child: Row(
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                            // idnoDHo (I128:5197;218:34585)
                                                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 29*fem, 0*fem),
                                                            child: Text(
                                                              'ID no.',
                                                              style: TextStyle (
                                                               fontFamily: 'Poppins',
                                                                fontSize: 14*ffem,
                                                                fontWeight: FontWeight.w500,
                                                                height: 1.1999999455*ffem/fem,
                                                                letterSpacing: 0.14*fem,
                                                                color: Color(0xff006270),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            // 7e5 (I128:5197;218:34586)
                                                            ':',
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 12*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.4332596461*ffem/fem,
                                                              letterSpacing: 0.12*fem,
                                                              color: Color(0xff5f5f5f),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // emailrbf (I128:5197;218:34587)
                                                      padding: EdgeInsets.fromLTRB(8*fem, 4*fem, 8*fem, 4*fem),
                                                      width: 272*fem,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration (
                                                        borderRadius: BorderRadius.circular(4*fem),
                                                      ),
                                                      child: Text(
                                                        '9658 4521 6563 8954',
                                                        style: TextStyle (
                                                         fontFamily: 'Poppins',
                                                          fontSize: 14*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.1999999455*ffem/fem,
                                                          letterSpacing: 0.14*fem,
                                                          color: Color(0xff6c6c6c),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // otherdocs9am (I128:5197;218:34589)
                                                width: double.infinity,
                                                height: 34*fem,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      // 6W1 (I128:5197;218:34590)
                                                      left: 129.9997558594*fem,
                                                      top: 0*fem,
                                                      child: Align(
                                                        child: SizedBox(
                                                          width: 4*fem,
                                                          height: 18*fem,
                                                          child: Text(
                                                            ':',
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 12*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.4332596461*ffem/fem,
                                                              letterSpacing: 0.12*fem,
                                                              color: Color(0xff5f5f5f),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      // otherdocumentsbSm (I128:5197;218:34591)
                                                      left: 0*fem,
                                                      top: 1*fem,
                                                      child: Container(
                                                        width: 356*fem,
                                                        height: 63*fem,
                                                        child: Text(
                                                          'Other Documents  ',
                                                          style: TextStyle (
                                                           fontFamily: 'Poppins',
                                                            fontSize: 14*ffem,
                                                            fontWeight: FontWeight.w500,
                                                            height: 1.1999999455*ffem/fem,
                                                            letterSpacing: 0.14*fem,
                                                            color: Color(0xff006270),
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // paymentshistoryV2M (128:5198)
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // heading2ny (I128:5199;218:34783)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                    width: 225*fem,
                                    height: 27*fem,
                                    child: Container(
                                      // autogroupj4zkxwX (5vSnZTPnqvmrBAH8Zpj4ZK)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 79*fem, 1*fem),
                                      width: 146*fem,
                                      height: 26*fem,
                                      child: Text(
                                        'PAYMENTS HISTORY ',
                                        style: TextStyle (
                                         fontFamily: 'Poppins',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.6428571429*ffem/fem,
                                          letterSpacing: 0.14*fem,
                                          color: Color(0xff202741),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // paymentsqkR (128:5200)
                                    width: double.infinity,
                                    // decoration: BoxDecoration (
                                    //   border: Border.all(color: Color(0xffd9d9d9)),
                                    // ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // appointhistoryyrd (I128:5200;218:34717)
                                          margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 11*fem),
                                          width: double.infinity,
                                          height: 72*fem,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // autogroupuud3JP7 (5vSnrs4T9qMXBSqpWYUUd3)
                                                padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 16*fem, 2*fem),
                                                height: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // srnoRTj (I128:5200;218:34718)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                                      height: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Text(
                                                            // noZ49 (I128:5200;218:34719)
                                                            'No.',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 12*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.5*ffem/fem,
                                                              letterSpacing: 0.24*fem,
                                                              color: Color(0xff5f5f5f),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 8*fem,
                                                          ),
                                                          Text(
                                                            // s4q (I128:5200;218:34720)
                                                            ' 1',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 14*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.1999999455*ffem/fem,
                                                              letterSpacing: 0.14*fem,
                                                              color: Color(0xff009394),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 8*fem,
                                                          ),
                                                          Text(
                                                            // oDP (I128:5200;218:34721)
                                                            ' 2',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 14*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.1999999455*ffem/fem,
                                                              letterSpacing: 0.14*fem,
                                                              color: Color(0xff009394),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // datew4h (I128:5200;218:34722)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10.5*fem, 0*fem),
                                                      height: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                            // datesDF (I128:5200;218:34723)
                                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                                            child: Text(
                                                              'Date',
                                                              textAlign: TextAlign.center,
                                                              style: TextStyle (
                                                               fontFamily: 'Poppins',
                                                                fontSize: 12*ffem,
                                                                fontWeight: FontWeight.w400,
                                                                height: 1.5*ffem/fem,
                                                                letterSpacing: 0.24*fem,
                                                                color: Color(0xff5f5f5f),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 8*fem,
                                                          ),
                                                          Container(
                                                            // y1P (I128:5200;218:34724)
                                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                                            child: Text(
                                                              '01/07/23',
                                                              textAlign: TextAlign.center,
                                                              style: TextStyle (
                                                               fontFamily: 'Poppins',
                                                                fontSize: 14*ffem,
                                                                fontWeight: FontWeight.w400,
                                                                height: 1.1999999455*ffem/fem,
                                                                letterSpacing: 0.14*fem,
                                                                color: Color(0xff009394),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 8*fem,
                                                          ),
                                                          Text(
                                                            // 4Yd (I128:5200;218:34725)
                                                            '01/06/23',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 14*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.1999999455*ffem/fem,
                                                              letterSpacing: 0.14*fem,
                                                              color: Color(0xff009394),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // dayc4M (I128:5200;218:34726)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23*fem, 0*fem),
                                                      height: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Text(
                                                            // day9KB (I128:5200;218:34727)
                                                            'Day',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 12*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.5*ffem/fem,
                                                              letterSpacing: 0.24*fem,
                                                              color: Color(0xff5f5f5f),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 8*fem,
                                                          ),
                                                          Text(
                                                            // satfoK (I128:5200;218:34728)
                                                            'Sat.',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 14*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.1999999455*ffem/fem,
                                                              letterSpacing: 0.14*fem,
                                                              color: Color(0xff009394),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 8*fem,
                                                          ),
                                                          Text(
                                                            // monCHT (I128:5200;218:34729)
                                                            'Mon.',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 14*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.1999999455*ffem/fem,
                                                              letterSpacing: 0.14*fem,
                                                              color: Color(0xff009394),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // datej2V (I128:5200;218:34730)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 48.5*fem, 0*fem),
                                                      height: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Text(
                                                            // mode4aZ (I128:5200;218:34731)
                                                            'Mode',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 12*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.5*ffem/fem,
                                                              letterSpacing: 0.24*fem,
                                                              color: Color(0xff5f5f5f),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 8*fem,
                                                          ),
                                                          Text(
                                                            // upiPcq (I128:5200;218:34732)
                                                            'UPI',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 14*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.1999999455*ffem/fem,
                                                              letterSpacing: 0.14*fem,
                                                              color: Color(0xff009394),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 8*fem,
                                                          ),
                                                          Text(
                                                            // bankiv1 (I128:5200;218:34733)
                                                            'Bank',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 14*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.1999999455*ffem/fem,
                                                              letterSpacing: 0.14*fem,
                                                              color: Color(0xff009394),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // doctorFf3 (I128:5200;218:34734)
                                                      width: 58*fem,
                                                      height: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.end,
                                                        children: [
                                                          Container(
                                                            // amountQH3 (I128:5200;218:34735)
                                                            width: double.infinity,
                                                            child: Text(
                                                              'Amount',
                                                              textAlign: TextAlign.center,
                                                              style: TextStyle (
                                                               fontFamily: 'Poppins',
                                                                fontSize: 12*ffem,
                                                                fontWeight: FontWeight.w400,
                                                                height: 1.5*ffem/fem,
                                                                letterSpacing: 0.24*fem,
                                                                color: Color(0xff5f5f5f),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 8*fem,
                                                          ),
                                                          Text(
                                                            // X6m (I128:5200;218:34736)
                                                            '₹ 2000',
                                                            textAlign: TextAlign.right,
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 14*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.1999999455*ffem/fem,
                                                              letterSpacing: 0.14*fem,
                                                              color: Color(0xff009394),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 8*fem,
                                                          ),
                                                          Text(
                                                            // 3au (I128:5200;218:34737)
                                                            '₹ 2000',
                                                            textAlign: TextAlign.right,
                                                            style: TextStyle (
                                                             fontFamily: 'Poppins',
                                                              fontSize: 14*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.1999999455*ffem/fem,
                                                              letterSpacing: 0.14*fem,
                                                              color: Color(0xff009394),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // consultationyzM (I128:5200;218:34738)
                                                width: 114*fem,
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // receiptXW5 (I128:5200;218:34739)
                                                      margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 0*fem, 0*fem),
                                                      child: Text(
                                                        'Receipt',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle (
                                                         fontFamily: 'Poppins',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.5*ffem/fem,
                                                          letterSpacing: 0.24*fem,
                                                          color: Color(0xff5f5f5f),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 8*fem,
                                                    ),
                                                    Container(
                                                      // consultationEfP (I128:5200;218:34740)
                                                      width: double.infinity,
                                                      height: 19*fem,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            // highfeverreceipt01july23pdfZhf (I128:5200;218:34741)
                                                            left: 0*fem,
                                                            top: 0*fem,
                                                            child: Align(
                                                              child: SizedBox(
                                                                width: 100*fem,
                                                                height: 17*fem,
                                                                child: Text(
                                                                  'Salary_aug23',
                                                                  textAlign: TextAlign.center,
                                                                  style: TextStyle (
                                                                   fontFamily: 'Poppins',
                                                                    fontSize: 14*ffem,
                                                                    fontWeight: FontWeight.w400,
                                                                    height: 1.1999999455*ffem/fem,
                                                                    letterSpacing: 0.14*fem,
                                                                    color: Color(0xff009394),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            // mdiprintpreviewrAy (I128:5200;218:34742)
                                                            left: 96.8330078125*fem,
                                                            top: 3.4165039062*fem,
                                                            child: Align(
                                                              child: SizedBox(
                                                                width: 11.33*fem,
                                                                height: 14.17*fem,
                                                                child: Image.asset(
                                                                  'assets/images/mdi-print-preview-N2h.png',
                                                                  width: 11.33*fem,
                                                                  height: 14.17*fem,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 8*fem,
                                                    ),
                                                    Container(
                                                      // consultationLbw (I128:5200;218:34744)
                                                      margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
                                                      width: 112*fem,
                                                      height: 19*fem,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            // salineconsultation01july23pdfG (I128:5200;218:34745)
                                                            left: 0*fem,
                                                            top: 0*fem,
                                                            child: Align(
                                                              child: SizedBox(
                                                                width: 96*fem,
                                                                height: 17*fem,
                                                                child: Text(
                                                                  'Salary_july23',
                                                                  textAlign: TextAlign.center,
                                                                  style: TextStyle (
                                                                   fontFamily: 'Poppins',
                                                                    fontSize: 14*ffem,
                                                                    fontWeight: FontWeight.w400,
                                                                    height: 1.1999999455*ffem/fem,
                                                                    letterSpacing: 0.14*fem,
                                                                    color: Color(0xff009394),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            // mdiprintpreviewA5B (I128:5200;218:34746)
                                                            left: 94.8330078125*fem,
                                                            top: 3.4165039062*fem,
                                                            child: Align(
                                                              child: SizedBox(
                                                                width: 11.33*fem,
                                                                height: 14.17*fem,
                                                                child: Image.asset(
                                                                  'assets/images/mdi-print-preview-N2h.png',
                                                                  width: 11.33*fem,
                                                                  height: 14.17*fem,
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
                                            ],
                                          ),
                                        ),
                                        TextButton(
                                          // rectangle1313GP7 (I128:5200;218:34748)
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: Container(
                                            width: 289*fem,
                                            height: 8*fem,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(2*fem),
                                              color: Color(0xffd9d9d9),
                                            ),
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
              ],
            ),
          ),
              ),
      ),
    );
  }
}