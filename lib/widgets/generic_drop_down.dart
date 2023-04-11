import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/widgets/generic_validator.dart';

class GenericDropDown extends StatelessWidget {
  FocusNode? focusNode;
  String? hintText;
  Widget? prefix;
  Widget? icon;
  List<String>? items;
  Function(String)? onChanged;
  GenericDropDown({
    super.key,
    this.focusNode,
    this.hintText,
    this.prefix,
    this.icon,
    this.items,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: DropdownButtonFormField(
        focusNode: focusNode,
        icon: icon,
        style: const TextStyle(
          color: AppColors.blackShade300,
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          hintText: hintText ?? "",
          hintStyle: kBodyregular16,
          border: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blackShade200,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blackShade200,
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blackShade200,
            ),
          ),
          prefixIcon: prefix,
          isDense: true,
        ),
        items: items?.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              overflow: TextOverflow.ellipsis,
            ),
          );
        }).toList(),
        onChanged: (value) {
          onChanged!(value.toString());
        },
        validator: requiredValidator,
      ),
    );
  }
}
