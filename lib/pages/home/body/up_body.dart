import 'package:flutter/material.dart';
import 'package:my_spotify/pages/albums.dart';

class UpBody extends StatelessWidget {
  final Albums albums = const Albums();

  const UpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return customUpBody();
  }

  Widget customUpBody() {
    return Container(
      margin: const EdgeInsets.only(left: 15.0, top: 8.0, right: 15.0, bottom: 20.0),
      height: 290,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0, // Ancho máximo de cada elemento
          crossAxisSpacing: 2.0, // Espaciado horizontal entre elementos
          mainAxisSpacing: 2.0, // Espaciado vertical entre elementos
          childAspectRatio: 2.8, // Relación ancho:alto de cada elemento
        ),
        itemCount: 8,
        itemBuilder: (context, index) {
          final album = albums.getAlbums()[index];
          return Card(
            color: Colors.black,
            child: customAlbum(album)
          );
        },
      ),
    );
  }

  Widget customAlbum(Album album) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 36, 36, 36),
        borderRadius: BorderRadius.circular(5.0)
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image.asset(album.cover)
          ),
          const SizedBox(width: 9),
          Expanded(
            child: Text(
              album.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ]
      ),
    );
  }
}