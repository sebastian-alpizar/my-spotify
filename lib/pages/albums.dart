class Album {
  final String name;
  final String artist;
  final String cover;

  const Album({required this.name, required this.artist, required this.cover});
}

class Albums {
  final List<Album> albums;

  const Albums()
  : albums = const [
    Album(
      name: 'TESTING',
      cover: 'asset/imgs/Testing.jpeg',
      artist: 'Kanye West'
    ),
    Album(
      name: 'GMX',
      cover: 'asset/imgs/GMX.png',
      artist: 'Kendrick Lamar'
    ),
    Album(
      name: 'WASTELAND',
      cover: 'asset/imgs/Wasteland.png',
      artist: 'Brent Faiyas'
    ),
    Album(
      name: 'Ultraviolence (Deluxe)',
      cover: 'asset/imgs/Ultraviolence.png',
      artist: 'Lana Del Rey'
    ),
    Album(
      name: 'Rodeo',
      cover: 'asset/imgs/Rodeo.jpg',
      artist: 'Travis Scott'
    ),
    Album(
      name: 'channel    ORANGE',
      cover: 'asset/imgs/ChannelOrange.jpeg',
      artist: 'Frank Ocean'
    ),
    Album(
      name: 'More Life',
      cover: 'asset/imgs/MoreLife.jpeg',
      artist: 'Drake'
    ),
    Album(
      name: 'My Beautiful Dark Twisted Fantasy',
      cover: 'asset/imgs/MyBeautifulDarkTwistedFantasy.jpeg',
      artist: 'Kanye West'
    ),
  ];

  int getLength() {
    return albums.length;
  }

  List<Album> getAlbums(){
    return albums;
  }
}