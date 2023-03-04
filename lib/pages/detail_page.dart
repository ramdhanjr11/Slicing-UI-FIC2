import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:ui_pro_2/models/travel_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height / 1.15,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildHeaderDetailSection(context),
              const SizedBox(height: 24),
              _buildImageDetailSection(height, width),
              const SizedBox(height: 32),
              _buildIndicatorImageSection(),
              const SizedBox(height: 32),
              _buildContentTitleSection(context),
              _buildContentDetailSection(context)
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildContentDetailSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: ExpandableText(
        'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.',
        expandText: 'read more',
        collapseText: 'less',
        maxLines: 3,
        linkColor: Colors.black,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Colors.black45),
        linkStyle: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Padding _buildContentTitleSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'Yosemite National Park',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Flexible(
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: IconButton(
                color: Colors.white,
                icon: const Icon(Icons.favorite),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row _buildIndicatorImageSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 13,
          height: 7,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8),
            color: Colors.black26,
          ),
        ),
        const SizedBox(width: 6),
        Container(
          width: 25,
          height: 7,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8),
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 6),
        Container(
          width: 13,
          height: 7,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8),
            color: Colors.black26,
          ),
        ),
      ],
    );
  }

  ClipRRect _buildImageDetailSection(double height, double width) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.network(
        travelItems[0].imageUrl,
        fit: BoxFit.cover,
        height: height * .45,
        width: width * .7,
      ),
    );
  }

  Stack _buildHeaderDetailSection(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            'Detail title',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(Icons.keyboard_arrow_down_outlined),
          ),
        ),
      ],
    );
  }
}
