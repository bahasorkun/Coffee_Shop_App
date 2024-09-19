import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(0),
      children: [
        Stack(
          children: [
            buildBackground(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const Gap(68),
                  buildHeader(),
                  const Gap(24),
                  buildSearch(),
                  const Gap(68),
                  // buildBannerPromo(),
                ],
              ),
            )
          ],
        ),
        const Gap(20),
        // buildCategories(),
        const Gap(20),
        // buildGridCoffee(),
        const Gap(30),
      ],
    );
  }

  Widget buildBackground() {
    return Container(
      height: 280,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff111111),
            Color(0xff313131),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Location",
          style: TextStyle(
            fontFamily: "Sora",
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Color(0xffA2A2A2),
          ),
          textAlign: TextAlign.center,
        ),
        const Gap(8),
        Row(
          children: [
            const Text(
              "Bilzen, Tanjungbalai",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Sora",
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xffD8D8D8),
              ),
            ),
            const Gap(4),
            Image.asset(
              "assets/icons/arrow_down.png",
              height: 14,
              width: 14,
              color: const Color(0xffD8D8D8),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildSearch() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff2A2A2A)),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Image.asset("assets/icons/search.png"),
                const Gap(8),
                const Expanded(
                  child: TextField(
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Sora",
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      isDense: true,
                        border: InputBorder.none,
                        hintText: "Search Coffee",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Sora",
                          color: Color(0xffA2A2A2),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Gap(16),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffC67C4E),
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.center,
          height: 52,
          width: 52,
          child: const ImageIcon(
            AssetImage("assets/icons/Filter.png"),
            size: 20,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
