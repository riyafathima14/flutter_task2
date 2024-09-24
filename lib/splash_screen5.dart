import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shareinfo_app/action_screen.dart';

class SplashScreen5 extends StatelessWidget {
  const SplashScreen5({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            
            width: 650, 
            height: 400,
            child: Image.asset(
              'assets/images/gif3.gif',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Image.asset(
              'assets/images/Lady image 3.png',
              height: 590,width: 500,
              fit: BoxFit.fill,
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
                      "Let’s start your \n career with us now!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF1626BE),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '"Embark on Your Career Journey Today! Join Us to\n  Unlock a World of Opportunities and Achieve Your \n Professional Dreams. Start Now!"',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xFF434343),
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: 340,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ActionScreen(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                              const Color(0xff0057e0)),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Get Started',
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
