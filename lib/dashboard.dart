import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              Text(
                "Sign",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              Text(
                "Talk",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: (){
                print("Naveen");
              },
              child: CircleAvatar(
                child: ClipOval(child: Image.asset('images/new.jpg')),
                backgroundColor: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                right: 40,
                left: 50,
                bottom: 10,
              ),
              child: Image.asset('images/Vector.png'),
            ),
            OptionWidget(
              txt: "Live",
              icon: Icons.video_camera_front,
              padleft: 205,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: OptionWidget(
                txt: "From Gallery",
                icon: Icons.folder_copy,
                padleft: 130,
              ),
            ),
            OptionWidget(
                txt: "Saved Files", icon: Icons.file_copy, padleft: 140),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: OptionWidget(
                  txt: "Analytics", icon: Icons.bar_chart_sharp, padleft: 155),
            ),
            OptionWidget(
                txt: "Learn",
                icon: Icons.cast_for_education_outlined,
                padleft: 190)
          ],
        ),
      ),
    );
  }
}

class OptionWidget extends StatelessWidget {
  String txt;
  IconData icon;
  double padleft;
  OptionWidget({
    Key? key,
    required this.txt,
    required this.icon,
    required this.padleft,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          print("tap");
        },
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              border: Border.all(width: 0.08),
              borderRadius: BorderRadius.circular(20)),
          height: 70,
          width: 320,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  txt,
                  style: TextStyle(fontSize: 19),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: padleft),
                child: Icon(
                  icon,
                  color: Colors.black,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
