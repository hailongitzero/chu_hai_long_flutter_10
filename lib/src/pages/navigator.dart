import 'package:chu_hai_long_flutter_10/src/pages/cart/cart.dart';
import 'package:chu_hai_long_flutter_10/src/pages/favorite/favorite.dart';
import 'package:chu_hai_long_flutter_10/src/pages/profile/profile.dart';
import 'package:chu_hai_long_flutter_10/src/pages/shop.dart';
import 'package:chu_hai_long_flutter_10/src/pages/stream/lab_four.dart';
import 'package:flutter/cupertino.dart';

class NavigatorBuilder extends StatefulWidget {
  const NavigatorBuilder({super.key});
  static const title = 'Home';

  @override
  State<NavigatorBuilder> createState() => _NavigatorBuilderState();
}

class _NavigatorBuilderState extends State<NavigatorBuilder> {
  final shopKey = GlobalKey();
  final favKey = GlobalKey();
  final cartKey = GlobalKey();
  final profileKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: const Color.fromARGB(255, 255, 94, 0),
        activeColor: const Color.fromARGB(255, 255, 255, 255),
        inactiveColor: const Color.fromARGB(255, 255, 255, 255),
        height: 100,
        items: const [
          BottomNavigationBarItem(
            // label: HomePage.title,
            icon: ShopPage.icon,
          ),
          BottomNavigationBarItem(
            // label: FavoritePage.title,
            icon: FavoritePage.icon,
          ),
          BottomNavigationBarItem(
            // label: HomePage.title,
            icon: MyCart.icon,
          ),
          BottomNavigationBarItem(
            // label: HomePage.title,
            icon: ProfilePage.icon,
          ),
        ],
      ),
      tabBuilder: (context, index) {
        assert(index <= 3 && index >= 0, 'Unexpected tab index: $index');
        return switch (index) {
          0 => CupertinoTabView(
              // defaultTitle: ShopPage.title,
              builder: (context) => LabFour(
                key: shopKey,
              ),
            ),
          1 => CupertinoTabView(
              // defaultTitle: HomePage.title,
              builder: (context) => FavoritePage(
                key: favKey,
              ),
            ),
          2 => CupertinoTabView(
              // defaultTitle: ShopPage.title,
              builder: (context) => MyCart(
                key: cartKey,
              ),
            ),
          3 => CupertinoTabView(
              // defaultTitle: HomePage.title,
              builder: (context) => ProfilePage(
                key: profileKey,
              ),
            ),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }
}
