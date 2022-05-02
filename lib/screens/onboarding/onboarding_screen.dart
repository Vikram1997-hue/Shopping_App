import 'package:flutter/material.dart';
import 'package:untitled/constants/app_defaults.dart';
import 'package:untitled/constants/app_images.dart';
import 'package:untitled/screens/auth/login.dart';
import 'package:untitled/screens/onboarding/components/onboarding_content.dart';
import 'package:untitled/screens/onboarding/components/onboarding_data.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  late PageController myPageController;
  int currentPage = 0;

  void goToLoginPage() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Login(),
    ));
  }

  void onNextButtonPressed() {
    if(currentPage+1 == mydata.length) {
      goToLoginPage();
    }
    else {
      int newPage = currentPage + 1;
      myPageController.animateToPage(
          newPage,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
      );
    }
    setState(() {}); //PROLLY JUST SO THAT BUILD IS RE-TRIGGERED
  }

  @override
  void initState() {
    super.initState();
    myPageController = PageController();
  }

  @override
  void dispose() {
    myPageController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: AppDefaults.padding),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "${currentPage+1}".toString(),
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                "/${mydata.length}",
                style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.grey),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: goToLoginPage,
            child: Text('Skip'),
          ),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              itemBuilder: (context, index) {
                return OnboardingContent(
                  pageContent: mydata[index],
                  currentIndex: index,
                  onNext: onNextButtonPressed,
                );
              },
              onPageChanged: (v) {
                currentPage = v;
                setState(() {});
              },
              controller: myPageController,
              itemCount: mydata.length,
            )
          ),
        ],
      )


    );
  }
}
