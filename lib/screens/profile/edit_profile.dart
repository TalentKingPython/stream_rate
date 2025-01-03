import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:stream_rate/commonView/custom_fill_button.dart';
import 'package:stream_rate/commonView/custom_text_form.dart';
import 'package:stream_rate/constant/constant.dart';
import 'package:stream_rate/utils/utils.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  EditProfileState createState() => EditProfileState();
}

class EditProfileState extends State<EditProfile> {
  final isHidden = true;

  @override
  void initState() {
    super.initState();
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
      appBar: AppBar(
        backgroundColor: colorPrimary,
        automaticallyImplyLeading: false,
        foregroundColor: colorBlack,
        toolbarHeight: 80,
        elevation: 0,
        title: Stack(
          children: [
            SizedBox(
              height: 50,
              child: Center(
                child: Text(
                  'Edit Profile',
                  style: GoogleFonts.poppins(
                      fontSize: deviceHeight * .024, color: colorWhite),
                ),
              ),
            ),
            Positioned(
              left: 15,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: deviceHeight * 0.04,
                  width: deviceHeight * 0.04,
                  padding:
                      EdgeInsets.symmetric(horizontal: deviceHeight * 0.015),
                  decoration: BoxDecoration(
                    color: colorMainGray.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(deviceHeight * 0.012),
                  ),
                  child: Center(
                    child: Icon(Icons.arrow_back_ios,
                        size: deviceHeight * 0.018, color: colorWhite),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: colorMainBackground,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0.0, bottom: 15),
              child: Text('Profile Details',
                  style: GoogleFonts.poppins(
                      color: colorWhite, fontSize: deviceHeight * 0.025)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CustomTextFormField(
                  initialValue: 'Jim Robbins',
                  labelText: 'Username',
                  prefixIcon:
                      Icon(Icons.person_outline, color: colorMainLightGray),
                ),
                SizedBox(height: 20),
                CustomTextFormField(
                  initialValue: 'jimrobbins29@domain.com',
                  labelText: 'Email',
                  prefixIcon:
                      Icon(Icons.email_outlined, color: colorMainLightGray),
                ),
                SizedBox(height: 20),
                CustomTextFormField(
                  initialValue: '+078 0527 882',
                  labelText: 'Phone',
                  prefixIcon:
                      Icon(Icons.phone_outlined, color: colorMainLightGray),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 15),
              child: Text('Change Password',
                  style: GoogleFonts.poppins(
                      color: colorWhite, fontSize: deviceHeight * 0.025)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextFormField(
                  isPassword: true,
                  labelText: 'New Password',
                  prefixIcon: const Icon(Icons.lock_outlined,
                      color: colorMainLightGray),
                  suffixIcon: Icon(
                      isHidden
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: colorMainLightGray),
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  isPassword: true,
                  labelText: 'Confirm Password',
                  prefixIcon:
                      const Icon(Icons.lock_open, color: colorMainLightGray),
                  suffixIcon: Icon(
                      isHidden
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: colorMainLightGray),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomFillButton(
                  isColorBtn: false,
                  width: deviceWidth * .45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.close,
                          color: colorMainLightGray,
                          size: deviceHeight * 0.016),
                      const SizedBox(width: 5),
                      Text(
                        'CANCEL',
                        style: GoogleFonts.poppins(color: colorMainLightGray),
                      ),
                    ],
                  ),
                ),
                CustomFillButton(
                  width: deviceWidth * .45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.check,
                          color: colorWhite, size: deviceHeight * 0.016),
                      const SizedBox(width: 5),
                      Text(
                        'SAVE',
                        style: GoogleFonts.poppins(color: colorWhite),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox()
          ],
        ),
      ),
    );
  }
}
