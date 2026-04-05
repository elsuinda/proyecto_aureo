# SEPTEM - Cifrador de Números Áureos

## Origen y Propósito

**SEPTEM** es una aplicación de encriptación basada en el número áureo (φ = 1.618...), también conocido como la "proporción divina". Este número aparece frecuentemente en la naturaleza, el arte y la matemática, y es la base fundamental de este sistema criptográfico.

El proyecto explora la intersección entre la belleza matemática del número áureo y la seguridad criptográfica, proporcionando una herramienta educativa y funcional para encriptar y desencriptar mensajes utilizando una secuencia de Fibonacci como base.

## Funcionalidad

SEPTEM permite:

✅ **Encriptación**: Convierte texto plano en una secuencia de números basada en el número áureo
✅ **Desencriptación**: Recupera el texto original usando la clave secreta (1.618)
✅ **Exportar a Excel**: Guarda la secuencia numérica encriptada en archivos .xlsx
✅ **Visualización en tiempo real**: Ve los números generados mientras escribes
✅ **Interfaz intuitiva**: Panel dividido que muestra texto original y secuencia numérica simultáneamente

### Algoritmo de Encriptación

1. **Secuencia de Fibonacci**: Genera una serie numérica basada en Fibonacci
2. **Índice Alfanumérico**: Cada carácter se mapea a su posición en el alfabeto extendido
3. **Multiplicación por Clave**: Aplica la constante áurea (1618 en escala 1000x) a cada índice
4. **Validación de Clave**: Solo se puede desencriptar con la clave correcta (1.618)

## Requisitos

- Python 3.10 o superior
- Tkinter (incluido en Python)
- openpyxl >= 3.10.0 (para Excel)
- pyinstaller >= 6.0.0 (para compilar a .exe)

## Instalación

### 1. Clonar el repositorio
```bash
git clone https://github.com/tu_usuario/proyecto_aureo.git
cd proyecto_aureo
```

### 2. Crear entorno virtual
```bash
python -m venv .venv
```

### 3. Activar entorno virtual
**Windows (PowerShell):**
```powershell
.venv\Scripts\Activate.ps1
```

**Windows (CMD):**
```cmd
.venv\Scripts\activate
```

**Linux/Mac:**
```bash
source .venv/bin/activate
```

### 4. Instalar dependencias
```bash
pip install -r requirements.txt
```

### 5. Ejecutar la aplicación
```bash
python app.py
```

## Manual de Uso

### Pantalla Principal

La interfaz está dividida en dos paneles:

- **Panel Izquierdo - "Texto Original"**: Área editable donde escribes o pegas el texto a encriptar
- **Panel Derecho - "Secuencia Numérica"**: Muestra automáticamente los números generados (se actualiza en tiempo real)

### Botones Principales

#### 1. **Encriptar y Guardar**
- Encripta el texto del panel izquierdo
- Abre un diálogo para ingresar nombre del archivo
- Guarda la secuencia numérica en un archivo Excel (.xlsx)
- Mensaje de éxito: "El número es áureo φ"

**Pasos:**
1. Escribe o pega tu texto en el panel izquierdo
2. Haz clic en "Encriptar y Guardar"
3. Ingresa un nombre para el archivo
4. El archivo se guarda en la carpeta del proyecto

#### 2. **Abrir y Desencriptar**
- Recupera una secuencia numérica desde un archivo Excel
- Solicita la clave de desencriptación (1.618)
- Muestra el texto original en el panel izquierdo

**Pasos:**
1. Haz clic en "Abrir y Desencriptar"
2. Selecciona un archivo .xlsx generado por SEPTEM
3. Ingresa la clave: `1.618`
4. El texto original aparecerá en el panel izquierdo

#### 3. **Desencriptar** (desde panel o portapapeles)
- Lee números del panel derecho (si hay contenido)
- Si el panel está vacío, intenta leer del portapapeles
- Solicita la clave de desencriptación

**Pasos (desde panel):**
1. Pega números en el panel derecho (separados por espacios o saltos de línea)
2. Haz clic en "Desencriptar"
3. Ingresa la clave: `1.618`
4. El texto aparecerá en el panel izquierdo

**Pasos (desde portapapeles):**
1. Copia la secuencia numérica (desde Excel u otro lugar)
2. Haz clic en "Desencriptar"
3. Ingresa la clave: `1.618`

#### 4. **Copiar**
- Copia los números del panel "Secuencia Numérica" al portapapeles
- Útil para compartir la secuencia encriptada

**Pasos:**
1. Con números visibles en el panel derecho
2. Haz clic en "Copiar"
3. Los números se copian automáticamente

#### 5. **Limpiar**
- Borra el contenido de ambos paneles
- Reinicia la interfaz para un nuevo mensaje

**Pasos:**
1. Haz clic en "Limpiar"
2. Ambos paneles se vacían

## Ejemplos de Uso

### Ejemplo 1: Encriptar un mensaje

```
Entrada: "Hola Mundo"
Secuencia generada: 97 79 76 66 18 107 92 90 88 1
Archivo guardado: hola.xlsx
```

Para desencriptar:
1. Abre el archivo hola.xlsx
2. Ingresa clave: 1.618
3. Verás: "Hola Mundo"

### Ejemplo 2: Pegar números directamente

