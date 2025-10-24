import rutinas.*

class Persona{
    const kilosPorCaloriaQuePierde
    var property peso  
    //que una persona aplique una rutina alterando su peso?

    method hacerRutina(rutina,tiempo){
        peso = (peso - self.pesoQuePerderiaSiHace(rutina, tiempo)).truncate(3)
    }
    method pesoQuePerderiaSiHace(rutina,tiempo){
        return rutina.caloriasQueGasta(tiempo) / kilosPorCaloriaQuePierde
    }
}

class PersonaSedentaria inherits Persona{
    override method hacerRutina(rutina, tiempo){
        if(peso > 50){
            super(rutina,tiempo)
        }else{
            self.noPuedeHacerRutina()
        }
    }
    method noPuedeHacerRutina(){
        self.error("Mi peso es" + peso)
    }
}