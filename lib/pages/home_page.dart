import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slicing_ui_pro1/pages/search_page.dart';
import 'package:slicing_ui_pro1/pages/settings_page.dart';
import 'package:slicing_ui_pro1/pages/favorite_page.dart';
import 'package:slicing_ui_pro1/pages/tab_bar_view/tab_bar_view_adventures.dart';
import 'package:slicing_ui_pro1/pages/tab_bar_view/tab_bar_view_sights.dart';
import 'package:slicing_ui_pro1/pages/tab_bar_view/tab_bar_view_tours.dart';
import 'package:slicing_ui_pro1/util/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home_page';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemPosition = 0;
  int _currentTabBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreyAppColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(top: 16, bottom: 8),
        child: _buildBottomNavigationBar(
          selectedItemPosition: _selectedItemPosition,
          onTap: (index) => _selectedItemPosition = index,
        ),
      ),
      body: _pages(context)[_selectedItemPosition],
    );
  }

  List<Widget> _pages(BuildContext context) => [
        _buildHomePage(context),
        const SearchPage(),
        const FavoritePage(),
        const SettingsPage(),
      ];

  Widget _buildHomePage(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        _buildHeader(context),
      ],
      body: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildTabBar(
                context,
                onTap: (event) => _currentTabBarIndex = event,
              ),
              const SizedBox(height: 32),
              _buildTabBarView(context, _currentTabBarIndex),
              const SizedBox(height: 24),
              _buildSubMenuTitle(context),
              _buildSubMenuIcons(context)
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _tabViews() => [
        const TabBarViewSights(),
        const TabBarViewTours(),
        const TabBarViewAdventures(),
      ];

  Padding _buildSubMenuIcons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/kayaking_icon.svg',
                width: 35,
              ),
              const SizedBox(height: 16),
              Text(
                'KAYAKING',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/balooning_icon.svg',
                width: 35,
              ),
              const SizedBox(height: 16),
              Text(
                'BALOONING',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/hiking_icon.svg',
                width: 35,
              ),
              const SizedBox(height: 16),
              Text(
                'HIKING',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/snorkeling_icon.svg',
                colorFilter:
                    const ColorFilter.mode(kPrimaryAppColor, BlendMode.srcIn),
                width: 35,
              ),
              const SizedBox(height: 16),
              Text(
                'SNORKELING',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ).animate().fadeIn().slideX(
            begin: -.5,
            end: .0,
            duration: 500.ms,
          ),
    );
  }

  Padding _buildSubMenuTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Feeling Adventurous?",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: kTextAppColor,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          Text(
            'Show all',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: kPrimaryAppColor,
                  fontWeight: FontWeight.bold,
                ),
          )
        ],
      ).animate().fadeIn().slideX(begin: 1, end: 0, duration: 500.ms),
    );
  }

  Widget _buildTabBarView(BuildContext context, int currentTabBarIndex) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "16 sights",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: kTextAppColor, fontWeight: FontWeight.bold),
          ).animate().fadeIn().slideX(
                begin: -.2,
                end: .1,
                duration: 500.ms,
              ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 300,
          child: _tabViews()[currentTabBarIndex],
        ),
      ],
    );
  }

  Align _buildTabBar(
    BuildContext context, {
    required Function(int) onTap,
  }) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TabBar(
        indicatorColor: kPrimaryAppColor,
        labelColor: kPrimaryAppColor,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        labelStyle: Theme.of(context)
            .textTheme
            .titleSmall!
            .copyWith(fontWeight: FontWeight.bold),
        isScrollable: true,
        dividerColor: Colors.transparent,
        indicator: CircleTabIndicator(color: kPrimaryAppColor, radius: 4),
        onTap: (value) => setState(() {
          onTap(value);
        }),
        tabs: const [
          Tab(
            text: 'Sights',
          ),
          Tab(
            text: 'Tours',
          ),
          Tab(
            text: 'Adventures',
          ),
        ],
      ).animate().scale().slideX(duration: 500.ms, begin: -.2, end: 0),
    );
  }

  SliverToBoxAdapter _buildHeader(BuildContext context) {
    return SliverToBoxAdapter(
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discover",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: kTextAppColor, fontWeight: FontWeight.bold),
              ),
              const CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/512/4526/4526437.png',
                ),
              ).animate().shimmer(duration: 1000.ms)
            ],
          ),
        ).animate().fade().slideY(
              begin: -.2,
              end: 0.1,
              curve: Curves.bounceIn,
              duration: 1000.ms,
            ),
      ),
    );
  }

  Widget _buildBottomNavigationBar(
      {required int selectedItemPosition, required Function(int) onTap}) {
    SnakeShape snakeShape = SnakeShape.circle;

    return SnakeNavigationBar.color(
      behaviour: SnakeBarBehaviour.floating,
      snakeShape: snakeShape,
      shape: const RoundedRectangleBorder(side: BorderSide.none),
      snakeViewColor: kPrimaryAppColor,
      selectedItemColor:
          snakeShape == SnakeShape.indicator ? kPrimaryAppColor : null,
      unselectedItemColor: Colors.black38,
      currentIndex: selectedItemPosition,
      onTap: (value) => setState(() {
        onTap(value);
      }),
      items: const [
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.house,
            size: 20,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.search,
            size: 20,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.bookmark,
            size: 20,
          ),
          label: 'Bookmark',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.gear,
            size: 20,
          ),
          label: 'Settings',
        ),
      ],
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color, required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
