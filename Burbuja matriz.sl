//Definicion del tamaño de la matriz
const 
	N = 5

//Declaracion de variables
var 
	i , j : numerico 
	m : matriz [N, N] numerico
inicio 
//Limpiar la pantalla
	cls()

//Inicializar variables
	i = 1
	j = 1

//Llenar la matriz con valores aleatorios del 0 al 9
	mientras (i <= N)
	{
	 j = 1
	 mientras (j <= N)
	 {
		m[i, j] = random(9)
		j = j + 1
	 }
	 i = i + 1
	}

	//Imprimir la matriz desordenada
	imprimir ("\n Matriz desordenado: ")
	imprimir ("\n")
	imprimir (" ")
	imprimir_matriz(m)

	//Ordenar la matriz utilizando el algoritmo de ordenamiento de burbuja
	ordenar_burbuja(m)

	//Imprimir la matriz ordenada
	imprimir ("\n")

	imprimir ("\n Matriz Ordenado: ")
	imprimir ("\n")
	imprimir (" ")
	imprimir_matriz(m)

fin 

subrutina ordenar_burbuja(ref m : matriz [N, N] numerico)
var 
	i, j, k, l, aux : numerico
inicio 
//Bucle externo para controlar el numero de pasadas
desde i = 1 hasta N - 1
	{
		//Bucle intermedio para controlar el numero de comparaciones en cada pasada
		desde j = 1 hasta N - 1
		{
			//Bucle interno para recorrer las filas de la matriz
			desde k = 1 hasta N - 1
			{
				//Bucle mas interno para recorrer las columnas de la matriz
				desde l = 1 hasta N - 1
				{
					//Realizar el intercambio utilizando una variable auxiliar
					si (m[k, l] > m[k + 1, l])
					{
						aux = m[k, l];
						m[k, l] = m[k + 1, l];
						m[k + 1, l] = aux;
					}
				}
			}
		}
	}
fin

subrutina imprimir_matriz(m : matriz [N, N] numerico)
var
	i, j : numerico
inicio
	i = 1
	j = 1

	//Bucle para imprimir cada elemento de la matriz
	desde i = 1 hasta N
	{
	 desde j = 1 hasta N
	 {
	  imprimir (m[i, j], " ")
	 }
	 imprimir ("\n")
	}
fin 