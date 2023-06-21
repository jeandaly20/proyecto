// Funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion = presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter
	Definir pos Como Entero
	Borrar Pantalla
	Escribir titulo
	Para pos<-0 Hasta lim-1 Hacer
		Escribir menu[pos]
	FinPara
	Escribir '       Elija opción[1..',lim,']' Sin Saltar
	Leer opcion
FinFuncion

// Pide dos numeros y presenta el mayor de los dos
Funcion tipodevariable
	Definir result1,result4,result5 Como Logico
	Definir result2,result3 Como Real
	result1 <- (5+3*2)+9>3*5*14 MOD 3
	result2 <- 2*(4-10+8)/2*36*(1/2)
	result3 <- 260/12+54 MOD 3-85 MOD 7
	result4 <- (48<2*3) O (2*7<12)
	result5 <- ((8>2) O (932<23)) Y 4==2
	Escribir ' el PRIMER  ejercicio se guardara en una variable de tipo bolaneo  R= ',result1
	Escribir ' el SEGUNDO ejercicio se guardara en una variable de tipo numerico  entero R= ',result2
	Escribir ' el TERCER ejercicio se guardara en una variable de tipo numerico real R= ',result3
	Escribir 'el CUARTO ejercicio se guardara en una variable de tipo bolaneo  R= ',result4
	Escribir ' el QUINTO ejercicio se guardara en una variable de tipo bolaneo  R=  ',result5
FinFuncion

// entrada (num1,num2)...
// proceso (suma resta multiplicacion division y modulo entre los 2 numeros )
// salidad (la suma es:...... la resta es:.....)
Funcion suma_resta_multiplicacion_division_y_modulo_de_un_numero
	Definir num1,num2 Como Real
	Definir suma,resta,multi,divi,modulo Como Real
	Escribir ' ingrese el primer numero '
	Leer num1
	Escribir ' ingrese el segundo numero'
	Leer num2
	suma <- num1+num2
	resta <- num1-num2
	multi <- num1*num2
	divi <- num1/num2
	modulo <- num1 MOD num2
	Escribir ' la suma es ',suma
	Escribir ' la resta es ',resta
	Escribir ' la multiplicacion es ',multi
	Escribir ' la division es ',divi
	Escribir ' el modulo es  ',modulo
FinFuncion

// entrada(a, b , c)
// proceso((b^2)-((4)*(a)*(c)))
// salida(x1=.. x2=...)
Funcion calcular_resolvente
	Definir A,B,C,d,rz,rz2,x1,x2 Como Real
	Escribir 'ecuacion de segundo grado tipo = ax^2 +bx+c=0'
	Escribir 'digite el valor de A '
	Leer A
	Mientras A==0 Hacer
		Escribir 'a no puede ser 0, ingrese nuevamente '
		Leer A
	FinMientras
	Escribir 'digite el valor de B '
	Leer B
	Escribir 'digite el valor de C '
	Leer C
	d <- (B^2)-((4)*(A)*(C))
	Escribir ' discriminante ',d
	Si d=0 Entonces
		Escribir 'respuesta: x=',d
	SiNo
		Si d>0 Entonces
			rz <- (rc(d))
			rz2 <- (-(rc(d)))
			Escribir 'raiz positiva ',redon(rz*100)/100,' raiz negativa',redon(rz2*100)/100
			x1 <- ((-B)+(rz))/(2*A)
			x2 <- ((-B)+(rz2))/(2*A)
			Escribir 'respuesta x1=',redon(x1*100)/100,'y x2= ',redon(x2*100)/100
		SiNo
			Escribir ' la ecuacion no  tiene soluciones reales / tiene dos soluciones complejas )'
			Escribir '  LAS SOLUCIONES DE LA ECUACION SON '
			Escribir ' respuesta: x1=1 y x2= -1 '
		FinSi
	FinSi
FinFuncion

// entrada (a , b)
// proceso(rc( a^2 + b^2 ))
// salida ( resp=...)
Funcion hipotenusa
	Definir A,B,resp Como Real
	Escribir ' ingrese el primer cateto '
	Leer A
	Escribir ' ingrese el segundo cateto '
	Leer B
	resp <- A^2+B^2
	Escribir ' la hipotenusa es ',rc(resp)
FinFuncion

// entrada(num)
// proceso(si num es par  escribir 0 sino escribir 1)
// salida ( 0 , 1 )
Funcion par_impar
	Definir num Como Entero
	Escribir ' digite un numero '
	Leer num
	Si num MOD 2==0 Entonces
		Escribir '0'
	SiNo
		Escribir '1'
	FinSi
FinFuncion

// entrada ( num de 4 digitos binario )
// proceso (si el residuo me da igual a 1 sumar en una variable y luego si la suma de esa variable es par ponemos el bit 0 sino 1 )
// salidad ( el bit de parida es igual a 0 o 1 )
Funcion bit_de_parida
	Definir sm1 Como Real
	Definir digito Como Real
	Definir num Como Entero
	Escribir ' ingrese un numero binario de 4 digitos '
	Leer num
	sm1 <- 0
	Mientras num>0 Hacer
		num <- trunc(num/10)
		digito <- num MOD 10
		Si digito==1 Entonces
			sm1 <- sm1+1
		FinSi
	FinMientras
	Si sm1 MOD 2==0 Entonces
		Escribir ' el bit de parida es igual a 0 '
	SiNo
		Escribir ' el bit de parida es igual a 1 '
	FinSi
FinFuncion

// entrada(n)
// proceso (dividir y truncar el numero para asi sacar las decenas centenass...)
// salida ( unidades de mill = .....decenas=.....centenas.=....unidades=...)
Funcion unidades_numericas
	Definir unidadesdemill Como Real
	Definir n,unidades,decenas,centenas Como Entero
	Escribir 'ingrese un numero '
	Leer n
	Si n>999 Y n<10000 Entonces
		unidades <- n MOD 10
		n <- trunc(n/10)
		decenas <- n MOD 10
		n <- trunc(n/10)
		centenas <- n MOD 10
		n <- trunc(n/10)
		unidadesdemill <- n MOD 10
		Escribir ' el numero tiene '
		Escribir unidadesdemill,' unidades de mill '
		Escribir centenas,' centenas '
		Escribir decenas,' decenas '
		Escribir unidades,' unidades '
	SiNo
		Escribir ' ingrese un numero de 4 digitos '
	FinSi
