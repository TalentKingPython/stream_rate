import 'package:flutter/material.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';
import 'package:stream_rate/commonView/contact_user_cart.dart';

import 'package:stream_rate/commonView/custom_text_form.dart';
import 'package:stream_rate/screens/signup/confirm_email.dart';
import 'package:stream_rate/utils/utils.dart';

class Invite extends StatefulWidget {
  const Invite({Key? key}) : super(key: key);

  @override
  InviteState createState() => InviteState();
}

class InviteState extends State<Invite> {
  final List<Map<String, dynamic>> contactUserCards = [
    {"userName": "John Wayne", "isSelected": true},
    {"userName": "Mary Styles", "isSelected": false},
    {"userName": "Mommy", "isSelected": false},
    {
      "userName": "Jack Frank",
      "imagePath": "assets/images/test-avatar.png",
      "isSelected": true
    },
    {"userName": "Eddie Joe", "isSelected": true}
  ];

  bool isHidden = true;
  bool isChecked = false;

  void toggleSelection(Map<String, dynamic> cardData) {
    setState(() {
      cardData['isSelected'] = !cardData['isSelected'];
    });
  }

  void onSubmit() {
    openNotificationAllowDialog(context);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorMainBackground,
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Invite People",
                  style: TextStyle(fontSize: 30, color: colorWhite)),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 60, 30, 40),
                child: const Text(
                  "Invite people you know and earn 5 CREDITS for each subscription.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: colorWhite, fontSize: 24),
                ),
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Synced Contacts",
                        style: TextStyle(fontSize: 18, color: colorWhite)),
                    // Expanded(
                    //   child: ListView.builder(
                    //     padding: const EdgeInsets.all(10),
                    //     itemCount: contactUserCards.length,
                    //     itemBuilder: (context, index) {
                    //       return GestureDetector(
                    //         onTap: () {
                    //           toggleSelection(contactUserCards[index]);
                    //         },
                    //         child: UserCard(
                    //           userName: contactUserCards[index]['userName'],
                    //           imagePath: contactUserCards[index]['imagePath'],
                    //           isSelected: contactUserCards[index]['isSelected'],
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // ),
                    UserCard(userName: "John Warney", isSelected: true),
                    UserCard(userName: "Mary Styles"),
                    UserCard(userName: "Mommy", isSelected: true),
                    UserCard(
                        userName: "Jack Frank",
                        imagePath: "assets/images/test-avatar.png",
                        isSelected: true),
                    UserCard(userName: "Eddie Joe"),
                    SizedBox(height: 20),
                    Text("Not in contacts? Invite by email",
                        style: TextStyle(fontSize: 16, color: colorWhite)),
                    SizedBox(height: 10),
                    CustomTextFormField(
                      labelText: 'Email',
                      prefixIcon:
                          Icon(Icons.email_outlined, color: colorMainLightGray),
                    ),
                  ]),
              const SizedBox(height: 100),
              CustomFillButton(
                onPressed: onSubmit,
                width: double.infinity,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'SENT INVITATIONS',
                      style: TextStyle(
                          color: colorWhite, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.chevron_right,
                      color: colorWhite,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 50,
          left: 20,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              height: 36,
              width: 36,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: colorWhite.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Icon(Icons.arrow_back_ios, size: 16, color: colorWhite),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
