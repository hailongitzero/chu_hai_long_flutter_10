import 'package:chu_hai_long_flutter_10/src/pages/home.dart';
import 'package:flutter/cupertino.dart';

class NavigatorBuilder extends StatefulWidget {
  const NavigatorBuilder({super.key, this.username});
  static const title = 'Home';
  static const homeIcon = Icon(CupertinoIcons.home);
  final String? username;

  @override
  State<NavigatorBuilder> createState() => _NavigatorBuilderState();
}

class _NavigatorBuilderState extends State<NavigatorBuilder> {
  final homeKey = GlobalKey();
  final cardKey = GlobalKey();
  final chessKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            label: HomePage.title,
            icon: HomePage.homeIcon,
          ),
          BottomNavigationBarItem(
            label: HomePage.title,
            icon: HomePage.homeIcon,
          ),
          BottomNavigationBarItem(
            label: HomePage.title,
            icon: HomePage.homeIcon,
          ),
        ],
      ),
      tabBuilder: (context, index) {
        assert(index <= 2 && index >= 0, 'Unexpected tab index: $index');
        return switch (index) {
          0 => CupertinoTabView(
              defaultTitle: HomePage.title,
              builder: (context) => HomePage(
                key: homeKey,
              ),
            ),
          1 => CupertinoTabView(
              defaultTitle: HomePage.title,
              builder: (context) => HomePage(
                key: homeKey,
              ),
            ),
          2 => CupertinoTabView(
              defaultTitle: HomePage.title,
              builder: (context) => HomePage(
                key: homeKey,
              ),
            ),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }
}
