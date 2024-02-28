import 'package:flutter/material.dart';
import 'package:lovelink/views/components/LoveButton.dart';
import 'package:lovelink/views/components/LoveTextField.dart';
import 'package:lovelink/views/components/Sizer.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});


  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registro'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity,),
          const Spacer(),
          LoveTextField(Placeholder: "Nombre", Wsize: getTextFieldSize(context), icono: Icon(Icons.person),),
          const SizedBox(height: 10),
          LoveTextField(Placeholder: "Email", Wsize: getTextFieldSize(context), icono: Icon(Icons.email),),
          const SizedBox(height: 10),
          LoveTextField(Placeholder: "Telefono", Wsize: getTextFieldSize(context), icono: Icon(Icons.phone),),
          const SizedBox(height: 10),
          LoveTextField(Placeholder: "Contrasaña", Wsize: getTextFieldSize(context), icono: Icon(Icons.lock),),
          const SizedBox(height: 10),
          LoveTextField(Placeholder: "Confirmar contraseña", Wsize: getTextFieldSize(context), icono: Icon(Icons.lock),),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Acepta los terminos y condiciones", style: TextStyle(fontSize: 15),),
              const SizedBox(width: 10,),
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black)
                ),
              )
            ],),
          const Spacer(),
          LoveButton(texto: "Registrar", Wsize: getTextFieldSize(context)),
          const Spacer(),
        ],
      ),
    );
  }
}