import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:slicing_ui_pro1/model/travel_model.dart';
import 'package:slicing_ui_pro1/util/theme.dart';

class DetailPage extends StatefulWidget {
  static const routeName = '/detail_page';
  final TravelModel model;

  const DetailPage({
    super.key,
    required this.model,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final TravelModel item = widget.model;

    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              _buildImageDetail(item, height)
                  .animate()
                  .shimmer(duration: 1000.ms),
              Positioned(
                bottom: height / 14,
                right: 16,
                child: _buildImageCollection(item),
              )
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: .55,
            minChildSize: .55,
            maxChildSize: .8,
            builder: (context, scrollController) {
              return _buildScrollableSheetContent(
                context,
                scrollController: scrollController,
                item: item,
              );
            },
          ).animate().fadeIn().slideY(begin: .1, end: .0, duration: 500.ms),
          _buildAppBar(context),
        ],
      ),
    );
  }

  Align _buildAppBar(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildAppBarButton(
              icon: Icons.arrow_back_ios_new,
              onTap: () {
                Navigator.of(context).pop();
              },
            ).animate().fadeIn().slideX(begin: -.4, end: .0, duration: 500.ms),
            _buildAppBarButton(
              icon: Icons.favorite_border_outlined,
              onTap: () {},
            ).animate().fadeIn().slideX(begin: .4, end: .0, duration: 500.ms),
          ],
        ),
      ),
    );
  }

  Container _buildScrollableSheetContent(
    BuildContext context, {
    required ScrollController scrollController,
    required TravelModel item,
  }) {
    return Container(
      padding: const EdgeInsets.only(
        top: 16,
        right: 16,
        bottom: 0,
        left: 16,
      ),
      decoration: const BoxDecoration(
        color: kGreyAppColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                _buildHeaderContent(context, item),
                const SizedBox(height: 24),
                _buildTitleBar(context),
                const SizedBox(height: 24),
                _buildDurationAndRatingContent(context),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ShaderMask(
                    shaderCallback: (rectangle) => const LinearGradient(
                      colors: [Colors.black, Colors.transparent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ).createShader(
                      Rect.fromLTRB(
                        0,
                        0,
                        rectangle.width,
                        rectangle.height,
                      ),
                    ),
                    blendMode: BlendMode.dstIn,
                    child: const Text(
                      'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              height: 110,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  backgroundColor: kPrimaryAppColor,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Book Now',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.arrow_right_alt,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Row _buildTitleBar(BuildContext context) {
    Widget titleBar(String title, bool isReview) {
      TextTheme textTheme = Theme.of(context).textTheme;

      return Text(
        title,
        style: isReview
            ? textTheme.bodyMedium!
                .copyWith(color: Colors.grey, fontWeight: FontWeight.bold)
            : textTheme.bodyLarge!
                .copyWith(color: kPrimaryAppColor, fontWeight: FontWeight.bold),
      );
    }

    return Row(
      children: [
        titleBar('Overview', false),
        const SizedBox(width: 24),
        titleBar('Reviews', true),
      ],
    );
  }

  Hero _buildImageDetail(TravelModel item, double height) {
    return Hero(
      tag: item.imageUrl,
      child: Container(
        height: height * .5,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              item.imageUrl,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(.16),
        ),
      ),
    );
  }

  Row _buildDurationAndRatingContent(BuildContext context) {
    Widget itemContent(IconData icon, String title, String subtitle) {
      return Row(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: const Offset(2, 3),
                  blurRadius: 3,
                  spreadRadius: 0.5,
                ),
              ],
            ),
            child: Icon(
              icon,
              size: 25,
              color: kPrimaryAppColor,
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.grey,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: kTextAppColor, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      );
    }

    return Row(
      children: [
        itemContent(Icons.access_time_filled, 'DURATION', '3 hours'),
        const SizedBox(width: 16),
        itemContent(Icons.star, 'RATING', '3.5 out of 5'),
      ],
    );
  }

  Row _buildHeaderContent(BuildContext context, TravelModel item) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            item.title,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: kTextAppColor, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text.rich(
            textAlign: TextAlign.end,
            TextSpan(
              children: [
                TextSpan(
                  text: r'$96',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: kTextAppColor, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '/person',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildImageCollection(TravelModel item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withOpacity(.8),
          ),
          padding: const EdgeInsets.all(4),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  item.imageCollection[0],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withOpacity(.8),
          ),
          padding: const EdgeInsets.all(4),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  item.imageCollection[1],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withOpacity(.8),
          ),
          padding: const EdgeInsets.all(4),
          child: Container(
            width: 40,
            height: 40,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  item.imageCollection[2],
                ),
              ),
            ),
            child: Container(
              color: Colors.black.withOpacity(.4),
              child: Center(
                child: Text(
                  '+10',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    )
        .animate()
        .fadeIn()
        .slideY(begin: .4, end: .0, duration: 500.ms)
        .shimmer(duration: 1000.ms);
  }

  Widget _buildAppBarButton(
      {required IconData icon, required Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.5),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.7),
            ),
            margin: const EdgeInsets.all(4),
            padding: const EdgeInsets.all(8),
            child: Icon(
              icon,
              size: 18,
            ),
          ),
        ),
      ),
    );
  }
}
