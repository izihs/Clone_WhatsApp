import 'package:flutter/material.dart';
import 'package:whatsapp_clone_nih/template/theme.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Profile")),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 40),
              alignment: Alignment.center,
              height: 170,
              child: Stack(
                children: [
                  // tumpukan pertama foto profile
                  Image.asset("images/pic_mystatus.png"),

                  // tumpukan kedua icon
                  Positioned(
                    left: 110,
                    bottom: 0,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: secondaryGreen),
                      child: Icon(
                        Icons.photo_camera,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                children: [
                  Icon(Icons.account_circle, color: primaryGreen, size: 30),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name",
                            style: subtitleHeader.copyWith(fontSize: 16)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("My Profile",
                            style: subtitleHeader.copyWith(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 4,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //
            Container(
              margin: EdgeInsets.only(left: 15, right: 25),
              child: Row(
                children: [
                  Container(
                    child: SizedBox(width: 60),
                  ),
                  Expanded(
                    child: Text(
                      "Ini bukan nama pengguna atau pin anda. Nama ini akan terlihat oleh kontak whatsapp anda.",
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
            //
            //Info
            //
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 20),
              child: Row(
                children: [
                  Icon(Icons.info, color: primaryGreen, size: 30),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Info",
                            style: subtitleHeader.copyWith(fontSize: 16)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Flutter Club",
                            style: subtitleHeader.copyWith(fontSize: 18)),
                        SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //
            //Phone
            //
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 20),
              child: Row(
                children: [
                  Icon(Icons.phone, color: primaryGreen, size: 30),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Phone",
                            style: subtitleHeader.copyWith(fontSize: 16)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("+62 098-9999-5001",
                            style: subtitleHeader.copyWith(fontSize: 18)),
                        SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
