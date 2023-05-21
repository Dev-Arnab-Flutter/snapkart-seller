import 'package:seller/const/const.dart';

Widget loadingIndicator(){
  return const Center(
    child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation(purpleColor),
    ),
  );
}