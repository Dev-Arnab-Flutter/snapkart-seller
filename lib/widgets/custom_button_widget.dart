

import '../const/const.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String label;
  const CustomButton({super.key, this.onTap, required this.label});

  @override
  Widget build(BuildContext context) {
        double width=MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
                    height: 50.h,
                    width: width-50.w,
                    decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(label,style: TextStyle(color: white,fontSize: 16.sp),),
                    ),
                  ),
    );
  }
}