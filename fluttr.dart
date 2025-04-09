<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/></head><body>import 'package:flutter/<a href="http://material.dart">material.dart</a>';<br><br>void main() =&gt; runApp(MyApp());<br><br>class MyApp extends StatelessWidget {<br>&nbsp; @override<br>&nbsp; Widget build(BuildContext context) {<br>&nbsp;&nbsp;&nbsp; return MaterialApp(<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; title: 'العداد الذكي',<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; theme: ThemeData(primarySwatch: <a href="http://Colors.blue">Colors.blue</a>),<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; home: MyHomePage(),<br>&nbsp;&nbsp;&nbsp; );<br>&nbsp; }<br>}<br><br>class MyHomePage extends StatefulWidget {<br>&nbsp; @override<br>&nbsp; _MyHomePageState createState() =&gt; _MyHomePageState();<br>}<br><br>class _MyHomePageState extends State&lt;MyHomePage&gt; {<br>&nbsp; int _counter = 0;<br><br>&nbsp; void _incrementCounter() {<br>&nbsp;&nbsp;&nbsp; setState(() {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _counter++;<br>&nbsp;&nbsp;&nbsp; });<br>&nbsp; }<br><br>&nbsp; void _decrementCounter() {<br>&nbsp;&nbsp;&nbsp; setState(() {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _counter--;<br>&nbsp;&nbsp;&nbsp; });<br>&nbsp; }<br><br>&nbsp; @override<br>&nbsp; Widget build(BuildContext context) {<br>&nbsp;&nbsp;&nbsp; return Scaffold(<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; appBar: AppBar(<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; title: Text('العداد الذكي'),<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ),<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; body: Center(<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; child: Column(<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mainAxisAlignment: <a href="http://MainAxisAlignment.center">MainAxisAlignment.center</a>,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; children: &lt;Widget&gt;[<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Text(<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'القيمة الحالية:',<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; style: TextStyle(fontSize: 24),<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ),<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Text(<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; '$_counter',<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; style: TextStyle(fontSize: 48, fontWeight: <a href="http://FontWeight.bold">FontWeight.bold</a>),<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ),<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SizedBox(height: 20),<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Row(<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mainAxisAlignment: <a href="http://MainAxisAlignment.spaceAround">MainAxisAlignment.spaceAround</a>,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; children: &lt;Widget&gt;[<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FloatingActionButton(<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; onPressed: _incrementCounter,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; child: Icon(<a href="http://Icons.add">Icons.add</a>, size: 30),<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; backgroundColor: <a href="http://Colors.green">Colors.green</a>,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; heroTag: 'btn1',<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ),<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FloatingActionButton(<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; onPressed: _decrementCounter,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; child: Icon(<a href="http://Icons.remove">Icons.remove</a>, size: 30),<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; backgroundColor: <a href="http://Colors.red">Colors.red</a>,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; heroTag: 'btn2',<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ),<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ],<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ),<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ],<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ),<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ),<br>&nbsp;&nbsp;&nbsp; );<br>&nbsp; }<br>}</body></html>