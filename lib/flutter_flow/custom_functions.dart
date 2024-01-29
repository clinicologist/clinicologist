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

int? totalfee(
  int? registrationfee,
  int? platformfee,
  int? discount,
) {
  // (registration fee plus platform fee)minus discount is equal to total
  if (registrationfee == null || platformfee == null || discount == null) {
    return null;
  }
  return (registrationfee + platformfee) - discount;
}
