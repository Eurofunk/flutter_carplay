import 'package:uuid/uuid.dart';

import '../../flutter_carplay.dart';

/// A template object that displays map.
class CPMapTemplate {
  /// Unique id of the object.
  final String _elementId = const Uuid().v4();

  String title;
  final List<CPMapButton> mapButtons;
  final List<CPBarButton> leadingNavigationBarButtons;
  final List<CPBarButton> trailingNavigationBarButtons;
  bool automaticallyHidesNavigationBar;
  bool hidesButtonsWithNavigationBar;

  /// Creates [CPMapTemplate]
  CPMapTemplate({
    this.title = '',
    this.mapButtons = const [],
    this.leadingNavigationBarButtons = const [],
    this.trailingNavigationBarButtons = const [],
    this.automaticallyHidesNavigationBar = false,
    this.hidesButtonsWithNavigationBar = false,
  });

  Map<String, dynamic> toJson() => {
        '_elementId': _elementId,
        'title': title,
        'mapButtons': mapButtons.map((e) => e.toJson()).toList(),
        'leadingNavigationBarButtons':
            leadingNavigationBarButtons.map((e) => e.toJson()).toList(),
        'trailingNavigationBarButtons':
            trailingNavigationBarButtons.map((e) => e.toJson()).toList(),
        'automaticallyHidesNavigationBar': automaticallyHidesNavigationBar,
        'hidesButtonsWithNavigationBar': hidesButtonsWithNavigationBar,
      };

  void updateTitle(String value) {
    title = value;
  }

  void updateAutomaticallyHidesNavigationBar({required bool value}) {
    automaticallyHidesNavigationBar = value;
  }

  void updateHidesButtonsWithNavigationBar({required bool value}) {
    hidesButtonsWithNavigationBar = value;
  }

  void updateMapButtons(List<CPMapButton> buttons) {
    mapButtons
      ..clear()
      ..addAll(buttons);
  }

  void updateLeadingNavigationBarButtons(List<CPBarButton> buttons) {
    leadingNavigationBarButtons
      ..clear()
      ..addAll(buttons);
  }

  void updateTrailingNavigationBarButtons(List<CPBarButton> buttons) {
    leadingNavigationBarButtons
      ..clear()
      ..addAll(buttons);
  }

  String get uniqueId {
    return _elementId;
  }
}