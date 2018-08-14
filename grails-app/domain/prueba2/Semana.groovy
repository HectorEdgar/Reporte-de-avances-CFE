package prueba2

class Semana {

    boolean isActivo
    int numeroSemana
    int contador

    static belongsTo = [mes: Mes]
    static  hasMany = [conceptos: Concepto]

    static constraints = {
    }
}
