import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/time.dart';
import '../../../../../customization/std_colors.dart';

final periodsX = Get.width > Get.height ? Get.width : Get.height;
final periodX = periodsX / 3;
final point = periodsX / msInHour;
const rowY = 48.0;
const headerY = 52.0;

const duration = Duration(milliseconds: 500);
const side = BorderSide(color: StdColors.border24);
const style = TextStyle(
  color: Colors.white,
  fontFamily: 'Proxima Nova',
  fontSize: 12,
  fontWeight: FontWeight.w600,
);
final styleG = style.apply(color: Colors.white.withOpacity(.7));
