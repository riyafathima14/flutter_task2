import 'package:flutter/material.dart';
import 'package:shareinfo_app/action_screen.dart';
import 'package:shareinfo_app/verification_screen3.dart';

class Verificationscreen2 extends StatefulWidget {
  const Verificationscreen2({super.key});

  @override
  State<Verificationscreen2> createState() => _Verificationscreen2State();
}

class _Verificationscreen2State extends State<Verificationscreen2> {
  final int _secondsRemaining = 53;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            'OTP Code Verification',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          SizedBox(width: 180),
        ],
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(
                'assets/images/gif4.gif',
                width: 300,
                height: 300,
              ),
            ),
            const Text(
              'OTP has been sent to ',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const Text(
              '+91 123456789',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < 4; i++)
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.all(17.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xFFD9D9D9), width: 2.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Center(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                        decoration: InputDecoration(
                            counterText: '', border: InputBorder.none),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Resend Code in ",
                  style: TextStyle(
                      color: Color(0xFF434343),
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
                Text(
                  _secondsRemaining.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF2639ED),
                      fontSize: 15),
                ),
                const Text(
                  " secs ",
                  style: TextStyle(
                      color: Color(0xFF434343),
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ],
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
                            builder: (context) => const Verificationscreen3(),
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
                        'Verify',
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





// _secondsRemaining > 0
              //     ? Text(
              //         _secondsRemaining.toString(),
              //         style: const TextStyle(fontWeight: FontWeight.w600,color: Color(0xFF2639ED),fontSize: 15),
              //       )
              //     : TextButton(
              //         onPressed: () {
              //           setState(() {
              //             _secondsRemaining = 53; 
              //           });
              //         },
              //         child: const Text("Resend"),
              //       ),
              //       const Text(
              //   " secs ",
              //   style: TextStyle(color: Color(0xFF434343),fontWeight: FontWeight.w600,fontSize: 15),
              // ),