FinFuncion

Funcion ej8
	Definir resultado Como Caracter
	Definir CARACTER Como Caracter
	Escribir 'Escribe un caracter'
	Leer CARACTER
	Si CARACTER>='0' Y CARACTER<='9' Entonces
		resultado <- 'Es un dígito.'
	SiNo
		Si CARACTER>='A' Y CARACTER<='Z' Entonces
			resultado <- 'Es una consonante.'
		SiNo
			Si CARACTER>='a' Y CARACTER<='z' Entonces
				resultado <- 'Es una consonante.'
			SiNo
				resultado <- 'Es un carácter especial.'
			FinSi
			Escribir '  ',resultado
		FinSi
	FinSi
FinFuncion

// ejericio9
Funcion ej9
	Definir caracter1,caracter2 Como Caracter
	Escribir 'Ingrese el primer carácter: '
	Leer caracter1
	Escribir 'Ingrese el segundo carácter: '
	Leer caracter2
	Si caracter1=caracter2 Entonces
		Escribir 'El primer carácter es igual al segundo carácter.'
	SiNo
		Si caracter1<caracter2 Entonces
			Escribir 'El primer carácter es menor que el segundo carácter.'
		SiNo
			Escribir 'El primer carácter es mayor que el segundo carácter.'
		FinSi
	FinSi
FinFuncion

// ejercicio10
Funcion ej10
	Definir frase Como Caracter
	Definir opcion Como Real
	Escribir 'Ingrese una frase: '
	Leer frase
	Escribir '1. Presentar frase en mayúscula'
	Escribir '2. Presentar frase en minúscula'
	Escribir '3. Salir'
	Escribir 'Ingrese una opción: '
	Leer opcion
	Segun opcion  Hacer
		1:
			Si opcion=1 Entonces
				Escribir 'La frase en mayúscula es: ',Mayusculas(frase)
			FinSi
		2:
			Si opcion=2 Entonces
				Escribir 'La frase en minúscula es: ',Minusculas(frase)
			FinSi
		3:
			Escribir 'Saliendo del programa...'
	FinSegun
FinFuncion

// ejercicio11
Funcion ej11
	Definir año,mes,dia Como Entero
	Escribir 'Ingrese el año: '
	Leer año
	Escribir 'Ingrese el mes: '
	Leer mes
	Escribir 'Ingrese el día: '
	Leer dia
	Si (año MOD 400=0) O ((año MOD 4=0) Y (año MOD 100<>0)) Entonces
		Escribir 'El año ',año,' es un año bisiesto.'
	SiNo
		Escribir 'El año ',año,' no es un año bisiesto.'
	FinSi
FinFuncion

// ejercicio12
Funcion ej12
	Definir numero,digito1,digito2,digito4,digito5 Como Entero
	Escribir 'Ingrese un número entero de 5 dígitos: '
	Leer numero
	digito1 <- numero/10000
	digito2 <- (numero/1000) MOD 10
	digito4 <- (numero/10) MOD 10
	digito5 <- numero MOD 10
	Si digito1=digito5 Y digito2=digito4 Entonces
		Escribir 'El número ',numero,' es capicúa.'
	SiNo
		Escribir 'El número ',numero,' no es capicúa.'
	FinSi
FinFuncion

// ejercicio13
Funcion ej13
	Definir opcion Como Entero
	Escribir '1. Convertir horas y minutos a segundos'
	Escribir '2. Convertir segundos a minutos, horas y días'
	Escribir 'Ingrese una opción: '
	Leer opcion
	Si opcion=1 Entonces
		Definir horas,minutos Como Entero
		Definir Segundos Como Real
		Escribir 'Ingrese las horas: '
		Leer horas
		Escribir 'Ingrese los minutos: '
		Leer minutos
		Segundos <- (horas*3600)+(minutos*60)
		Escribir 'El equivalente en segundos es: ',Segundos
	SiNo
		Si opcion=2 Entonces
			
		FinSi
		Definir Segundos Como Real
		Definir minutos,horas,dias Como Real
		Escribir 'Ingrese la cantidad de segundos: '
		Leer Segundos
		minutos <- Segundos/60
		horas <- minutos/60
		dias <- horas/24
		Escribir 'El equivalente en minutos es: ',minutos
		Escribir 'El equivalente en horas es: ',horas
		Escribir 'El equivalente en días es: ',dias
	FinSi
FinFuncion

// ejercicio14
Funcion ej14
	Definir A,B,C Como Entero
	Escribir 'Ingrese el valor de A: '
	Leer A
	Escribir 'Ingrese el valor de B: '
	Leer B
	Escribir 'Ingrese el valor de C: '
	Leer C
	Si A=B Y A=C Entonces
		Escribir 'Los tres números son iguales.'
	SiNo
		Si A>B Y A>C Entonces
			Escribir 'El mayor número es A.'
			Si B>C Entonces
				Escribir 'El segundo mayor número es B.'
			SiNo
				Escribir 'El segundo mayor número es C.'
			FinSi
		SiNo
			Si B>A Y B>C Entonces
				Escribir 'El mayor número es B.'
				Si A>C Entonces
					Escribir 'El segundo mayor número es A.'
				SiNo
					Escribir 'El segundo mayor número es C.'
				FinSi
			SiNo
				Escribir 'El mayor número es C.'
				Si A>B Entonces
					Escribir 'El segundo mayor número es A.'
				SiNo
					Escribir 'El segundo mayor número es B.'
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

