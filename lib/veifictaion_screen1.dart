import 'package:flutter/material.dart';
import 'package:shareinfo_app/action_screen.dart';
import 'package:shareinfo_app/verification_screen2.dart';

class VerificationSreen1 extends StatelessWidget {
  const VerificationSreen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ActionScreen()));
            },
            icon: const Icon(Icons.arrow_back)),
        actions: const [
          Text(
            'Forgot Password',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          SizedBox(width: 200),
        ],
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              child: Image.asset(
                'assets/images/gif2.gif',
                width: 218,
                height: 218,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Select which contact details should we use to reset your password',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 15),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  side: const BorderSide(
                    width: 2.0,
                    color: Color(0xFFD9D9D9),
                  ),
                  fixedSize: const Size(350, 90)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      'assets/images/mail1.png',
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text('via Mobile Number'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  side: const BorderSide(
                    width: 2.0,
                    color: Color(0xFFD9D9D9),
                  ),
                  fixedSize: const Size(350, 90)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      'assets/images/mail2.png',
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text('via Email'),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 100,
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(color: Color(0xFFD9D9D9), width: 2.0),
                  ),
                ),
                child: Center(
                  child: SizedBox(
                    width: 295,
                    height: 47,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const Verificationscreen2(),
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
                        'Continue',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
