import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

LatLng getuserslocation(LatLng userlocation) {
  // Add your function code here!
  if (userlocation == null ||
      (userlocation.latitude == 0 && userlocation.longitude == 0)) {
    return LatLng(13.031989529897691, 80.17965927044999);
  }
  return userlocation;
}
