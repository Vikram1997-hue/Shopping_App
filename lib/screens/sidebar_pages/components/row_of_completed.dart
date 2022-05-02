import 'package:flutter/material.dart';
import 'package:untitled/constants/constants.dart';
import 'package:untitled/core/components/network_image_loader.dart';

class RowOfCompleted extends StatelessWidget {
  const RowOfCompleted(
      { Key? key,
        required this.price,
        required this.name,
        required this.date,
        required this.link,
      }) : super(key: key);

  final int price;
  final String name;
  final String date;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
          boxShadow: [BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(0.01),
          )],
        ),
        height: 90,
        child: Padding(
          padding: EdgeInsets.only(left: 5.0, right:10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 60,
                height: 60,
                child: AspectRatio(
                  aspectRatio: 1/1,
                  child: NetworkImageLoader(
                    src: link,
                  ),
                ),
              ),
              SizedBox(width: 13),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  SizedBox(height: 2),
                  Text("\u{20B9}$price", style: Theme.of(context).textTheme.headline2?.copyWith(
                    fontSize: 27,
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.w600,
                  )),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(date),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
