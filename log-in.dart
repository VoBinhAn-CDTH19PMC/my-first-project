import 'package:flutter/material.dart';
import 'maintab-home-menu.dart';

class FakeBook extends StatefulWidget {
  const FakeBook({Key? key}) : super(key: key);

  @override
  _FakeBookState createState() => _FakeBookState();
}

class _FakeBookState extends State<FakeBook> {
  bool passSecurity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Center(
              child: Container(
                //padding: const EdgeInsets.only(bottom: 100),
                child: Center(child: Image.asset('images/facebook.jpg')),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(185, 10, 0, 70),
              child: Center(
                child: Row(
                  children: [
                    Text('English . 中国 . '),
                    Text(
                      'Thêm...',
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(50, 30, 50, 15),
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                    //hintText: 'Tài khoản',
                    labelText: 'Tài khoản',
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 30),
                child: TextField(
                  decoration: InputDecoration(
                    //hintText: 'Mật khẩu',
                    labelText: 'Mật khẩu',
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passSecurity = !passSecurity;
                          }); 
                        },
                        icon: Icon(passSecurity
                            ? Icons.remove_red_eye
                            : Icons.security_sharp)),
                  ),
                  obscureText: passSecurity,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SeccondCreen()),
                          );
                        },
                        child: const Text(
                          'Đăng nhập',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            primary: Colors.white,
                            side: BorderSide(color: Colors.blue)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Quên mật khẩu hả?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                )),
          ],
        ),
      ),
    );
  }
}