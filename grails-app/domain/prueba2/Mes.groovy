package prueba2

class Mes {

    Date fechaCreación
    String mes

    static hasMany = [semanas: Semana]


    static constraints = {
    }

    public String toString () {
      return mes;
    }
}
