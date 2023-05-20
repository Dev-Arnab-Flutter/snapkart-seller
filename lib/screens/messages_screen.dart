

import 'package:get/get.dart';
import 'package:seller/screens/chat_screen.dart';

import '../const/const.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: purpleColor,
        title: Text(
          messages,
          style: TextStyle(color: white, fontSize: 22.sp),
        ),
      ),
      body: ListView.builder(physics: const BouncingScrollPhysics(),itemCount: 20,itemBuilder: (context,index){
        return ListTile(
          onTap: (){
            Get.to(()=>const ChatScreen());
          },
          leading: CircleAvatar(
            radius: 25.r,
            backgroundColor: purpleColor,
            child: Icon(Icons.person,size: 20.h,color: white,),
          ),
          title: Text("UserName",style: TextStyle(color: fontGrey,fontWeight: FontWeight.bold,fontSize: 16.sp),),
          subtitle: Text("Last Message",style: TextStyle(color: darkGrey,fontSize: 14.sp),),
          trailing: Text("10.45 PM",style: TextStyle(color: darkGrey,fontSize: 16.sp),),
        );
      }),
    );
  }
}