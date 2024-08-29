// import 'package:flutter/material.dart';
// //import 'package:project/Screens/CoinsPage.dart';
// import 'package:project/Screens/HomeScreen.dart';
// import 'package:project/Screens/ProfilePage.dart';
// // import 'package:project/Screens/TransactionPage.dart';
// // import 'package:project/Screens/Wallet.dart';

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   @override
//   int _selectedIndex = 0;

//   // List of widgets to display for each tab
//   static List<Widget> _widgetOptions = <Widget>[
//     HomeScreen(),
//     // CoinsPage(),
//     // TransactionPage(),
//     // Wallet(),
//     ProfilePage()
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //backgroundColor: Colors.black,
//       body: _widgetOptions.elementAt(_selectedIndex),
//       bottomNavigationBar: BottomNavigationBar(
//         items: <BottomNavigationBarItem>[
//           const BottomNavigationBarItem(
//             backgroundColor: Colors.black,
//             icon: Icon(Icons.home_outlined),
//             label: 'Home',
//           ),
//           const BottomNavigationBarItem(
//             backgroundColor: Colors.black,
//             icon: Icon(Icons.monetization_on_outlined),
//             label: 'Coins',
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Colors.black,
//             icon: Container(
//               width: 50.0, // Adjust the size of the circle
//               height: 50.0, // Adjust the size of the circle
//               decoration: const BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.blue,
//               ),
//               child: const Icon(
//                 Icons.swap_horiz,
//                 size: 30.0, // Adjust the size of the icon
//                 color: Colors.white,
//               ),
//             ),
//             label: 'Transactions',
//           ),
//           const BottomNavigationBarItem(
//             backgroundColor: Colors.black,
//             icon: Icon(Icons.account_balance_wallet_outlined),
//             label: 'Wallet',
//           ),
//           const BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'You',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
