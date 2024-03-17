import 'package:flutter/material.dart';
import 'package:task_jadara/constants.dart';

// ignore: must_be_immutable
class CustomTextFiield extends StatelessWidget {
  CustomTextFiield(
      {super.key,
      this.prefixIcon,
      this.color,
      this.bordercolor,
      this.backgroundcolor,
      this.obscureText = false,
      this.onChanged,
      this.hintText});
  Function(String)? onChanged;
  String? hintText;
  Widget? prefixIcon;
  bool? obscureText;
  Color? color;
  Color? bordercolor;
  Color? backgroundcolor;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 24),
        child: Container(
          height: 56,
          width: 368,
          decoration: BoxDecoration(
              color: const Color(0xff166070),
              borderRadius: BorderRadius.circular(5)),
          child: TextFormField(
            obscureText: obscureText!,
            validator: (data) {
              if (data!.isEmpty) {
                return 'value is wrong';
              }
              return null;
            },
            onChanged: onChanged,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              prefixIconColor: kPrimaryColor,
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 10, color: color),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff166070),
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff166070),
                ),
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff166070),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
