


import '../const/const.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icons;
  final TextEditingController controller;
  const CustomTextField({super.key, required this.hintText, required this.icons, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 5.h),
                    child: TextField(
                      controller: controller,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: hintText,
                        hintStyle:const TextStyle(color: purpleColor),
                        prefixIcon: Icon(icons,color: purpleColor,size: 30.h,),
                        border: InputBorder.none
                      ),
                    ),
                  );
  }
}