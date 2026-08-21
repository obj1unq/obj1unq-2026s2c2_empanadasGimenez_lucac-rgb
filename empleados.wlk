object galvan{

var sueldo = 15000
var deuda = 0
var dinero = 0

method sueldo(){

    return sueldo
    
}

method sueldo(_sueldo){

    sueldo = _sueldo

}

method gastar(cuanto){

    if (dinero >= cuanto){

        dinero = dinero - cuanto

    } else {

        deuda = deuda + (cuanto - dinero)
        dinero = 0

    }

}

method cobrarSueldo(){

    if (sueldo >= deuda){

        dinero = dinero + (sueldo - deuda)
        deuda = 0

    } else {

        deuda = deuda - sueldo
    }

}

method deuda(){

    return deuda

}

method dinero(){

    return dinero

}

method deuda(_deuda){

    deuda = _deuda

}

}

object baigorria{

var empanadasVendidas = 0
const montoPorEmpanada = 15
var totalCobrado = 0

method venderEmpanadas(cantidad){

    empanadasVendidas = empanadasVendidas + cantidad

}

method sueldo(){

    return empanadasVendidas * montoPorEmpanada

}

method cobrarSueldo(){

    totalCobrado = totalCobrado + self.sueldo()

}

method totalCobrado(){

return totalCobrado

} 

}



object gimenez {

var fondo = 300000

method fondo(){

    return fondo

}

method pagar(empleado){

    fondo = fondo - empleado.sueldo()
    empleado.cobrarSueldo()

}

}
