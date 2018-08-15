package prueba2

class Semana {

    int numeroSemana
    String descripcion


    static belongsTo = [mes: Mes]

    static constraints = {
    }

    public String toString() {
      return descripcion;
    }
}
