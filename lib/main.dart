import 'package:flutter/material.dart';
import 'package:nike_ecommerce_flutter/Core/Constant/Theme/light_theme.dart';
import 'package:nike_ecommerce_flutter/Features/Products/data/repositories/product_repository_imp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const defaultTextStyle = TextStyle(
      color: LightTheme.primaryTextColor,
      fontFamily: 'IranSanse',
    );
    const captionTextStyle = TextStyle(
      fontFamily: 'IranSanse',
      color: LightTheme.secondryTextColor,
      fontSize: 12,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nike',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodySmall: captionTextStyle,
          labelLarge: defaultTextStyle,
        ),
        colorScheme: const ColorScheme.light(
          onSecondary: LightTheme.primaryColor,
          primary: LightTheme.primaryColor,
          secondary: LightTheme.secondryColor,
        ),
        useMaterial3: true,
      ),
      home: const Directionality(
          textDirection: TextDirection.rtl,
          child: MyHomePage(title: 'فروشگاه نایکی')),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    productRepository.getProducts(0).then((value) => print(value.length));

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'سلام خوش اومدی',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              'سلامممم خوش اومدی',
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
