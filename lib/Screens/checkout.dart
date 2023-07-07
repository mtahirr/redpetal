// import 'package:flutter/material.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

// import '../widgets/stepProgress.dart';

// class Checkout extends StatefulWidget {
//   @override
//   _CheckoutState createState() => _CheckoutState();
// }

// class _CheckoutState extends State<Checkout> {
//   final _stepsText = ["About you", "Some more..", "Your credit card details"];

//   final _stepCircleRadius = 10.0;

//   final _stepProgressViewHeight = 150.0;

//   Color _activeColor = Colors.grey;

//   Color _inactiveColor = Colors.white;

//   TextStyle _headerStyle =
//       TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);

//   TextStyle _stepStyle = TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold);

//   Size _safeAreaSize;

//   int _curPage = 1;

//   StepProgressView _getStepProgress() {
//     return StepProgressView(
//       _stepsText,
//       _curPage,
//       _stepProgressViewHeight,
//       _safeAreaSize.width,
//       _stepCircleRadius,
//       _activeColor,
//       _inactiveColor,
//       _headerStyle,
//       _stepStyle,
//       decoration: BoxDecoration(color: Colors.white),
//       padding: EdgeInsets.only(
//         top: 48.0,
//         right: 24.0,
//       ),
//     );
//   }

// //Build method of Main Page
//   Widget build(BuildContext context) {
//     var mediaQD = MediaQuery.of(context);
//     _safeAreaSize = mediaQD.size;
//     return Scaffold(
//         body: Column(
//       children: <Widget>[
//         Container(
//             color: Colors.grey[600],
//             padding: const EdgeInsets.all(10),
//             child: StepProgressIndicator(
//                 totalSteps: 4,
//                 currentStep: 1,
//                 size: 20,
//                 padding: 0,
//                 roundedEdges: Radius.circular(100))),
//         Expanded(
//           child: PageView(
//             onPageChanged: (i) {
//               setState(() {
//                 _curPage = i + 1;
//               });
//             },
//             children: <Widget>[
//               Container(
//                 color: Colors.blue,
//               ),
//               Container(
//                 color: Colors.amber,
//               ),
//               Container(
//                 color: Colors.cyan,
//               ),
//               Container(
//                 color: Colors.amber,
//               ),
//             ],
//           ),
//         )
//       ],
//     ));
//   }
// }
