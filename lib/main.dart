import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple[700]!),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'naoures\' personal card '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child:
        Stack(
          children :[
            Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              const SizedBox(height: 30),
          ClipRRect(
            borderRadius: BorderRadius.circular(90.0),
            child: Image.asset(
                'assets/personal_photo2.jpg',
                width: 190.0,
                height: 190.0,
                fit: BoxFit.cover,
              ),
          ),
                const SizedBox(height: 30),
                Flexible(
                  child: Text(
                      'Naoures  bzeouich ',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 40.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                ),
                      textAlign: TextAlign.start,
                      softWrap: true,
                    )
                ),

              const SizedBox( height: 30, ),
               Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0),
                child:  Column(
                  children: [
                    const Text(
                    'I\'m studying software engineering in INSAT I\'m beginner in this domain but I\'m always looking to improve my skills \n',
                    style: TextStyle(fontSize: 20,),
                  ),
                    const SizedBox(height: 20,),
                    const Row(
                      children: [
                        Icon(Icons.phone,color: Colors.deepPurple,),
                        Text(' +216 97 944 447',style: TextStyle(fontSize: 25,),),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const Row(
                      children: [
                        Icon(Icons.mail_outline,color: Colors.deepPurple,),
                        Text('  naoures.bzeouich@insat.ucar.tn',style: TextStyle(fontSize: 22,),),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const Row(
                      children: [
                        Icon(Icons.cake,color: Colors.deepPurple,),
                        Text(' 27 mars 2002',style: TextStyle(fontSize: 25,),),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        const Icon(Icons.favorite_outline,color: Colors.deepPurple,),
                        Text( '  likes : $_counter',style: TextStyle(fontSize: 25,),),
                      ],
                    ),

                ],
                ),
              ),
            ],
          ),

            Positioned(
                height: 80,
                top: 140,
                right: 80,
                child:
                IconButton(
                  icon: Icon(Icons.favorite),
                  color: Colors.purple[200]!,
                  iconSize: 70.0,
                  onPressed: _incrementCounter,
                )
            ),
          ],
        ),
      ),
    );
  }
}
