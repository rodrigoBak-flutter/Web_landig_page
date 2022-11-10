import 'package:web_landing_page/src/content/tools_content.dart';
import 'package:web_landing_page/src/content/contact_content.dart';
import 'package:web_landing_page/src/content/home_content.dart';
import 'package:web_landing_page/src/content/projects_content.dart';
import 'package:web_landing_page/src/navigation_bar/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:web_landing_page/src/widgets/flowButton_widget.dart';

final homeKey = GlobalKey();
final toolsKey = GlobalKey();
final tecnologiaKey = GlobalKey();
final contactKey = GlobalKey();

final currentPageProvider = StateProvider<GlobalKey>((_) => homeKey);
final scrolledProvider = StateProvider<bool>((_) => false);

class MyWebPage extends HookConsumerWidget {
  void onScroll(ScrollController controller, WidgetRef ref) {
    final isScrolled = ref.read(scrolledProvider);

    if (controller.position.pixels > 5 && !isScrolled) {
      ref.read(scrolledProvider.state).state = true;
    } else if (controller.position.pixels <= 5 && isScrolled) {
      ref.read(scrolledProvider.state).state = false;
    }
  }

  void scrollTo(GlobalKey key) => Scrollable.ensureVisible(key.currentContext!,
      duration: const Duration(milliseconds: 500));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _controller = useScrollController();

    useEffect(() {
      _controller.addListener(() => onScroll(_controller, ref));
      return _controller.dispose;
    }, [_controller]);

    //double width = MediaQuery.of(context).size.width;
    double maxWith = double.infinity;

    ref
        .watch(currentPageProvider.state)
        .addListener(scrollTo, fireImmediately: false);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: maxWith,
          child: Column(
            children: [
              const NavBar(),
              Expanded(
                child: SingleChildScrollView(
                  controller: _controller,
                  child: Column(
                    children: <Widget>[
                      HomeContent(key: homeKey),
                      ProjectsContent(key: tecnologiaKey),
                      ToolsContent(key: toolsKey),
                      ContactContent(key: contactKey),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //Implementar mensaje de WhatsApp y Email
     // floatingActionButton: FlowButton(),
    );
  }
}
