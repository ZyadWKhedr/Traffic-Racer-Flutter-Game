// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'game/traffic_game.dart';
import 'package:flame_riverpod/flame_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Google Mobile Ads SDK early (non-blocking).
  MobileAds.instance.initialize();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  final game = TrafficGame();

  @override
  Widget build(BuildContext context) {
    // RiverpodAwareGameWidget connects Flame game with Riverpod mixing helpers.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: RiverpodAwareGameWidget(game: game)),
    );
  }
}
