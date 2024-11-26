// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math'; // Import math for Random

Future<String> calculateBodyTemp() async {
  // Generate a random value between 97.0 and 99.5
  double bodyTemp = 97.0 + (Random().nextDouble() * (99.5 - 97.0));

  // Update the bodyTemp in FFAppState
  FFAppState().bodyTemp = bodyTemp.toStringAsFixed(1);

  // Return a success message (optional)
  return "Body Temperature updated to: ${bodyTemp.toStringAsFixed(1)}";
}
