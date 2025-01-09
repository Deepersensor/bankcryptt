import 'package:flutter/material.dart';
import 'app.dart';
import 'shared/widgets/splash_screen.dart';
import 'routes/navigation_observer.dart';
import 'core/services/analytics_service.dart';

void main() {
  final analyticsService = AnalyticsService();
  runApp(MyApp(analyticsService: analyticsService));
}

class MyApp extends StatelessWidget {
  final AnalyticsService analyticsService;

  const MyApp({super.key, required this.analyticsService});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bankcryptt',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      navigatorObservers: [AppNavigationObserver(analyticsService)],
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
