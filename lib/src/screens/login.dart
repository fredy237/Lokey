import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    return  _Login();
  }
  
}

class _Login extends State<Login>{
  late String  submitted;
  late String changed ;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
           children: [     
    
    SizedBox(
  width: 454,
  height: 378,
  child: Transform.translate(
    offset: const Offset(-70.0, 0.0),  // Ancien décalage vers la gauche
    child: Transform.scale(
      scale: 1.3,  // Ajustez cette valeur pour augmenter ou diminuer la taille de l'image
      child: const DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/LOKE-unscreen_static.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  ),
),
            const  Text('Welcome to Loke ! !',
            style: TextStyle(
              fontSize: 30.0,
            ),
            ),
            Container(
              margin: const EdgeInsets.only(left:23.0, right: 23.0, top:60.0),
              child: Column(
                
                children: [
                
                TextField( 
                  
                  keyboardType: TextInputType.text,
                  onChanged: (String email){
                    changed = email;
                  },
                  onSubmitted: (String email){
                    setState(() {
                      submitted = email;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    contentPadding: EdgeInsets.only(left:30.0)
                  ),
                ),
                const SizedBox(height: 40),
                TextField(     
                  keyboardType: TextInputType.text,
                  onChanged: (String password){
                    changed = password;
                  },
                  onSubmitted: (String password){
                    setState(() {
                      submitted = password;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    contentPadding: EdgeInsets.only(left:20.0)
                  ),
                ),
                
              ]),
            ),
            const SizedBox(height: 45.0),
            const Center(
             
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  SizedBox(
                    width: 172,
                    height: 32,
                      child: OutlinedButton(
                    
                    style: ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll<Color>(Colors.yellow),
                       side: MaterialStatePropertyAll(
                        BorderSide(color: Colors.yellow)
                       )
                    ), 
                    
                    onPressed: null ,
                    child: Text('Login'),)
                  ),
                  SizedBox(height: 25.0),
                  Text('password forgotten ?',
                  style: TextStyle(
                    color: Colors.red,
                    
                  ),
                  ),
                  
                ],
                
              ),
            ),
             SizedBox(height: 60.0),
            Container(
           width: 313,
          decoration: const ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
            width: 2,
             strokeAlign: BorderSide.strokeAlignCenter,
      ),
    ),
  ),
),
const SizedBox(height: 10.0),
           const  SizedBox(
  width: 218,
  height: 19,
  child: Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: 'Don’t have account ? ',
          style: TextStyle(
            color: Colors.black,
           
            fontFamily: 'JetBrains Mono',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        TextSpan(
          text: 'sign up',
          style: TextStyle(
            color: Color(0xFFFF6600),
            fontSize: 12,
            fontFamily: 'JetBrains Mono',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
      ],
    ),
    textAlign: TextAlign.center,
  ),
)
             
           ], 
        )
        
    );
  }
  

  
}