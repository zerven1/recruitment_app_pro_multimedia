import 'package:flutter/material.dart';

/// Standard Appbar after video ends
class StandardAppbar extends StatelessWidget {
  const StandardAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.white,
      child: SafeArea(
        child: ListTile(
          leading: Icon(Icons.menu),
          title: Center(
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
          trailing: Row(
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
