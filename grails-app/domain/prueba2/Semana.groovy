package prueba2

class Semana {

    boolean isActivo
    int numeroSemana
    int contador

    static belongsTo = [mes: Mes]

    static constraints = {
    }
}
