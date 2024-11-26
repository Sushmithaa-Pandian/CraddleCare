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

Future<String> calculateDiastolicBp() async {
  // Generate a random value between 90.0 and 140.0
  double diastolicBp = 60.0 + (Random().nextDouble() * (90.0 - 60.0));

  // Update the systolicBp in FFAppState
  FFAppState().diastolicBp = diastolicBp.toStringAsFixed(1);

  // Return a success message (optional)
  return "Diastolic BP updated to: ${diastolicBp.toStringAsFixed(1)}";
}
