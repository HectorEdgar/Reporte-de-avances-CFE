package prueba2

class Mes {

    Date fechaCreación
    String mes

    static hasMany = [semanas: Semana]


    static constraints = {
      fechaCreación nullable : false
      mes nullable : false
      semanas nullable : true
    }

    public String toString () {
      return mes;
    }
}
