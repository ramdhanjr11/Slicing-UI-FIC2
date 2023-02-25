// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:slicing_ui_pro1/model/travel_model.dart';
import 'package:slicing_ui_pro1/pages/detail_page.dart';
import 'package:slicing_ui_pro1/widgets/image_menu_item.dart';

class TabBarViewSights extends StatefulWidget {
  const TabBarViewSights({Key? key}) : super(key: key);

  @override
  State<TabBarViewSights> createState() => _TabBarViewSightsState();
}

class _TabBarViewSightsState extends State<TabBarViewSights> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var travelItem = sightTravelModels[index];
        return InkWell(
          onTap: () => Navigator.of(context)
              .pushNamed(DetailPage.routeName, arguments: travelItem),
          child: ImageMenuItem(
            imageUrl: travelItem.imageUrl,
            title: travelItem.title,
          ),
        );
      },
      itemCount: 4,
    )
        .animate()
        .fadeIn()
        .slideX(begin: .4, end: 0, duration: 500.ms)
        .shimmer(duration: 3000.ms);
  }
}
