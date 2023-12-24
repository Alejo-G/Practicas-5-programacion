const 
	N = 5
var 
	i, j, aux, k : numerico
	m : matriz[N, N] numerico
	array : vector[25] numerico
inicio 
	cls()

	i = 1

	mientras (i <= N)
	{	
		j = 1
		mientras (j <= N)
		{
			m[i, j] = random(100)
			j = j + 1
		}
		i = i + 1
	}

	// Convertir la matriz en un vector unidimensional
	k = 1
	desde i = 1 hasta N
	{
		desde j = 1 hasta N
		{
			array[k] = m[i, j]
			k = k + 1
		}
	}

	// Ordenar el vector utilizando el algoritmo de ordenamiento burbuja
	desde i = 1 hasta 25 - 1
	{
		desde j = 1 hasta 25 - 1
		{
			si (array[j] > array[j + 1])
			{
				aux = array[j]
				array[j] = array[j + 1]
				array[j + 1] = aux
			}
		}
	}

	// Convertir el vector ordenado en una matriz
	k = 1
	desde i = 1 hasta N
	{
		desde j = 1 hasta N
		{
			m[i, j] = array[k]
			k = k + 1
		}
	}

	// Imprimir la matriz ordenada de forma ascendente
	imprimir ('Matriz ordenada: ', '\n')
	desde i = 1 hasta N
	{
		desde j = 1 hasta N
		{
			imprimir (m[i, j], " ")
		}
		imprimir ('\n')
	}

	imprimir ('\n')
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // 
	// Ordenar el vector utilizando el algoritmo de ordenamiento burbuja
	desde i = 1 hasta 25 - 1
	{
		desde j = 1 hasta 25 - 1
		{
			si (array[j] < array[j + 1])
			{
				aux = array[j]
				array[j] = array[j + 1]
				array[j + 1] = aux
			}
		}
	}

	// Convertir el vector ordenado en una matriz
	k = 1
	desde i = 1 hasta N
	{
		desde j = 1 hasta N
		{
			m[i, j] = array[k]
			k = k + 1
		}
	}

	// Imprimir la matriz ordenada de forma descendente
	imprimir ('Matriz ordenada: ', '\n')
	desde i = 1 hasta N
	{
		desde j = 1 hasta N
		{
			imprimir (m[i, j], " ")
		}
		imprimir ('\n')
	}
fin 