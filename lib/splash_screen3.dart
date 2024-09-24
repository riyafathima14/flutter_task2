import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shareinfo_app/splash_screen4.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Image.asset(
              'assets/images/Lady image 1.png',
              //height: 590,width: 500,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 340,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(70),
                  topRight: Radius.circular(70),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                ),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Text(
                  "We are the best job \n portal platform",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color:const  Color(0xFF1626BE),
                  ),
                ),
                const SizedBox(height: 10),
                    Text(
                  '"Unlock your career potential with us – the ultimate \n job portal platform that connects you with top \n opportunities, paving the way to your dream career."',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color:const Color(0xFF434343),
                  ),
                ),
                    const SizedBox(height: 30),
                    SizedBox(
                  width: 340,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const  SplashScreen4(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(const Color(0xff0057e0)),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
