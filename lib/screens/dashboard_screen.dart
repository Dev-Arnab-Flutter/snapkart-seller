import 'package:seller/const/const.dart';
import 'package:seller/widgets/appbar_widget.dart';
import 'package:seller/widgets/dashboard_button_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(dashBoard),
      body: Padding(
        padding: EdgeInsets.all(8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DashboardButton(
                    label: products, count: "57", imagePath: icProducts),
                DashboardButton(
                    label: orders, count: "57", imagePath: icOrders),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DashboardButton(label: rating, count: "57", imagePath: icStar),
                DashboardButton(
                    label: totalSales, count: "57", imagePath: icOrders),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            const Divider(
              color: purpleColor,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              popular,
              style: TextStyle(
                color: purpleColor,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(3, (index) {
                return ListTile(
                  onTap: () {},
                  leading: Image.asset(imgProduct),
                  title: Text(
                    "product title".toUpperCase(),
                    style: TextStyle(
                        color: purpleColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "\$40".toUpperCase(),
                    style: TextStyle(
                      color: purpleColor,
                      fontSize: 14.sp,
                    ),
                  ),
                );
              }),
            )
         
          ],
        ),
      ),
    );
  }
}
