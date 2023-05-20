
import 'package:get/get.dart';
import 'package:seller/const/const.dart';
import 'package:seller/controllers/home_controller.dart';
import 'package:seller/screens/dashboard_screen.dart';
import 'package:seller/screens/general_setting_screen.dart';
import 'package:seller/screens/order_screen.dart';
import 'package:seller/screens/products_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller =Get.put(HomeController());
    var navScreen= const[
      DashboardScreen(),
      ProductsScreen(),
      OrdersScreen(),
      GeneralSettingsScreen(),
    ];
    var bottomNavBar = [
    const  BottomNavigationBarItem(icon: Icon(Icons.home,), label: "Dashboard"),
      BottomNavigationBarItem(
          icon: ImageIcon(
          const AssetImage(
              icProducts,
            ),
            size: 24.w,
          ),
          label: products),
      BottomNavigationBarItem(
          icon: ImageIcon(
           const AssetImage(
              icOrders,
            ),
            size: 24.w,
          ),
          label: orders),
      BottomNavigationBarItem(
          icon: ImageIcon(
           const AssetImage(
              icGeneralSetting,
              
            ),
            size: 24.w,
          ),
          label: generalSettings),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(()=>
             Expanded(child: 
            navScreen.elementAt(controller.navIndex.value),),
          ),
        ],
      ),
      bottomNavigationBar: Obx(()=>
    BottomNavigationBar(
          onTap: (index) {
            controller.navIndex.value=index;
            
          },
          currentIndex: controller.navIndex.value,
          type: BottomNavigationBarType.fixed,
          items: bottomNavBar,
        selectedItemColor: purpleColor,
        unselectedItemColor: darkGrey,),
      ),
    );
  }
}
