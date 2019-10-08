class Location {
  final double rating;
  final String place;
  final String user;
  final String imageUrl;
  final String shares;

  Location({this.rating, this.place, this.user, this.imageUrl, this.shares});
}

final List <Location> locations = [
  Location(
    rating: 4.1,
    place: 'Myanmar,\nAsia',
    user: 'images/person0.jpg',
    imageUrl: 'images/location0.jpg',
    shares: '17',
  ),
  Location(
    rating: 3.8,
    place: 'Kathmandu,\nNepal',
    user: 'images/person1.jpg',
    imageUrl: 'images/location1.jpg',
    shares: '20',
  ),
  Location(
    rating: 4.0,
    place: 'Paris,\nFrance',
    user: 'images/person2.jpg',
    imageUrl: 'images/location2.jpg',
    shares: '23',
  ),
];