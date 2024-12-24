import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/constant/constant.dart';
import '../constant/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? initialValue;
  final String? hintText;
  final String? errorText;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool readOnly;
  final bool isPassword;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final TextStyle? labelStyle;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final TextInputAction inputAction;
  final TextInputType inputType;
  final Color fillColor;
  final bool filled;
  final int? maxLines;
  final int? minLines;
  final OutlineInputBorder? enabledBorder;
  final OutlineInputBorder? focusedBorder;
  final OutlineInputBorder? errorBorder;
  final OutlineInputBorder? focusedErrorBorder;
  final double? height;
  const CustomTextFormField({
    Key? key,
    this.height,
    this.controller,
    this.focusNode,
    this.initialValue,
    this.hintText,
    this.errorText,
    this.labelText,
    this.labelStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.readOnly = false,
    this.isPassword = false,
    this.validator,
    this.onChanged,
    this.onTap,
    this.textStyle,
    this.hintStyle,
    this.inputAction = TextInputAction.done,
    this.inputType = TextInputType.text,
    this.fillColor = colorPrimary,
    this.filled = true,
    this.maxLines,
    this.minLines,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.focusedErrorBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? deviceHeight * 0.08,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        obscureText: isPassword,
        style: textStyle ?? GoogleFonts.poppins(color: colorWhite),
        keyboardType: inputType,
        textInputAction: inputAction,
        initialValue: initialValue,
        readOnly: readOnly,
        maxLines: isPassword ? 1 : maxLines,
        minLines: minLines,
        cursorColor: colorWhite,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelStyle: labelStyle ??
              GoogleFonts.poppins(
                  color: colorWhite, fontSize: deviceHeight * 0.02),
          hintStyle: hintStyle,
          fillColor: fillColor,
          filled: filled,
          errorText: errorText,
          border: enabledBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(deviceAverageSize * 0.034),
                borderSide:
                    const BorderSide(color: colorMainLightGray, width: 1),
              ),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(deviceAverageSize * 0.034),
                borderSide:
                    const BorderSide(color: colorMainLightGray, width: 1),
              ),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(deviceAverageSize * 0.034),
                borderSide: const BorderSide(color: colorWhite, width: 2),
              ),
          errorBorder: errorBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(deviceAverageSize * 0.034),
                borderSide: const BorderSide(color: colorRed, width: 2),
              ),
          focusedErrorBorder: focusedErrorBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(deviceAverageSize * 0.034),
                borderSide: const BorderSide(color: colorRed, width: 2),
              ),
        ),
        validator: validator,
        onChanged: onChanged,
        onTap: onTap,
      ),
    );
  }
}
