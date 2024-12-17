import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:stream_rate/utils/utils.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
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
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Column(children: [
          CustomFillButton(
            isColorBtn: false,
            child: Row(children: [
              SvgPicture.asset('assets/svgs/user_add.svg'),
              const Text(
                'Sign up with Phone or Email',
                style: TextStyle(color: colorWhite),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
