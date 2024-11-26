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

Future<String> calculateSystolicBp() async {
  // Generate a random value between 90.0 and 140.0
  double systolicBp = 90.0 + (Random().nextDouble() * (140.0 - 90.0));

  // Update the systolicBp in FFAppState
  //FFAppState().systolicBp = systolicBp.toStringAsFixed(1);

  // Return a success message (optional)
  return "Systolic BP updated to: ${systolicBp.toStringAsFixed(1)}";
}
