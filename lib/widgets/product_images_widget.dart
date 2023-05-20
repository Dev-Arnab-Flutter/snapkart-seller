import 'package:seller/const/const.dart';

Widget productImage({required String tileIndex}){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5.w),
    height: 100.h,
    width: 100.h,
    decoration: BoxDecoration(color: white,borderRadius: BorderRadius.circular(10.r),),
    child: Center(child: Text(tileIndex),),
  );
}