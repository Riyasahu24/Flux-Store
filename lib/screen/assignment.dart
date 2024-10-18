// import 'package:flutter/material.dart';

// class DashBoardScreen extends StatelessWidget {
//   const DashBoardScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         leading: const Icon(Icons.menu),
//         forceMaterialTransparency: true,
//         title: Text(
//           'AII ON GOLD',
//           style: TextStyle(color: Colors.yellow.shade700),
//         ),
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 20),
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue.shade400),
//               onPressed: () {},
//               child: Text(
//                 'Deposit',
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//           ElevatedButton(
//             style:
//                 ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade400),
//             onPressed: () {
//               showDialog(
//                 context: context,
//                 builder: (context) => WithDrawDialog(),
//               );
//             },
//             child: Text(
//               'Withdraw',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//           ElevatedButton(
//             style:
//                 ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade400),
//             onPressed: () {},
//             child: Text(
//               'Invest',
//               style: TextStyle(color: Colors.white),
//             ),
//           )
//         ],
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               margin: EdgeInsets.symmetric(vertical: 10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Riya Sahu',
//                     style: TextStyle(
//                       fontSize: 20,
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Account Balance',
//                         style: TextStyle(
//                           fontSize: 16,
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.currency_rupee,
//                             size: 20,
//                           ),
//                           Text(
//                             '200000',
//                             style: TextStyle(
//                               fontSize: 16,
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Gold Balance',
//                         style: TextStyle(
//                           fontSize: 16,
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.currency_rupee,
//                             size: 20,
//                           ),
//                           Text(
//                             '200000',
//                             style: TextStyle(
//                               fontSize: 16,
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(vertical: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Transaction Details',
//                     style: TextStyle(
//                       fontSize: 20,
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       'View all',
//                       style: TextStyle(
//                         color: Colors.blue.shade400,
//                         decoration: TextDecoration.underline,
//                         decorationColor: Colors.blue.shade400,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               height: MediaQuery.of(context).size.height * .3,
//               child: ListView.builder(
//                 itemCount: 3,
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 itemBuilder: (context, index) => Container(
//                   padding: EdgeInsets.all(20),
//                   margin: EdgeInsets.symmetric(vertical: 10),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       border: Border.all(color: Colors.white)),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Deposit',
//                         style: TextStyle(
//                             color: Colors.yellow.shade700, fontSize: 16),
//                       ),
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.currency_rupee,
//                             size: 20,
//                           ),
//                           Text(
//                             '200000',
//                             style: TextStyle(
//                               fontSize: 16,
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Text(
//               'FAQs',
//               style: TextStyle(
//                 fontSize: 20,
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Container(
//               height: MediaQuery.of(context).size.height * .35,
//               child: ListView.builder(
//                 itemCount: 3,
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 itemBuilder: (context, index) => Container(
//                     margin: EdgeInsets.symmetric(vertical: 10),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(8),
//                         border: Border.all(color: Colors.white)),
//                     child: ListTile(
//                       horizontalTitleGap: 0,
//                       titleAlignment: ListTileTitleAlignment.center,
//                       leading: Text(
//                         '$index',
//                         style: TextStyle(fontSize: 16),
//                       ),
//                       title: Text('Can we return my assets?'),
//                       subtitle: Text('No. You can not return the assets'),
//                     )),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Digital Gold',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//                 ),
//                 Icon(
//                   Icons.arrow_forward_ios,
//                   color: Colors.blue.shade400,
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 100,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class WithDrawDialog extends StatelessWidget {
//   const WithDrawDialog({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: Colors.white,
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Container(
//             padding: EdgeInsets.all(10),
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: Colors.blue.shade400,
//               borderRadius: BorderRadius.circular(8),
//             ),
//             child: Text(
//               'Regular',
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//             ),
//           ),
//           SizedBox(
//             height: 6,
//           ),
//           Container(
//             padding: EdgeInsets.all(10),
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: Colors.blue.shade400,
//               borderRadius: BorderRadius.circular(8),
//             ),
//             child: Text(
//               'Recurring',
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

