import 'dart:io';

import 'package:flutter/material.dart';

/// Standard Appbar after video ends
class StandardAppbar extends StatelessWidget {
  const StandardAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: ListTile(
          leading: const Icon(Icons.menu),
          minTileHeight: Platform.isAndroid ? 100 : null,
          title: const Center(
            child: Padding(
              padding: EdgeInsets.only(left: 32.0),
              child: Text(
                "Logo",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          trailing: const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.favorite_outline),
              SizedBox(
                width: 6,
              ),
              Icon(Icons.search),
            ],
          ),
        ),
      ),
    );
  }
}
