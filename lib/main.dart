import 'package:assignments_1_flutter/screens/about_app_card.dart';
import 'package:assignments_1_flutter/screens/contact_card.dart';
import 'package:assignments_1_flutter/screens/food_menu_screen.dart';
import 'package:assignments_1_flutter/screens/identity_card_screen.dart';
import 'package:assignments_1_flutter/screens/music_album_card.dart';
import 'package:assignments_1_flutter/screens/news_article_card.dart';
import 'package:assignments_1_flutter/screens/personal_profile_screen.dart';
import 'package:assignments_1_flutter/screens/product_showcase_card.dart';
import 'package:assignments_1_flutter/screens/social_media_post_card.dart';
import 'package:assignments_1_flutter/screens/weather_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF8E2DE2), Color(0xFF4A00E0)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: const [
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: const [
                      IdentityCardScreen(),
                      PersonalProfileScreen(),
                      FoodCard(),
                    ],
                  ),

                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: const [
                      WeatherCard(),
                      ProductShowcaseCard(),
                      NewsArticleCard(),
                    ],
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: const [
                      SocialMediaPostCard(),
                      MusicAlbumCard(),
                      ContactCard(),
                    ],
                  ),
                  AboutAppCard(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
