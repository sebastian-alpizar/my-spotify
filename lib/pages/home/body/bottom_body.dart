import 'package:flutter/material.dart';
import 'package:my_spotify/pages/albums.dart';

class ButtonBody extends StatelessWidget {
  final Albums albums = const Albums();
  final String title;

  const ButtonBody({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return customRecomendations();
  }

  Widget customRecomendations() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 12.0),
          SizedBox(
            height: 210.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                final album = albums.getAlbums()[index];
                return customAlbum(album);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget customAlbum(Album album) {
    return SizedBox(
      width: 175.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 160.0,
            width: 160.0,
            child: Image.asset(
              album.cover,
              fit: BoxFit.cover,
            )
          ),
          const SizedBox(height: 6),
          Text(
            album.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.normal,
              overflow: TextOverflow.ellipsis
            ),
          ),
          Row(
            children: [
              const Text(
                'Álbum',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.0,
                  fontWeight: FontWeight.normal
                ),
              ),
              const SizedBox(width: 3),
              const Icon(
                Icons.fiber_manual_record,
                color: Colors.white, 
                size: 5.0
              ),
              const SizedBox(width: 3),
              Text(
                album.artist,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13.0,
                  fontWeight: FontWeight.normal
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
