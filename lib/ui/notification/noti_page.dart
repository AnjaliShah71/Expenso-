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

     body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Today
          const Text(
            "Today",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 12),

          notificationCard(
            icon: Icons.account_balance_wallet_rounded,
            iconColor: Colors.green,
            title: "Expense Added",
            message: "₹500 has been added to Food expenses.",
            time: "10:30 AM",
            unread: true,
          ),

          notificationCard(
            icon: Icons.warning_amber_rounded,
            iconColor: Colors.orange,
            title: "Budget Alert",
            message: "You have used 80% of your monthly budget.",
            time: "09:15 AM",
            unread: true,
          ),

          notificationCard(
            icon: Icons.payments_rounded,
            iconColor: Colors.blue,
            title: "Payment Recorded",
            message: "Your ₹1,200 payment was successfully recorded.",
            time: "08:40 AM",
            unread: false,
          ),

          const SizedBox(height: 24),

          // Yesterday
          const Text(
            "Yesterday",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 12),

          notificationCard(
            icon: Icons.savings_rounded,
            iconColor: Colors.purple,
            title: "Savings Goal",
            message: "You are getting closer to your savings goal!",
            time: "Yesterday",
            unread: false,
          ),

          notificationCard(
            icon: Icons.receipt_long_rounded,
            iconColor: Colors.teal,
            title: "Monthly Summary",
            message: "Your monthly expense summary is ready.",
            time: "Yesterday",
            unread: false,
          ),
        ],
      ),
    );
  }
