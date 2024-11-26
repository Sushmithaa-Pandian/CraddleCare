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

Future<String> calculateHeartRate() async {
  // Generate a random value between 60.0 and 100.0
  double heartRate = 60.0 + (Random().nextDouble() * (100.0 - 60.0));

  // Update the heartRate in FFAppState
  FFAppState().heartRate = heartRate.toStringAsFixed(1);

  // Return a success message (optional)
  return "Heart Rate updated to: ${heartRate.toStringAsFixed(1)}";
}
