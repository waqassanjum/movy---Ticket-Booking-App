import 'package:flutter/material.dart';
import 'package:movie_ticket_booking_app/utils/constants/colors.dart';

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: TColors.darkGrey.withAlpha(25),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );
  static final horizontalProductShadow = BoxShadow(
    color: TColors.darkGrey.withAlpha(25),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(2, 0),
  );
}