// En un estacionamiento el monto a pagar se calcula multiplicando el número de horas que
// permaneció el automóvil dentro del estacionamiento por $1.5 la hora.La fraccion en
// minutos de (1- 29 minutos) se cobra $0.5. Pasado de 30 minutos se cobra el valor de la
// hora
// Ahora se desea que usted elabore un algoritmo que a partir de la hora de entrada y la
// hora de salida de un vehículo (las mismas corresponden a un mismo día) calcule el monto
// a pagar por el dueño del vehículo.
// La entrada vendrá dada por dos enteros positivos el primero representa las horas y el
// segundo los minuto
Funcion ejercicio_5_EC
	// Entrada: Definir las variables utlizadas para el Proceso y pedimos los datos al usuario
	Definir horaEntrada,minutoEntrada,horaSalida,minutoSalida Como Entero
	Definir total_horaSalida,total_minutosSalida Como Entero
	Definir descuento Como Real
	// Si la compra es mayor a 1000$ aplicamos descuento del 20 MOD  =  compra * 0.2
	descuento <- 0.2
	// Proceso: pedimos al usuarios los datos de las horas que estuvo y salio del aparcamiento
	Escribir 'Ingrese la hora y minutos de entrada al aparcamiento'
	Leer horaEntrada,minutoEntrada
	Escribir 'Ingrese la hora de salida y los minutos'
	Leer horaSalida,minutoSalida
	// Proceso: calculamos el tiempo de salida con respecto a la entrada al aparcamiento
	total_minutoSalida <- (minutoSalida-minutoEntrada)
	total_horaSalida <- (horaSalida-horaEntrada)*60
	// Calculamos su tiempo en horas
	Si total_horaSalida>=30 Entonces
		total_horaSalida <- abs(total_horaSalida*1.5)
	SiNo
		Escribir 'Solo se registran minutos'
	FinSi
	// Aplicamos uso de condicional para los minutos
	Si total_minutoSalida<=29 Entonces
		total_minutoSalida <- total_minutoSalida+0.5
	SiNo
		total_minutoSalida <- (total_minutoSalida+total_horaSalida)*1.5
	FinSi
	Escribir 'El tiempo por horas y minutos es de $ ',total_minutoSalida
FinFuncion

// El IMC resulta de la división de la masa del individuo (en kilogramos) entre el cuadrado de
// la estatura (en metros). El índice de masa corporal es un indicador del peso de una
// persona en relación con su altura.
// Clasificación del IMC de acuerdo con la OMS de la ONU:
// a. Menor a 16: Criterio de ingreso.
// b. 16 a 16.9: infra peso.
// c.17 a 18.4: bajo peso.
// d. 18.5 a 24.9: peso normal.
// e. 25 a 29.9: sobrepeso.
// f. 30 a 34.9: obesidad pre-mórbida.
// g. 40 a 45: obesidad mórbida.
// h. Mayor a 45: obesidad híper-mórbida.
// Dado el peso de una persona en libras (1 libra = 0,453592 Kg) y su estatura en
// centímetros, calcule su IMC e indique como salida el peso en kilogramos, el valorde IMC
// de la persona y la categoría en la cual fue clasificado.
Funcion ejercicio_6_EC
	// Entrada: datos a utilizar (imc, pesoLibra, estaturacm, pesoKG, estaturaM, cat)
	// (y sus valores presentados)
	Definir imc,pesoLibra,estaturaCm,pesoKG,estaturaM Como Real
	Definir catg Como Caracter
	// Proceso : Solicitamos los datos respectivos a las variables planteadas individualmente
	Escribir 'Digite su peso en libras'
	Leer pesoLibra
	Escribir 'Digite su peso en centimetros'
	Leer estaturaCm
	// transformamos las libras a kilogramos ->
	pesoKG <- (pesoLibra*0.453592)
	// Pasamos la estatura a metros ->
	estaturaM <- (estaturaCm/100)
	// Calculamos los datos establecidos del IMC ->
	imc <- pesoKG/(estaturaM*estaturaM)
	// Utilizamos ciclo condicional ->(si-sino) y 
	Si imc<=16 Entonces
		catg <- 'criterio de ingreso'
	SiNo
		Si imc>=16 Y imc<=16.9 Entonces
			catg <- 'infra-peso'
		SiNo
			Si imc>=17 Y imc<=18.4 Entonces
				catg <- 'bajo peso'
			SiNo
				Si imc>=18.5 Y imc<=24.9 Entonces
					catg <- 'peso normal'
				SiNo
					Si imc>=25 Y imc<=29.9 Entonces
						catg <- 'sobre-peso'
					SiNo
						Si imc>=30 Y imc<=34.9 Entonces
							catg <- 'obesidad pre-mórbida'
						SiNo
							Si imc>=40 Y imc<=45 Entonces
								catg <- 'obesidad mórbida'
							SiNo
								Si imc>45 Entonces
									catg <- 'obesidad híper-mórbida'
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	// Salida: Representacion de los resultados.
	Escribir 'El peso en kilogramos = ',pesoKG
	Escribir 'Su valor en imc = ',imc
	Escribir 'Tipo de categoria = ',catg
FinFuncion

// Escriba un algoritmo que reciba una fecha (día y mes) correspondiente al año2014 e 
// imprima por pantalla el número de días que han pasado desde el 1 deEnero de 2014
// hasta la fecha dada.
Funcion ejercicio_7_EC
	// Entrada: Definimos los dias y meses que se solicitan
	Definir mes_actual,dia_actual,año_actual Como Entero
	Definir año_anterior,mes,dia Como Entero
	Definir resultado_mes,resultado_dia,resultado_año Como Entero
	dia <- 1
	año_anteror <- 2014
	mes <- 1
	// Proceso : comenzamos a solicitar los datos requeridos para empezar el proceso 
	Escribir 'Calcularemos los dias, meses y años transcurridos a partir de 1 de enero del 2014'
	Escribir 'Ingrese el año actual, mes y dia'
	Leer año_actual,mes_actual,dia_actual
	// Calumos el trascurso de los años
	Si año_actual<>2014 Entonces
		resultado_año <- (año_actual-2014)
	SiNo
		resultado_año <- (año_actual-2014)
	FinSi
	// Calculamos el transcurso de los meses
	Si mes_actual<>1 Entonces
		resultado_mes <- (mes_actual-1)
	SiNo
		resultado_mes <- (mes_actual-1)
	FinSi
	// Calculamos el transcurso de los dias 
	Si dia_actual<>1 Entonces
		resultado_dia <- (dia_actual-1)
	SiNo
		resultado_dia <- (dia_actual-1)
	FinSi
	// Salida: Obtención  de los resultados
	Escribir 'Con respecto al año 2014 del 1 de Enero'
	Escribir 'Han pasado ',resultado_año,' años ',resultado_mes,' meses ',' y ',resultado_dia,' dias'
