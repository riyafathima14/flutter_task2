import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shareinfo_app/login_screen.dart';

class ActionScreen extends StatelessWidget {
  const ActionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 150,
                ),
                SizedBox(
                  width: 240,
                  child: Image.asset(
                    'assets/images/gif1.gif',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Let's you in",
                  style: GoogleFonts.nunito(
                    fontSize: 35,
                    color: const Color(0xFF260446),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          side: const BorderSide(
                            width: 2.0,
                            color: Color(0xFFD9D9D9),
                          ),
                          fixedSize: const Size(350, 49)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/Social Logo.png'),
                          const SizedBox(width: 10),
                          Text(
                            "Continue with Facebook",
                            style: GoogleFonts.nunito(
                                fontSize: 16, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          side: const BorderSide(
                            width: 2.0,
                            color: Color(0xFFD9D9D9),
                          ),
                          fixedSize: const Size(350, 49)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/google_logo.png'),
                          const SizedBox(width: 10),
                          Text(
                            "Continue with Google",
                            style: GoogleFonts.nunito(
                                fontSize: 16, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          side: const BorderSide(
                            width: 2.0,
                            color: Color(0xFFD9D9D9),
                          ),
                          fixedSize: const Size(350, 49)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/apple_logo.png'),
                          const SizedBox(width: 10),
                          Text(
                            "Continue with Apple",
                            style: GoogleFonts.nunito(
                                fontSize: 16, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 45),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 130,
                        child: Divider(
                          thickness: 1.5,
                        ),
                      ),
                      Text(' or '),
                      SizedBox(
                        width: 130,
                        child: Divider(
                          thickness: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 295,
                  height: 47,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
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
                      'Sign in with password',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account? ",
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF2333CF),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
