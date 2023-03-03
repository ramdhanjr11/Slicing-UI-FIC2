import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ui_pro_2/models/travel_model.dart';

class SearchItemTravel extends StatelessWidget {
  final int index;
  final TravelModel travelItem;

  const SearchItemTravel({
    super.key,
    required this.index,
    required this.travelItem,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, index.isOdd ? 50 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  width: 160,
                  height: 220,
                  fit: BoxFit.cover,
                  travelItem.imageUrl,
                ),
              ).animate().shimmer(duration: 1000.ms),
              const Positioned(
                top: 12,
                right: 12,
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.favorite, size: 18),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            travelItem.travelName,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: r'$459.00',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '/${travelItem.longTrip}',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ).animate().fadeIn().slideX(begin: .4, end: 0, duration: 400.ms),
    );
  }
}
