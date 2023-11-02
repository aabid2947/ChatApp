import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String generateChatID(
  String user1,
  String user2,
) {
  String chatID = user1 + user2;
  List<String> charList = chatID.split('');
  charList.sort();
  String sortedString = charList.join('');
  return sortedString;
}
