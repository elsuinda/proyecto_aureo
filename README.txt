PROYECTO - NOTAS FIBONACCI + AUREO

IMPORTANTE
1) Este proyecto ya esta preparado para que lo uses desde Windows 11 con Visual Studio Code.
2) Solo debes cambiar el nombre del programa en 2 lugares:
   - En app.py, en la linea: APP_NAME = "PEGAR_AQUI_EL_NOMBRE_DEL_PROGRAMA"
   - En build_exe.bat, en la linea: set APP_NAME=PEGAR_AQUI_EL_NOMBRE_DEL_PROGRAMA

==================================================
PASO A PASO EN WINDOWS 11 + VISUAL STUDIO CODE
==================================================

PASO 1 - Crear la carpeta del proyecto
- Crea una carpeta, por ejemplo:
  C:\PROYECTOS\AUREO_NOTAS
- Copia dentro de esa carpeta estos archivos:
  - app.py
  - requirements.txt
  - build_exe.bat
- Crea la subcarpeta:
  assets

La estructura debe quedar asi:
C:\PROYECTOS\AUREO_NOTAS
│  app.py
│  requirements.txt
│  build_exe.bat
│  README.txt
│
└─ assets
   │  icono.ico
   │  logo.png

PASO 2 - Abrir la carpeta en Visual Studio Code
- Abre Visual Studio Code
- Menu Archivo > Abrir carpeta
- Selecciona C:\PROYECTOS\AUREO_NOTAS

PASO 3 - Editar el nombre del programa
- Abre el archivo app.py
- Busca esta linea:
  APP_NAME = "PEGAR_AQUI_EL_NOMBRE_DEL_PROGRAMA"
- Reemplazala por el nombre real, por ejemplo:
  APP_NAME = "Aureo Notes"

- Ahora abre build_exe.bat
- Busca esta linea:
  set APP_NAME=PEGAR_AQUI_EL_NOMBRE_DEL_PROGRAMA
- Reemplazala por:
  set APP_NAME=Aureo Notes

PASO 4 - Crear el entorno virtual
- En VS Code abre la terminal integrada:
  Menu Terminal > Nuevo terminal
- Ejecuta estos comandos, uno por uno:

  py -m venv .venv
  .venv\Scripts\activate

Si todo sale bien, veras algo como esto al principio de la linea:
(.venv)

PASO 5 - Instalar dependencias
- En la misma terminal ejecuta:

  py -m pip install -r requirements.txt

PASO 6 - Colocar el icono y el logo
- Dentro de la carpeta assets coloca:
  - icono.ico
  - logo.png

El programa ya intenta cargar automaticamente:
assets\icono.ico

PASO 7 - Probar el programa en modo desarrollo
- En la terminal de VS Code ejecuta:

  py app.py

- Se abrira la aplicacion.

PASO 8 - Como funciona el programa
- Escribes la nota en la pantalla izquierda.
- En la derecha se genera la cuadrícula numerica.
- Guardar:
  - Si no hay archivo abierto, te pedira nombre y guardara como:
    nombre_fecha_hora.xlsx
- Abrir:
  - Abre un archivo Excel
  - Pide el numero
  - Si ingresas 1.618 muestra: AUREO φ
  - Si ingresas otro numero muestra un texto ilegible
- Si abres un archivo, lo editas y luego presionas Guardar:
  - Puedes sobrescribir el archivo abierto
  - O guardar uno nuevo con nombre + fecha + hora

PASO 9 - Crear el .EXE portable
- En la terminal de VS Code ejecuta:

  build_exe.bat

- Espera a que termine.
- Se creara una carpeta llamada dist
- Dentro de dist estara la version portable

PASO 10 - Donde queda el ejecutable
- La salida queda en:
  dist\NOMBRE_DEL_PROGRAMA\

Si usaste por ejemplo:
set APP_NAME=Aureo Notes
entonces quedara algo similar a:
  dist\Aureo Notes\Aureo Notes.exe

==================================================
RECOMENDACION PRACTICA
==================================================
Para estabilidad y facilidad de uso, esta configurado en modo:
--onedir
No use --onefile por defecto porque tarda mas en abrir y es menos comodo para depurar.

==================================================
SI ALGO FALLA
==================================================
1) Verifica que la terminal este dentro de la carpeta del proyecto.
2) Verifica que el entorno virtual este activado.
3) Verifica que assets\icono.ico exista.
4) Si pyinstaller falla, prueba reinstalarlo:
   py -m pip install --upgrade pyinstaller

==================================================
ARCHIVOS DEL PROYECTO
==================================================
- app.py              -> programa principal
- requirements.txt    -> dependencias
- build_exe.bat       -> compila el .exe portable
- README.txt          -> guia paso a paso
- assets\icono.ico     -> icono de la app
- assets\logo.png      -> logo de referencia
