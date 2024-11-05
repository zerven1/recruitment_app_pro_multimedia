import 'package:flutter/material.dart';

/// Recomended Section Title with default [TextStyle]
class RecomendedTitle extends Text {
  const RecomendedTitle(super.data, {super.key})
      : super(
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        );
}
