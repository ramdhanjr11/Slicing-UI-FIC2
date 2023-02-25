class TravelModel {
  final String imageUrl;
  final String title;

  TravelModel({
    required this.imageUrl,
    required this.title,
  });
}

List<TravelModel> sightTravelModels = [
  TravelModel(
    imageUrl:
        'https://images.unsplash.com/photo-1431794062232-2a99a5431c6c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    title: 'Curug Cikaso',
  ),
  TravelModel(
    imageUrl:
        'https://img.freepik.com/free-vector/gradient-mountain-landscape_52683-77407.jpg?w=1060&t=st=1677298783~exp=1677299383~hmac=c1ad14a09d62923278cc282bd922590a5a1b6fed67236e7b024cbdb29cfee96c',
    title: 'Gunung Gede Pangrango',
  ),
  TravelModel(
    imageUrl:
        'https://img.freepik.com/free-vector/mother-child-deer-nature-landscape_23-2148439704.jpg?w=1060&t=st=1677298816~exp=1677299416~hmac=2d73052cdabff6ab64644fd90a09a3cc494e63d78ad8d49f49736b5429076cfe',
    title: 'Bukit Teletabis',
  ),
  TravelModel(
    imageUrl:
        'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=1060&t=st=1677298852~exp=1677299452~hmac=190dc129d0a324c46e20fc4a9eea17bc63594e05c8a67a4ec894b025218e9f50',
    title: 'Bukit Darma Ciletuh',
  ),
];