FinFuncion

// Solicitar un número entre el 1 y el 12 e imprimir el mes correspondiente a dicho número
Funcion ejercicio_8_EC
	// Entrada: definimos variables y condicional a utilizar (segun - de otro modo)
	Definir n_mes Como Caracter
	// Proceso: Solicitamos un numero de algun mes y realizamos proceso
	// Salida: Presentamos una respuesta en cada uno de los resultados
	Escribir 'Según el numero de meses (1 a 12), escoja alguno'
	Leer n_mes
	Segun n_mes  Hacer
		'1':
			Escribir n_mes,' es el mes de ENERO'
		'2':
			Escribir n_mes,' es el mes de FEBRERO'
		'3':
			Escribir n_mes,'es el mes de MARZO'
		'4':
			Escribir n_mes,' es el mes de  ABRIL'
		'5':
			Escribir n_mes,' es el mes de MAYO'
		'6':
			Escribir n_mes,' es el mes de JUNIO'
		'7':
			Escribir n_mes,' es el mes de JULIO'
		'8':
			Escribir n_mes,' es el mes de AGOSTO'
		'9':
			Escribir n_mes,' es el mes de SEPTIEMBRE'
		'10':
			Escribir n_mes,' es el mes de OCTUBRE'
		'11':
			Escribir n_mes,' es el mes de NOVIEMBRE'
		'12':
			Escribir n_mes,' es el mes de DICIEMBRE'
		De Otro Modo:
			Escribir 'No se encontro un mes con respecto al número'
	FinSegun
FinFuncion

// En un almacén se hace un 20 MOD  de descuento a los clientes cuya compra supere los $1000, 
// se desea que realice un algoritmo el cual tome por entrada el monto apagar por el cliente 
// y arroje como salida el monto aplicando el descuento de ser necesario.
Funcion ejercicio_9_EC
	// Entrada: Definimos las variables a utilizar para el Algoritmo 
	Definir precio_inical,precio_final Como Real
	Definir descuento Como Real
	descuento <- 0.2
	// Proceso: Empezamos a utilazar las definiciones y pedir datos
	Escribir 'Ingrese el valor total de su compra'
	Leer precio_inicial
	// Aplicamos condicional para calcular si habra descuento o no
	Si precio_inicial>1000 Entonces
		Escribir 'La compra tiene de cifra de ',precio_inicial,'$',' adquiere un descuento del 20%'
		precio_final <- precio_inicial*descuento
		Escribir 'El valor a cancelar con descuento es ',precio_final,'$'
	SiNo
		precio_final <- precio_final
		Escribir 'La compra no supera la cifra estimada el precio a pagar sera el mismo'
		Escribir 'El costo es ',precio_final
	FinSi
FinFuncion

// Dado dos números y un operador matemático(+,-,*,/,mod,div) realizar la suma, resta,
// multiplicación, división, resto y división entera(div) de los dos números según el operador
// ingresado
Funcion ejercicio_10_EC
	// Entrada: definir variables
	Definir operador_matematico Como Caracter
	Definir num1,num2,resultado Como Real
	Escribir 'Escoja uo de los operadores matematicos (1= +, sumar), (2= -, restar), (3= *,multiplicar), (4= / dividir)'
	Escribir '(5 = mod residuo de division), (6 = div, división entera)'
	Leer operador_matematico
	// Proceso: aplicamos uso de condicional
	// Salida: se pondra una respuesta en cada Opción dando un resultado refernte a la solicitud
	Segun operador_matematico  Hacer
		'+':
			Escribir 'Ingrese dos números'
			Leer num1,num2
			resultado <- num1+num2
			Escribir 'La suma de los dos números es ',resultado
		'-':
			Escribir 'Ingrese dos numeros'
			Leer num1,num2
			Si num1>=num2 Entonces
				resultado <- num1-num2
				Escribir 'La resta de los dos números es ',resultado
			SiNo
				resultado <- num2-num1
				Escribir 'El resultado es ',resultado
			FinSi
		'*':
			Escribir 'Ingrese dos números'
			Leer num1,num2
			resultado <- num1*num2
			Escribir 'El resultado es ',resultado
		'/':
			Escribir 'Registre dos números'
			Leer num1,num2
			Si num1>=num2 Entonces
				resultado <- (num1/num2)
				Escribir 'El resultado es ',resultado
			SiNo
				resultado <- (num2/num1)
				Escribir 'El resultado es ',resultado
			FinSi
		'mod':
			Escribir 'Ingrese dos números'
			Leer num1,num2
			Si num1>=num2 Entonces
				resultado <- (num1 MOD num2)
				Escribir 'El resultado es ',resultado
			SiNo
				resultado <- (num2 MOD num1)
				Escribir 'El resultado es ',resultado
			FinSi
		'div':
			Escribir 'Ingrese un numerador'
			Leer num1
			Escribir 'Ingrese un denominador'
			Leer num2
			resultado <- trunc(num1/num2)
			Escribir 'Su resultado es ',resultado
		De Otro Modo:
			Escribir 'No se encontro el operador matemático'
	FinSegun
FinFuncion

// Dado un número entero N, calcular e informar al usuario cuántos dígitos tiene dicho
// número
Funcion ejercicio_1_EI
	// Entrada: definición de variables y solicitamos la cantidad que se desea calcular
	Definir n Como Entero
	Definir contador Como Entero
	// Agregamos el primer valor a nuestro contador
	contador <- 0
	// Proceso: Solcitamos al usuario una cantidad que desea calcular y aplicamos estructura iterativa (mientras-hacer)
	Escribir 'Ingrese una cantidad'
	Leer n
	Mientras n>=1 Hacer
		n <- trunc(n/10)
		contador <- contador+1
	FinMientras
	Escribir 'La cantidad tiene ',contador,' digitos'
