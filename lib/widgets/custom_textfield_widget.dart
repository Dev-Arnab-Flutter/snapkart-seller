


import '../const/const.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icons;
  const CustomTextField({super.key, required this.hintText, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 5.h),
                    child: TextField(
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