import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/src/lib/src/home/pages/home_page.dart';
import 'package:listinha/src/lib/src/home/pages/edit_task_board_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, args) => const HomePage(),
        ),
        ChildRoute(
          '/edit',
          child: (_, args) => const EditTaskBoardPage(),
        ),
      ];
}
