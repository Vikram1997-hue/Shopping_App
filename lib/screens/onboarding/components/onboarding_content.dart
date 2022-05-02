import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:untitled/constants/app_defaults.dart';
import 'package:untitled/core/components/network_image_loader.dart';
import 'package:untitled/screens/onboarding/components/onboarding_data.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent(
    {
      Key? key,
      required this.pageContent,
      required this.currentIndex,
      required this.onNext
    }
  ) : super(key: key);

  final OnboardingData pageContent;
  final int currentIndex;
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(AppDefaults.padding),
          child: AspectRatio(
            aspectRatio: 1/1,
            child: NetworkImageLoader(
              src: pageContent.imageLink,
              fit: BoxFit.cover,
            ),
            // child: Image(
            //   image: NetworkImage(pageContent.imageLink),
            //   fit: BoxFit.cover,
            // ),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(AppDefaults.padding*2),
          child: Column(
            children: [
              Text(pageContent.title, style: Theme.of(context).textTheme.headline6,),
              SizedBox(height: AppDefaults.margin),
              Text(pageContent.subtitle, style: Theme.of(context).textTheme.bodyText2, textAlign: TextAlign.center,),
              SizedBox(height: AppDefaults.margin),
            ],
          ),
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width/2,
          child: ElevatedButton(
            onPressed: onNext,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Next'),
                Row(
                  //List.generate - for the arrows in next button. 1 arrow on 1st page, 2 on 2nd, 3 on 3rd
                  children: List.generate(
                    currentIndex+1,
                    (index) => Icon(
                      IconlyLight.arrowRight2,
                      color: currentIndex == index ? Colors.white : Colors.white54,
                      size: 16,
                    )),
                ),
              ],
            ),
          ),
        ),


      ],
    );
  }
}
