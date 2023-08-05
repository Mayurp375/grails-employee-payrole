package grails.employee.payrole

class Employee {

    String firstName
    String lastName
    String designation
    Integer age

    static constraints = {
        firstName blank: false
        lastName blank: false
        designation blank: false
        age min: 18
    }
}
