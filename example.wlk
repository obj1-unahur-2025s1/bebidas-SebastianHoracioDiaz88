object tito {
const peso = 70
const inercia  = 490
var velocidad = 0

method consumir(dosisATomar, bebidaATomar){

velocidad = bebidaATomar.efectoPorConsumir(dosisATomar) * inercia / peso 

}

method velocidad() = velocidad

}

object whisky {
method efecto() = "sueño, mareo y jaqueca"
method efectoPorConsumir(dosisATomar) =  0.1 ** dosisATomar
}

object terere {
  method efecto() = "diurético, laxante y estimulante"
  method efectoPorConsumir(dosisATomar) = 1.max(0.9 * dosisATomar) 
}

object cianuro {
  method efecto()= "muerto, llenos de abulia y de marasmo"
  method efectoPorConsumir(dosisATomar) = 0
}