object tito {
const peso = 70
const inercia  = 490
var rendimiento = 0
method rendimiento() = rendimiento

method consumir(dosisATomar, bebidaATomar){

rendimiento = bebidaATomar.efectoPorConsumir(dosisATomar) 

}
method velocidad() = inercia * rendimiento / peso

}

object whisky {
method efecto() = "sueño, mareo y jaqueca"
method efectoPorConsumir(cantidad) =  0.1 ** cantidad
}

object terere {
  method efecto() = "diurético, laxante y estimulante"
  method efectoPorConsumir(cantidad) = 1.max(0.9 * cantidad) 
}

object cianuro {
  method efecto()= "muerto, llenos de abulia y de marasmo"
  method efectoPorConsumir(cantidad) = 0
}