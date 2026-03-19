import 'package:clean_architecture_template/dependencies/dependency_manager.dart';

/// Configuration for the landing/initialization layer.
///
/// Contains app startup config: dependency manager and splash duration.
/// Pass to [LandingScreen] via the [landingConfig] parameter.
class LandingConfig {
  const LandingConfig({
    required this.dependencyManager,
    this.splashDuration = const Duration(seconds: 2),
  });

  /// Dependency manager for app initialization.
  final DependencyManager dependencyManager;

  /// Duration to display the splash screen before transitioning.
  final Duration splashDuration;
}
