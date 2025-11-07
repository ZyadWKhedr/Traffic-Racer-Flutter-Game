// lib/providers/game_providers.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

// score provider
final scoreProvider = StateProvider<int>((ref) => 0);

// base speed provider (pixels per second). We'll increase this over time.
final baseSpeedProvider = StateProvider<double>((ref) => 200.0);

// difficulty multiplier (increases slowly)
final difficultyMultiplierProvider = StateProvider<double>((ref) => 1.0);

// game state: 'playing', 'paused', 'gameover'
enum GameState { playing, paused, gameover }
final gameStateProvider = StateProvider<GameState>((ref) => GameState.playing);

// lane configuration -- we compute lane X positions on game load but provide lane count here
final laneCountProvider = Provider<int>((ref) => 3);
