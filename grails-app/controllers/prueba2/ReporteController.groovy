package prueba2

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
@Secured(['ROLE_ADMIN' , 'ROLE_ZONA'])
class ReporteController {

    ReporteService reporteService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond reporteService.list(params), model:[reporteCount: reporteService.count()]
    }

    def show(Long id) {
        respond reporteService.get(id)
    }

    def create() {
        respond new Reporte(params)
    }

    def save(Reporte reporte) {
        if (reporte == null) {
            notFound()
            return
        }

        try {
            reporteService.save(reporte)
        } catch (ValidationException e) {
            respond reporte.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'reporte.label', default: 'Reporte'), reporte.id])
                redirect reporte
            }
            '*' { respond reporte, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond reporteService.get(id)
    }

    def update(Reporte reporte) {
        if (reporte == null) {
            notFound()
            return
        }

        try {
            reporteService.save(reporte)
        } catch (ValidationException e) {
            respond reporte.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'reporte.label', default: 'Reporte'), reporte.id])
                redirect reporte
            }
            '*'{ respond reporte, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        reporteService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'reporte.label', default: 'Reporte'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'reporte.label', default: 'Reporte'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
