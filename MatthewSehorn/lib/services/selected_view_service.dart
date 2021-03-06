import 'package:flutter/Material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matthew_sehorn/constants/strings.dart';

class SelectedViewNotifier extends ChangeNotifier {
  String _selectedView = Strings.home;
  String get value => _selectedView;

  void setSelectedView(String selectedView) {
    _selectedView = selectedView;
    notifyListeners();
  }
}

final selectedViewProvider = ChangeNotifierProvider((ref) => SelectedViewNotifier());
