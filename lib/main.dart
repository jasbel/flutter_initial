import 'package:flutter/material.dart';
// import 'package:flutter_initial/mainWidgets/mainHome.dart';

// import 'mainWidgets/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Demo Home Page'),
      home: MyHomePage(),
      // home: MainHome(),
    );
  }
}

//__________________________

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Textos'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'texto prueba estandar',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // body: Center(child: Text('Soy el hijo de center, gg')),
//         body: SafeArea(
//       child: Row(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           Expanded(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Icon(Icons.attachment),
//                 Icon(Icons.block),
//                 Icon(Icons.access_alarm),
//               ],
//             ),
//           ),
//           Column(
//             children: <Widget>[
//               Icon(Icons.attachment),
//               Icon(Icons.block),
//               Icon(Icons.access_alarm),
//             ],
//           )
//         ],
//       ),
//     ));
//   }
// }
