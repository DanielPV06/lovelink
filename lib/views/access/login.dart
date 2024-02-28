import 'package:flutter/material.dart';
import 'package:lovelink/views/mainPages/matches.dart';
import 'package:lovelink/views/access/registro.dart';
import 'package:lovelink/views/components/LoveButton.dart';
import 'package:lovelink/views/components/LoveTextField.dart';
import 'package:email_validator/email_validator.dart';
import 'package:lovelink/views/components/sizer.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void showAlert(String title){
    showDialog(context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text(title), actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],);
        });
  }
  void makeLogin(){
  if(userController.text.isEmpty){
    showAlert("Es necesario ingresar un correo");
     return;
  }


  if(!EmailValidator.validate(userController.text)){
    showAlert("Ingresa un email valido");
    return;
  }

  if(passwordController.text.isEmpty){
    showAlert("Es necesario ingresar una contraseña");
    return;
  }
  showAlert("Inicio de sesion exitoso");
}
  void goToRegister(){
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => Registro())
    );
  }
  void goToMatches(){
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Matches())
    );
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(color: Colors.white,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: double.infinity,),
                const Spacer(),
                Image.asset('assets/icons/main_icon.png', height: 160,),
                const Spacer(),
                  LoveTextField(
                    Placeholder: 'Correo', icono: Icon(Icons.email), Wsize: getTextFieldSize(context), controller: userController,),
                const SizedBox(height: 15,),
                  LoveTextField(
                    Placeholder: 'Contraseña', icono: Icon(Icons.lock), Wsize: getTextFieldSize(context), controller: passwordController, isObscured: true,),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Olvidaste tu contraseña?", style: TextStyle(fontSize: 15),),
                    SizedBox(width: MediaQuery.of(context).size.width*0.125,),
                  ],
                ),
                const Spacer(flex: 3,),
                GestureDetector(
                  onTap: makeLogin,
                  child: LoveButton(texto: 'Ingresar', Wsize: getTextFieldSize(context)),
                ),
                const SizedBox(height: 15,),
                GestureDetector(
                  onTap: goToRegister,
                  child: Text("Registrate", style: TextStyle(fontSize: 18),),
                ),

                GestureDetector(
                  onTap: goToMatches,
                  child: Text("Matches", style: TextStyle(fontSize: 18),),
                ),
                const Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}