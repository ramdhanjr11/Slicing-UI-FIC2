class TravelModel {
  final String imageUrl;
  final String title;
  final List<String> imageCollection;

  TravelModel(
      {required this.imageUrl,
      required this.title,
      required this.imageCollection});
}

List<TravelModel> sightTravelModels = [
  TravelModel(
    imageUrl:
        'https://img.freepik.com/free-vector/waterfall-cascade-jungle-forest-cartoon-landscape-river-stream-flowing-from-rocks-creek-lake-with-palm-tree-branches-around-water-jet-falling-from-stones-wild-park-vector-illustration_107791-9291.jpg?w=1380&t=st=1677319109~exp=1677319709~hmac=e17c0738751b66c42a472844c339ea787900ae13a2a71cbae3fc704aa032b979',
    title: 'Curug Cikaso',
    imageCollection: [
      'https://img.freepik.com/free-vector/hand-painted-nature-background_23-2148940793.jpg?w=996&t=st=1677319005~exp=1677319605~hmac=9b1bf31882187b838fc1a95c4d2153c5636c0ef7a33ebd4e1f2ea9275f4a82b5',
      'https://img.freepik.com/free-vector/colourful-gradient-spring-landscape_23-2148421877.jpg?w=996&t=st=1677319150~exp=1677319750~hmac=c806c5dd9631d479e4471901a636ea7d32641a8a8ad61cb1980c402cd5938b85',
      'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=1060&t=st=1677298852~exp=1677299452~hmac=190dc129d0a324c46e20fc4a9eea17bc63594e05c8a67a4ec894b025218e9f50',
    ],
  ),
  TravelModel(
    imageUrl:
        'https://img.freepik.com/free-vector/hand-painted-nature-background_23-2148940793.jpg?w=996&t=st=1677319005~exp=1677319605~hmac=9b1bf31882187b838fc1a95c4d2153c5636c0ef7a33ebd4e1f2ea9275f4a82b5',
    title: 'Gunung Pangrango',
    imageCollection: [
      'https://img.freepik.com/free-vector/hand-painted-nature-background_23-2148940793.jpg?w=996&t=st=1677319005~exp=1677319605~hmac=9b1bf31882187b838fc1a95c4d2153c5636c0ef7a33ebd4e1f2ea9275f4a82b5',
      'https://img.freepik.com/free-vector/colourful-gradient-spring-landscape_23-2148421877.jpg?w=996&t=st=1677319150~exp=1677319750~hmac=c806c5dd9631d479e4471901a636ea7d32641a8a8ad61cb1980c402cd5938b85',
      'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=1060&t=st=1677298852~exp=1677299452~hmac=190dc129d0a324c46e20fc4a9eea17bc63594e05c8a67a4ec894b025218e9f50',
    ],
  ),
  TravelModel(
    imageUrl:
        'https://img.freepik.com/free-vector/colourful-gradient-spring-landscape_23-2148421877.jpg?w=996&t=st=1677319150~exp=1677319750~hmac=c806c5dd9631d479e4471901a636ea7d32641a8a8ad61cb1980c402cd5938b85',
    title: 'Bukit Teletabis',
    imageCollection: [
      'https://img.freepik.com/free-vector/hand-painted-nature-background_23-2148940793.jpg?w=996&t=st=1677319005~exp=1677319605~hmac=9b1bf31882187b838fc1a95c4d2153c5636c0ef7a33ebd4e1f2ea9275f4a82b5',
      'https://img.freepik.com/free-vector/colourful-gradient-spring-landscape_23-2148421877.jpg?w=996&t=st=1677319150~exp=1677319750~hmac=c806c5dd9631d479e4471901a636ea7d32641a8a8ad61cb1980c402cd5938b85',
      'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=1060&t=st=1677298852~exp=1677299452~hmac=190dc129d0a324c46e20fc4a9eea17bc63594e05c8a67a4ec894b025218e9f50',
    ],
  ),
  TravelModel(
    imageUrl:
        'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=1060&t=st=1677298852~exp=1677299452~hmac=190dc129d0a324c46e20fc4a9eea17bc63594e05c8a67a4ec894b025218e9f50',
    title: 'Bukit Darma Ciletuh',
    imageCollection: [
      'https://img.freepik.com/free-vector/hand-painted-nature-background_23-2148940793.jpg?w=996&t=st=1677319005~exp=1677319605~hmac=9b1bf31882187b838fc1a95c4d2153c5636c0ef7a33ebd4e1f2ea9275f4a82b5',
      'https://img.freepik.com/free-vector/colourful-gradient-spring-landscape_23-2148421877.jpg?w=996&t=st=1677319150~exp=1677319750~hmac=c806c5dd9631d479e4471901a636ea7d32641a8a8ad61cb1980c402cd5938b85',
      'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=1060&t=st=1677298852~exp=1677299452~hmac=190dc129d0a324c46e20fc4a9eea17bc63594e05c8a67a4ec894b025218e9f50',
    ],
  ),
];
