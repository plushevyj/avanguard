import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../customization/std_colors.dart';
import '../../../../../widgets/avatar.dart';
import '../../../../auth/auth_controller.dart';
import '../model/players_lines.dart';

class LinePlayerWidget extends StatelessWidget {
  final LinePlayer? player;
  final double x;

  const LinePlayerWidget({required this.player, required this.x, Key? key})
      : super(key: key);

  // static const _x = 93.0;
  static const _y = 54.0;
  static const _radius = 50.0;

  @override
  Widget build(BuildContext context) {
    final myId = Get.find<AuthController>().account.value?.objectId;
    final isMe = myId != null && myId == player?.id;
    return SizedBox(
      width: x,
      height: _y,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Avatar(diameter: 40, url: player?.avatar),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_radius),
                border: Border.all(
                  color: isMe ? StdColors.primary.shade700 : Grey.g68,
                ),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: isMe ? StdColors.primary.shade700 : Grey.g68,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(_radius),
                        topLeft: Radius.circular(_radius),
                      ),
                    ),
                    child: Text(
                      player?.playerNumber ?? '-',
                      style: const TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 72),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 4,
                    ),
                    child: Text(
                      player?.lastName ?? 'не назнач.',
                      style: TextStyle(
                        fontSize: 10,
                        color: isMe ? StdColors.primary.shade700 : null,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
