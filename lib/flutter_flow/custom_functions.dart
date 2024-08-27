import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

String getReadableDate(String var1) {
// Parse the input date string to a DateTime object
  DateTime date = DateTime.parse(var1);

  // Define the desired format
  DateFormat formatter = DateFormat('EEEE, dd MMM yyyy');

  // Format the date
  String formattedDate = formatter.format(date);

  return formattedDate;
}
