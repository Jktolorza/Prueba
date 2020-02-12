//Menu funcional hasta opcion numero 6.

//Funcion opcion 1.
SubProceso tres_num (contador)
	definir promedio como real;
	promedio<-contador/3;
	escribir "El promedio de los tres numero es ", promedio;
FinSubProceso

//Funcion opcion 2.
SubProceso Separador(nombre,sexo)
	si Mayusculas(sexo) = "M" entonces
		escribir "Estimado ", nombre, ", usted debe ingresar al baño de hombres.";
	SiNo
		si Mayusculas(sexo) = "F" entonces
			escribir "Estimada ", nombre, ", usted debe ingresar al baño de mujeres.";
		FinSi
	FinSi
FinSubProceso
//Funcion opcion3

subproceso cobro(nombre,sexo)
	definir respuesta como entero;
	si Mayusculas(sexo) = "M"  y Mayusculas(sexo) = "M" entonces
		escribir nombre, " ,desea utilizar el inhodoro o la ducha?(1/2)";
		leer respuesta;
		si respuesta =1 Entonces
			escribir "El inhodoro tiene un precio de 250, por favor cancele en caja";
		SiNo
			si respuesta = 2  entonces 
				escribir "La ducha tiene un precio de 2500, por favor cancele en caja";
			FinSi
		FinSi
	SiNo
		escribir "No ingreso una opcion valida";
	FinSi
	
FinSubProceso

//Funcion opcion 4

SubProceso denumeroletra ( numeross )
	
	si numeross >= 1 y numeross <= 10 entonces
		Segun numeross Hacer
			1:
				escribir "El numero ", numeross," se escribe UNO";
			2:
				escribir "El numero ", numeross," se escribe DOS";
			3:
				escribir "El numero ", numeross," se escribe TRES";
			4:
				escribir "El numero ", numeross," se escribe CUATRO";
			5:
				escribir "El numero ", numeross," se escribe CINCO";
			6:
				escribir "El numero ", numeross," se escribe SEIS";
			7:
				escribir "El numero ", numeross," se escribe SIETE";
			8:
				escribir "El numero ", numeross," se escribe OCHO";
			9:
				escribir "El numero ", numeross," se escribe NUEVE";
			10:
				escribir "El numero ", numeross," se escribe DIEZ";
				
			De Otro Modo:
				escribir "Ingrese un numero entre 1 y 10";
		FinSegun
	finsi
	
FinSubProceso

//Funcion opcion 5.
SubProceso prom<-promediosss()
	definir seguir como logico;
	seguir<-verdadero;
	definir contador, sumatoria como entero;
	definir promedio como real;
	contador<-0;
	sumatoria<-0;
	promedio<-0;
	definir num como entero;
	escribir "Ingrese numeros. El proceso se detendra cuando ingrese el numero 0";
	Mientras seguir Hacer
		leer num;
		contador<-contador+1;
		sumatoria<-sumatoria+num;
		promedio<-sumatoria/contador+1;
		si num = 0 Entonces
			seguir<-falso;
		FinSi
	FinMientras
	promedio<-sumatoria/(contador-1);
	escribir "La cantidad de numeros ingresados fue de ",contador-1," numeros";
	escribir "El promedio de los numeros ingresados es ",promedio;
FinSubProceso

//Funcion opcion 6.
SubProceso Nnombres()
	definir nombre como cadena;
	escribir "Ingrese nombre que comience con J";
	definir contador como entero;
	contador<-0;
	Repetir
		leer nombre;
		contador<-contador+1;
	Hasta Que Mayusculas(nombre) = "JUAN";
	escribir "Ganaste! lo lograste en ",contador," intentos";
FinSubProceso

//funcion opcion 7.


Proceso Juan_Carlos_Tolorza
	definir op como entero;
	escribir "***MENU***";
	escribir "Seleccione una opcion";
	escribir "1.- Secuencial";
	escribir "2.- Condicional si entonces";
	escribir "3.- Condicional si entonces anidado";
	escribir "4.- Condicional segun";
	escribir "5.- Repetitiva mientras";
	escribir "6.- Repetitiva repetir";
	escribir "7.- Repetititva para";
	escribir "8.- Arreglo simple";
	escribir "9.- Arreglo bidimensional";
	escribir "10.- Salir";
	leer op;
	Segun op Hacer
		1:
			definir num1,num2,num3, contador como real;
			definir i como entero;
			contador<-0;
			escribir "Ingrese 3 numeros:";
			leer num1;
			leer num2;
			leer num3;
			contador<-contador+num1+num2+num3;
			tres_num(contador);
		2:
			
			definir nombre Como Caracter;
			definir sexo como cadena;
			escribir "Ingrese su nombre y su sexo (M/F):";
			leer nombre, sexo;
			Separador(nombre,sexo);
		3:
			definir nombre Como Caracter;
			definir sexo como cadena;
			escribir "Ingrese su nombre y su sexo (M/F):";
			leer nombre, sexo;
			Separador(nombre,sexo);
			cobro(nombre,sexo);
		4:
			
			definir numeross como entero;
			escribir "Ingrese un numero del 1 al 10:";
			leer numeross;
			denumeroletra(numeross);
		5:
			
			escribir promediosss();
		6:
			
			Nnombres();
		7:
			
			escribir "No lo pude completar, meperd0n as¿";
		8:
			
			escribir "No lo pude completar, meperd0n as¿";
		9:	
			
			escribir "No lo pude completar, meperd0n as¿";
		De Otro Modo:
			escribir "Adios";
	FinSegun
	
	
FinProceso
