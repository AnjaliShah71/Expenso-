import 'package:flutter/material.dart'; 

class NotificationPage extends StatelessWidget 
{ 
  const NotificationPage({super.key}); 
  @override 
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: const Color(0xFFF7F8FA),
appBar: AppBar( 
        backgroundColor: Colors.white,
        elevation: 0, 
        centerTitle: false, 
        title: const Text(
          "Notifications",
          style: TextStyle( color: Colors.black87, fontSize: 22, fontWeight: FontWeight.bold, ), ),
        
    actions: [ 
            TextButton( onPressed: () { 
              // Mark all as read
            }, 
      child: const Text( "Mark all", style: TextStyle( color: Colors.blue, fontSize: 14,
              ),
           ),
       ),
    ],
),
