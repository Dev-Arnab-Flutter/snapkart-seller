

import '../const/const.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String label;
  final bool isDesc;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? maxLength;
  const CustomTextFormField(
      {super.key,
      this.isDesc=false,
      required this.hintText,
      required this.label,
      this.controller, this.keyboardType, this.maxLength});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: isDesc? 4:1,
      controller: controller,
  keyboardType: keyboardType,
  maxLength: maxLength,
      decoration: InputDecoration(
        counterText: "",
          isDense: true,
          label: Text(label),
          labelStyle: TextStyle(color: white, fontSize: 14.sp),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(color: white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(color: white),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: white, fontSize: 14.sp)),
    );
  }
}
