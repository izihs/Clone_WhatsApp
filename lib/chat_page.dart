import 'package:flutter/material.dart';
import 'package:whatsapp_clone_nih/template/custom_widget_item.dart';
import 'package:whatsapp_clone_nih/template/theme.dart';
import 'package:whatsapp_clone_nih/template/widget_view.dart';
import 'package:whatsapp_clone_nih/group_chat.dart';

class ChatPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: secondaryGreen,
        child: Icon(Icons.chat),
      ),
      //
      //Icon Chat
      body: WidgetView(
        child: ListView(
          padding: EdgeInsets.all(24),
          //EdgeInsets memberikan margin sebesar value pada semua sisi
          children: [
            //
            //
            //Friend
            Text(
              "Friends",
              style: titleHeader.copyWith(fontSize: 16),
            ),
            CustomWidgetItem(
              "images/pic_peter.png",
              title: "Peter Scwalzer",
              subtitle: "I wish you enjoy for this ...",
            ),
            CustomWidgetItem(
              "images/pic_elizabeth.png",
              title: "Elizabeth Rose",
              subtitle: "I can go visit tomorrow",
              unRead: false,
              time: "11:17",
            ),
            CustomWidgetItem(
              "images/pic_shakira.png",
              title: "Shakira Alyssa",
              subtitle: "Ehm, thankyou",
              unRead: false,
              time: "09:20",
            ),
            CustomWidgetItem(
              "images/pic_kim.png",
              title: "Kim Yo You",
              subtitle: "Yes, of course",
              totalChat: "2",
            ),
            //
            //
            //Groups
            SizedBox(
              height: 30,
            ),
            Text(
              "Groups",
              style: titleHeader.copyWith(fontSize: 16),
            ),
            CustomWidgetItem(
              "images/pic_group1.png",
              title: "Enjoy Travel",
              subtitle: "I will prepare immediately ",
              totalChat: "10",
              //
              //Chat clicked
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return GroupChat();
                }));
              },
            ),
            CustomWidgetItem(
              "images/pic_group2.png",
              title: "Android Flutter",
              subtitle: "How about container ?",
              unRead: false,
              time: "11:17",
              //
              //Chat clicked
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return GroupChat();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
