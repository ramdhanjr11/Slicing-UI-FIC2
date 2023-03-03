import 'package:flutter/material.dart';
import 'package:ui_pro_2/models/travel_model.dart';
import 'package:ui_pro_2/pages/favorite_page.dart';
import 'package:ui_pro_2/pages/search_page.dart';
import 'package:ui_pro_2/widgets/home_item_travel.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home_page';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final EdgeInsets _appPadding = const EdgeInsets.all(16);
  late double height;
  int _bottomNavCurrentIndex = 0;

  onTapBottomNav(int index) {
    setState(() {
      _bottomNavCurrentIndex = index;
    });
  }

  List<Widget> pages() => [
        _buildHomeContent(context),
        const SearchPage(),
        const FavoritePage(),
      ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: pages()[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavCurrentIndex,
        onTap: onTapBottomNav,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            label: 'Bookmark',
          )
        ],
      ),
    );
  }

  SafeArea _buildHomeContent(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeadlineSection(),
            _buildBannerSection(context),
            const SizedBox(height: 24),
            ListView.builder(
              itemBuilder: (context, index) => HomeItemTravel(
                travelItem: travelItems[index],
              ),
              itemCount: travelItems.length,
              shrinkWrap: true,
              primary: false,
            ),
          ],
        ),
      ),
    );
  }

  Container _buildBannerSection(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, top: 16),
      height: height / 4,
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(24),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1512229146678-994d3f1e31bf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1769&q=80',
                ),
              ),
            ),
          ),
          const Positioned(
            top: 16,
            right: 16,
            child: CircleAvatar(
              radius: 18,
              backgroundColor: Colors.white,
              child: Icon(Icons.favorite, size: 18),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Grand Canyon Tour',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Arizona, USA',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.white,
                      ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Column _buildHeadlineSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: _appPadding,
              child: const CircleAvatar(
                radius: 25,
                backgroundColor: Colors.black,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80',
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: _appPadding,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Plan',
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                letterSpacing: 2,
                              ),
                    ),
                    Text(
                      'Next Trip',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(letterSpacing: 3),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: SizedBox(
                  height: 80,
                  child: VerticalDivider(
                    width: 6,
                    color: Colors.black45,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '15',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const WidgetSpan(
                            child: SizedBox(width: 4),
                          ),
                          TextSpan(
                            text: 'new',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'locations',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
