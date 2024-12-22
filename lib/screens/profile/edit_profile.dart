import 'package:flutter/material.dart';

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
            const SizedBox(
              height: 50,
              child: Center(
                child: Text(
                  'Edit Profile',
                  style: TextStyle(fontSize: 24, color: colorWhite),
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
            const SizedBox(height: 30),
            const Text('Profile Details',
                style: TextStyle(color: colorWhite, fontSize: 18)),
            const SizedBox(height: 15),
            const CustomTextFormField(
              initialValue: 'Jim Robbins',
              labelText: 'Username',
              prefixIcon: Icon(Icons.person_outline, color: colorMainLightGray),
            ),
            const SizedBox(height: 20),
            const CustomTextFormField(
              initialValue: 'jimrobbins29@domain.com',
              labelText: 'Email',
              prefixIcon: Icon(Icons.email_outlined, color: colorMainLightGray),
            ),
            const SizedBox(height: 20),
            const CustomTextFormField(
              initialValue: '+078 0527 882',
              labelText: 'Phone',
              prefixIcon: Icon(Icons.phone_outlined, color: colorMainLightGray),
            ),
            const SizedBox(height: 20),
            const Text('Change Password',
                style: TextStyle(color: colorWhite, fontSize: 18)),
            const SizedBox(height: 15),
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
                      children: const [
                        Icon(Icons.close, color: colorMainLightGray, size: 16),
                        SizedBox(width: 5),
                        Text(
                          'CANCEL',
                          style: TextStyle(
                              color: colorMainLightGray, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  CustomFillButton(
                    width: deviceWidth * .45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.check, color: colorWhite, size: 16),
                        SizedBox(width: 5),
                        Text(
                          'SAVE',
                          style: TextStyle(color: colorWhite, fontSize: 16),
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
