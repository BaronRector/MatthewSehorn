// import 'dart:async';
// import 'dart:html';

// import 'package:flutter/Material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class FadeTextSwitcherNotifier extends ChangeNotifier {
//   Timer _timer;
//   List<String> _text = ['App Developer', 'Web Developer', 'Freelancer'];

//   void startTimer() {
//     _timer = Timer.periodic(Duration(seconds: 5), (Timer t) => checkForNewSharedLists());

//     void fadeTextSwitcher() {
//       _text.forEach((element) {});
//     }
//   }

  // FadeTextSwitcher _fadeTextSwitcher = new FadeTextSwitcher();
  // FadeTextSwitcher get value => _fadeTextSwitcher;

  // void calculateDeskTop(BuildContext context) {
  //   _isDesktop = MediaQuery.of(context).size.width >= 960;
  //   notifyListeners();
  // }
// }

// final isDesktopProvider = ChangeNotifierProvider((ref) => IsDesktopNotifier());

// class FadeTextSwitcher extends AnimatedOpacity {
//   const FadeTextSwitcher({Key key, @required Duration duration, @required double opacity})
//       : super(
//           key: key,
//           duration: duration,
//           opacity: opacity,
//         );

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: child,
//     );
//   }
// }
