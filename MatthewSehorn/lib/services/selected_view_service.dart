import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matthew_sehorn/constants/strings.dart';

final selectedViewProvider = StateNotifierProvider<SelectedViewNotifier>((ref) {
  return SelectedViewNotifier(ref.read, Strings.home);
});

class SelectedViewNotifier extends StateNotifier<String> {
  SelectedViewNotifier(this.read, String state) : super(state ?? Strings.home);

  final Reader read;

  void setSelectedView(String selectedView) {
    state = selectedView;
  }
}
