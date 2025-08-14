import 'package:flutter/material.dart';

class Class2 extends StatelessWidget {
  const Class2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class 3: Basic'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print('BTN Clicked');
              },
              child: Text(
                'MyBTN',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  print('BTN Clicked');
                },
                child: Text(
                  'MyBTN',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            OutlinedButton(
              onPressed: () {
                print('Outline Button');
              },
              child: Text('Outline Button'),
            ),

            IconButton(
              onPressed: () {
                print('Icon BTN');
              },
              icon: Icon(Icons.delete, size: 49, color: Colors.orange),
            ),

            GestureDetector(
              onDoubleTap: () => print('Double Click'),
              child: Text('Double Tap Gesture Detector BTN'),
            ),
          ],
        ),
      ),
      drawer: Column(
        children: [
          ElevatedButton(
            onPressed: () => {print('btn click')},
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
