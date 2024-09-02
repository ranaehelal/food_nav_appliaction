import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 200),
            child: Image.network(
              'https://s3-alpha-sig.figma.com/img/2862/1466/cc7a10a05b27158ca6ce031f8ec2a107?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=M2lUc5fD-5ckKfmI3bbDh-07UTAilbhYrksRxeXHRqq2-8GhlJpdr9AaUKvIMyl~jkXH-3S4n4p0qQMmfb4z2zN8aUJ0-Na0U6d97UHHticLypRn1J3x42aPM7~2T54YTXxC3tbwmZQetHW4P4Jcfyo59gBadjnkYJ3FtuMp08CFV-YkCBDRcnkV2INxJbIoWvHMp-KP7T0WYSugSY7oDOvvM5uuir4h16VBCo~T7cA-Hf2Jf9DNcSYyT6MfrFYtaliZ3EqE-Ib7l4y1NXDRBsy0dEhCBrwlQMT2UG7Uk8VOkf6bEAk5-gSxiWLjdYWAAR8-zkn9DcMvofjGMYRmzg__',
              width: 195,
              height: 189,
            ),
          ),
          Text(
            'No favorites yet',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'your order will be dilevered under 30 mins of placing your order',
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
            child: Text('Explore', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),

    );
  }
}
