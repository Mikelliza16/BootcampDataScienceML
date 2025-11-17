import os
import shutil

print(os.getcwd())

os.listdir()



class Fichero:

    def __init__(self, ruta):
        self.ruta = ruta

    def crear_carpetas(self):
        carpetas = ["Imagenes", "Documentos", "Software", "Otros"]
        for carpeta in carpetas:
            os.makedirs(os.path.join(self.ruta, carpeta), exist_ok=True)

    def obtener_categoria(self, nombre_archivo):
       
        extension = os.path.splitext(nombre_archivo)[1].lower()

        if extension in [".jpg", ".jpeg", ".png", ".gif", ".bmp"]:
            return "Imagenes"
        elif extension in [".pdf", ".doc", ".docx", ".txt", ".xls", ".xlsx", ".ppt", ".pptx"]:
            return "Documentos"
        elif extension in [".exe", ".msi", ".apk", ".dmg"]:
            return "Software"
        else:
            return "Otros"

    def ordenar(self):
       
        self.crear_carpetas()

        for archivo in os.listdir(self.ruta):
            ruta_archivo = os.path.join(self.ruta, archivo)

            if os.path.isfile(ruta_archivo):  
                categoria = self.obtener_categoria(archivo)
                destino = os.path.join(self.ruta, categoria, archivo)
                shutil.move(ruta_archivo, destino)

        print("Archivos ordenados correctamente en:")
        print(self.ruta)
