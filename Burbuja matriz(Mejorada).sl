const 
	N = 5 // Se define la constante N con un valor de 5 
var 
	i , j : numerico 
	m : matriz [N, N] numerico // Se define una matriz m de tamaño N X X 
inicio 

	cls()// Se limpia la pantalla

	i = 1//Se inicializa la variable i en 1
	j = 1//Se inicializa la variable j en 1

	mientras (i <= N)// Mientras i sea menor o igual a N
	{
	 j = 1// Se inicializa la variable j en 1
	 mientras (j <= N)// Mientras j sea menor o igual a N
	 {
		m[i, j] = random(10)// Se asigna un valor aleatorio entre 0 y al elemento i,j de la matriz
		j = j + 1// Se incrementa la variable j en 1
	 }
	 i = i + 1// Se incrementa la variable i en 1
	}

	imprimir ("\n Matriz desordenado: ")// Se imprime un mensaje indicando se va a mostrar la matriz desordenada
	imprimir ("\n")
	imprimir (" ")
	imprimir_matriz(m)// Se llama a la subrutina imprimir_matriz() para mostrar la matriz desordenada

	ordenar_burbuja_mejorada(m)// se llama a la subrutina ordenar_burbuja_mejorada() para ordenar la matriz

	imprimir ("\n")

	imprimir ("\n Matriz Ordenado: ")// Se imprime un mensaje indicando que se va a mostrar la matriz ordenada
	imprimir ("\n")
	imprimir (" ")
	imprimir_matriz(m)// Se llama a la subrutina imprimir_matriz() para mostrar la matriz ordenada

fin 

subrutina ordenar_burbuja_mejorada(ref m : matriz [N, N] numerico)
var 
	i, j, k, aux : numerico
	ordenado : logico
inicio 
	i = 1// Se inicializa la variable i en 1
	ordenado = TRUE// Se inicializa la variable ordenado en verdadero
	mientras (i <= N -1 and ordenado)// Mientras i sea menor o igual a N - 1 y ordenado sea verdadero
	{
	 ordenado = FALSE// Se establece la variable ordenado en falso al comienzo de cada iteracion
	 desde j = 1 hasta N - 1// Se recorren las columnas de la matriz
	 {
		desde k = 1 hasta N - 1// Se recorren los elementos de la matriz
		{
			si (m[j, k] > m[j, k + 1])// Si el elemento actual es mayor que su vecino derecho
			{
			 aux = m[j, k]// Se guarda el valor del elemento actual en la variable aux
			 m[j, k] = m[j, k + 1]// Se intercambia el elemento actual con su vecino derecho
			 m[j, k + 1] = aux// Se asigna el valor de la variable aux al vecino derecho
			 ordenado = TRUE// Se establece la variable ordenado en verdadero para indicar que se realizo un intercambio
			}
			si (m[k, j] > m[k + 1, j])// Si el elemento actual es mayor que su vecino inferior
			{
			 aux = m[k, j]// Se guarda el valor del elemento actual en la variable aux
			 m[k, j] = m[k + 1, j]// Se intercambia el elemento actual con su vecino inferior
			 m[k + 1, j] = aux// Se asigna el valor la variable aux al vecino inferior
			 ordenado = TRUE// Se establece la variable ordenado en verdadero para indicar que se realizo un intercambio
			}
		}
	 }
	 i = i + 1// Se incrementa la variable i para pasar a la siguiente fila de la matriz
	}
fin 

subrutina imprimir_matriz(m : matriz [N, N] numerico)
var
	i, j : numerico
inicio
	i = 1// se inicializa la variable i en 1
	j = 1// Se inicializa la variable j en 1

	desde i = 1 hasta N// Se recorren las filas de la matriz
	{
	 desde j = 1 hasta N// Se recorren las columnas de la matriz
	 {
	  imprimir (m[i, j], " ")// Se imprime el elemento i,j de la matriz
	 }
	 imprimir ("\n")// Se imprime un salto de linea al final de cada fila 
	}
fin 