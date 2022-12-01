import 'package:sqflite/sqflite.dart';

class Bd {
  
  static Future<void> creartabla(Database database) async{
    
    await database.execute("""
        CREATE TABLE usuario(
          id INTEGER PRIMARY KEY NOT NULL,
          nombre TEXT NOT NULL,
          apellido TEXT NOT NULL,
          correo TEXT NOT NULL,
          password TEXT NOT NULL,
          fechareg TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        )
    """);
  }

  static Future<Database> bd() async{
      return openDatabase(
        'bd.bd',
        version: 1,
        onCreate: (Database database, int version ) async{
          await creartabla(database);
        }
      );
  }

  static Future<int> regusuario(
    String nombre,
    String apellido,
    String correo,
    String password,
    )async{
        final c = await bd();
        final datos = {'nombre':nombre, 'apellido':apellido, 'correo':correo,'password':password};

        final id = await c.insert('usuario',datos);
        return id;
    }

    static Future<int> totalreg()async{
            
           final c = await bd();

          final id = await c.rawQuery("SELECT COUNT(*) FROM usuario");
          int r = id.length;
        return r;
    }
}