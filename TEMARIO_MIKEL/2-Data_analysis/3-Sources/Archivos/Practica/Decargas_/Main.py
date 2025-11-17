
# Importar la clase
from clase import Fichero  


if __name__ == "__main__":
    print("Ordenador de archivos")
    ruta = input("La ruta de la carpeta que deseas ordenar")

    # Crear objeto y ordenar
    organizador = Fichero(ruta)
    organizador.ordenar()