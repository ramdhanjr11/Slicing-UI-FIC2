class TravelModel {
  final int id;
  final String travelName;
  final String location;
  final String longTrip;
  final String imageUrl;

  TravelModel({
    required this.id,
    required this.travelName,
    required this.location,
    required this.longTrip,
    required this.imageUrl,
  });
}

final List<TravelModel> travelItems = [
  TravelModel(
    id: 1,
    travelName: "Pura Luhur Uluwatu",
    location: "Bali, Indonesia",
    longTrip: "6 days",
    imageUrl:
        "https://images.unsplash.com/photo-1588625224664-a561c1f5f619?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80",
  ),
  TravelModel(
      id: 2,
      travelName: "Monas",
      location: "Jakarta, Indonesia",
      longTrip: "4 days",
      imageUrl:
          "https://images.unsplash.com/photo-1662808782878-941ea16adbdc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80"),
  TravelModel(
    id: 3,
    travelName: "Pulau Komodo",
    location: "Lombok, Indonesia",
    longTrip: "4 days",
    imageUrl:
        "https://images.unsplash.com/photo-1607427225127-a4ae1d4b050c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1767&q=80",
  ),
  TravelModel(
    id: 4,
    travelName: "Nusa Penida",
    location: "Bali, Indonesia",
    longTrip: "6 days",
    imageUrl:
        "https://images.unsplash.com/photo-1577717903315-1691ae25ab3f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80",
  ),
  TravelModel(
    id: 5,
    travelName: "Pulau Lombok",
    location: "Lombok, Indonesia",
    longTrip: "7 days",
    imageUrl:
        "https://images.unsplash.com/photo-1575305661649-d700e2b5a941?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=794&q=80",
  ),
];
