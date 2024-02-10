import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BuildCommentTextfield extends StatelessWidget {
  BuildCommentTextfield({
    // required this.controller,
    required this.hintText,
    this.onChanged,
    super.key,
  });

  TextEditingController controller = TextEditingController();
  final String hintText;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Theme(
        data: ThemeData(
          primaryColor: Colors.white,
          primarySwatch: Colors.amber,
        ),
        child: TextFormField(
          
          controller: controller,
          onChanged: onChanged,
          // autocorrect: true,
          // autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return "*required";
            } else if (value.startsWith(" ")) {
              return "*Please remove leading white space.";
            }
            return null;
          },
          decoration: InputDecoration(
            // fillColor: Colors.black12,
            hintText: hintText,

            fillColor: Colors.grey.shade200,
            enabledBorder: const OutlineInputBorder(
              // borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
            border: const OutlineInputBorder(
              // borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
            filled: true,
            // enabledBorder: InputBorder.none,
            // border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 5.sp,
            ),
          ),
        ),
      ),
    );
  }
}
