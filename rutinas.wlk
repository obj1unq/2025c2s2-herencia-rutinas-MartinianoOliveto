class Rutina{
    var property descanso = 0
    var property intensidad 

    method caloriasQueGasta(tiempo){
        return 100 * (tiempo - descanso) * intensidad 
    }  
}

class Running inherits Rutina{
 
    method calcularDescanso(tiempo){
        if(tiempo > 20){
            descanso = 5
        }else{
            descanso = 2 
        }
    } 
    override method caloriasQueGasta(tiempo){
        self.calcularDescanso(tiempo)
        return super(tiempo)
    }
}

class Maraton inherits Running{
    
    override method caloriasQueGasta(tiempo){
        return super(tiempo) * 2 
    }
}

class Remo inherits Rutina{
    //la intensidad siempre es de 1.3 

    method calcularDescanso(tiempo){
        descanso = tiempo / 5 
    }
    override method caloriasQueGasta(tiempo){
        self.calcularDescanso(tiempo)
        return super(tiempo)
    }
}

class RemoCompeticion inherits Remo{
    //la intensidad es siempre de 1.7 

    override method calcularDescanso(tiempo){
        super(tiempo)
        descanso = 2.max(descanso - 3)
    }
}