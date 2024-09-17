import 'package:coffee_shop_app/homescreen_fragments/home_fragment.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexMenu = 0;
  final menu = [
    {
      "icon": "assets/icons/homeIcon/Home_Outlined.png",
      "icon_active": "assets/icons/homeIcon/Home.png",
      "fragment": const HomeFragment(),
    },
    {
      "icon": "assets/icons/favoritesIcon/Heart.png",
      "icon_active": "assets/icons/favoritesIcon/Heart.png",
      "fragment": const Center(
        child: Text("Favorite"),
      ),
    },
    {
      "icon": "assets/icons/sepetIcon/shoppingBag.png",
      "icon_active": "assets/icons/sepetIcon/shoppingBag.png",
      "fragment": const Center(
        child: Text("Bag"),
      ),
    },
    {
      "icon": "assets/icons/notificationsIcon/Notification.png",
      "icon_active": "assets/icons/notificationsIcon/Notification.png",
      "fragment": const Center(
        child: Text("Notification"),
      ),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            menu.length,
            (index) {
              Map item = menu[index];
              bool isActive = indexMenu == index;
              return InkWell(
                onTap: () {},
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Gap(16),
                      ImageIcon(
                        AssetImage(
                          item[isActive ? "icon_active" : "icon"],
                        ),
                        size: 24,
                        color: Color(isActive ? 0xffC67C4E : 0xffA2A2A2),
                      ),
                      if (isActive) const Gap(6),
                      if (isActive)
                        Container(
                          height: 5,
                          width: 10,
                          decoration: BoxDecoration(
                            color: const Color(0xffC67C4E),
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
