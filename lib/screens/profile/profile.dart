import 'package:flutter/material.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';

import 'package:stream_rate/commonView/item_card.dart';
import 'package:stream_rate/commonView/item_card_model.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/constant/image_assets.dart';

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
              children: const [
                Text('Profile Details',
                    style: TextStyle(color: colorWhite, fontSize: 18)),
                Spacer(),
                Icon(Icons.edit_square, color: colorMainLightGray)
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
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(children: [
                Text(
                  'Your are currently subscribed to our',
                  style: TextStyle(color: colorWhite),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
