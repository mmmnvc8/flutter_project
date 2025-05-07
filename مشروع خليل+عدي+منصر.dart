import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.light;

  void toggleTheme() {
    setState(() {
      themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'أذكار الصباح والمساء',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.teal,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.teal,
      ),
      themeMode: themeMode,
      home: MainScreen(onToggleTheme: toggleTheme),
      debugShowCheckedModeBanner: false,
    );
  }
}

// الواجهة الرئيسية
class MainScreen extends StatelessWidget {
  final VoidCallback onToggleTheme;

  const MainScreen({required this.onToggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('أذكار المسلم'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: onToggleTheme,
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => AzkarPage(isMorning: true)),
                  );
                },
                child: Text('أذكار الصباح', style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => AzkarPage(isMorning: false)),
                  );
                },
                child: Text('أذكار المساء', style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// صفحة أذكار الصباح أو المساء
class AzkarPage extends StatelessWidget {
  final bool isMorning;

  AzkarPage({required this.isMorning});

  final List<Map<String, dynamic>> azkarMorning = [
    {
      'text': "اللهم بك أصبحنا، وبك أمسينا، وبك نحيا، وبك نموت، وإليك المصير.",
      'repeat': 3,
    },
    {
      'text': "أصبحنا على فطرة الإسلام، وكلمة الإخلاص، ودين نبينا محمد صلى الله عليه وسلم.",
      'repeat': 1,
    },
    {
      'text': "اللهم إني أسألك خير هذا اليوم، فتحه، ونصره، ونوره، وبركته، وهداه.",
      'repeat': 1,
    },
  ];

  final List<Map<String, dynamic>> azkarEvening = [
    {
      'text': "اللهم بك أمسينا، وبك أصبحنا، وبك نحيا، وبك نموت، وإليك المصير.",
      'repeat': 3,
    },
    {
      'text': "أمسينا على فطرة الإسلام، وكلمة الإخلاص، ودين نبينا محمد صلى الله عليه وسلم.",
      'repeat': 1,
    },
    {
      'text': "اللهم إني أسألك خير هذه الليلة، فتحها، ونصرها، ونورها، وبركتها، وهداها.",
      'repeat': 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> azkarList = isMorning ? azkarMorning : azkarEvening;
    final String title = isMorning ? "أذكار الصباح" : "أذكار المساء";

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: azkarList.length,
        itemBuilder: (context, index) {
          return AzkarCard(
            text: azkarList[index]['text'],
            repeat: azkarList[index]['repeat'],
          );
        },
      ),
    );
  }
}

// بطاقة الذكر مع العداد والنسخ
class AzkarCard extends StatefulWidget {
  final String text;
  final int repeat;

  AzkarCard({required this.text, required this.repeat});

  @override
  State<AzkarCard> createState() => _AzkarCardState();
}

class _AzkarCardState extends State<AzkarCard> {
  late int remaining;

  @override
  void initState() {
    super.initState();
    remaining = widget.repeat;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal[50],
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              widget.text,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.right,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // زر النسخ
                IconButton(
                  icon: Icon(Icons.copy),
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: widget.text));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('تم نسخ الذكر')),
                    );
                  },
                ),
                // عداد التكرار
                ElevatedButton(
                  onPressed: remaining > 0
                      ? () {
                          setState(() {
                            remaining--;
                          });
                        }
                      : null,
                  child: Text('تبقى: $remaining'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}