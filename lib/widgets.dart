import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => LoginPageState();
}

class RememberMeCheckBox extends StatefulWidget{
  const RememberMeCheckBox({super.key});
  @override 
  State<RememberMeCheckBox> createState() => RememberMeCheckBoxState();
}

class RememberMeCheckBoxState extends State<RememberMeCheckBox>{
  bool? rememberMe = false;
  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        Radio(
          value: true,
          groupValue: rememberMe,
          onChanged: (value){
            setState(() {
              rememberMe = value;
            });
          })


    ],);
    

  }
}

class LoginPageState extends State<LoginPage>{

  @override
  void initState(){}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("Inserisci dopo questo la tua TextField"),),
      body: UserTextFieldWidget(),

    );
  }


}

class UserTextFieldWidget extends StatelessWidget {
  const UserTextFieldWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: 
          const Text("Login",
          style: TextStyle(color: Colors.white,
          ),)
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              hintText: 'Inserisci il nome utente',
            ),
          )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16 ),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_sharp),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                hintText: 'Inserisci password'
              ),

            ),),
            Center(child: TextButton
            (onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DimenticatoPassPage))},
            child: Text("Hai dimenticato la password? Clicca qui"),
            ),
            )
      ],
    );
  }
}


  
