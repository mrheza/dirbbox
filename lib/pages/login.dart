import "package:dirbbox/pages/profile.dart";
import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // layer body
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 135),
                SizedBox(
                  width: 175,
                  height: 175,
                  child: Image.asset(
                    "assets/images/pic-1.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Welcome to",
                  style: TextStyle(fontSize: 22),
                ),
                const Text(
                  "Dirbbox",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(
                  width: 200,
                  child: Text(
                    "Best cloud storage platform for all business and individuals to manage there data\n\nJoin For Free.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return const ProfilePage();
                          }),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: const Color(0xFFFFF7FE),
                        fixedSize: const Size(140, 40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/finger.png"),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "Smart Id",
                            style: TextStyle(
                              color: Color(0xFF567DF4),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return const ProfilePage();
                          }),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: const Color(0xFF567DF4),
                        fixedSize: const Size(140, 40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Sign in",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset("assets/icons/arrow-right.png"),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 40),
                const Center(
                  child: Text(
                    "Use Social Login",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/instagram.png"),
                    const SizedBox(width: 60),
                    Image.asset("assets/icons/twitter.png"),
                    const SizedBox(width: 60),
                    Image.asset("assets/icons/facebook.png"),
                  ],
                ),
                const SizedBox(height: 50),
                const Center(
                  child: Text(
                    "Create an account",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
