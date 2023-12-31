import 'package:abdullah/all_imports.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sp;
Future<void> main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  sp = await SharedPreferences.getInstance();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'abdullah',
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          useMaterial3: false),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: const Home(),
    );
  }
}