FinFuncion

// Dado un número, determine si es capicúa.
// Nota: un número capicúa es aquel que se lee igual hacia adelante que hacia atrás.Ejercicio
Funcion capicúa
	// Entrada: definimos datos a utilizar
	Definir numero,numeroInvertido,resto,tempNumero Como Entero
	Definir esCapicua Como Logico
	// Proceso: realizamos pruebas con las variables solicitadas al usuario 
	Escribir 'Ingrese un número:'
	Leer numero
	// Proceso.2: Uso de ciclo iterativo Mientras-Hacer y condicionales
	tempNumero <- numero
	numeroInvertido <- 0
	Mientras tempNumero>0 Hacer
		resto <- tempNumero MOD 10
		numeroInvertido <- numeroInvertido*10+resto
		tempNumero <- trunc(tempNumero/10)
	FinMientras
	// Comparar el número original con el número invertido
	Si numero=numeroInvertido Entonces
		esCapicua <- Verdadero
	SiNo
		esCapicua <- Falso
	FinSi
	// Mostrar el resultado
	Si esCapicua Entonces
		Escribir 'El número ',numero,' es capicúa.'
	SiNo
		Escribir 'El número ',numero,' no es capicúa.'
	FinSi
FinFuncion

// Escribir un algortimo que presente los divisores de un numero
Funcion n_divisores
	// Entrada: toma de datos a consultar en el Proceso 
	Definir numero,divisor Como Entero
	// Proceso: realizamos las prueba con los datos requeridos
	Escribir 'Ingrese un número:'
	Leer numero
	Escribir 'Los divisores de ',numero,' son:'
	// Proceso: Uso de ciclos, presentando resultados en cada uno
	Para divisor<-1 Hasta numero Hacer
		Si numero MOD divisor=0 Entonces
			Escribir divisor
		FinSi
		// Salida: fin del ciclo
	FinPara
FinFuncion

// Escribir un  algoritmo que presente la suma de los divisores de un numero
Funcion s_divisores
	// Entrada: toma de datos (variables)
	Definir numero,divisor,sumaDivisores Como Entero
	Escribir 'Ingrese un número:'
	Leer numero
	sumaDivisores <- 0
	// Proceso: uso de ciclos iterativos 
	Para divisor<-1 Hasta numero Hacer
		Si numero MOD divisor=0 Entonces
			sumaDivisores <- sumaDivisores+divisor
		FinSi
		// Salida: finalización del ciclo
	FinPara
	Escribir 'La suma de los divisores de ',numero,' es: ',sumaDivisores
FinFuncion

// Escribir un algoritmo que presente la cantidad de los divisores de un numero
Funcion c_divisores
	// Entrada : definicion de los datos 
	Definir numero,divisor,cantidadDivisores Como Entero
	Escribir 'Ingrese un número:'
	Leer numero
	// Proceso : planteamos uso de ciclos para los datos obtenidos del usuario
	cantidadDivisores <- 0
	// Salida: Finalizamos ciclo con resultado obtenido
	Para divisor<-1 Hasta numero Hacer
		Si numero MOD divisor=0 Entonces
			cantidadDivisores <- cantidadDivisores+1
		FinSi
	FinPara
	Escribir 'La cantidad de divisores de ',numero,' es: ',cantidadDivisores
FinFuncion

// Escribir un algoritmo que indique si un número es perfecto
// Nota: un número es perfecto cuando la suma de los divisores del número incluido el 1 y 
// excluido el propio número es igual al numero
// Ejemplo: numero=6: los divisores del 6 son: 1+2+3=6
Funcion n_perfectos
	// Entrada: Definicion de variables 
	Definir numero,divisor,sumaDivisores Como Entero
	// Proceso: solicitamos los datos de los requerimientos y comenzamos proceso
	Escribir 'Ingrese un número:'
	Leer numero
	sumaDivisores <- 0
	// Salida: finalizamos cada ciclo con su resultado  correspondiente
	Para divisor<-1 Hasta numero/2 Hacer
		Si numero MOD divisor=0 Entonces
			sumaDivisores <- sumaDivisores+divisor
		FinSi
	FinPara
	Si sumaDivisores=numero Entonces
		Escribir 'El número ',numero,' es perfecto.'
	SiNo
		Escribir 'El número ',numero,' no es perfecto.'
	FinSi
FinFuncion

// Dado un número N determinar si es un número primo.
// Nota: Un número primo es aquel que solo es divisible por 1(uno) y por el mismo.
Funcion n_primos
	// Entrada: obtencion de las variables a utilizar
	Definir numero,divisor,contadorDivisores Como Entero
	Definir esPrimo Como Logico
	// Proceso: se realiza cada varibale establecida con sus datos requeridos y ciclos
	Escribir 'Ingrese un número:'
	Leer numero
	// Inicializar variables
	contadorDivisores <- 0
	esPrimo <- Verdadero
	// Proceso.2: uso de ciclos
	// Verificar divisibilidad por cada número desde 2 hasta la mitad del número ingresado
	divisor <- 2
	Mientras divisor<=numero/2 Y esPrimo Hacer
		Si numero MOD divisor=0 Entonces
			contadorDivisores <- contadorDivisores+1
			esPrimo <- Falso
		FinSi
		divisor <- divisor+1
	FinMientras
	// Salida: se presenta resultados correspondientes a cada ciclo
	// Verificar si el número es primo o no
	Si esPrimo Y contadorDivisores=0 Entonces
		Escribir 'El número ',numero,' es primo.'
	SiNo
		Escribir 'El número ',numero,' no es primo.'
	FinSi
FinFuncion

// Construya un programa que dado un valor entero N, haga el cálculo de la función factorial
// utilizando estructuras iterativas
Funcion n_factorial
	// Entrada: definicion de varibles 
	Definir numero,factorial,i Como Entero
	Escribir 'Ingrese un número entero:'
	Leer numero
	// Proceso: se solicitan los datos respectivos al usuario y se integran los valores a cada varible
	factorial <- 1
	// Proceso.2: uso de ciclos para variables
	// Salida: finalizan los ciclos con sus resultados correspondientes
	Si numero>=0 Entonces
		Para i<-1 Hasta numero Hacer
			factorial <- factorial*i
		FinPara
		Escribir 'El factorial de ',numero,' es: ',factorial
	SiNo
		Escribir 'El factorial no está definido para números negativos.'
	FinSi
