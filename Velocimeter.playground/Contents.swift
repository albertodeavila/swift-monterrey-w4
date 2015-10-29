import UIKit

enum Velocidades: Int{
    case    Apagado = 0,
            VelocidadBaja = 20,
            VelocidadMedia = 50,
            VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad: Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        var velocidadEnCadena : String = ""
        let actual : Int = self.velocidad.rawValue
        switch self.velocidad {
        case .Apagado:
            velocidadEnCadena = "Apagado"
            self.velocidad = .VelocidadBaja
        case .VelocidadBaja:
            velocidadEnCadena = "Velocidad Baja"
            self.velocidad = .VelocidadMedia
        case .VelocidadMedia:
            velocidadEnCadena = "Velocidad Media"
            self.velocidad = .VelocidadAlta
        case .VelocidadAlta:
            velocidadEnCadena = "Velocidad Alta"
            /*
                A fecha de 29 de Octubre, el enunciado dice que cuando la velocidad 
                actual es alta, se debe volver a la velocidad Media, por si se cambiara el enunciado entre esta fecha y el día de entrega final.
            
                At the date of October 29, the statement said that when the speed
                current is high, it should be returned to the Middle speed. I made this acclaration if the statement between now and the day of final delivery was changed.
            */
            self.velocidad = .VelocidadMedia

        }
        return (actual, velocidadEnCadena)
    }
    
}

var auto : Auto = Auto()
for(var i = 0; i < 20; i++){
    var(actual, velocidadEnCadena) = auto.cambioDeVelocidad()
    print ("\(actual) \(velocidadEnCadena)")
}