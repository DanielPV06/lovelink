import 'package:flutter/material.dart';
import '../../components/lovetextfield.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  get name => "Michelle";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xff232323),
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xffffa31a),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/images/Mujer2.jpg'),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {
                          // Acción para guardar el perfil
                        },
                        child: Text('Guardar',
                            style: TextStyle(fontSize: 18, color: Colors.black)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        '${name}',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Perfil',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      LoveTextField(
                        PlaceHolder: 'Email',
                        Wsize: double.infinity,
                        Icono: Icon(Icons.email, color: Colors.white), textColor: Colors.white,
                      ),
                      LoveTextField(
                        PlaceHolder: 'Teléfono',
                        Wsize: double.infinity,
                        Icono: Icon(Icons.phone, color: Colors.white), textColor: Colors.white,
                      ),
                      LoveTextField(
                        PlaceHolder: 'Facebook',
                        Wsize: double.infinity,
                        Icono: Icon(Icons.facebook, color: Colors.white), textColor: Colors.white,
                      ),
                      LoveTextField(
                        PlaceHolder: 'Instagram',
                        Wsize: double.infinity,
                        Icono: Icon(Icons.center_focus_strong, color: Colors.white), textColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Profile(),
  ));
}
