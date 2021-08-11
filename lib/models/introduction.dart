// ignore_for_file: unused_element

import 'package:examination/models/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  IntroductionState createState() => IntroductionState();
}

class IntroductionState extends State<Introduction> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      contentMargin: EdgeInsets.only(top: 150),
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    // Introduction Screen
    //
    return IntroductionScreen(
      
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: const Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 16, right: 16),
            // child: _buildImage('flutter.png', 100),
          ),
        ),
      ),
      pages: [
        PageViewModel(
          title: "Explore the\n world easily",
          body: "To your desires",
          image: _buildFullscrenImage('https://cdn.dribbble.com/users/427857/screenshots/6750774/business-man-vision-illustration_tranmautritam_2x.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(//bodyWidget: Container(color: Colors.redAccent,),
          title: "Enjoy weekends",
          body: "Having a wonderful travel",
          image: _buildFullscrenImage('https://i.pinimg.com/originals/77/75/5e/77755e565ef7ddbff2546231cd8732bf.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "High Quality\n Services",
          body: "And affordable prices",
          image: _buildFullscrenImage('https://vanila-community.imgix.net/threads/draft/6f361f4f-1457-4836-82d6-8493ee5c34d0-1_8QgPF5tXwo5NqhvXXncwSQ.png?expires=1625616000000&ixlib=js-1.2.1&s=ceca2513fc561a4ca8b76c147fdb8441'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      next: const CircleAvatar(
        radius: 37.0,
        backgroundColor: Colors.black87,
        child: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: 15.0,
        ),
      ),
      done: const CircleAvatar(
        radius: 37.0,
        backgroundColor: Colors.black87,
        child: Icon(
          Icons.done,
          color: Colors.white,
          size: 20.0,
        ),
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        activeColor: Colors.amber,
        size: Size(8.0, 8.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(18.0, 8.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
//////////////////////////////////////////
// Functions /////////////////////////////
//////////////////////////////////////////

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const Login()),
    );
  }

  Widget _buildFullscrenImage(String s) {
    return Image.network(
      s,
      fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height * 3/4,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset(
      'assets/$assetName',
      width: width,
      fit: BoxFit.cover,
    );
  }
}
