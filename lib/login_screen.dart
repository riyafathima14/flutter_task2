import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shareinfo_app/veifictaion_screen1.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   bool isPasswordVisible = false;
    bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            Image.asset('assets/images/main Logo.png'),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Login To Your Account',
              style: GoogleFonts.nunito(
                fontSize: 24,
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
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.mail),
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide:
                        const BorderSide(color: Color(0xFFD9D9D9), width: 2.0),
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
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 295,
              height: 47,
              child: ElevatedButton(
                onPressed: () {},
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
                  'Sign in ',
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
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const VerificationSreen1(),
                  ),
                );
              },
              child: const Text(
                'Forgot the Password?',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF2333CF),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 100,
                  child: Divider(
                    thickness: 1.5,
                  ),
                ),
                Text(
                  ' or continue with ',
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  width: 100,
                  child: Divider(
                    thickness: 1.5,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0x8B8B8B1A),
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Image.asset(
                    'assets/images/Rectangle 280.png',
                    width: 50,
                    height: 50,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0x8B8B8B1A),
                          style: BorderStyle.solid),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Image.asset(
                    'assets/images/google_logo.png',
                    width: 50,
                    height: 50,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0x8B8B8B1A),
                          style: BorderStyle.solid),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Image.asset(
                    'assets/images/Rectangle 279.png',
                    width: 50,
                    height: 50,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? ",
                    style: TextStyle(fontWeight: FontWeight.w500)),
                Text(
                  'Sign in',
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
    );
  }
}
