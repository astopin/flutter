import 'package:flutter/material.dart';
import 'package:tests/models/models.dart';
import 'package:tests/route_names.dart';
import 'package:tests/widgets/second_screen.dart';
import 'package:tests/widgets/test_screen_widget.dart';
import 'widgets/test_review.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static SkillsModel skillsModel = SkillsModel(skills: [
    SkillModel(
        title: "Swift", score: 23, companyAverage: 33, industryAverage: 44
    ),
    SkillModel(
        title: "objc", score: 66, companyAverage: 33, industryAverage: 44
    ),
     SkillModel(
        title: "arch", score: 98, companyAverage: 33, industryAverage: 44
    ),
    SkillModel(
        title: "algorithmc", score: 42, companyAverage: 33, industryAverage: 44
    ),
  ], totalScore: 99);

  static UserModel userModel = UserModel(
      name: "name",
      location: "location",
      testName: "testName",
      testingDate: "testingDate");

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // initialRoute: RoutesName.MAIN_PAGE,
      // onGenerateRoute: (settings) {
      //   if (settings.name == RoutesName.MAIN_PAGE) {
      //     return MaterialPageRoute(
      //       builder: (context) {
      //         return TestScreenWidget(
      //             model: TestSummaryScreenArguments(userModel, skillsModel)
      //         );
      //       }
      //     );
      //   } else if (settings.name == RoutesName.DETAILS_PAGE) {
      //     final title = settings.arguments as String;
      //     return MaterialPageRoute(
      //         builder: (context) {
      //           return SecondPage(title: title);
      //         }
      //     );
      //   } else {
      //     return MaterialPageRoute(
      //         builder: (context) {
      //           return TestScreenWidget(
      //               model: TestSummaryScreenArguments(userModel, skillsModel)
      //           );
      //         }
      //     );
      //   }
      // },
      theme: ThemeData(
        // fontFamily: 'Open Sans',
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: TestScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
