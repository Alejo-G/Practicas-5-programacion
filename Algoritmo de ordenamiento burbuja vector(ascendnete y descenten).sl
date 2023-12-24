const 
	N = 10// Se define la constante N con un valor de 10. Indica el tamaño del vector
var 
	i, j, aux : numerico// Variable enteras utilizadas en el algoritmo
	array : vector[N] numerico// Se declara un vector llamado 'array' de tamaño N para almacenar los elementos

inicio 
	cls()// Limpia la pantalla antes de imprimir los resultados.

	i = 1// Inicializa la variable i en 1.

	mientras (i <= N)
	{	
		array[i] = random(100)// Genera un numero aleatorio entre 0 y 100 y lo asigna en la posicion i del vector 'array'.
		i = i + 1// Incrementa el valor de i en 1 para pasar a la siguiente posicion del vector.
	}

	i = 1// Reinicia la variable i en 1 para usarla nuevamente
	imprimir ('Vector ordenado ascendente ')
	desde i = 1 hasta N - 1// Bucle externo para recorrer el vector desde la primera posicion hasta la penultima.
	{
		j = 1// Reinicia la variable j en 1 para usarla en el bucle interno.
		desde j = 1 hasta N - 1// Bucle interno para comparar elementos adyacentes y realizar el ordenamiento.
		{
			si (array[j] > array[j + 1])// Compara el elemento en la posicion j con el siguiente elemento.
			{
				aux = array[j]// Almacena temporalmente el valor del elemento en la posicion j.
				array[j] = array[j + 1]// Reemplaza el elemento en la posicion j con el siguiente elemento.
				array[j + 1] = aux// Asigna el valor almacenado en 'aux' al siguiente elemento.
			}
		}
	}

	desde i = 1 hasta N 
	{
		imprimir (array[i], " ")// Imprime los elementos del vector ordenado de forma ascendente.
	}
	
	imprimir ('\n')// Imprime una nueva linea para separar los resultados.

	i = 1// Reinicia la variable i en 1 para usarla nuevamente.
	imprimir ('Vector ordenado descendente ')
	desde i = 1 hasta N - 1// Bucle externo similar al anterior para recorrer el vector desde la primera posicion hasta la penultima.
	{
		j = 1// Reinicia la variable j en 1 para usarla en el bucle interno.
		desde j = 1 hasta N - 1// Bucle interno similar al anterior para comparar elementos adyacentes y realizar el ordenamiento.
		{
			si (array[j] < array[j + 1])// Compara el elemento en la posicion j con el siguiente elemento.
			{
				aux = array[j]// Almacena temporalmente el valor del elemento en la posicion j.
				array[j] = array[j + 1]// Reemplaza el elemento en la posicion j con el siguiente elemento.
				array[j + 1] = aux// Asigna el valor almacenado en 'aux' al siguiente elemento.
			}
		}
	}

	desde i = 1 hasta N 
	{
		imprimir (array[i], " ")// Imprime los elementos del vector ordenado de forma descendente.
	}
fin// Fin del programa.