const
	N = 27
var
	arreglo : vector[N] numerico
	i, k : numerico
	encontrado : numerico
inicio 
	cls()

	i = 1

	mientras (i <= N)
	{
		arreglo[i] = random(100)
		i = i + 1
	}

	i = 1

	desde i = 1 hasta N
	{
		imprimir (arreglo[i])
		imprimir (" ")
	}

	imprimir("\n")

	imprimir("Escriba el numero que se repite: ")
	leer(k)

	i = 1
	encontrado = 0

	mientras (i <= N)
	{
		si(arreglo[i] == k)
		{
		 encontrado = k 
		}
		i = i + 1
	}

	si (encontrado <> k)
	{
		imprimir('No se repite')
	sino 
		imprimir (k, 'se repite')
	}
fin 