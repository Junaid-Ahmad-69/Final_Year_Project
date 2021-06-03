import 'package:flutter/material.dart';
import 'Loginpage.dart';
import 'package:flutter/cupertino.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String password = " ";
  bool isPasswordVisible = false;
  var _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  bool value = false;
  //final List<String> bloodGroup = [ 'A+','A','B+','B','O+','O-'];

  //get images => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(top: 100, bottom: 15),
                  child: getImageAsset()),
              Padding(
                padding: const EdgeInsets.only(top: 6, right: 20, left: 20),
                child: TextFormField(
                  controller: emailController,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please enter email";
                    }
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    labelText: 'Full Name',
                    hintText: 'Junaid Ahmad',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => emailController.clear(),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 20, left: 20),
                child: TextFormField(
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please enter password";
                    }
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: isPasswordVisible
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                      onPressed: () => setState(
                          () => isPasswordVisible = !isPasswordVisible),
                    ),
                    //hintText: '',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  obscureText: isPasswordVisible,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 240),
                child: Text("Forget Password?"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  width: 355,
                  height: 60,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: () {
                      print("object");
                      setState(() {
                        if (_formKey.currentState.validate()) {}
                      });
                    },
                    color: Colors.red,
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    "OR",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getImageAsset() {
    //var logo;
    //var logo;
    AssetImage assatImage = AssetImage('images/logo.png');
    Image image = Image(
      image: assatImage,
      width: 175.0,
      height: 175.0,
    );
    return Container(
      child: image,
    );
  }
}
