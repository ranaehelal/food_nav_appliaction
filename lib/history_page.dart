import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 200),
            child: Image.network(
              'https://s3-alpha-sig.figma.com/img/2657/3451/bc21d85ae6e84d93d5dd490ddea948a5?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Innuc~~K5XxS-FLecM7xR5vVEksPl7mVO-6ZR0Lh8L4WuWXreVUZ28KbYDCmmWfHJc3n6l6M7iPUpGqFCgezUcJKjJ341Rs4QXEFWvpxIPN2aQ9TygyJiaAmGyoXtBa6eNGpksw158OKJDxRectEE~ZJ2uytBCRQGJwSHJikkFm65-XV5g4WmixB3eU4JqUYNTG-PqVYWtNvFdB8Gdsod4WwLEGJWlmrGgMG-2YN0H3FQzuxaNwul1u7Hd4ZXZdmFBYdbDI~xT6-aKoyGkUbNNjNMnYmGHSuBWUQhLcGrwmpyKGHTo1y7~6~dJi0-Fl8j3jBGXLdsCwucHgzUP~4fg__'              ,

              width: 195,
              height: 189,
            ),
          ),
          Text(
            'No history yet',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Hit the orange button down below to Create an order',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, fontFamily: 'Poppins', color: Colors.grey),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFA4A0C),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12), // padding
            ),
            child: Text('Start odering', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),

    );
  }
}
