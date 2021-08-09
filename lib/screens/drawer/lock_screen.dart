import 'package:flutter/material.dart';
import 'package:gami/shared/component/reusable_circle_avatar.dart';

class LockScreen extends StatelessWidget {
  var passwardController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        //background imgge
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://ak.picdn.net/shutterstock/videos/34159603/thumb/4.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            // grey line
            Container(
              height: 3,
              width: double.infinity,
              color: Colors.grey[900],
            ),
            SizedBox(
              height: 50,
            ),
            // logo image
            Container(
              height: 75,
              width: 75,
              child: Image(
                image: NetworkImage(
                  'https://png.pngitem.com/pimgs/s/4-42175_white-youtube-logo-png-transparent-png.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            // profile image with name and text to write passward
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      ReusableCircleAvatar(
                        radius: 33,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Hamza Ahmed',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    obscureText: true,
                    controller: passwardController,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.white,
                      ),
                      fillColor: Colors.white,
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Write Password and hit enter'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
