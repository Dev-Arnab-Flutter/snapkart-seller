import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:get/get.dart';
import 'package:seller/screens/add_product_screen.dart';
import 'package:seller/screens/product_details_screen.dart';
import 'package:seller/widgets/appbar_widget.dart';

import '../const/const.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(products),
      body: ListView(
        physics:const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: List.generate(30, (index) {
          return Card(
            color: white,
            child: ListTile(
              onTap: () {
                Get.to(()=>const ProductDetailScreen());
              },
              leading: Image.asset(imgProduct),
              title: Text(
                "product title".toUpperCase(),
                style: TextStyle(
                    color: purpleColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Text(
                "\$40".toUpperCase(),
                style: TextStyle(
                  color: purpleColor,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(width: 10.w,),
               Text(
                "Featured".toUpperCase(),
                style: TextStyle(
                  color: green ,
                  fontSize: 14.sp,
                ),
              ),
                ],
              ),
              trailing: FocusedMenuHolder(
                openWithTap: true,
                onPressed: () {},
                menuWidth: 160.w,
                blurBackgroundColor: purpleColor,
                menuItems: List.generate(
                  popUpMenuTitles.length,
                  (index) {
                    return FocusedMenuItem(
                      title: Text(
                        popUpMenuTitles[index],
                        style: TextStyle(
                            color: index > 1 ? white : Colors.black,fontSize: 14.sp),
                      ),
                      trailingIcon: Icon(
                        popUpMenuIcons[index],
                        color: index > 1 ? white : Colors.black,
                        size: 25.sp,
                      ),
                      onPressed: () {},
                      backgroundColor: index > 1 ? Colors.red : white,
                    );
                  },
                ),
                child: const Icon(Icons.more_vert_rounded),
              ),
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        shape: const CircleBorder(),
        onPressed: () {
          Get.to(()=> AddProductScreen());
        },
        child: Icon(
          Icons.add,
          color: white,
          size: 30.w,
        ),
      ),
    );
  }
}
