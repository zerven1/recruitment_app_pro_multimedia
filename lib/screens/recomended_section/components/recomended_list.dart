import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recruitment_app_pro_multimedia/data/recomended_data.dart';
import 'package:recruitment_app_pro_multimedia/models/recomended_item.dart';
import 'package:recruitment_app_pro_multimedia/screens/recomended_section/components/recomended_list_widget.dart';

/// Recomended Items Widgets List
class RecomendedList extends StatelessWidget {
  const RecomendedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MasonryGridView.builder(
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        padding: const EdgeInsets.only(
          top: 8.0,
        ),
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        itemCount: RecomendedData().recomendedItemLits.length,
        itemBuilder: (context, index) {
          RecomendedItem recomendedItem =
              RecomendedData().recomendedItemLits[index];
          return RecomendedListWidget(
            height: recomendedItem.height,
            title: recomendedItem.title,
            icon: recomendedItem.icon,
            backgroundColor: recomendedItem.backgroundColor,
            backgroundImagePath: recomendedItem.backgroundImagePath,
          );
        },
      ),
    );
  }
}
