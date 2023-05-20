import 'package:seller/const/const.dart';

Widget chatBubble() {
  return Directionality(
    textDirection: TextDirection.ltr,
    child: Container(
      padding: EdgeInsets.all(12.h),
      margin: EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
        color: purpleColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.r),
          topRight: Radius.circular(10.r),
          bottomLeft: Radius.circular(10.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Message Here ...",
            style: TextStyle(color: white, fontSize: 14.sp),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "10.45 PM",
            style: TextStyle(color: darkGrey, fontSize: 10.sp),
          ),
        ],
      ),
    ),
  );
}
