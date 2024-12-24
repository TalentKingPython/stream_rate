import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';

import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/constant/constant.dart';
import 'package:stream_rate/constant/image_assets.dart';
import 'package:stream_rate/screens/profile/edit_profile.dart';

import 'package:stream_rate/utils/utils.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  final isSubscribed = false;

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
                  'My Profile',
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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: deviceWidth * 0.2,
                      backgroundImage:
                          AssetImage('assets/images/default-avatar.jpg'),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: deviceWidth * 0.1,
                        height: deviceHeight * 0.05,
                        decoration: const BoxDecoration(
                          color: colorWhite,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.cameraswitch_sharp,
                          size: deviceWidth * 0.075,
                          color: colorMainGray,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: deviceHeight * 0.02),
            Expanded(
              child: Center(
                child: Text('Jim Robbins',
                    style: GoogleFonts.poppins(
                        fontSize: deviceHeight * 0.035, color: colorWhite)),
              ),
            ),
            SizedBox(height: deviceHeight * 0.03),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Text('Profile Details',
                            style: GoogleFonts.poppins(
                                color: colorWhite, fontSize: 18)),
                        const Spacer(),
                        InkWell(
                          onTap: () => openScreenWithResult(
                              context, const EditProfile()),
                          child: const Icon(Icons.edit_square,
                              color: colorMainLightGray),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Email',
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: whitecaptcha)),
                        Text('jimrobbins29@domain.com',
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: colorWhite)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Phone',
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: whitecaptcha)),
                        Text('+078 0527 882',
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: colorWhite)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Password',
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: whitecaptcha)),
                        Text('********',
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: colorWhite)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Subscription',
                      style:
                          GoogleFonts.poppins(color: colorWhite, fontSize: 18)),
                  const SizedBox(height: 10),
                  if (isSubscribed)
                    _subscribedContainer()
                  else
                    _unsubscribedContainer()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _subscribedContainer() {
    return Container(
      padding: const EdgeInsets.all(5),
      width: deviceWidth,
      decoration: BoxDecoration(
        color: colorMainBackground,
        borderRadius: BorderRadius.circular(20.0),
        gradient: const LinearGradient(
          colors: [Color(0xFFED1945), Color(0xFFF79B1E)],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colorMainBackground,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const LoadImageSimple(
                image: AppImageAsset.homeBG,
                // width: 90,
                // height: 150,
                imageFit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your are currently subscribed to our',
                    style: GoogleFonts.poppins(
                        color: colorWhite, fontSize: deviceWidth * 0.016),
                  ),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return const LinearGradient(
                        colors: [onBoardingOrange, onBoardingRed],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(bounds);
                    },
                    child: Text(
                      "PREMIUM PLAN",
                      style: GoogleFonts.poppins(
                        fontSize: deviceWidth * 0.18,
                        color: colorWhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: deviceWidth * 0.12),
                  Text(
                    'Unlimited Access for',
                    style: GoogleFonts.poppins(
                        color: colorWhite, fontSize: deviceWidth * 0.18),
                  ),
                  Row(
                    children: [
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [onBoardingRed, onBoardingOrange],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds);
                        },
                        child: Text(
                          "\$2.99",
                          style: GoogleFonts.poppins(
                            fontSize: deviceWidth * 0.02,
                            color: colorWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text("/ ",
                          style: GoogleFonts.poppins(
                              fontSize: deviceWidth * 0.02,
                              color: Colors.grey)),
                      Text("week",
                          style: GoogleFonts.poppins(
                              fontSize: deviceWidth * 0.02, color: colorWhite)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _unsubscribedContainer() {
    return Container(
      padding: const EdgeInsets.all(1),
      width: deviceWidth,
      decoration: BoxDecoration(
        color: colorMainBackground,
        borderRadius: BorderRadius.circular(20.0),
        gradient: const LinearGradient(
          colors: [Color(0xFFED1945), Color(0xFFF79B1E)],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colorMainBackground,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LoadImageSimple(
                image: AppImageAsset.homeBG,
                width: deviceWidth * 0.23,
                height: deviceHeight * 0.2,
                imageFit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You have only 3 credits left.',
                      style: GoogleFonts.poppins(
                          color: colorWhite, fontSize: deviceHeight * 0.016),
                    ),
                    SizedBox(height: deviceHeight * 0.01),
                    Row(
                      children: [
                        Text(
                          'Subscribe to ',
                          style: GoogleFonts.poppins(
                              color: colorWhite,
                              fontSize: deviceHeight * 0.018),
                        ),
                        ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return const LinearGradient(
                              colors: [onBoardingOrange, onBoardingRed],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ).createShader(bounds);
                          },
                          child: Text(
                            "PREMIUM PLAN",
                            style: GoogleFonts.poppins(
                              fontSize: deviceHeight * 0.019,
                              color: colorWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text('for Unlimited Access',
                        style: GoogleFonts.poppins(
                            color: colorWhite, fontSize: deviceHeight * 0.019)),
                    SizedBox(height: deviceHeight * 0.02),
                    CustomFillButton(
                      onPressed: () => openSubscriptionPage(context),
                      height: deviceHeight * 0.06,
                      child: Row(
                        children: [
                          Text(
                            '\$2.99 / week',
                            style: GoogleFonts.poppins(
                                fontSize: deviceHeight * 0.016,
                                color: colorWhite,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: deviceWidth * 0.02,
                          ),
                          Text(
                            'SUBSCRIBE',
                            style: GoogleFonts.poppins(
                                fontSize: deviceHeight * 0.018,
                                color: colorWhite,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.arrow_forward_ios,
                              color: colorWhite, size: deviceHeight * 0.012)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
