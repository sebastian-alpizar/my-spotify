import 'package:flutter/material.dart';
import 'package:my_spotify/pages/song.dart';

class FloatingButton extends StatelessWidget {
  final Song song;

  const FloatingButton({
    super.key,
    required this.song,
  });

  @override
  Widget build(BuildContext context) {
    return customButton();
  }

  Widget customButton() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            fixedSize: const Size(390, 70),
            backgroundColor: const Color.fromARGB(255, 143, 95, 22),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
            ),
          ),
          onPressed: () {},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset(song.cover)
              ),
              const SizedBox(width: 12),
              SizedBox(
                width: 185.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5.5),
                    Text(
                      song.name,
                      style: const TextStyle(
                        color: Colors.white,
                        overflow: TextOverflow.ellipsis
                      )
                    ),
                    Text(
                      song.artist,
                      style: const TextStyle(
                        color: Colors.white,
                        overflow: TextOverflow.ellipsis
                      )
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: (){},
                color: Colors.white,
                icon: const Icon(Icons.computer_outlined, size: 30.0)
              ),
              IconButton(
                onPressed: (){},
                color: Colors.white,
                icon: const Icon(Icons.play_arrow, size: 35.0)
              )
            ],
          )
        ),
        const SizedBox(
          height: 3.0,
          width: 365.0,
          child: LinearProgressIndicator(
            value: 0.3,
            backgroundColor: Color.fromARGB(255, 107, 104, 104),
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        ),
      ],
    );
  }
}
