package grails.employee.payrole

import grails.validation.ValidationException
import groovy.util.logging.Slf4j

import static org.springframework.http.HttpStatus.*
@Slf4j
class EmployeeController {

    EmployeeService employeeService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]


    def index() {
        def employee = Employee.list()
        [employee:employee]
    }

   //create employe
    def create() {
       [employeeInstance: new Employee(params) ]
    }

    def save() {
      def employeeInstance = new Employee(params)
        if (employeeInstance.save()){
            redirect(action: "index")
        }else {
            render(view: "create" , model: [employeeInstance:employeeInstance])
        }
    }

    def edit(Long id) {
        def employeeInstance = employeeService.get(id)
        [employeeInstance :employeeInstance]

    }

    def update() {
        def employeeInstance = Employee.get(params.id)
        employeeInstance.properties = params
        if (employeeInstance.save()){
            redirect(action: "index")
        }else {
            render(view: "edit",model: [employeeInstance: employeeInstance])
        }
    }

    def delete(Long id) {
       def employeeInstance = Employee.get(id)
        employeeInstance.delete()
        redirect(action: "index")
    }

    protected void notFound() {

    }
}
