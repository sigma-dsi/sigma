import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto_sigma/views/menu_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:projeto_sigma/repositories/code.dart';

class LoginScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final senha = TextEditingController();
  bool? isRememberMe = false;
  bool loading = false;
  FirebaseAuth auth = FirebaseAuth.instance;

  login(String email, String password) async {
    /*User? user;
    try{
      auth.signInWithEmailAndPassword(email: email, password: password);
      user =  auth.currentUser;
      print('logado com sucesso');
    } on FirebaseAuthException catch(e) {
      if (e.code == 'user-not-found') {
        throw AuthException('Email não encontrado. Cadastre-se');
      }
      if (e.code == 'wrong-password') {
        throw AuthException('Senha incorreta. Tente novamente');
      }
    }
    /*if(user != null) {

      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const AppWidget()),
      );
    }
    else {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginScreen()),
      );
    }*/*/
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            height: 60,
            child: TextFormField(
              controller: email,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xff0303ff),
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.black38)),
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black87),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'informe o email corretamente';
                }
                return null;
              },
            ))
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            height: 60,
            child: TextFormField(
              controller: senha,
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xff0303ff),
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.black38)),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Informa sua senha';
                } else if (value.length < 6) {
                  return 'Sua senha deve ter no mínimo 6 caracteres';
                }
                return null;
              },
            ))
      ],
    );
  }

  Widget buildForgotPassBtn() {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      padding: EdgeInsets.only(right: 0),
    );
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print("Forgot Password pressed"),
        child: Text(
          'Forgot Password?',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildRememberCB() {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                print('ok');
              },
            ),
          ),
          Text(
            'Remember me',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget buildLoginBtn(context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
        elevation: 5,
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Colors.white
        //primary: Colors.white
        );
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: TextButton(
        style: flatButtonStyle,
        onPressed: () {
          auth.signInWithEmailAndPassword(
              email: email.text, password: senha.text);
          User? userAtual = auth.currentUser;
          usuario = userAtual;
          if (userAtual != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MenuPage()),
            );
            auth.signOut();
          } else {
            print('desloged');
          }
        },
        child: Text(
          'LOGIN',
          style: TextStyle(
              color: Color(0xff0303ff),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildSignUpBtn() {
    return GestureDetector(
      onTap: () {
        print('Register');
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: 'Don\'t have an Account? ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            TextSpan(
              text: 'Sigma',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xff0303ff),
                      Color(0xff0303ff),
                      Color(0xff0303ff),
                      Color(0xff0303ff),
                    ])),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'SIGMA',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 50),
                      buildEmail(),
                      SizedBox(height: 20),
                      buildPassword(),
                      buildForgotPassBtn(),
                      buildRememberCB(),
                      buildLoginBtn(context),
                      buildSignUpBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
