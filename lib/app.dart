import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:seller/const/colors.dart';
import 'package:seller/screens/home.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if(snapshot.connectionState !=ConnectionState.done){
          if(snapshot.hasData){
          return ScreenUtilInit(
          useInheritedMediaQuery: true,
          designSize: const Size(392.7, 830.5),
          builder: (context, child) {
            return child!;
          },
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Seller SnapKart',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: purpleColor),
              useMaterial3: true,
              appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(color: white),
              ),
            ),
            home:const Home(),
          ),
        );
        }else{
          return ScreenUtilInit(
          useInheritedMediaQuery: true,
          designSize: const Size(392.7, 830.5),
          builder: (context, child) {
            return child!;
          },
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Seller SnapKart',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: purpleColor),
              useMaterial3: true,
              appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(color: white),
              ),
            ),
            home: LoginScreen(),
          ),
        );
        }
        }
         return ScreenUtilInit(
          useInheritedMediaQuery: true,
          designSize: const Size(392.7, 830.5),
          builder: (context, child) {
            return child!;
          },
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Seller SnapKart',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: purpleColor),
              useMaterial3: true,
              appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(color: white),
              ),
            ),
            home: LoginScreen(),
          ),
        );
      }
    );
  }
}
