import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<AuthResponse> signInWithEmailPassword(String email, String password) async {
    return await _supabase.auth.signInWithPassword(email: email, password: password);
  }

  Future<void> signUp(String email, String password) async {
    try {
      final response = await Supabase.instance.client.auth.signUp(
        email: email,
        password: password,
      );

      if (response.user != null) {
        print('Usuário cadastrado com sucesso!');
      } else {
        print('Erro no cadastro: usuário não foi criado.');
      }
    } catch (e) {
      // Captura o erro se o registro falhar
      print('Erro no cadastro: $e');
    }
  }



  Future<void> signOut(String email, String password) async {
    return await _supabase.auth.signOut();
  }

  String? getUserEmail(){
    final session = _supabase.auth.currentSession;
    final user = session?.user;
    return user?.email;
  }

}