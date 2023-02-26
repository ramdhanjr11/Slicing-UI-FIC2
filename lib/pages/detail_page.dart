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
        title: const Text(
          'Test',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Container(
            height: 400,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://img.freepik.com/free-vector/hand-drawn-spring-illustration_23-2149291210.jpg?w=1060&t=st=1677413732~exp=1677414332~hmac=3c3bca0d974491b00d6254d38dea8346c3c5503c5a6592dd2e85964f07cf89c9'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              color: Colors.black.withOpacity(.16),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: .5,
            minChildSize: .5,
            maxChildSize: .9,
            builder: (context, scrollController) {
              return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
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
                        Row(
                          children: [
                            Text(
                              'Waduk \nWonorejo',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                      color: kTextAppColor,
                                      fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ));
            },
          )
        ],
      ),
    );
  }
}
