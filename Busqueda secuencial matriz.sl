const
	N = 3 // Se define N con un valor de 3
var 
	i, j, buscador : numerico
	m : matriz[N, N] numerico// se define una matriz m de tamaño N X N
inicio
	cls() // Se limpia la pantalla

	i = 1 

	mientras (i <= N)// Mientras i sea menor o igual a N
	{
	 j = 1
	 mientras (j <= N)// Mientras j sea menor o igaul a N
	 {
	  m[i, j] = random(19)// Se asigna un valor aleatorio entre 0 y 18 al elemento i,j de la matriz
	  j = j + 1
	 }
	 i = i + 1 
	}

	imprimir ("\n Matriz: ")
	imprimir ("\n ")
	imprimir (" ")
	im_matriz(m)// Se llama a la subrutina imprimir_matriz() para mostrar la matriz

	imprimir ("\n ")

	imprimir ("\n Introduzca un valor a buscar: ")
	imprimir ("\n ")
	leer(buscador)// Se lee el valor a buscar en la matriz

	i = busqueda_dato(m, buscador)// Se llama a la subrutina busqueda_dato() para buscar el elemento en la matriz
	j = busqueda_dato_j(m, buscador)// Se llama a la subrutina busqueda_j() para buscar la columna en la que se encuentra e elemento
	si (i == 0 and j == 0)
	{
	 imprimir ("\n Elemento no encontrado en la matriz ")
	sino 
	 imprimir ("\n Elemento encontrado en la fila ", i, " columna ", j)
	}

	imprimir ("\n")

	imprimir ("\n Matriz: ")
	imprimir ("\n ")
	imprimir (" ")
	im_matriz(m)
fin 

// Subrutina para buscar el indice de fila del elemento en la matriz
subrutina busqueda_dato(ref m : matriz [N, N] numerico; buscador : numerico) retorna numerico 
var 
	i, j, elemento : numerico
	encontrar : logico
inicio 
	encontrar = FALSE
	elemento = 0
	i = 1
	mientras (i <= N and not(encontrar))// Mientras i sea menor o igual a N y no se haya encontrado el elemento
	{
		j = 1
		mientras (j <= N and not(encontrar))// Mientras J sea menor o igual a N y no se haya encontrado el elemento
		{
			si (m[i, j] == buscador)// Si el elemento actual es igual al buscador
			{
				encontrar = TRUE
				elemento = i// Se guarda el indice de la fila en la variable elemento
			}
		 j = j + 1
	   }
	 i = i + 1
	}
	retorna(elemento)// Retorna el indice de la fila donde se encuentra el elemento
fin 

// Subrutina para buscar el indice de columna del elemento en la matriz
subrutina busqueda_dato_j(ref m : matriz [N, N] numerico; buscador : numerico) retorna numerico 
var 
	i, j, elemento2 : numerico
	encontrar : logico
inicio 
	encontrar = FALSE
	elemento2 = 0
	i = 1
	mientras (i <= N and not(encontrar))// Mientras i sea menor o igual a N y no se haya encontrado el elemento
	{
		j = 1
		mientras (j <= N and not(encontrar))// Mientras j sea menor o igual a N y no se haya encontrado el elemento
		{
			si (m[i, j] == buscador)// Si el elemento actual es igual al buscador
			{
				encontrar = TRUE
				elemento2 = j// Se guarda el indice de la columna en la variable elemento2
			}
		 j = j + 1
	   }
	 i = i + 1
	}
	retorna(elemento2)// Retorna el indice de la columna donde se encuentra el elemento
fin 

// Subrutina para imprimir la matriz
subrutina im_matriz(m : matriz[N, N] numerico)
var 
	i, j : numerico 
inicio 
	i = 1
	j = 1
	desde i = 1 hasta N // Se recorren las filas de la matriz
	{
	 desde j = 1 hasta N// Se recorren las columna de la matriz
	 {
		imprimir (m[i, j], " ")// Se imprime el elemento i,j de ka matriz
	 }
	 imprimir ("\n ")// Se imprime un salto de linea al final de cada fila 
	}
fin 