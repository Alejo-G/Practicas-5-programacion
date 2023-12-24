const 
	N = 4 // Tamaño de la matriz cuadrada
	M = 16 // Tamaño del vector resultante
var 
	i, j, datobuscar, resultado : numerico
	m : matriz [N, N] numerico 
	lista : vector [M] numerico 
inicio 
	cls() // Limpia la pantalla

	// Generar valores aleatorios y llenar la matriz
	i = 1
	repetir
	 j = 1
		repetir
		 m[i, j] = random(100)// Genera un numero aleatorio entre 0 y 100
		 j = j + 1
		hasta (j > N)
		i = i + 1
	hasta (i > N)

	imprimir ("\n Matriz original ")
	imprimir ("\n")
	imprimir (" ")
	imprimir_matriz(m)// Imprime la matriz original

	imprimir ("\n Introduzca el valor a buscar: ")
	imprimir ('\n ')
	leer(datobuscar)// Lee el valor que se desea buscar de la matriz

	imprimir ('\n')

	matriz_a_lista(m, lista)// Convierte la matriz en una lista y almacena los elementos en el vector
	ordenar_burbuja(lista)// Ordena el vector de forma ascendente

	imprimir("\n lista ordenada")
	imprimir("\n")
	imprimir_lista(lista)// Imprime la lista ordenada

	imprimir("\n")

	imprimir('\n Realizando busqueda binaria...')
	resultado  = busqueda_binaria(lista, datobuscar)// Realiza la busqueda binaria en la lista
	si (resultado == -1) 
	{
	 imprimir('\n El elemento ', datobuscar, " no se encuentra en la lista")
	sino 
	 imprimir('\n El elemento ', datobuscar, " se encuentra en la posicion ", resultado)
	}

fin 

// Convierte la matriz en una lista y la almacena en el vector
subrutina matriz_a_lista(ref m : matriz [N, N] numerico; ref lista : vector [M] numerico)
var 
	i, j, k : numerico 
inicio 
	k = 1// Inicializa el índice de la lista en 1
	desde i = 1 hasta N
	{
	 desde j = 1 hasta N
	 {
		lista[k] = m[i, j]// Almacena cada elemento de la matriz en la lista
		k = k + 1// Incrementa el índice de la lista para el próximo elemento
	 }
	}
fin

// Ordena el vector utilizando el algoritmo de ordenamiento de burbuja
subrutina ordenar_burbuja(ref lista : vector [M] numerico)
var 
	i, j, aux : numerico
inicio 
	desde i = 1 hasta M - 1
	{
		desde j = 1 hasta M - i
		{
			si (lista[j] > lista[j + 1])
			{
			 aux = lista[j]
			 lista[j] = lista[j + 1]
			 lista[j + 1] = aux
			}
	   }
	}
fin 

//  Realiza la busqueda binaria en el vector y devuelve la posicion del elemento encontrado (-1 si no se encuentra)
subrutina busqueda_binaria (ref lista : vector [M] numerico; datobuscar : numerico) retorna numerico
var 
	der, izq, iCentral, iElemento : numerico
	encontrar : logico
inicio 
	izq = 1// Indice izquierdo del rango de busqueda inicializado en 1
	der = M// Indice derecho del rango de busqueda inicializado en M (longitud de la lista)
	encontrar = FALSE
	iElemento = -1// Inicialmente se asume que el elemento no se encuentra en la lista

	mientras (izq <= der and not (encontrar)) 
	{
		iCentral = int((der + izq)/2)// Calcula el indice del elemento central en el rango de busqueda
		
		si (lista[iCentral] == datobuscar) 
		{
		 encontrar = TRUE
		 iElemento = iCentral// Almacena el indice del elemento encontrado
		sino 
			si (datobuscar < lista[iCentral])
			{
				der = iCentral - 1// Ajusta el rango de busqueda hacia la mitad izquierda de la lista
			sino 
				izq = iCentral + 1// Ajusta el rango de busqueda hacia la mitad derecha de la lista
		   }
		}
	}
	retorna(iElemento)// Retorna el indice del elemento encontrado (-1 si no se encontro)

fin

// Imprime la matriz en la consola
subrutina imprimir_matriz(m : matriz [N, N] numerico)
var 
		i, j : numerico
inicio
	i = 1
	j = 1

	desde i = 1 hasta N
	{
	 desde j = 1 hasta N
	 {
	  imprimir (m[i, j], " ")// Imprime cada elemento de la matriz
	 }
	 imprimir ("\n")// Cambia la linea al finalizar una fila
	}
fin 

// Imprime la lista en la consola
subrutina imprimir_lista (lista : vector[M] numerico)
var 
	i : numerico 
inicio 
	desde i = 1 hasta M
	{
	 imprimir (lista[i], " ")// Imprime cada elemento de la lista
	}
	imprimir ("\n")// Cambia la linea al finalizar la lista
fin 