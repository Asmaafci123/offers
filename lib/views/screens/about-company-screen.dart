import 'package:flutter/material.dart';
import 'package:spicy/views/custom_widgets/custom-appbar.dart';

class AboutCompanyScreen extends StatelessWidget {
  const AboutCompanyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: CustomAppBar(
          title: 'About Company',
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.03,
                MediaQuery.of(context).size.height * 0.03,
                MediaQuery.of(context).size.width * 0.03,
                0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Image(
                  image: AssetImage('assets/images/logo.jpg'),
                )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  'Lorem ipsum',
                  style: TextStyle(
                      color: const Color(0xFF3AB44E),
                      fontWeight: FontWeight.w700,
                      fontSize: MediaQuery.of(context).size.width * 0.05),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet',
                  style: TextStyle(
                      color: const Color(0xFF8F9BB3),
                      fontWeight: FontWeight.w400,
                      fontSize: MediaQuery.of(context).size.width * 0.037),
                ),
              ],
            )));
  }
}
