import 'package:flutter/material.dart';
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
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: _buildAppBarButton(icon: Icons.arrow_back_ios_new),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: _buildAppBarButton(icon: Icons.favorite_border_outlined),
          ),
        ],
        iconTheme: const IconThemeData(color: kPrimaryAppColor),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
                height: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://img.freepik.com/free-vector/waterfall-cascade-jungle-forest-cartoon-landscape-river-stream-flowing-from-rocks-creek-lake-with-palm-tree-branches-around-water-jet-falling-from-stones-wild-park-vector-illustration_107791-9291.jpg?w=1380&t=st=1677319109~exp=1677319709~hmac=e17c0738751b66c42a472844c339ea787900ae13a2a71cbae3fc704aa032b979'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  color: Colors.black.withOpacity(.16),
                ),
              ),
              Positioned(
                bottom: 48,
                right: 16,
                child: _buildSelectedImages(),
              )
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: .5,
            minChildSize: .5,
            maxChildSize: .9,
            builder: (context, scrollController) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                decoration: const BoxDecoration(
                  color: kGreyAppColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      _buildHeaderContain(context),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Text(
                            'Overview',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: kPrimaryAppColor,
                                    fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 24),
                          Text(
                            'Reviews',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      _buildDurationAndRatingContain(context),
                      const SizedBox(height: 24),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                            'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }

  Row _buildDurationAndRatingContain(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: kPrimaryAppColor,
                blurRadius: 40,
                offset: Offset(0, 8),
              ),
            ],
          ),
          child: const Icon(
            Icons.access_time_filled_rounded,
            size: 25,
            color: kPrimaryAppColor,
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'DURATION',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.grey,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              '3 hours',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: kTextAppColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        const SizedBox(width: 16),
        Container(
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: kPrimaryAppColor,
                blurRadius: 40,
                offset: Offset(0, 8),
              ),
            ],
          ),
          child: const Icon(
            Icons.star,
            size: 25,
            color: kPrimaryAppColor,
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'RATING',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.grey,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              '3.5 out of 5',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: kTextAppColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        )
      ],
    );
  }

  Row _buildHeaderContain(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            'Curug Cikaso',
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
                        color: kTextAppColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: '/person',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSelectedImages() {
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
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://img.freepik.com/free-vector/waterfall-cascade-jungle-forest-cartoon-landscape-river-stream-flowing-from-rocks-creek-lake-with-palm-tree-branches-around-water-jet-falling-from-stones-wild-park-vector-illustration_107791-9291.jpg?w=1380&t=st=1677319109~exp=1677319709~hmac=e17c0738751b66c42a472844c339ea787900ae13a2a71cbae3fc704aa032b979'),
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
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://img.freepik.com/free-vector/waterfall-cascade-jungle-forest-cartoon-landscape-river-stream-flowing-from-rocks-creek-lake-with-palm-tree-branches-around-water-jet-falling-from-stones-wild-park-vector-illustration_107791-9291.jpg?w=1380&t=st=1677319109~exp=1677319709~hmac=e17c0738751b66c42a472844c339ea787900ae13a2a71cbae3fc704aa032b979'),
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
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://img.freepik.com/free-vector/waterfall-cascade-jungle-forest-cartoon-landscape-river-stream-flowing-from-rocks-creek-lake-with-palm-tree-branches-around-water-jet-falling-from-stones-wild-park-vector-illustration_107791-9291.jpg?w=1380&t=st=1677319109~exp=1677319709~hmac=e17c0738751b66c42a472844c339ea787900ae13a2a71cbae3fc704aa032b979'),
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
    );
  }

  Widget _buildAppBarButton({required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.all(4),
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
    );
  }
}
