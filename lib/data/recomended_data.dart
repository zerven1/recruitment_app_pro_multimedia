import 'package:flutter/material.dart';
import 'package:recruitment_app_pro_multimedia/models/recomended_item.dart';
import 'package:recruitment_app_pro_multimedia/screens/recomended_section/components/recomended_list_widget.dart';
import 'package:recruitment_app_pro_multimedia/screens/video_section/components/icon_widget.dart';
import 'package:recruitment_app_pro_multimedia/screens/video_section/components/icon_widget.outlined.dart';

class RecomendedData {
  /// Initial data for [RecomendedItem] list
  List<RecomendedItem> recomendedItemLits = <RecomendedItem>[
    RecomendedItem(
      title: "Zaplanuj podróźe",
      height: RecomendedListItemHeight.small,
      backgroundColor: const Color(0xff0ddeae),
      icon: Transform.rotate(
        angle: 135 * (3.14159 / 180),
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
    ),
    RecomendedItem(
      title: "Dłusze godziny zwiedzania Muzeum",
      icon: const IconWidget(
        icon: Icons.favorite,
        iconSize: 20,
        iconColor: Color(0xff0ddeae),
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.2),
      ),
      backgroundImagePath: "assets/images/image1.jpg",
    ),
    RecomendedItem(
      title: "Szlaki",
      icon: Transform.rotate(
        angle: 135 * (3.14159 / 180),
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
    ),
    RecomendedItem(
      title: "Carbonerum dla licealistów",
      icon: const IconWidget(
        icon: Icons.favorite_outline,
        iconSize: 20,
        iconColor: Colors.white,
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.2),
      ),
      backgroundImagePath: "assets/images/image2.jpg",
    ),
    RecomendedItem(
      title: "Dłuźsze godziny zwiedzania muzeum",
      icon: const IconWidgetOutlined(
        icon: Icons.favorite,
        iconSize: 20,
        iconColor: Colors.white,
        backgroundColor: Colors.transparent,
      ),
      backgroundImagePath: "assets/images/image3.jpg",
    ),
    RecomendedItem(
      title: "Carbonerum nie tylko dla licealistów",
      icon: const IconWidget(
        icon: Icons.favorite_outline,
        iconSize: 20,
        iconColor: Colors.white,
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.2),
      ),
      backgroundImagePath: "assets/images/image4.jpg",
    ),
    RecomendedItem(
      title: "Dłuźsze godziny zwiedzania Muzeum",
      icon: const IconWidgetOutlined(
        icon: Icons.favorite,
        iconSize: 20,
        iconColor: Color(0xff0ddeae),
        backgroundColor: Colors.transparent,
      ),
      backgroundImagePath: "assets/images/image5.jpg",
    ),
    RecomendedItem(
      title: "Plac zabaw",
      icon: const IconWidget(
        icon: Icons.favorite_outline,
        iconSize: 20,
        iconColor: Colors.white,
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.2),
      ),
    ),
    RecomendedItem(
      title: "Niesamowite ekspozycje",
      icon: const IconWidget(
        icon: Icons.favorite_outline,
        iconSize: 20,
        iconColor: Colors.white,
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.2),
      ),
    ),
    RecomendedItem(
      title: "Carbonerum",
      icon: const IconWidget(
        icon: Icons.favorite_outline,
        iconSize: 20,
        iconColor: Colors.white,
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.2),
      ),
    ),
    RecomendedItem(
      title: "Nowe Carbonerum",
      height: RecomendedListItemHeight.small,
      icon: const IconWidget(
        icon: Icons.favorite_outline,
        iconSize: 20,
        iconColor: Colors.white,
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.2),
      ),
    ),
  ];
}
