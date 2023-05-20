import 'package:seller/widgets/chatbubble_widget.dart';

import '../const/const.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: purpleColor,
        title: Text(
          "Chats",
          style: TextStyle(color: white, fontSize: 22.sp),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0.h),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return chatBubble();
                  }),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 60.h,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          isDense: true,
                          hintText: "Enter Message",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: purpleColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: purpleColor),
                          )),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send,
                        color: purpleColor,
                        size: 30.h,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
