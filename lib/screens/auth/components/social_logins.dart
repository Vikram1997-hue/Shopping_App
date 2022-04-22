import 'package:flutter/material.dart';
import 'package:untitled/constants/constants.dart';

class SocialLogins extends StatelessWidget {
  const SocialLogins({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SingleSocialButton(onTap: () {}, imageLink: 'https://i.imgur.com/fAYfjAa.png'),
        SizedBox(width: AppDefaults.margin*2,),
        SingleSocialButton(onTap: () {}, imageLink: 'https://i.imgur.com/DzXthZA.png'),
      ],
    );
  }
}

class SingleSocialButton extends StatelessWidget {
  const SingleSocialButton(
      { Key? key,
        required this.onTap,
        required this.imageLink}
    ) : super(key: key);

  final VoidCallback onTap;
  final String imageLink;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      focusColor: Colors.white,
      child: Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [BoxShadow(
              blurRadius: 15,
              offset: Offset(5, 4),
              color: Color(0x0FF33333).withOpacity(0.05),
            )]
        ),
        child: CircleAvatar(
          child: Image(
              image: NetworkImage(imageLink),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
