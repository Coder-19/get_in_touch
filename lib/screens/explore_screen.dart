import 'package:flutter/material.dart';
import 'package:get_in_touch/constants.dart';

// // creating a new constant here for styling the main text
// // i.e. headings etc.
// const kHeadingStyle = TextStyle(
//   color: Color(0xff6B92BE),
//   fontWeight: FontWeight.bold,
// );

// // creating a constant here for stying the description text
// const kDescriptionTextStyle = TextStyle(
//   color: Color(0xffD9EAF7),
//   fontWeight: FontWeight.bold,
// );

// the code below is for the Explore screen of the app
class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 40.0,
              ),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Infigon Futures',
                      // styling the above text
                      style: TextStyle(
                        color: Color(0xff457CCD),
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 115.0,
              ),
              child: Divider(
                color: Color(0xffD1DEED),
                thickness: 1.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 65.0,
                ),
                Text(
                  'E-mail : ',
                  // styling the above text
                  // style: TextStyle(
                  //   color: Color(0xff6B92BE),
                  //   fontWeight: FontWeight.bold,
                  // ),

                  style: kHeadingStyle,
                ),
                Text(
                  'samriddhodas8@gmail.com',
                  // styling the above text
                  // style: TextStyle(
                  //   color: Color(0xffD9EAF7),
                  //   fontWeight: FontWeight.bold,
                  // ),

                  style: kDescriptionTextStyle,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Mobile : ',
                  // styling the above text
                  // style: TextStyle(
                  //   color: Color(0xff6B92BE),
                  //   fontWeight: FontWeight.bold,
                  // ),

                  style: kHeadingStyle,
                ),
                Text(
                  '+91 00000 00000',
                  // styling the above text
                  // style: TextStyle(
                  //   color: Color(0xffD9EAF7),
                  //   fontWeight: FontWeight.bold,
                  // ),

                  style: kDescriptionTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: 140.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.0,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Address : ',
                          // styling the above text here
                          style: kHeadingStyle,
                        ),
                      ),
                    ),
                    Text(
                      '8th Floor, Sardar Patel Institute of Technology',
                      style: kDescriptionTextStyle,
                    ),
                  ],
                ),
                Text(
                  'Inside Bhavans Campus, Dadabhai Cross Rd Number 2',
                  style: kDescriptionTextStyle,
                ),
                Text(
                  'Andheri West, Mumbai, Maharastra, 400058',
                  style: kDescriptionTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: 110.0,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 5.0,
              ),
              child: Text(
                'Latest Facebook Posts',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Color(0xff457CCD),
                ),
              ),
            ),
            SizedBox(
              height: 90.0,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 5.0,
              ),
              child: Text(
                'Latest Instagram Posts',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Color(0xff457CCD),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
