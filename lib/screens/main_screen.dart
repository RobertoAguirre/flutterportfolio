
import 'package:flutter/material.dart';

import '../widgets/contact_button.dart';

////we start here mofo////
class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueAccent,
        title:const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top:9,bottom: 9),
              child: CircleAvatar(
                radius: 25, //in here i reduced the radious so the border of the circle stops touching the appbar top and bottom
                backgroundColor: Colors.white,
                foregroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1378037175220981760/NqJolFmD_400x400.jpg'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Roberto',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic
                ),
                ),
            )

          ],
        ), 
        actions: [
          //in the onPressed if i want to pass and empty function i send (){}
         ContactButton(
            buttonText: 'Contact me',
            icon: const Icon(Icons.send_sharp),
            onPressed: (){
              print("helo world");
            },
            ),
         //ContactButton(buttonText: 'hurrdurr',icon: Icon(Icons.abc),) added just for fun
        ],

      ),
    );
  }
}
