object tito {
var bebida = whisky
var dosis = 0
method peso () = 70
method inercia() = 490
method consumir(dosisATomar, bebidaATomar){
   bebida = bebidaATomar
   dosis = dosis + dosisATomar
}
method dosis () = dosis
method velocidad() = self.inercia()*bebida.rendimiento() / self.peso()
method efecto() = bebida.efecto()
}

object whisky {
var dosis = tito.dosis()
method efecto() = "sueño, mareo y jaqueca"
method rendimiento() = 0.1 ** dosis
}

object terere {
  var dosis = tito.dosis() 
  method efecto() = "diurético, laxante y estimulante"
  method rendimiento() = 1.max(0.9 * dosis) 
}

object cianuro {
  method efecto()= "muerto, llenos de abulia y de marasmo"
  method rendimiento () = 0
}