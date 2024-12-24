import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:stream_rate/commonView/custom_fill_button.dart';
import 'package:stream_rate/commonView/custom_text_form.dart';
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
                  style: GoogleFonts.poppins(fontSize: 24, color: colorWhite),
                ),
              ),
            ),
            Positioned(
              left: 15,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: 36,
                  width: 36,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
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
            SizedBox(height: deviceHeight * 0.03),
            Text('Profile Details',
                style: GoogleFonts.poppins(color: colorWhite, fontSize: 18)),
            SizedBox(height: deviceHeight * 0.015),
            const CustomTextFormField(
              initialValue: 'Jim Robbins',
              labelText: 'Username',
              prefixIcon: Icon(Icons.person_outline, color: colorMainLightGray),
            ),
            SizedBox(height: deviceHeight * 0.020),
            const CustomTextFormField(
              initialValue: 'jimrobbins29@domain.com',
              labelText: 'Email',
              prefixIcon: Icon(Icons.email_outlined, color: colorMainLightGray),
            ),
            SizedBox(height: deviceHeight * 0.020),
            const CustomTextFormField(
              initialValue: '+078 0527 882',
              labelText: 'Phone',
              prefixIcon: Icon(Icons.phone_outlined, color: colorMainLightGray),
            ),
            SizedBox(height: deviceHeight * 0.020),
            Text('Change Password',
                style: GoogleFonts.poppins(color: colorWhite, fontSize: 18)),
            SizedBox(height: deviceHeight * 0.015),
            CustomTextFormField(
              isPassword: true,
              labelText: 'New Password',
              prefixIcon:
                  const Icon(Icons.lock_outlined, color: colorMainLightGray),
              suffixIcon: Icon(
                  isHidden
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: colorMainLightGray),
            ),
            SizedBox(height: deviceHeight * 0.020),
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
            const Spacer(),
            SizedBox(
              width: deviceWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomFillButton(
                    isColorBtn: false,
                    width: deviceWidth * .45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.close,
                            color: colorMainLightGray,
                            size: deviceHeight * .016),
                        const SizedBox(width: 5),
                        Text(
                          'CANCEL',
                          style: GoogleFonts.poppins(
                              color: colorMainLightGray,
                              fontSize: deviceHeight * .016),
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
                            color: colorWhite, size: deviceHeight * .016),
                        const SizedBox(width: 5),
                        Text(
                          'SAVE',
                          style: GoogleFonts.poppins(
                              color: colorWhite, fontSize: deviceHeight * .016),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
