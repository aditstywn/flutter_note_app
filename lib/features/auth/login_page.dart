import 'package:flutter/material.dart';
import 'package:flutter_note_app/features/note/note_page.dart';

import '../../core/config/colors_app.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      appBar: AppBar(
        backgroundColor: ColorsApp.white,
        title: const Text(
          'Login',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Login to your account',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: 'Email',
              hintStyle: const TextStyle(
                color: ColorsApp.textHint,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: ColorsApp.divider,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: ColorsApp.primary,
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: const TextStyle(
                color: ColorsApp.textHint,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: ColorsApp.divider,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: ColorsApp.primary,
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return const NotePage();
              }));
            },
            style: ElevatedButton.styleFrom(
              maximumSize: const Size(double.infinity, 50),
              backgroundColor: ColorsApp.primary,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Login',
              style: TextStyle(
                color: ColorsApp.white,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(child: Text('or sign in with')),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: ColorsApp.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: ColorsApp.textHint,
                    width: 3.0,
                  ),
                ),
                child: Image.asset('assets/icons/google.png'),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: ColorsApp.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: ColorsApp.textHint,
                    width: 3.0,
                  ),
                ),
                child: Image.asset('assets/icons/fb.png'),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: ColorsApp.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: ColorsApp.textHint,
                    width: 3.0,
                  ),
                ),
                child: Image.asset('assets/icons/X.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
