import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future <bool> signIn( String email, String password) async{
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    return true;
  } catch (e) {
    print(e.toString());
    return false;
  }
}

Future <bool> register(String email, String password) async{
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    return true;
  } 
  on FirebaseException catch (e) {
    if(e.code == 'weak-password'){
      print('The password provided is too weak.');
    }
    else if( e.code == 'email-already-in-use'){
      print('The account already exists for that email.');
    }
    return false;
  }
  catch(e){
    print(e.toString());
    return false;
  }
}
Future<bool> signOut() async{
  try {
    await FirebaseAuth.instance.signOut();
    return true;
  } catch (e) {
    print(e.toString());
    return false;
  }
}