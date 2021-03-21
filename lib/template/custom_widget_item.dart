import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone_nih/template/theme.dart';

class CustomWidgetItem extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String totalChat;
  final String time;
  final bool unRead;
  final bool call;
  final bool statusCall; // status call true is "panggilan terjawab"
  final bool typeCall; //type call true is "phone"
  final Function onTap;

  const CustomWidgetItem(
    this.image, {
    Key key,
    this.title = "title",
    this.subtitle = "subtitle",
    this.totalChat = "1",
    this.unRead = true,
    this.time = "",
    this.call = false,
    this.statusCall = false,
    this.typeCall = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Image.asset(image, width: 70),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: titleHeader.copyWith(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  call
                      ? Row(
                          children: [
                            statusCall
                                ? Icon(
                                    Icons.call_made,
                                    color: secondaryGreen,
                                  )
                                : Icon(
                                    Icons.call_received,
                                    color: Colors.red,
                                  ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              subtitle,
                              style: subtitleHeader.copyWith(fontSize: 14),
                            ),
                          ],
                        )
                      : Text(
                          subtitle,
                          style: unRead
                              ? titleHeader.copyWith(fontSize: 14)
                              : subtitleHeader.copyWith(fontSize: 14),
                        ),
                ],
              ),
              Spacer(),
              unRead
                  ? Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: secondaryGreen, shape: BoxShape.circle),
                      child: Center(
                          child: Text(
                        totalChat,
                        style: TextStyle(color: bgwhite),
                      )),
                    )
                  : call
                      ? typeCall
                          ? Icon(
                              Icons.call,
                              color: secondaryGreen,
                            )
                          : Icon(
                              Icons.videocam,
                              color: secondaryGreen,
                            )
                      : Text(
                          time,
                          style: subtitleHeader,
                        ),
            ],
          ),
        ],
      ),
    );
  }
}
