import 'package:flutter/material.dart';
import 'package:submission_dicoding/pages/main_home_page.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage('assets/img/bg.jpg'),
                fit: BoxFit.cover,
                opacity: 0.6)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Coffie Shop',
                style: TextStyle(
                    fontFamily: 'PlayFair',
                    fontStyle: FontStyle.normal,
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Text(
                    'Felling Low? Take a sip of Coffie',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Material(
                     color: Color(0xFFE57734),
                      borderRadius: BorderRadius.circular(10),
                    child: InkWell(
  
                      splashColor: Colors.black,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePageMain(),
                            ));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                        decoration: BoxDecoration(),
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              fontFamily: 'PlayFair',
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              letterSpacing: 1,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
