import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Salon Al-Amana',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF023A73),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: Color(0xFF023A73),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            Text(
                              'Date Booking',
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              '17 May',
                              style: TextStyle(
                                fontSize: 9,
                                color: Color(0xFF023A73),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              '9:00',
                              style: TextStyle(
                                fontSize: 9,
                                color: Color(0xFF023A73),
                              ),
                            ),
                            Text(
                              ':',
                              style: TextStyle(
                                fontSize: 9,
                                color: Color(0xFF023A73),
                              ),
                            ),
                            Text(
                              '9:30 PM',
                              style: TextStyle(
                                fontSize: 9,
                                color: Color(0xFF023A73),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'Offers',
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            SizedBox(
                              height: 30,
                              width: 50,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7)),
                                child: Image.asset(
                                  'assets/images/slide.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Hair cut and Beard',
                                    style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Lorem Inseperation for what you can do elite when you are going to do',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 7,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              '150 \$',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'Services',
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            SizedBox(
                              height: 30,
                              width: 50,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7)),
                                child: Image.asset(
                                  'assets/images/slide.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Hair cut and Beard',
                                    style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Lorem Inseperation for what you can do elite when you are going to do',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 7,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              '150 \$',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text(
                      'Salon Al-Basma',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_drop_down_sharp,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.calendar_today_outlined,
                  size: 100,
                  color: Color(0xFFC1C2C3),
                ),
                const SizedBox(height: 12),
                Text(
                  'Sorry, There is no Booking',
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
