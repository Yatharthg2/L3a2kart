import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DesignScreen extends StatelessWidget {

  CarouselController carouselController = CarouselController();

  final featuredImages = [
    'assets/download1.jpg',
    'assets/download1.jpg',
    'assets/download1.jpg',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Honda Activa 110cc'),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 8),
                  width: 300, height: 130,
                  child: CarouselSlider(
                    carouselController: carouselController, // Give the controller
                    options: CarouselOptions(
                    ),
                    items: featuredImages.map((featuredImage) {
                      return Image.asset(featuredImage);
                    }).toList(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                heightFactor: 2.5,
                widthFactor: 7.3,
                child: IconButton(
                  onPressed: () {
                    // Use the controller to change the current page
                    carouselController.nextPage();
                  },
                  icon: Icon(Icons.arrow_forward),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Honda Activa 110cc ',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.purple,
                      size: 20,
                    ),
                    Text(
                      ' 4.3 ',
                      style: TextStyle(
                        color: Colors.purple,
                      ),
                    ),
                    Text(
                      '(44 rides)',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'MH 12 KP 3431  ',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Icon(
                      Icons.check_circle_rounded,
                      color: Colors.green,
                      size: 18,
                    )
                  ],
                ),
                Container(
                  height: 35,
                  width: 160,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        child: Text(
                          ' Vehicle Preview',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        height: 35,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.remove_red_eye),
                          iconSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SwitchScreen(),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.black,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 4, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  height: 30,
                  child: Row(
                    children: [
                      Icon(Icons.currency_rupee),
                      Spacer(
                        flex: 2,
                      ),
                      Text(
                        'Pricing',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Spacer(
                        flex: 18,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 15,
                          ))
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.8,
                  color: Colors.grey,
                ),
                Container(
                  height: 30,
                  child: Row(
                    children: [
                      Icon(Icons.location_on),
                      Spacer(
                        flex: 2,
                      ),
                      Text(
                        'Pickup location',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Spacer(
                        flex: 18,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 15,
                          ))
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.8,
                  color: Colors.grey,
                ),
                Container(
                  height: 30,
                  child: Row(
                    children: [
                      Icon(Icons.camera_alt_outlined),
                      Spacer(
                        flex: 2,
                      ),
                      Text(
                        'Vehicle Photos',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Spacer(
                        flex: 18,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 15,
                          ))
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.8,
                  color: Colors.grey,
                ),
                Container(
                  height: 30,
                  child: Row(
                    children: [
                      Icon(Icons.notes_outlined),
                      Spacer(
                        flex: 2,
                      ),
                      Text(
                        'Vehicle Description',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Spacer(
                        flex: 18,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 15,
                          ))
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.8,
                  color: Colors.grey,
                ),
                Container(
                  height: 30,
                  child: Row(
                    children: [
                      Icon(Icons.calendar_month),
                      Spacer(
                        flex: 2,
                      ),
                      Text(
                        'Set availability',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Spacer(
                        flex: 18,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 15,
                          ))
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.8,
                  color: Colors.grey,
                ),
                Container(
                  height: 30,
                  child: Row(
                    children: [
                      Icon(Icons.sticky_note_2_outlined),
                      Spacer(
                        flex: 2,
                      ),
                      Text(
                        'Notes for pickup',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Spacer(
                        flex: 18,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 15,
                          ))
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.8,
                  color: Colors.grey,
                ),
                Center(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Remove this vehicle',
                        style: TextStyle(color: Colors.red),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SwitchScreen extends StatefulWidget {
  @override
  SwitchClass createState() => new SwitchClass();
}

class SwitchClass extends State {
  bool isSwitched = true;
  var textValue = 'Accepting Rides';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Accepting Rides';
      });
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Not Accepting Rides';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        height: 18,
        width: 45,
        child: Transform.scale(
            alignment: Alignment.centerLeft,
            scale: 0.6,
            child: Switch(
              onChanged: toggleSwitch,
              value: isSwitched,
              activeColor: Colors.greenAccent,
              activeTrackColor: Colors.grey,
              inactiveThumbColor: Colors.red,
              inactiveTrackColor: Colors.grey,
            )),
      ),
      Container(
          height: 22,
          child: Text(
            '$textValue',
            style: TextStyle(fontSize: 18),
          ))
    ]);
  }
}
