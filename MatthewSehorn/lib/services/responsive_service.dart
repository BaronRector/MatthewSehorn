import 'package:flutter/Material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class IsDesktopNotifier extends ChangeNotifier {
  bool _isDesktop = false;
  bool get value => _isDesktop;

  void calculateDeskTop(BuildContext context) {
    _isDesktop = MediaQuery.of(context).size.width >= 960;
    notifyListeners();
  }
}

final isDesktopProvider = ChangeNotifierProvider((ref) => IsDesktopNotifier());

class PreviousPageNotifier extends ChangeNotifier {
  Widget _previousPage;
  Widget get value => _previousPage;

  void setPreviousPage(Widget page) {
    _previousPage = page;
    print(_previousPage);
    notifyListeners();
  }
}

final previousPageProvider = ChangeNotifierProvider((ref) => PreviousPageNotifier());
