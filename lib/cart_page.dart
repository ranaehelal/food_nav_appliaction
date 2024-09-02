import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 200),
              child: Image.network(
                'https://s3-alpha-sig.figma.com/img/84b0/73e1/744cefbb8677e4f48785998abb9803b0?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=XL1itw9Ttph5r9xVddJc1E0k4eX1P2s30mFAamf08tFyWv5269pscy5Babi-tqiPC2o4QNDRYvWT26LmwAioJY~7bRmI0VPL8wVtSYcpm4~H7y3SSTGDoisjhnUGY6NM5c6KpGPy-I3ybM6U1SPi--L0djqp-IVuF0gsHLTXEfKay3iPullpLnz1m9gvxA8Dnbg1cdDjEw2EUinaCdpj5lFsZOjAiOQMQzh6ymS-SlKpd~Kj~g8HCQoOxpeLtxEC8y3qaTOX8wzzy8UgNHbHdMqKVxGBBHeETb56ngteDe6GYxPfu4bms-2mvv2pIKa-0C4txIsy2K7~QWoyGQ6mDQ__',
                width: 195,
                height: 189,
              ),
            ),
            Text('No orders yet',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Hit the orange button down below to Create an order',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17,fontFamily: 'Poppins',color: Colors.grey),

              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor:  Color(0xFFFA4A0C),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12), // padding
              ),
              child: Text('Start odering',style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
    );
  }
}
