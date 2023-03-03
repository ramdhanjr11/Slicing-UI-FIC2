import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ui_pro_2/models/travel_model.dart';
import 'package:ui_pro_2/widgets/search_item_travel.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Top Tours',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'For your request',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
            MasonryGridView.count(
              crossAxisCount: 2,
              itemCount: travelItems.length,
              mainAxisSpacing: 40,
              crossAxisSpacing: 15,
              padding: const EdgeInsets.all(24),
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) {
                return SearchItemTravel(
                  index: index,
                  travelItem: travelItems[index],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
