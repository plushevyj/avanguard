import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'core/dependencies/injector.dart';
import 'customization/std_colors.dart';
import 'module/auth/bloc/auth_bloc.dart';
import 'pages/auth/auth_page.dart';
import 'pages/home/home_page.dart';
import 'pages/home/stats/stats_faceoffs/widgets/faceoffs_card/bloc/faceoffs_bloc.dart';
import 'pages/home/stats/stats_faceoffs/widgets/faceoffs_playground/bloc/faceoffs_playground_bloc.dart';
import 'pages/home/stats/stats_faceoffs/widgets/players_filter/bloc/faceoffs_players_filter_bloc.dart';
import 'pages/home/stats/stats_goalkeepers/bloc/stats_goalkeeper_bloc.dart';
import 'pages/home/stats/stats_overview/bloc/stats_overview_bloc.dart';
import 'pages/home/stats/stats_players/stats_players_classic/bloc/stats_players_classic_bloc.dart';
import 'pages/home/stats/stats_players/stats_players_corsi/bloc/stats_players_corsi_bloc.dart';
import 'pages/home/stats/stats_players/stats_players_deking/bloc/stats_players_deking_bloc.dart';
import 'pages/home/stats/stats_players/stats_players_fouls/bloc/stats_players_foul_bloc.dart';
import 'pages/home/stats/stats_players/stats_players_passes/bloc/stats_players_passes_bloc.dart';
import 'pages/home/stats/stats_players/stats_players_power_struggle/bloc/stats_players_power_struggle_bloc.dart';
import 'pages/home/stats/stats_players/stats_players_puck_battle/bloc/stats_players_puck_battle_bloc.dart';
import 'pages/home/stats/stats_players/stats_players_shots/bloc/stats_players_shots_bloc.dart';
import 'pages/home/stats/stats_players/stats_players_time/bloc/stats_players_time_bloc.dart';
import 'pages/home/stats/stats_shifts/bloc/stats_shifts_bloc.dart';
import 'pages/home/stats/stats_shots/widgets/players_filter/bloc/shots_players_filter_bloc.dart';
import 'pages/home/stats/stats_shots/widgets/playground/bloc/shots_playground_bloc.dart';
import 'pages/home/stats/stats_shots/widgets/shots_card/bloc/shots_bloc.dart';
import 'pages/loading_page.dart';
import 'pages/pages.dart';

Future<void> main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

// ignore: prefer-match-file-name
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthBloc()..add(AuthAppStarted())),
        BlocProvider(create: (_) => FaceoffBloc()),
        BlocProvider(create: (_) => FaceoffsPlayersFilterBloc()),
        BlocProvider(create: (_) => FaceoffsPlaygroundBloc()),
        BlocProvider(create: (_) => StatsOverviewBloc()),
        BlocProvider(create: (_) => ShotsBloc()),
        BlocProvider(create: (_) => ShotsPlayersFilterBloc()),
        BlocProvider(create: (_) => ShotsPlaygroundBloc()),
        BlocProvider(create: (_) => StatsGoalkeeperBloc()),
        BlocProvider(create: (_) => StatsPlayersClassicBloc()),
        BlocProvider(create: (_) => StatsPlayersCorsiBloc()),
        BlocProvider(create: (_) => StatsPlayersDekingBloc()),
        BlocProvider(create: (_) => StatsPlayersFoulBloc()),
        BlocProvider(create: (_) => StatsPlayersPassesBloc()),
        BlocProvider(create: (_) => StatsPlayersPowerStruggleBloc()),
        BlocProvider(create: (_) => StatsPlayersPuckBattleBloc()),
        BlocProvider(create: (_) => StatsPlayersShotsBloc()),
        BlocProvider(create: (_) => StatsPlayersTimeBloc()),
        BlocProvider(create: (_) => StatsShiftsBloc()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [Locale('ru'), Locale('en')],
        title: 'Avangard IT Platform',
        theme: theme,
        getPages: pages,
        builder: (context, child) => BlocListener<AuthBloc, AuthState>(
          listener: (context, state) => switch (state.runtimeType) {
            == AuthLoading => Get.offNamed(LoadingPage.route),
            == AuthPlayerAuthenticated => Get.offNamed(HomePage.route),
            _ => Get.offNamed(AuthPage.route),
          },
          child: child,
        ),
      ),
    );
  }
}
