import 'package:flutter/material.dart';
import 'package:my_spotify/pages/home/body/bottom_body.dart';
import 'package:my_spotify/pages/home/body/up_body.dart';
import 'package:my_spotify/pages/home/bottomBar/floating_button.dart';
import 'package:my_spotify/pages/song.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: const <Widget>[
            UpBody(),
            ButtonBody(title: 'Vulve a tu música'),
            ButtonBody(title: 'Sugerencias para hoy')
          ],
        ),
        const Align(
          alignment: Alignment.bottomCenter,
          child: FloatingButton(
            song: Song(
              name: 'Garden Shed (feat. Estelle)',
              cover: 'asset/imgs/FlowerBoy.png',
              artist: 'Tyler The Creator, Estelle'
            )
          )
        )
      ]
    );
  }
}
