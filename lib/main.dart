import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 123, 85, 222),
      appBar: AppBar(
        title: Text("تطابق صوره"),
        backgroundColor: Color.fromARGB(255, 12, 31, 243),
      ),
      body: ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNumber = 1;
  int rightImageNumber = 2;

  void changeImage() {
    leftImageNumber = Random().nextInt(8) + 1;
    rightImageNumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {
            print('Try Again, Please');
          },
          child: Text(
            leftImageNumber == rightImageNumber
                ? 'مبرووووك لقد نجحت'
                : 'حاول مره اخري',
            style: TextStyle(
              fontSize: 42.0,
              color: Colors.white,
            ),
          ),
        ),
        // Text(
        //   'developed by basant',
        //   style: TextStyle(
        //     color: Colors.white,
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeImage();
                      // leftImageNumber = Random().nextInt(8) + 1;
                      // rightImageNumber = Random().nextInt(8) + 1;
                    });
                    //print('left button is pressed');
                  },
                  child: Image.asset('images/image-$leftImageNumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        changeImage();
                        // leftImageNumber = Random().nextInt(8) + 1;

                        // rightImageNumber = Random().nextInt(8) + 1;
                      });
                    },
                    child: Image.asset('images/image-$rightImageNumber.png')),
              ),
            ],
          ),
        )
      ],
    );
  }
}

//class ImagePage extends StatelessWidget {
      
//}
