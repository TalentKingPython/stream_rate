import 'package:flutter/material.dart';

import 'package:stream_rate/commonView/custom_fill_button.dart';
import 'package:stream_rate/commonView/custom_text_form.dart';
import 'package:stream_rate/utils/utils.dart';

class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);

  @override
  SupportState createState() => SupportState();
}

class SupportState extends State<Support> {
  final isHidden = true;
  String randomText = generateRandomText(8);

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
                  'Contact Support',
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
            const SizedBox(height: 15),
            Center(
              child: SizedBox(
                width: deviceWidth * .65,
                child: const Text('Please let us know how can we help you',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: colorWhite, fontSize: 22)),
              ),
            ),
            const SizedBox(height: 40),
            const Text('Write Your Message',
                style: TextStyle(color: colorWhite, fontSize: 18)),
            const SizedBox(height: 15),
            const CustomTextFormField(minLines: 8),
            const SizedBox(height: 40),
            const Text('Please enter the characters below',
                style: TextStyle(color: colorWhite, fontSize: 18)),
            const SizedBox(height: 15),
            Container(
              width: deviceWidth,
              height: 100,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: whitelow, borderRadius: BorderRadius.circular(20)),
              child: Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.003)
                  ..setEntry(3, 1, 0.003)
                  ..rotateY(0.2 * 3.14),
                child: Text(
                  randomText,
                  style: const TextStyle(
                    color: colorWhite,
                    fontSize: 40,
                    letterSpacing: 10.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const CustomTextFormField(),
            const Spacer(),
            CustomFillButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.send, color: colorWhite, size: 16),
                  SizedBox(width: 5),
                  Text(
                    'SEND MESSAGE',
                    style: TextStyle(color: colorWhite, fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
