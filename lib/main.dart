import 'package:flutter/material.dart';

void main() {
  runApp(MyMidtermExamApp());
}

class MyMidtermExamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Midterm Exam',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MidtermExamPage(),
    );
  }
}

class MidtermExamPage extends StatefulWidget {
  @override
  _MidtermExamPageState createState() => _MidtermExamPageState();
}

class _MidtermExamPageState extends State<MidtermExamPage> {
  final List<String> items = [
    'Bag',
    'Cap',
    'T-Shirt',
    'Polo',
    'Shorts',
    'Pants',
    'Baggy Pants',
    'Brief',
    'Leather Shoes',
    'Sling Bag',
  ];
  final List<bool> isAdded = List.generate(10, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bacalla,JohnJomarr_MidtermExam'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  color: isAdded[index] ? const Color.fromARGB(255, 74, 62, 26) : const Color.fromARGB(255, 140, 138, 138),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(items[index]),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                print('${items[index]} nice product!');
                              },
                              child: Text('Details'),
                            ),
                            SizedBox(width: 8),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  isAdded[index] = !isAdded[index];
                                });
                              },
                              child: Text(isAdded[index] ? 'Added' : 'Add'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}