FinFuncion

// Se define la variable contraseña como una cadena y se inicializa con una cadena vacía.
// Se inicia un bucle Mientras que se repetirá mientras la longitud de la contraseña sea menor a 10 caracteres. Este bucle se encargará de solicitar al usuario que ingrese una contraseña y verificar su longitud.
// Dentro del bucle:
// a. Se muestra en pantalla el mensaje "Ingrese una contraseña:" para solicitar al usuario que ingrese una contraseña.
// b. Se lee la contraseña ingresada por el usuario y se almacena en la variable contraseña.
// c. Se verifica si la longitud de la contraseña es menor a 10 caracteres. Si es así, se muestra en pantalla el mensaje "La contraseña debe tener al menos 10 dígitos. Por favor, inténtelo nuevamente."
// Después de salir del bucle, se muestra en pantalla el mensaje "Contraseña válida. ¡Éxito!" Esto indica que la contraseña ingresada tiene al menos 10 caracteres.
Funcion VerificarContraseña
	Definir contraseña Como Caracter
	contraseña <- ''
	Mientras Longitud(contraseña)<10 Hacer
		Escribir 'Ingrese una contraseña: '
		Leer contraseña
		Si Longitud(contraseña)<10 Entonces
			Escribir 'La contraseña debe tener al menos 10 dígitos. Por favor, inténtelo nuevamente.'
		FinSi
	FinMientras
	Escribir 'Contraseña válida. ¡Éxito!'
FinFuncion

// Dada una secuencia de números terminada en cero (0), elaborar un algoritmo que informe
// al usuario qué valor tiene el número mayor y qué valor tiene el número menor, sin contar
// el cero (0).
Funcion mayor_menor_10
	// Se Definen las varables
	Definir num,mayo,men Como Entero
	Definir primerNumero Como Entero
	mayo <- 0
	men <- 0
	primerNumero <- 1
	// Se ingresa por teclado la serie de numeros y cuando sea ingresado un 0 finaliza
	Escribir 'Ingrese una secuencia de números (terminada en 0): '
	// Leer la secuencia de números
	Leer num
	// Se añade una condicion para darle valor a cada numero 
	Mientras num<>0 Hacer
		Si primerNumero=1 Entonces
			mayo <- num
			men <- num
			primerNumero <- 0
		SiNo
			Si num>mayo Entonces
				mayo <- num
			FinSi
			Si num<men Entonces
				men <- num
			FinSi
		FinSi
		Leer num
	FinMientras
	// Mostrar el número mayor y el número menor
	Escribir 'El número mayor es: ',mayo
	Escribir 'El número menor es: ',men
FinFuncion

// Se tiene una secuencia de enteros terminada en cero, que corresponde a la edad, peso y 
// estatura de una muestra de hombres y mujeres mayores de 18 años. Con base en dicha
// secuencia se desea realizar un estudio a fin de conocer:
// Edad promedio de todas las personas en la muestra.
// Peso promedio de todas las personas en la muestra.
// Estatura promedio de todas las personas en la muestra.
// Cuántas personas hay con edad entre los 18 y 25 años.
// Cuántas personas son mayores a 36 años.
// Cuál es el promedio de peso de las personas con edades entre 18 y 35 años
Funcion ejercicio_11_EI
	
	//	Se tiene una secuencia de enteros terminada en cero, que corresponde a la edad, peso y
	//	estatura de una muestra de hombres y mujeres mayores de 18 años. Con base en dicha
	//secuencia se desea realizar un estudio a fin de conocer:
	//	Edad promedio de todas las personas en la muestra.
	//	Peso promedio de todas las personas en la muestra.
	//	Estatura promedio de todas las personas en la muestra.
	//	Cuántas personas hay con edad entre los 18 y 25 años.
	//	Cuántas personas son mayores a 36 años.
	//	Cuál es el promedio de peso de las personas con edades entre 18 y 35 años.
	Definir edad, peso, estatura Como Entero;
	Definir sumaEdad, sumaPeso, sumaEstatura,edadProm,pesoProm,estaturaProm Como Real;
	Definir contadorPersonas, contEdad1825, contMayores36 Como Entero;
	contEdad1825 <- 0
	contMayores36 <- 0
	sumaEdad <- 0
	sumaPeso <- 0
	sumaEstatura <- 0
	contadorPersonas <- 0
	Escribir " determinar la edad promedio, peso, estatura de personas "
	Escribir "Ingrese la secuencia de datos pedidos: edad, peso, estatura. El programa terminara cuando se ingrese el (0):"
	Leer edad
	
	Mientras edad <> 0 Hacer
		Leer peso;
		Leer estatura;
		
		sumaEdad <- sumaEdad + edad;
		sumaPeso <- sumaPeso + peso;
		sumaEstatura <- sumaEstatura + estatura;
		contadorPersonas <- contadorPersonas + 1;
		
		Si edad >= 18 Y edad <= 25 Entonces
			contEdad1825 <- contEdad1825 + 1;
		FinSi
		
		Si edad > 36 Entonces
			contMayores36 <- contMayores36 + 1;
		FinSi
		
		Leer edad;
	FinMientras
	
	Si contadorPersonas > 0 Entonces
		edadProm <- sumaEdad / contadorPersonas;
		pesoProm <- sumaPeso / contadorPersonas;
		estaturaProm <- sumaEstatura / contadorPersonas;
		
		Escribir "Edad promedio de todas las personas en la muestra:", edadProm;
		Escribir "Peso promedio de todas las personas en la muestra:", pesoProm;
		Escribir "Estatura promedio de todas las personas en la muestra:", estaturaProm;
		Escribir "Cantidad de personas con edad entre 18 y 25 años:", contEdad1825;
		Escribir "Cantidad de personas mayores a 36 años:", contMayores36;
	FinSi
FinFuncion

