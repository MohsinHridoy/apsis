import 'package:flutter/material.dart';



class MyApp111 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScrollableColumn(),
    );
  }
}

class MyScrollableColumn extends StatefulWidget {
  @override
  State<MyScrollableColumn> createState() => _MyScrollableColumnState();
}

class _MyScrollableColumnState extends State<MyScrollableColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollable Column Example'),
      ),
      body: ListView(
        children: [
          Container(
            height: 100,
            color: Colors.blue,
            child: Center(child: Text('Container 1')),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Center(child: Text('Container 2')),
          ),
          Container(
            height: 100,
            color: Colors.orange,
            child: Center(child: Text('Container 3')),
          ),
          Container(
            height: 400, // Adjust the height as needed
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10, // Replace with your actual item count
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    print("333");
                  },
                  child: Container(
                    height: 50,
                    color: Colors.grey[300],
                    child: Center(child: Text('List Item $index')),
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
