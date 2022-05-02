import 'package:flutter/material.dart';
import 'package:untitled/constants/app_defaults.dart';
import 'package:untitled/core/components/network_image_loader.dart';

class HeaderOfSidebar extends StatelessWidget {
  const HeaderOfSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: AppDefaults.radius*2,
          child: NetworkImageCircularLoader(
            src: 'https://i.imgur.com/IVGNMtr.png',
          )
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Vignesh Bhatnagar",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(0.6)
                ),
              ),

              SizedBox(height:1),

              Text(
                "Fashion Designer",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width:10),
      ],
    );
  }
}
