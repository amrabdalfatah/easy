import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.notifications,
                      color: Colors.grey,
                    ),
                    title: Text(
                      'Booking in Salon Elsaada',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      'Lorem Insiperation of code line of what you can draw until you have this method and already taken to your home away',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 9,
                        color: Colors.grey,
                      ),
                    ),
                    trailing: Text(
                      '25 April',
                      style: TextStyle(
                        fontSize: 9,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.notifications,
                  size: 100,
                  color: Color(0xFFC1C2C3),
                ),
                const SizedBox(height: 12),
                Text(
                  'Sorry, There is no Notifications',
                  style: TextStyle(
                    color: Color(0xFFC1C2C3),
                    fontSize: 13,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
