import 'package:flutter/material.dart';
import 'package:slicing_ui_pro1/model/travel_model.dart';

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
      body: Container(),
    );
  }
}
