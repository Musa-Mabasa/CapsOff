import 'package:flutter/material.dart';
import 'package:stem_wiz/src/authentication/log_in.dart';
import 'package:stem_wiz/src/home_page/home_page.dart';
import 'src/concept_selection/concept_selection.dart';
// import 'src/app.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';

void main() async {
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(const MaterialApp(home: LoginPage()));
}
