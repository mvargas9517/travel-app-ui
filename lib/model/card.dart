class Location {
  final String rating;
  final String place;
  final String placetwo;
  final String placethree;
  final String user;
  final String imageUrl;
  final String shares;
  final String description;

  Location({this.rating, this.place, this.user, this.imageUrl, this.shares, this.placetwo, this.placethree, this.description});
}

final List <Location> locations = [
  Location(
    rating: '4.1',
    place: 'Myanmar,\nAsia',
    placetwo: 'Asia, Myanmar',
    placethree: 'Myanmar',
    user: 'images/person0.jpg',
    imageUrl: 'images/location0.jpg',
    shares: '17',
    description: 'Officially the Republic of the Union\nof Myanmar and also known as Burma,\nis a country in Southeast Asia'
  ),
  Location(
    rating: '3.8',
    place: 'Kathmandu,\nNepal',
    placetwo: 'Nepal, Kathmandu',
    placethree: 'Kathmandu',
    user: 'images/person1.jpg',
    imageUrl: 'images/location1.jpg',
    shares: '20',
    description: 'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod\ntempor incididunt ut labore et '
  ),
  Location(
    rating: '4.0',
    place: 'Paris,\nFrance',
    placetwo: 'France, Paris',
    placethree: 'Paris',
    user: 'images/person2.jpg',
    imageUrl: 'images/location2.jpg',
    shares: '23',
    description: 'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod\ntempor incididunt ut labore et '
  ),
];