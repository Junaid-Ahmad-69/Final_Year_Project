import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  String password = " ";
  bool isPasswordVisible = false;
  final mobileController = TextEditingController();
  bool value = false;

  var _formKey = GlobalKey<FormState>();
  var confirmPass;
  //bool value = false;
  final List<String> bloodGroup = ['A+', 'A', 'B+', 'B', 'O+', 'O-'];

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
                  padding: const EdgeInsets.only(top: 75, bottom: 15),
                  child: getImageAsset()),
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 20, left: 20),
                child: TextFormField(
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please enter name";
                    }
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    labelText: 'Full Name',
                    hintText: 'Junaid Ahmad',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => mobileController.clear(),
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
                  // ignore: deprecated_member_use
                  inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please enter Mobile no";
                    } else if (value.length == 10) {
                      return 'Enter Valid Number';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    labelText: 'Mobile No',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => mobileController.clear(),
                    ),
                    //hintText: '',
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
                    confirmPass = value;
                    if (value.isEmpty) {
                      return "Please Enter New Password";
                    } else if (value.length < 8) {
                      return "Password must be atleast 8 characters long";
                    } else {
                      return null;
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
                padding: const EdgeInsets.only(top: 8, right: 20, left: 20),
                child: TextFormField(
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please Re-Enter New Password";
                    } else if (value.length < 8) {
                      return "Password must be atleast 8 characters long";
                    } else if (value != confirmPass) {
                      return "Password must be same as above";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    labelText: 'Confirm Password',
                    suffixIcon: IconButton(
                      icon: isPasswordVisible
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                      onPressed: () => setState(
                          () => isPasswordVisible = !isPasswordVisible),
                    ),

                    ///hintText: 'Aneeq naeem',
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
                padding: const EdgeInsets.only(top: 8, right: 20, left: 20),
                child: TextFormField(
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please enter your Location";
                    }
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    labelText: 'Location',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => mobileController.clear(),
                    ),
                    //hintText: '',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
              ),
              buildCheckbox(),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                      "Sign up",
                      style: TextStyle(color: Colors.white),
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

  Widget buildCheckbox() => ListTile(
        leading: Checkbox(
          value: value,
          onChanged: (value) {
            setState(() {
              this.value = value;
            });
          },
        ),
        title: Text(
          "As a Donor",
          style: TextStyle(color: Colors.grey.shade400),
        ),
      );
  Widget getImageAsset() {
    //var logo;
    //var logo;
    AssetImage assatImage = AssetImage('images/logo.png');
    Image image = Image(
      image: assatImage,
      width: 150.0,
      height: 150.0,
    );
    return Container(
      child: image,
    );
  }
}
