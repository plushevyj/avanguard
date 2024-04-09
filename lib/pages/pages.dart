import 'package:get/get.dart';

import 'auth/auth_page.dart';
import 'home/content/content_page.dart';
import 'home/home_page.dart';
import 'home/stats_sum/stats_sum_choose/stats_sum_choose_page.dart';
import 'loading_page.dart';

final pages = [
  GetPage(name: LoadingPage.route, page: () => const LoadingPage()),
  GetPage(name: AuthPage.route, page: () => const AuthPage()),
  GetPage(name: HomePage.route, page: () => const HomePage()),
  GetPage(name: ContentPage.route, page: () => const ContentPage()),
  GetPage(
    name: StatsSumChoosePage.route,
    page: () => const StatsSumChoosePage(),
  ),
];
