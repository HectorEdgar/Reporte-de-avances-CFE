package prueba2

class Mes {

    Date fechaCreación
    String mes

    static hasMany = [semanas: Semana, conceptos: Concepto]




    static constraints = {
    }
}
