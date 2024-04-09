import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../customization/std_colors.dart';
import '../module/auth/bloc/auth_bloc.dart';
import '../pages/home/more/settings/settings_page.dart';
import 'avatar.dart';

class PlayerTile extends StatelessWidget {
  final bool isHaveSettingsButton;

  const PlayerTile({this.isHaveSettingsButton = true, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) => state is AuthPlayerAuthenticated
          ? ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Avatar(
                url: state.player.avatar,
                number: state.player.playerNumber,
              ),
              title: Text('${state.player.firstName} ${state.player.lastName}'),
              subtitle: Text(
                state.player.hockeyRole ?? 'Роль',
                style: Get.textTheme.bodySmall?.apply(color: Grey.g54),
              ),
              trailing: isHaveSettingsButton
                  ? FloatingActionButton(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      mini: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(color: StdColors.border12),
                      ),
                      onPressed: () => Get.to(() => const SettingsPage()),
                      child: const Icon(Icons.settings, color: Grey.g54),
                    )
                  : null,
            )
          : const SizedBox(),
    );
  }
}
