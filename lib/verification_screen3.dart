import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shareinfo_app/action_screen.dart';

class Verificationscreen3 extends StatefulWidget {
  const Verificationscreen3({super.key});

  @override
  State<Verificationscreen3> createState() => _Verificationscreen3State();
}

class _Verificationscreen3State extends State<Verificationscreen3> {
  void congragulationPopUp() {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return  Center(
            child: Container(
              height: 493,
              width: 293,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  SizedBox(
                    width: 183,
                    height: 183,
                    child: Image.asset('assets/images/gif6.gif'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DefaultTextStyle(
                    style: GoogleFonts.nunito(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.w700),
                    child: const Text(
                      'Congratulatons!',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DefaultTextStyle(
                    style: GoogleFonts.nunito(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w600),
                    child: const Text(
                      'Your account ready to use You will be \n redirected to the Login page in a few \n seconds...',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 208,
                    height: 135,
                    child: Image.asset('assets/images/gif7.gif'),
                  ),
                ],
              ),
            ),
          );
      },
    );
  }
  bool isChecked = false;
    bool isPasswordVisible = false;
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
        actions: [
          Text(
            'Create New Password',
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF260446),
            ),
          ),
          const SizedBox(width: 170),
        ],
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(
                'assets/images/gif5.gif',
                width: 300,
                height: 300,
              ),
            ),
            Text(
              'Create Your New Password',
              style: GoogleFonts.nunito(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF260446),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 320,
              height: 59,
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: !isPasswordVisible,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide:
                        const BorderSide(color: Color(0xFFD9D9D9), width: 2.0),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      key: ValueKey(isPasswordVisible),
                    ),
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 320,
              height: 59,
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: !isPasswordVisible,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide:
                        const BorderSide(color: Color(0xFFD9D9D9), width: 2.0),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      key: ValueKey(isPasswordVisible),
                    ),
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                        print('isPasswordVisible: $isPasswordVisible');
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 25,
                    child: Checkbox(
                        fillColor: isChecked
                            ? WidgetStatePropertyAll(Colors.blue)
                            : null,
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        })),
                const Text('Remember Me'),
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
                      onPressed: () {congragulationPopUp();},
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
