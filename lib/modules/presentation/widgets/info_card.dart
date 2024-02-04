import 'package:catbreeds/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    required this.description,
    super.key,
    this.trailing,
    this.data,
    this.color,
    this.height,
  });

  final Widget? trailing;
  final Widget description;
  final Widget? data;
  final Color? color;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      width: 130.w,
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(CatBreedsColors.secondary),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          data ?? Container(),
          description,
        ],
      ),
    );
  }
}
