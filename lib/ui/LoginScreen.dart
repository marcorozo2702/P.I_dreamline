import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  //constantes




  final _emailFocus = FocusNode();

  final _formLogin = GlobalKey<FormState>();






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WillPopScope(
          child: SingleChildScrollView(
              padding: EdgeInsets.only(top: 120, left: 30, right: 30),
              child: Form(
                key: _formLogin,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 144,
                      height: 144,
                      child: Image.asset('images/ic_logo.png'),
                ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0, bottom: 100.0),
                        child: Text(
                          "DREAM LINE",
                          style: TextStyle(fontSize: 40.0, fontFamily: 'Saira'),
                          ),
                        )
                      ],
                    ),
                    TextFormField(
                        decoration: InputDecoration(hintText: "email"
                          //labelText: "email"
                        ),
                        focusNode: _emailFocus,
                        keyboardType: TextInputType.emailAddress,
                        //passa o email do campo> //controller: _emailController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Digite seu email';
                          }
                          return null;
                        }),
                    TextFormField(
                      decoration: InputDecoration(hintText: "senha"
                          //labelText: "Senha"
                      ),
                      keyboardType: TextInputType.visiblePassword,
                     //passar a senha do campo> // controller: _senhaController,
                      obscureText: true,
                      //valida se o campo foi preenchido
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Digite sua senha';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 30),
                    Row(
                        children: <Widget>[
                      Flexible(
                        child: Padding(padding: EdgeInsets.only(right: 5),
                      child:
                        RaisedButton(

                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Login"),
                              ]),

                          color: Colors.black87,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),

                          onPressed: () async {
                            Navigator.pop(context);
                            await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  //PROXIMA PAGE
                                )
                            );
                          },
                        ),
                        ),
                    ),
                      
                      Flexible(
                        child: Padding(padding: EdgeInsets.only(left: 5),
                        child: RaisedButton(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Cadastrar")
                              ],
                            ),
                            color: Colors.white,
                            textColor: Colors.black87,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                            onPressed: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    //proxima page
                                  ));
                            }),
                        ),
//                        child: RaisedButton(
//                            child: Row(
//                              crossAxisAlignment: CrossAxisAlignment.center,
//                              mainAxisAlignment: MainAxisAlignment.center,
//                              children: <Widget>[
//                                Text("Cadastrar")
//                              ],
//                            ),
//                            color: Colors.white,
//                            textColor: Colors.black87,
//                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
//                            onPressed: () async {
//                              Navigator.push(
//                                  context,
//                                  MaterialPageRoute(
//                                    //proxima page
//                                  ));
//                            }),
                      )

                    ],),

                  ],
                ),
              )),
          onWillPop: () {
            SystemNavigator.pop();
          }),
    );
  }
}
