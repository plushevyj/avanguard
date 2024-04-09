import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../customization/std_colors.dart';
import '../../../module/auth/bloc/auth_bloc.dart';
import '../../../widgets/player_tile.dart';
import 'anthropometry/anthropometry_page.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  static const _style = TextStyle(
    color: StdColors.textColor,
    inherit: false,
    fontFamily: 'Inter',
    fontSize: 13,
    fontWeight: FontWeight.w600,
    height: 18 / 13,
    letterSpacing: 0.26,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        title: const PlayerTile(isHaveSettingsButton: false),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Indents.x),
        child: Column(
          children: [
            const Divider(color: StdColors.border12),
            // const ListTile(
            //   titleTextStyle: _style,
            //   contentPadding: EdgeInsets.zero,
            //   minLeadingWidth: 20,
            //   leading: Icon(Icons.notifications_none_rounded),
            //   title: Text('Уведомления (в разработке)'),
            // ),
            ListTile(
              titleTextStyle: _style,
              contentPadding: EdgeInsets.zero,
              minLeadingWidth: 20,
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const AnthropometryPage()),
              ),
              leading: const Icon(Icons.accessibility),
              title: const Text('Антропометрия'),
            ),
            // ListTile(
            //   titleTextStyle: _style,
            //   contentPadding: EdgeInsets.zero,
            //   minLeadingWidth: 20,
            //   onTap: () => Navigator.of(context).push(
            //     MaterialPageRoute(builder: (_) => const SettingsPage()),
            //   ),
            //   leading: Icon(Icons.settings_rounded),
            //   title: Text('Настройки (в разработке)'),
            // ),
            const Divider(color: StdColors.border12),
            ListTile(
              titleTextStyle: _style,
              contentPadding: EdgeInsets.zero,
              minLeadingWidth: 20,
              onTap: () => context.read<AuthBloc>().add(AuthLogOut()),
              leading: const Icon(Icons.logout_rounded),
              title: const Text('Выйти из аккаунта'),
            ),
          ],
        ),
      ),
    );
  }
}
