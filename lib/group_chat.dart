import 'package:flutter/material.dart';
import 'package:whatsapp_clone_nih/template/theme.dart';

class GroupChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: primaryGreen,
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 20, right: 20, bottom: 10),
                  //Head
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("images/pic_group2.png", width: 70),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "Android Flutter",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Text(
                            "13.052 Members",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50),
                        child: FloatingActionButton(
                          backgroundColor: secondaryGreen,
                          onPressed: () {},
                          child: Icon(Icons.add_call),
                        ),
                      )
                    ],
                  ),
                ),
                //Foot
                Expanded(
                    child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        color: lightGrey,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 4,
                            child: ListView(),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                    child: Container(
                                  height: 60,
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          contentPadding: EdgeInsets.only(
                                              left: 20, top: 50),
                                          hintText: "Type Massage...",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          suffixIcon: Container(
                                            margin: EdgeInsets.only(right: 10),
                                            height: 20,
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.send,
                                                size: 25,
                                              ),
                                              onPressed: () {},
                                              color: Colors.black54,
                                            ),
                                            decoration: new BoxDecoration(
                                              color: Colors.grey[350],
                                              shape: BoxShape.circle,
                                            ),
                                          ))),
                                )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ))
              ],
            )));
  }
}
