import 'package:flutter/cupertino.dart';
import 'package:snkrs_flutter/app/pages/feed/page.dart';
import 'package:snkrs_flutter/app/pages/history/page.dart';
import 'package:snkrs_flutter/app/pages/more/page.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_stack_3d_up_fill),
            activeIcon: Icon(CupertinoIcons.square_stack_3d_up_fill),
            label: '피드',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.clock_fill),
            activeIcon: Icon(CupertinoIcons.clock_fill),
            label: '히스토리',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.line_horizontal_3),
            label: '더보기',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        if (index == 0) {
          return CupertinoTabView(builder: (context) => const FeedPage());
        } else if (index == 1) {
          return CupertinoTabView(builder: (context) => const HistoryPage());
        } else {
          return CupertinoTabView(builder: (context) => const MorePage());
        }
      },
    );
  }
}