// Construye un algoritmo que calcule e imprima la tabla de multiplicar, desde la tabla del 1
// hasta la del 10.
Funcion ejercicio_12_EI
	// Entrada: Definicion de varibles a utilizar
	Definir tabla,i Como Entero
	i <- 0
	// Proceso: EL usuario debe ingresar que tipo de tabla desea Imprimir 
	Escribir 'Ingrese el número de tabla a multipiclar que desea imprimir'
	Leer tabla
	Para i<-1 Hasta 12 Hacer
		// Salida: Presentamos un resultado obtenido
		Escribir tabla,' x ',i,' = ',(tabla*i)
	FinPara
FinFuncion

// Escribir un algoritmo que multiplique dos números por medio de sumas sucesivas
Funcion ejercicio_13_EI
	Definir numero1, numero2, resultado, contador como entero
	Escribir "Ingrese el primer número:"
	Leer numero1
	Escribir "Ingrese el segundo número:"
	Leer numero2
	
	resultado <- 0
	contador <- 0
	
	Mientras contador < numero2 Hacer
		resultado <- resultado + numero1
		contador <- contador + 1
	Fin Mientras
	
	Escribir "El resultado de la multiplicación es:", resultado
FinFuncion

// Dados N número positivos (N>1) calcular el promedio de esta serie. Considere que la serie
// termina al leer un 0
Funcion ejercicio_14_EI
	// Entrada: tomar variables a utilizar
	Definir num, sum, i Como Entero
	Definir promedio Como Real
	
	sum <- 0
	i <- 0
	
	Escribir "Ingrese los números (ingrese 0 para terminar):"
	
	Leer num
	
	Mientras num <> 0 Hacer
		sum <- sum + num
		i <- i + 1
		Leer num
	Fin Mientras
	
	Si i <> 0 Entonces
		promedio <- sum / i
		Escribir "El promedio es:", promedio
	Sino
		Escribir "No se ingresaron números"
	Fin Si
FinFuncion

// Escribir un algoritmo que divida dos números por medio de restas sucesivas
Funcion ejercicio_15_EI
	// Entrada: toma de variables de datos
	Definir numerador,denominador Como Real
	Definir conteo,resta Como Real
	// Proceso: Solicitamos los datos requeridos y aplicamos ciclo (Para)
	Escribir 'Ingrese el valor del numerador'
	Leer numerador
	Escribir 'Ingrese el valor del denominador'
	Leer denominador
	conteo <- 0
	resta <- numerador
	Mientras resta-denominador>=0 Hacer
		resta <- resta-denominador
		Escribir (resta+denominador),' - ',denominador,' = ',resta
		conteo <- conteo+1
	FinMientras
	Escribir 'La division de ',numerador,'/',denominador,' = ',conteo
FinFuncion

