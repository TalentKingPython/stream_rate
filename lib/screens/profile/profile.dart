import 'package:flutter/material.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';

import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
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
            const SizedBox(
              height: 50,
              child: Center(
                child: Text(
                  'My Profile',
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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Stack(
                children: [
                  const ClipOval(
                    child: LoadImageSimple(
                      image: 'assets/images/default-avatar.jpg',
                      width: 230,
                      height: 230,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: const BoxDecoration(
                        color: colorWhite,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        size: 30.0,
                        color: colorMainGray,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text('Jim Robbins',
                  style: TextStyle(fontSize: 35, color: colorWhite)),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                const Text('Profile Details',
                    style: TextStyle(color: colorWhite, fontSize: 18)),
                const Spacer(),
                InkWell(
                  onTap: () =>
                      openScreenWithResult(context, const EditProfile()),
                  child:
                      const Icon(Icons.edit_square, color: colorMainLightGray),
                )
              ],
            ),
            const SizedBox(height: 35),
            const Text('jimrobbins29@domain.com',
                style: TextStyle(fontSize: 16, color: colorWhite)),
            const SizedBox(height: 30),
            const Text('+078 0527 882',
                style: TextStyle(fontSize: 16, color: colorWhite)),
            const SizedBox(height: 30),
            const Text('********',
                style: TextStyle(fontSize: 16, color: colorWhite)),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Subscription',
                    style: TextStyle(color: colorWhite, fontSize: 18)),
                const SizedBox(height: 10),
                if (isSubscribed)
                  _subscribedContainer()
                else
                  _unsubscribedContainer()
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _subscribedContainer() {
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
                width: 90,
                height: 150,
                imageFit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Your are currently subscribed to our',
                    style: TextStyle(color: colorWhite, fontSize: 16),
                  ),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return const LinearGradient(
                        colors: [onBoardingOrange, onBoardingRed],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(bounds);
                    },
                    child: const Text(
                      "PREMIUM PLAN",
                      style: TextStyle(
                        fontSize: 22,
                        color: colorWhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Unlimited Access for',
                    style: TextStyle(color: colorWhite, fontSize: 18),
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
                        child: const Text(
                          "\$2.99",
                          style: TextStyle(
                            fontSize: 22,
                            color: colorWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Text("/ ",
                          style: TextStyle(fontSize: 20, color: Colors.grey)),
                      const Text("week",
                          style: TextStyle(fontSize: 20, color: colorWhite)),
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
              child: const LoadImageSimple(
                image: AppImageAsset.homeBG,
                width: 90,
                height: 150,
                imageFit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'You have only 3 credits left.',
                      style: TextStyle(color: colorWhite, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text(
                          'Subscribe to ',
                          style: TextStyle(color: colorWhite, fontSize: 18),
                        ),
                        ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return const LinearGradient(
                              colors: [onBoardingOrange, onBoardingRed],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ).createShader(bounds);
                          },
                          child: const Text(
                            "PREMIUM PLAN",
                            style: TextStyle(
                              fontSize: 18,
                              color: colorWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text('for Unlimited Access',
                        style: TextStyle(color: colorWhite, fontSize: 18)),
                    const SizedBox(height: 10),
                    CustomFillButton(
                      onPressed: () => openSubscriptionPage(context),
                      height: 60,
                      child: Row(
                        children: const [
                          Text(
                            '\$2.99 / week',
                            style: TextStyle(
                                color: colorWhite, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            'SUBSCRIBE',
                            style: TextStyle(
                                color: colorWhite, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.arrow_forward_ios,
                              color: colorWhite, size: 16)
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