```
Panel Secuencia Numérica: 97 79 76 66
Botón "Desencriptar" → Ingresa clave: 1.618
Resultado: "Hola"
```

## Estructura del Proyecto

```
proyecto_aureo/
├── app.py                 # Aplicación principal (Tkinter GUI)
├── requirements.txt       # Dependencias de Python
├── build_exe.bat         # Script para compilar a .exe
├── README.md             # Este archivo
├── assets/               # Carpeta para iconos y recursos
├── .venv/                # Entorno virtual (local)
└── app_audit.log         # Log de auditoría (generado en ejecución)
```

## Mensajes de la Aplicación

### Mensajes de Éxito
- **"El número es áureo φ"** - Desencriptación exitosa con clave correcta

### Mensajes de Error
- **"La proporción no es divina"** - Clave de desencriptación incorrecta
- **"Los números no son válidos"** - Formato de números incorrecto
- **"No hay contenido en el portapapeles"** - Intento de desencriptar sin números

## Seguridad

⚠️ **Nota de Seguridad**: Este es un proyecto educativo basado en un algoritmo matemático hermoso. Para encriptación de nivel militar, usa bibliotecas criptográficas estándar como `cryptography`, `PyCryptodome`, etc.

**Características de seguridad implementadas:**
- Validación de entrada (máximo 10,000 caracteres)
- Registro de auditoría en `app_audit.log`
- Validación de archivos (límite de 5 MB)
- Manejo de excepciones robusto

## Compilar a Ejecutable (.exe)

SEPTEM puede compilarse a un archivo `.exe` independiente que no requiere Python instalado.

### Opción 1: Usar el Script de Compilación (Recomendado) ⭐

```powershell
.\build_exe.bat
```

**El script automáticamente:**
- ✅ Detecta si PyInstaller está instalado (lo instala si falta)
- ✅ Busca un icono personalizado (opcional)
- ✅ Compila la aplicación
- ✅ Crea el ejecutable en `dist/SEPTEM.exe`

### Opción 2: Compilación Manual

```bash
# Sin icono personalizado
pyinstaller --onefile --windowed --name "SEPTEM" app.py

# Con icono personalizado
pyinstaller --onefile --windowed --icon=assets/icono.ico --name "SEPTEM" app.py
```

### Resultado

El ejecutable estará en: `dist/SEPTEM.exe`

**Características del ejecutable:**
- ✅ No requiere Python instalado
- ✅ No requiere carpeta del proyecto
- ✅ Puede compartirse con otros usuarios
- ✅ Tamaño: ~50-100 MB (incluye Python empaquetado)

### Personalizar el Icono

1. Prepara un archivo `.ico` (256x256 píxeles recomendado)
2. Guárdalo en: `assets/icono.ico`
3. Ejecuta: `.\build_exe.bat`

Para crear un icono: [Convertidor Online](https://icoconvert.com/)

### 📖 Guía Detallada

Para instrucciones completas, solución de problemas y opciones avanzadas, consulta:
**[COMPILACION.md](COMPILACION.md)** ← Haz clic aquí

## Configuración de Colores

La interfaz usa un tema oscuro personalizado:
- Fondo principal: #07080b (gris muy oscuro)
- Texto primario: #FFFFFF (blanco)
- Números: #7ed957 (verde)
- Énfasis: #ff2da6 (fucsia)

## Logs y Auditoría

Los eventos se registran automáticamente en `app_audit.log`:
- Conversiones de texto a números
- Desencriptaciones (exitosas y fallidas)
- Operaciones con archivos
- Errores y excepciones

## Contribuciones

Si deseas mejorar SEPTEM, ¡tu ayuda es bienvenida!

1. Fork el repositorio: https://github.com/elsuinda/proyecto_aureo
2. Crea una rama para tu feature (`git checkout -b feature/mejora`)
3. Commit tus cambios (`git commit -m "Añade mejora"`)
4. Push a la rama (`git push origin feature/mejora`)
5. Abre un Pull Request

### Áreas de mejora

- Mejorar la interfaz gráfica
- Optimizar el algoritmo de encriptación
- Agregar más idiomas
- Crear versión web
- Documentación en otros idiomas

---

## 💖 ¡Apoya este proyecto!

Si te gustó este proyecto y deseas apoyarlo, considera hacer una donación. ¡Cualquier aporte es bienvenido! 🙌

### 💸 Donaciones:

**Metamask:** `0x72A4DD1055a11960EbF768Ea53E6e2CF20F89f83`

**UALÁ USD:** `3840200500000033089766`

**UALÁ ARS:** `3840200500000005543881`

---

## Licencia

Este proyecto está bajo licencia **MIT (Massachusetts Institute of Technology)**.

### MIT License

```
MIT License

Copyright (c) 2026 elsuinda

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

**Puedes usar este proyecto libremente en proyectos personales y comerciales.**

## Autor

Desarrollado con pasión por **elsuinda** por la belleza matemática del número áureo.

- GitHub: [@elsuinda](https://github.com/elsuinda)
- Repositorio: [proyecto_aureo](https://github.com/elsuinda/proyecto_aureo)

---

**¿Preguntas?** Consulta el archivo `CAMBIOS.md` para ver el historial de actualizaciones recientes.


**¿Encontraste un bug?** Abre un issue en GitHub.

*El número áureo no es solo una proporción matemática, es la base de la armonía en el universo.* ✨

---

**by ElSuinda @v@**
