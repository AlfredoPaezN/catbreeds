import 'package:catbreeds/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BreedSearchBar extends StatelessWidget implements PreferredSizeWidget {
  const BreedSearchBar({
    super.key,
    this.controller,
    this.onChanged,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.enabled,
    this.autofocus,
    this.readOnly = false,
    this.leftPadding,
    this.topPadding,
    this.rightPadding,
    this.bottomPadding,
  });

  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? enabled;
  final bool? autofocus;
  final bool readOnly;
  final double? leftPadding;
  final double? topPadding;
  final double? rightPadding;
  final double? bottomPadding;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Container(
      padding: EdgeInsets.fromLTRB(
        leftPadding ?? 0,
        topPadding ?? 0,
        rightPadding ?? 0,
        bottomPadding ?? 0,
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.text,
        style: TextStyle(
          fontSize: 14.sp,
          color: const Color(CatBreedsColors.primary),
          overflow: TextOverflow.ellipsis,
        ),
        onChanged: onChanged,
        enabled: enabled,
        autofocus: autofocus ?? false,
        cursorColor: const Color(CatBreedsColors.primary),
        readOnly: readOnly,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(CatBreedsColors.primary).withOpacity(.2),
          isDense: true,
          // contentPadding: EdgeInsets.all(16.r),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 13.sp,
            color: const Color(CatBreedsColors.primary),
            overflow: TextOverflow.ellipsis,
          ),
          prefixIcon: prefixIcon ??
              SizedBox(
                width: orientation == Orientation.portrait ? 32.w : 16.w,
                child: const Icon(
                  Icons.search,
                  size: 18,
                  color: Color(CatBreedsColors.primary),
                ),
              ),
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.r),
            ),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.0.h);
}
