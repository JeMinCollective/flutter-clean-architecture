import 'package:clean_architecture_template/blocs/authentication/authentication_bloc.dart';
import 'package:clean_architecture_template/common/routes/root_router.dart';
import 'package:clean_architecture_template/common/utils/context_utils.dart';
import 'package:clean_architecture_template/dependencies/app_dependency_provider.dart';
import 'package:clean_architecture_template/dependencies/dependency_manager.dart';
import 'package:clean_architecture_template/features/landing/landing_config.dart';
import 'package:clean_architecture_template/features/landing/landing_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:clean_architecture_template/common/styles/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:clean_architecture_template/generated/l10n.dart';

class MainApp extends StatelessWidget {
  final LandingConfig landingConfig;

  final Widget Function(BuildContext)? splashScreenBuilder;
  final Widget Function(BuildContext, AuthenticationState) authenticatedBuilder;
  final Widget Function(BuildContext) unauthenticatedBuilder;

  const MainApp({
    super.key,
    required this.landingConfig,
    required this.authenticatedBuilder,
    required this.unauthenticatedBuilder,
    this.splashScreenBuilder,
  });

  /// Creates [MainApp] with a default config for the given [dependencyManager].
  factory MainApp.withDependencyManager(DependencyManager dependencyManager) {
    return MainApp(
      landingConfig: LandingConfig(dependencyManager: dependencyManager),
      authenticatedBuilder: (context, authState) => const Scaffold(
        body: Center(
          child: Text(
            'Authenticated - Implement your MainScreen here',
          ),
        ),
      ),
      unauthenticatedBuilder: (context) => const Scaffold(
        body: Center(
          child: Text(
            'Unauthenticated - Implement your OnboardingScreen here',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final rootRouter = sl.get<RootRouter>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Name",
      navigatorKey: rootRouter.key,
      onGenerateRoute: rootRouter.getRoute,
      theme: AppThemes.defaultStyle,
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      locale: const Locale("en", "GB"),
      supportedLocales: const [Locale('en', 'UK')],
      home: GestureDetector(
        onTap: hideKeyboard,
        child: AppDependencyProvider(
          child: LandingScreen(
            landingConfig: landingConfig,
            splashScreenBuilder: splashScreenBuilder,
            authenticatedBuilder: authenticatedBuilder,
            unauthenticatedBuilder: unauthenticatedBuilder,
          ),
        ),
      ),
    );
  }
}
