class vehiculos{
  final String VEH_ID;
  final String VEH_PLACA;
  final String VEH_MODELO;
  final String VEH_MARCA;
  final String VEH_TIPO;
  final String VEH_COLOR;
 

  vehiculos({required this.VEH_ID, required  this.VEH_PLACA, required  this.VEH_MODELO, required  this.VEH_MARCA, required  this.VEH_TIPO, required  this.VEH_COLOR});
 factory vehiculos.fromJson(Map<String, dynamic> json) {
    return vehiculos(

     VEH_ID:json["VEH_ID"],
      VEH_PLACA:json["VEH_PLACA"],
      VEH_MODELO:json["VEH_MODELO"],
      VEH_MARCA:json["VEH_MARCA"],
      VEH_TIPO:json["VEH_TIPO"],
      VEH_COLOR:json["VEH_COLOR"]
    );
  }
   Map<String, dynamic> toJson() => {
   'VEH_ID':VEH_ID,
   'VEH_PLACA':VEH_PLACA,
   'VEH_MODELO':VEH_MODELO,
   'VEH_MARCA':VEH_MARCA,
   'VEH_TIPO':VEH_TIPO,
   'VEH_COLOR':VEH_COLOR
  };
  
  }