import 'package:flutter/material.dart';
import 'package:slicing_ui_pro1/model/travel_model.dart';
import 'package:slicing_ui_pro1/util/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slicing_ui_pro1/widgets/image_menu_item.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home_page';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreyAppColor,
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          _buildHeader(context),
        ],
        body: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildTabBar(context),
              const SizedBox(height: 32),
              _buildTabBarView(context),
              const SizedBox(height: 24),
              _buildSubMenuTitle(context),
              _buildSubMenuIcons(context)
            ],
          ),
        ),
      ),
    );
  }

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
                'assets/icons/snoorkeling_icon.svg',
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
      ),
    );
  }

  Widget _buildTabBarView(BuildContext context) {
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
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var travelItem = sightTravelModels[index];
              return ImageMenuItem(
                imageUrl: travelItem.imageUrl,
                title: travelItem.title,
              );
            },
            itemCount: 4,
          ),
        )
      ],
    );
  }

  Align _buildTabBar(BuildContext context) {
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
      ),
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
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _buildBottomNavigationBar() {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 2),
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: kPrimaryAppColor,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 2),
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
                size: 30,
                color: kGrey2AppColor,
              ),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 2),
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_outline,
                size: 30,
                color: kGrey2AppColor,
              ),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 2),
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings_outlined,
                size: 30,
                color: kGrey2AppColor,
              ),
            ),
          ),
        ],
      ),
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
