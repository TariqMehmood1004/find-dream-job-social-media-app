import 'imports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColorLight: colorPrimary,
        primaryColor: colorPrimary,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.light,
      home: MyApp(),
    ),
  );
}
