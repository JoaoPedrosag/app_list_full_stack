import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/src/lib/src/configuration/configuration_page.dart';
import 'package:listinha/src/lib/src/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/',
          module: HomeModule(),
          transition: TransitionType.downToUp,
          duration: const Duration(milliseconds: 800),
        ),
        ChildRoute(
          '/config',
          child: (context, args) => const ConfigurationPage(),
        ),
      ];
}
