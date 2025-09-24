object tom {
    var energia = 50
    var ultimoRaton = ultimoRaton
    method correr(metrosARecorrer){energia = energia - metrosARecorrer /2}
    method comer(raton){energia = energia + 12 + raton.peso()}
    method velocidadMaxima(){return 5 + energia / 10}
    method puedeCazar(distancia){return (distancia / 2) <= energia}
    method cazar(raton, distancia){
        if(self.puedeCazar(distancia)){
            self.correr(distancia)
            self.comer(raton)
            ultimoRaton = raton
        }
    }
    method ultimoRatonComido(){return ultimoRaton}
}

object jerry {
    var edad = 2
    method cumplirAño(){edad = edad + 1}
    method peso(){return edad * 20}
}

object nibbles {
    method peso(){return 35}
}

// Inventar otro ratón
