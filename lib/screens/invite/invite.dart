import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';
import 'package:stream_rate/commonView/contact_user_cart.dart';
import 'package:stream_rate/commonView/custom_text_form.dart';
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  left: deviceWidth * 0.05,
                  right: deviceWidth * 0.05,
                  top: deviceHeight * 0.06),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: deviceHeight),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text("Invite People",
                          style: GoogleFonts.poppins(
                              fontSize: deviceHeight * 0.035,
                              color: colorWhite)),
                    ),
                    Container(
                      width: deviceWidth,
                      padding: EdgeInsets.fromLTRB(
                        deviceWidth * 0.05,
                        deviceHeight * 0.05,
                        deviceWidth * 0.05,
                        deviceHeight * 0.03,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Invite people you know and earn 5 CREDITS for each subscription.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: colorWhite,
                                fontSize: deviceHeight * 0.02),
                          ),
                          Text(
                            "LIMITED TO 200 CREDITS",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: whitecaptcha,
                                fontSize: deviceHeight * 0.016),
                          ),
                        ],
                      ),
                    ),
                    Text("Synced Contacts",
                        style: GoogleFonts.poppins(
                            fontSize: deviceHeight * 0.02, color: colorWhite)),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const UserCard(
                              userName: "John Warney", isSelected: true),
                          const UserCard(userName: "Mary Styles"),
                          const UserCard(userName: "Mommy", isSelected: true),
                          const UserCard(
                              userName: "Jack Frank",
                              imagePath: "assets/images/test-avatar.png",
                              isSelected: true),
                          const UserCard(userName: "Eddie Joe"),
                          SizedBox(height: deviceHeight * 0.02),
                          Text("Not in contacts? Invite by email",
                              style: GoogleFonts.poppins(
                                  fontSize: deviceHeight * 0.018,
                                  color: colorWhite)),
                          SizedBox(height: deviceHeight * 0.01),
                          const CustomTextFormField(
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.email_outlined,
                                color: colorMainLightGray),
                          ),
                        ]),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: deviceHeight * 0.03),
                      child: CustomFillButton(
                        onPressed: onSubmit,
                        width: double.infinity,
                        height: deviceHeight * 0.07,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'SENT INVITATIONS',
                              style: GoogleFonts.poppins(
                                  color: colorWhite,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: deviceWidth * 0.01),
                            const Icon(
                              Icons.chevron_right,
                              color: colorWhite,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: deviceHeight * 0.06,
            left: deviceWidth * 0.05,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 36,
                width: 36,
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.03),
                decoration: BoxDecoration(
                  color: colorWhite.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child:
                      Icon(Icons.arrow_back_ios, size: 16, color: colorWhite),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
