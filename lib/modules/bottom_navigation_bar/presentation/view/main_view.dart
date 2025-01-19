

// //1-MainView
// class MainView extends StatefulWidget {
//   const MainView({super.key});

//   //routeName
//   static const String routeName = 'MainView';

//   @override
//   State<MainView> createState() => _MainViewState();
// }

// class _MainViewState extends State<MainView> {
//   int currentViewIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: CustomBottomNavigationBar(
//         onItemTapped: (index) {
//           currentViewIndex = index;

//           setState(() {});
//         },
//       ),
//       body: MainViewBody(
//         currentViewIndex: currentViewIndex,
//       ),
//     );
//   }
// }
