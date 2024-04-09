import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../customization/std_colors.dart';

class Avatar extends StatelessWidget {
  final String? url;
  final String? number;
  final double diameter;

  const Avatar({this.url, this.number, this.diameter = 36, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 41,
      height: 41,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: url != null
                ? ClipOval(
                    child: Image.network(
                      url!,
                      fit: BoxFit.fitWidth,
                      width: diameter,
                      height: diameter,
                      loadingBuilder: (ctx, child, loadingProgress) {
                        return loadingProgress == null
                            ? child
                            : Container(
                                color: Colors.blue,
                                width: diameter,
                                height: diameter,
                              );
                      },
                    ),
                  )
                : CircleAvatar(
                    maxRadius: diameter / 2,
                    minRadius: diameter / 2,
                    backgroundColor: Grey.g12,
                    child: Icon(
                      Icons.account_circle,
                      color: const Color(0xFFB0B0B0),
                      size: diameter * 1.05,
                    ),
                  ),
          ),
          if (number != null)
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                alignment: Alignment.center,
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    const BoxShadow(color: Colors.white),
                    BoxShadow(
                      blurRadius: 8,
                      color: Colors.black.withOpacity(.15),
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Text(number!, style: Get.textTheme.bodySmall),
              ),
            ),
        ],
      ),
    );
  }
}
