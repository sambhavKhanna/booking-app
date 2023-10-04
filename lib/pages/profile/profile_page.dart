// ignore_for_file: use_build_context_synchronously

import 'package:booking_app/functions/profile_functions.dart';
import 'package:booking_app/pages/profile/user_info.dart';
import 'package:booking_app/widgets/buttons/profile_options_button.dart';
import 'package:booking_app/widgets/textbuttons/primary_text_button.dart';
import 'package:booking_app/widgets/textbuttons/secondary_text_button.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final int villaNumber;
  final List<dynamic> userDataList; // Pass a list of user data maps

  const ProfilePage({
    Key? key,
    required this.villaNumber,
    required this.userDataList,
  }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final profileFunctions = ProfileFunctions();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromRGBO(42, 54, 59, 1)),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(80),
                          bottomRight: Radius.circular(80)),
                      color: Color.fromRGBO(42, 54, 59, 1)),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      const Text(
                        'Villa Number:',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Text(
                        widget.villaNumber.toString(),
                        style: const TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(children: [
                  SizedBox(
                      height:
                          MediaQuery.of(context).copyWith().size.height / 7),
                  FractionallySizedBox(
                      widthFactor: 0.9,
                      child: ProfileOptionsButton(
                          text: 'Users',
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserInfoPage(
                                      villaNumber: widget.villaNumber,
                                      userDataList: widget.userDataList))))),
                  const SizedBox(height: 15),
                  FractionallySizedBox(
                      widthFactor: 0.9,
                      child: ProfileOptionsButton(
                          text: 'Booking History',
                          onPressed: () => debugPrint('To be implemented'))),
                  const SizedBox(height: 15),
                  FractionallySizedBox(
                      widthFactor: 0.9,
                      child: ProfileOptionsButton(
                          text: 'Address',
                          onPressed: () =>
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Your Address', style: TextStyle(color: Color.fromRGBO(42, 54, 59, 1)),),
                                    content: Text('Villa #${widget.villaNumber}, Dana Garden, E-Ring Road, Old Airport, Doha, Qatar'),
                                    actions: [
                                      PrimaryTextButton(
                                        text: 'View on Map',
                                        onPressed: () => profileFunctions.showLocation(),
                                      ),
                                      SecondaryTextButton(
                                        text: 'Close',
                                        onPressed: () => Navigator.of(context).pop(),
                                      ),
                                    ],
                                  );
                                },
                              ))),
                  const SizedBox(height: 15),
                  FractionallySizedBox(
                      widthFactor: 0.9,
                      child: ProfileOptionsButton(
                          text: 'Help',
                          onPressed: () => debugPrint('To be implemented'))),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
