import 'package:flutter/material.dart';
import 'package:untitled/constants/app_defaults.dart';
import 'package:untitled/constants/constants.dart';
import 'package:untitled/screens/home/components/afterTutComponents/filter_dialog_category.dart';

class FilterDialog extends StatefulWidget {
  const FilterDialog({Key? key}) : super(key: key);

  @override
  _FilterDialogState createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {

  RangeValues initialRange = RangeValues(500, 2000);
  RangeValues distanceRange = RangeValues(1,20);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(AppDefaults.padding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            //the top part
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: () {}, child: Text('Clear'),),
                Text("Filters", style: Theme.of(context).textTheme.headline6,),
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  radius: 21,
                  child: IconButton(
                    iconSize: 18,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),

            Divider(),
            SizedBox(height: 12),

            //category selector (boxes)
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Category", style: Theme.of(context).textTheme.headline6,),
                  SizedBox(height: 16,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        FilterDialogCategory(
                          name: 'New Arrivals',
                          isActive: true
                        ),
                        FilterDialogCategory(
                          name: "Top Trending",
                          isActive: false
                        ),
                        FilterDialogCategory(
                          name: "Featured",
                          isActive: false,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),




            //pricing slider
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Pricing", style: Theme.of(context).textTheme.headline6,),
                  Text("\u{20B9}${initialRange.start.toInt()} - \u{20B9}${initialRange.end.toInt()} ", style: TextStyle(color: Colors.grey),),
                ],
              ),
            ),
            SizedBox(height: 5,),
            RangeSlider(
              onChanged: (RangeValues newRange) {
                setState(() {
                  initialRange = newRange;

                });
              },
              values: initialRange,
              max: 4000
            ),


            //Distance slider
            Padding(
              padding: EdgeInsets.only(top: 30, left: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Distance", style: Theme.of(context).textTheme.headline6,),
                  Text("${distanceRange.start.toInt()}km - ${distanceRange.end.toInt()}km", style: TextStyle(color: Colors.grey),),
                ],
              ),
            ),
            SizedBox(height: 5,),
            RangeSlider(
              onChanged: (RangeValues newRange) {
                setState(() {
                  distanceRange = newRange;
                });
              },
              values: distanceRange,
              max: 50
            ),
            SizedBox(height: 30),

            SizedBox(
              width: MediaQuery.of(context).size.width*0.5, /* WHENEVER SOMETHING TAKES A GREATER WIDTH/HEIGHT THAN YOU
                                                      WANT, WRAP IT WITH A SIZEDBOX. NOW SET THIS SIZEDBOX'S WIDTH AND
                                                      HEIGHT TO WHATEVER YOU WANT*/
              child: Padding(
                padding: const EdgeInsets.only(bottom: defaultPadding),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Apply Filter")
                ),
              ),
            ),


          ],
        ),
    );
  }
}
