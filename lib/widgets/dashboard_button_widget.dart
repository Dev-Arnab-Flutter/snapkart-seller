

import 'package:seller/const/const.dart';

class DashboardButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String label;
  final String count;
  final String imagePath;
  const DashboardButton({super.key, required this.label, required this.count, required this.imagePath, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
                height: 80.h,
                width: 180.w,
                decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Padding(
                  padding: EdgeInsets.all(8.0.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              label,
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              count,
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Image.asset(
                        imagePath,
                        width: 35.w,
                        color: white,
                      ),
                    ],
                  ),
                ),
              ),
    );
  }
}