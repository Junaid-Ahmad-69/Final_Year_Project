import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

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
  String blood;
  final List<String> bloodGroup = [
    'A+',
    'O+',
    'B+',
    'AB+',
    'A-',
    'O-',
    'B-',
    'AB-',
  ];
  PickedFile imageFile;
  final ImagePicker picker = ImagePicker();
  Widget bottomSheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          Text(
            "Choose Profile photo.",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: deprecated_member_use
              FlatButton.icon(
                icon: Icon(Icons.camera),
                onPressed: () {
                  takePhoto(ImageSource.camera);
                },
                label: Text("Camera"),
              ),
              // ignore: deprecated_member_use
              FlatButton.icon(
                icon: Icon(Icons.image),
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                label: Text("Gallery"),
              )
            ],
          ),
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await picker.getImage(
      source: source,
    );
    setState(() {
      imageFile = pickedFile;
    });
  }

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
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 63,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        backgroundImage: imageFile == null
                            ? AssetImage(
                                'images/person.png',
                              )
                            : FileImage(File(imageFile.path)),
                        backgroundColor: Colors.white,
                        maxRadius: 60.0,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: ((builder) => bottomSheet()),
                          );
                        },
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.red,
                          size: 28,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 20, left: 20),
                child: TextFormField(
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please Enter Name";
                    } else {
                      return null;
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
                      return "Please Enter Mobile No";
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

                    ///hintText: 'Junaid Ahmad',
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
                      return "Please Enter your Location";
                    } else {
                      return null;
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
                padding: const EdgeInsets.all(18.0),
                child: SizedBox(
                  width: 360,
                  height: 50,
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
                      "SIGN UP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
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

  Widget buildCheckbox() => ListTile(
        contentPadding: EdgeInsets.only(top: 4.0),
        leading: Checkbox(
          value: value,
          onChanged: (value) {
            setState(() {
              this.value = value;
            });
          },
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(top: 13.0),
          child: Container(
            margin: EdgeInsets.only(right: 130.0),
            width: 140,
            height: 35,
            color: Colors.grey.shade300,
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                hint: Text(
                  'Select Blood',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 14.0,
                  ),
                ),
                dropdownColor: Colors.grey.shade300,
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey.shade600,
                ),
                iconSize: 30.0,
                value: blood,
                items: bloodGroup.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Text(
                      dropDownStringItem,
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.black,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String newvalueblood) {
                  setState(() {
                    this.blood = newvalueblood;
                  });
                },
              ),
            ),
          ),
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
