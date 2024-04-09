import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../customization/std_colors.dart';
import 'content/content_page.dart';
import 'more/more_page.dart';
import 'primary/primary_page.dart';
import 'stats_sum/stats_sum_choose/stats_sum_choose_page.dart';
import 'video_analytics/video_analytics_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const route = '/home';
  static final _tabController = CupertinoTabController();
  static final _navKeys = List.generate(5, (_) => GlobalKey<NavigatorState>());
  static const _pages = [
    PrimaryPage(),
    ContentPage(),
    StatsSumChoosePage(),
    VideoAnalyticsPage(),
    MorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return !await _navKeys[_tabController.index].currentState!.maybePop();
      },
      child: CupertinoTabScaffold(
        controller: _tabController,
        tabBar: CupertinoTabBar(
          activeColor: const Color(0xFF2C2C2C),
          backgroundColor: const Color(0xFFF6F6F6),
          border: const Border(
            top: BorderSide(color: StdColors.border12, width: 1),
          ),
          iconSize: 25,
          items: const [
            BottomNavigationBarItem(
              label: 'Главная',
              icon: Icon(Icons.home_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Материалы',
              icon: Icon(Icons.widgets_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Статистика',
              icon: Icon(Icons.equalizer_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Видеоаналит.',
              icon: Icon(Icons.videocam_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Ещё',
              icon: Icon(Icons.more_horiz_rounded),
            ),
          ],
        ),
        tabBuilder: (ctx, i) => CupertinoTabView(
          navigatorKey: _navKeys[i],
          builder: (_) => _pages[i],
        ),
      ),
    );
  }
}
