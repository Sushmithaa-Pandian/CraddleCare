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

Future<String> calculateBloodGlucose() async {
  // Generate a random value between 70.0 and 150.0
  double bloodGlucose = 70.0 + (Random().nextDouble() * (150.0 - 70.0));

  // Update the bloodGlucose in FFAppState
  FFAppState().bloodGlucose = bloodGlucose.toStringAsFixed(1);

  // Return a success message (optional)
  return "Blood Glucose updated to: ${bloodGlucose.toStringAsFixed(1)}";
}
