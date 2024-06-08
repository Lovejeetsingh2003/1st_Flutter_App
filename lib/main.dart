import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World!!!',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 206, 222, 231),
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 255, 255)),
          useMaterial3: true),
      home: const MyHomePage(title: 'My Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Home page"),
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       ),
      body: const Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Strawberry Pavlova",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40))
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Expanded(child:  
        Text("Pavlova is a meringue-based dessert named after thre Russian ballerina Anna Pavlova.Pavlova features crisp crust and soft, light inside, topped with fruit and whipped cream.",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),   )
        )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 30,
              ),
              Icon(Icons.star, color: Colors.amber, size: 30),
              Icon(Icons.star, color: Colors.amber, size: 30),
              Icon(Icons.star_border, color: Colors.amber, size: 30),
              Icon(Icons.star_border, color: Colors.amber, size: 30),
              Text("170 Reviews",style: TextStyle(fontSize: 25),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [Icon(Icons.kitchen,size: 50,), Text("PREP:",style: TextStyle(fontSize: 25),), Text("25 minutes",style: TextStyle(fontSize: 25))],
              ),
              Column(
                children: [
                  Icon(Icons.watch_later,size: 50,),
                  Text("COOK:",style: TextStyle(fontSize: 25)),
                  Text("1 hour",style: TextStyle(fontSize: 25))
                ],
              ),
              Column(
                children: [
                  Icon(Icons.dining_sharp,size: 50,),
                  Text("FEEDS:",style: TextStyle(fontSize: 25)),
                  Text("4-6",style: TextStyle(fontSize: 25))
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
