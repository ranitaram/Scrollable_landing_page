import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landing_page/providers/page_provider.dart';
import 'package:vertical_landing_page/ui/pages/home_page.dart';

final homeHandler = Handler(handlerFunc: (context, params) {
  //codigo para resolver el problema de la duplicacion .
  final page = params['page']!.first;
  if (page != '/') {
    final pageProvider = Provider.of<PageProvider>(context!, listen: false);
    pageProvider.createScrollConroller(page);

    return const HomePage();
  }
});
