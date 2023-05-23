import 'package:seller/const/const.dart';

Widget loadingIndicator({ color =purpleColor}){
  return  Center(
    child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation(color),
    ),
  );
}