// Algoritmo principal del proyecto
Algoritmo Proyecto
	Definir menuPrincipal,menuNumeros,menuCadenas,menuarreglos,titulo,titulo2,opc,opcn,apcc,apca Como Caracter
	Definir pos,lim Como Entero
	Dimension menuPrincipal[4],menuNumeros[11],menuCadenas[11],menuarreglos[16]
	// Arreglo menu principal
	menuPrincipal[0] <- '  1)estructuras selectivas '
	menuPrincipal[1] <- '  2)estructuras condicionales '
	menuPrincipal[2] <- '  3) estructuras iterativas '
	menuPrincipal[3] <- '  4)Salir'
	// arreglo submenu numeros
	menuNumeros[0] <- '  1) tipo de variable '
	menuNumeros[1] <- '  2) calcular la suma, resta, multiplicacion,division y modulo de 2 numeros '
	menuNumeros[2] <- '  3) calcular la resolvente '
	menuNumeros[3] <- '  4) calcular la hipotenusa '
	menuNumeros[4] <- '  5) par e impar ( si es par imprimir= 0 si no imprimir=1)'
	menuNumeros[5] <- '  6) dado un numero binario imprimir su valor bit de parida '
	menuNumeros[6] <- '  7) unidades numericas '
	menuNumeros[7] <- '  8) Dado un carácter indicar si es un digito o una consonante o un carácter especial '
	menuNumeros[8] <- '  9) Dado dos caracteres indicar si el primer carácter es igual, mayor o menor que el segundo'
	menuNumeros[9] <- '  10)Dada una frase cualquiera presentarla en mayúscula y minuscula '
	menuNumeros[10] <- '  11)Salir'
	// arreglos submenu cadenas
	// nombre = "ana"  ana
	menuCadenas[0] <- '  1) año bisiesto '
	menuCadenas[1] <- '  2) numero escapicúa '
	menuCadenas[2] <- '  3)  minutos horas y dias '
	menuCadenas[3] <- '  4)  numeros iguales , el mayor y el segundo mayor '
	menuCadenas[4] <- '  5)  calular el monto a pagar por el estacionamiento de un vehiculo '
	menuCadenas[5] <- '  6)  calcular el IMC '
	menuCadenas[6] <- '  7)  fecha (día y mes) correspondiente al año2014'
	menuCadenas[7] <- '  8) Solicitar un número entre el 1 y el 12 e imprimir el mes correspondiente a dicho número.'
	menuCadenas[8] <- '  9)  Almacen monto a pagar '
	menuCadenas[9] <- '  10) ingrese  dos números y un operador matemático(+,-,*,/,mod,div'
	menuCadenas[10] <- '  11)Salir'
	// arreglo submenu arreglos
	// arreglo=[2,4,5,8,10]  presentar 2 4 5 8 10
	menuarreglos[0] <- '1) dígitos  de un número.'
	menuarreglos[1] <- '2)  numero capicúa'
	menuarreglos[2] <- '3) divisores de un numero '
	menuarreglos[3] <- '4) suma de divisores de un numero '
	menuarreglos[4] <- '5) cantidad de divisores de un numero '
	menuarreglos[5] <- '6)  numero perfecto '
	menuarreglos[6] <- '7) numero primo '
	menuarreglos[7] <- '8) funcion factorial '
	menuarreglos[8] <- '9)  contraseña correcta o incorrecta '
	menuarreglos[9] <- '10) numero mayor y numero menor '
	menuarreglos[10] <- '11)  edad peso y estatura '
	menuarreglos[11] <- '12) tabla de multiplicar '
	menuarreglos[12] <- '13)  multiplicacion por sumas sucesivas  '
	menuarreglos[13] <- '14)  promedio de una serie de numeros '
	menuarreglos[14] <- '15)  dividir numeros pormedio de restas sucesivas  '
	menuarreglos[15] <- "16)Salir"
	opc <- ''
	Mientras opc<>'4' Hacer
		Borrar Pantalla
		opc <- presentarMenu('Menu Principal',menuPrincipal,4)
		Segun opc  Hacer
			'1':
				opcn <- ''
				Mientras opcn<>'11' Hacer
					opcn <- presentarMenu('Menu Numeros',menuNumeros,11)
					Segun opcn  Hacer
						'1':
							Escribir '--------------------------------------------------------'
							tipodevariable()
							Esperar 5 Segundos
						'2':
							Escribir '------------------------------------------------------------'
							suma_resta_multiplicacion_division_y_modulo_de_un_numero
							Esperar 5 Segundos
						'3':
							Escribir '----------------------------------------------------------'
							calcular_resolvente()
							Esperar 5 Segundos
						'4':
							Escribir '------------------------------------------------------------- '
							hipotenusa()
							Esperar 5 Segundos
						'5':
							Escribir '--------------------------------------------------------------'
							par_impar()
							Esperar 5 Segundos
						'6':
							Escribir '-------------------------------------------------------------'
							bit_de_parida()
							Esperar 5 Segundos
						'7':
							Escribir '-------------------------------------------------------------'
							unidades_numericas()
							Esperar 5 Segundos
						'8':
							Escribir '------------------------------------------------------------- '
							ej8()
							Esperar 5 Segundos
						'9':
							Escribir '--------------------------------------------------------------'
							ej9()
							Esperar 5 Segundos
						'10':
							Escribir '-------------------------------------------------------------- '
							ej10()
							Esperar 5 Segundos
						'11':
							Escribir '-------------------------------------------------------------'
							Esperar 5 Segundos
						De Otro Modo:
							Escribir 'Opcion invalida...'
							Esperar 5 Segundos
					FinSegun
				FinMientras
			'2':
				opcn <- ''
				Mientras opcn<>'11' Hacer
					opcn <- presentarMenu('Menu Numeros',menuCadenas,11)
					Segun opcn  Hacer
						'1':
							Escribir '--------------------------------------------------- '
							ej11()
							Esperar 5 Segundos
						'2':
							Escribir '--------------------------------------------------- '
							ej12()
							Esperar 5 Segundos
						'3':
							Escribir '-----------------------------------------------------'
							ej13
							Esperar 5 Segundos
						'4':
							Escribir '-----------------------------------------------------'
							ej14
							Esperar 5 Segundos
						'5':
							Escribir '------------------------------------------------------ '
							ejercicio_5_EC
							Esperar 5 Segundos
						'6':
							Escribir '-------------------------------------------------------'
							ejercicio_6_EC
							Esperar 5 Segundos
						'7':
							Escribir '--------------------------------------------------------'
							ejercicio_7_EC
							Esperar 5 Segundos
						'8':
							Escribir '--------------------------------------------------------'
							ejercicio_8_EC
							Esperar 5 Segundos
						'9':
							Escribir '---------------------------------------------------------'
							ejercicio_9_EC
							Esperar 5 Segundos
						'10':
							Escribir '--------------------------------------------------------- '
							ejercicio_10_EC
							Esperar 5 Segundos
						'11':
							Escribir 'regresando al menu '
							Esperar 5 Segundos
						De Otro Modo:
							Escribir 'Opcion invalida...'
							Esperar 5 Segundos
					FinSegun
				FinMientras
			'3':
				opcn <- ''
				Mientras opcn<>'16' Hacer
					opcn <- presentarMenu('Menu Numeros',menuarreglos,16)
					Segun opcn  Hacer
						'1':
							Escribir '--------------------------------------------------- '
							ejercicio_1_EI
							Esperar 5 Segundos
						'2':
							Escribir '--------------------------------------------------- '
							capicúa()
							Esperar 5 Segundos
						'3':
							Escribir '-----------------------------------------------------'
							n_divisores()
							Esperar 5 Segundos
						'4':
							Escribir '-----------------------------------------------------'
							s_divisores()
							Esperar 5 Segundos
						'5':
							Escribir '------------------------------------------------------ '
							c_divisores()
							Esperar 5 Segundos
						'6':
							Escribir '-------------------------------------------------------'
							n_perfectos()
							Esperar 5 Segundos
						'7':
							Escribir '--------------------------------------------------------'
							n_primos()
							Esperar 5 Segundos
						'8':
							Escribir '--------------------------------------------------------'
							n_factorial()
							Esperar 5 Segundos
						'9':
							Escribir '---------------------------------------------------------'
							VerificarContraseña()
							Esperar 5 Segundos
						'10':
							Escribir '--------------------------------------------------------- '
							mayor_menor_10()
							Esperar 5 Segundos
						'11':
							Escribir '--------------------------------------------------------- '
							ejercicio_11_EI()
							Esperar 5 Segundos
						'12':
							Escribir '--------------------------------------------------------- '
							ejercicio_12_EI()
							Esperar 5 Segundos
						'13':
							Escribir '--------------------------------------------------------- '
							ejercicio_13_EI()
							Esperar 5 Segundos
						'14':
							Escribir '--------------------------------------------------------- '
							ejercicio_14_EI()
							Esperar 5 Segundos
						'15':
							Escribir '--------------------------------------------------------- '
							ejercicio_15_EI()
							Esperar 5 Segundos
						'16':
							Escribir 'regresando al menu '
							Esperar 5 Segundos
						De Otro Modo:
							Escribir 'Opcion invalida...'
							Esperar 5 Segundos
					FinSegun
				FinMientras
			'4':
				Escribir '--------------------------------------------------------- '
				Escribir 'Gracias por usar el Sistema'
				Esperar 5 Segundos
		FinSegun
	FinMientras
FinAlgoritmo