'''
1)Guia de Referancia --> https://www.riverbankcomputing.com/static/Docs/PyQt6/
2)Instalacion librerias para GUI por CMD --> pip install PyQt6  
3)Posibles errores de instalación --> https://www.riverbankcomputing.com/static/Docs/PyQt6/installation.html
4)Video que recomiendo(Ingles) --> https://www.youtube.com/watch?v=ot94H3-d5d8
5)Documentacion que recomiendo --> https://www.guru99.com/pyqt-tutorial.html
'''


import sys
from PyQt5.QtWidgets import QApplication, QWidget


if __name__ == "__main__":

    #Importamos los modulos para crear la GUI creando un objeto de la clase QApplication
    #sys.argv inicia la app en shell
    app = QApplication(sys.argv)

    #Creamos un objeto de la clase QWidget y manejamos sus funciones
    ventanaPrincipal = QWidget()
    ventanaPrincipal.resize(300,300)
    ventanaPrincipal.setWindowTitle('Ventana Principal')
    #Mostramos la ventana
    ventanaPrincipal.show()

    #Inicia los eventos de las librerias del codigo fuente
    sys.exit(app.exec_())