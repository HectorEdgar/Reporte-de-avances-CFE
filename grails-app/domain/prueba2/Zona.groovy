package prueba2

class Zona {

    String nombre
    String descripcion
    String division

    static belongsTo = [usuario: Usuario]
    static hasMany = [conceptos: Concepto]

    static constraints = {
    }
}
