import 'package:flutter/material.dart';
import 'package:my_spotify/pages/home/appBar/custom_app_bar.dart';
import 'package:my_spotify/pages/home/body/custom_body.dart';
import 'package:my_spotify/pages/home/bottomBar/custom_bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(imagePath: 'asset/imgs/perfil.jpeg'),
      body: CustomBody(),
      bottomNavigationBar: CustomBottonBar(),
    );
  }
}

