const 
	N = 10// Definimos la constante N con un valor de 10, que representa el tamaño del vector.
var 
	i, j, aux : numerico// Declaramos las variables i, j y aux como numericos
	array : vector[N] numerico// Declaramos el vector array de tamaño N y tipo numerico
	ordenado, ordenadoDescendente : logico// Declaramos las variables ordenado y ordenadoDescendente como logicas
inicio 
	cls()// Limpiamos la pantalla

	i = 1// Inicializamos la variable i en 1

	mientras (i <= N)// Iniciamos un bucle mientras i sea menor o igual a N
	{	
		array[i] = random(100)// Asignamos un valor aleatorio entre 0 y 100 a cada elemento del vector array
		i = i + 1// Incrementamos el valor de i en 1 en cada iteracion
	}

	i = 1// Reiniciamos la variable i en 1
	ordenado = TRUE// Inicializamos la variable ordenado en verdadero
	imprimir ('Vector ordenado ascendente ')// Imprimimos un mensaje indicando que se mostrara el vector ordenado de forma ascendente//
	mientras (i <= N - 1 and ordenado)// Iniciamos un bucle mientras i sea menor o igual a N - 1 y la variable ordenado sea verdadera
	{
		ordenado = FALSE// Establecemos la variable ordenado en falso
		desde j = 1 hasta N - 1// Iniciamos un bucle desde j = 1 hasta N - 1
		{
			si (array[j] > array[j + 1])// Comparamos si el elemento actual es mayor que el siguiente elemento en el vector
			{
				aux = array[j]// Guardamos el valor del elemento actual en la variable auxiliar
				array[j] = array[j + 1]// Intercambiamos los valores de los elementos actual y siguiente en el vector
				array[j + 1] = aux// Asignamos el valor guardado en la variable auxiliar al elemento siguiente en el vector
				ordenado = TRUE// Establecemos la variable ordenado en verdadero, indicando que se realizo un intercambio.
			}
		}
	}

	desde i = 1 hasta N // Iniciamos un bucle i = 1 hasta N
	{
		imprimir (array[i], " ")// Imprimimos cada elemento del vector separado por un espacio
	}
	
	imprimir ('\n')// Imprimimos un salto de linea

	i = 1// Reiniciamos la variable i en 1 
	ordenadoDescendente = TRUE// Inicializamos la variable ordenadoDescendente en verdadero
	imprimir ('Vector ordenado descendente ')// Imprimimos un mensaje indicando que se mostrara el vector ordenado de forma descendente
	mientras (i <= N - 1 and ordenadoDescendente)// Iniciamos un bucle mientra i sea menor o igual a N - 1 y la variable ordenadoDescendente sea verdadera
	{
		ordenadoDescendente = FALSE// Establecemos la variable ordenadoDescendente en falso
		desde j = 1 hasta N - 1// Iniciamos un bucle desdde j = 1 hasta N - 1
		{
			si (array[j] < array[j + 1])// Comparamos si el elemento actual es menor que el siguiente elemento en el vector
			{
				aux = array[j]// Guardamos el valor del elemento actual en la variable auxiliar
				array[j] = array[j + 1]// Intercambiamos los valores de los elementos actual y siguiente en el vector
				array[j + 1] = aux// Asignamos el valor guardado en la variable auxiliar al elemento siguiente en el vector
				ordenadoDescendente = TRUE// Establecemos la variable ordenadoDescendente en verdadero, indicando que se realizo un intercambio
			}
		}
	}

	desde i = 1 hasta N// Iniciamos un bucle desde i = 1 hasta N
	{
		imprimir (array[i], " ")// Imprimimos cada elemento del vector separado por un espacio
	}
fin 