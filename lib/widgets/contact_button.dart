import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {

  //adding parameter so we can reuse the button passing text as parameter
  final String buttonText;
  final Widget icon;
  final VoidCallback onPressed; //in the tutorial the line was: final Function onPressed;

  const ContactButton({
    super.key, 
    required this.buttonText, 
    required this.icon, 
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton.icon(
       style: TextButton.styleFrom( //creates custom style for the element textbutton
         textStyle: const TextStyle(
           color: Colors.black87,
         ),
         backgroundColor: Colors.amberAccent,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(24.0),
         )
       ),
       onPressed: onPressed, //on pressed button, we are passing the funciton as a parameter too
       icon: Padding(
         padding:  const EdgeInsets.all(8.0),
         child:  icon,
       ), 
       label: Text(
         // ignore: unnecessary_string_interpolations
         '$buttonText', //with $button... we are using the buttonText variable using string interpolation
         style: const TextStyle(
           color: Colors.black87,
           fontWeight: FontWeight.bold  
           ),
         ),
    
       ),
    );
  }
}