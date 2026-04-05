# Compilación de SEPTEM a Ejecutable (.exe)

## Overview

Este documento explica cómo compilar SEPTEM en un archivo `.exe` ejecutable usando PyInstaller.

## Requisitos Previos

1. **Python 3.10+** instalado en tu sistema
2. **Dependencias instaladas:**
   ```bash
   pip install -r requirements.txt
   ```

3. **PyInstaller** (se instala automáticamente si falta):
   ```bash
   pip install pyinstaller
   ```

## Método 1: Usar el Script de Compilación (Recomendado)

### Windows (PowerShell)

1. Abre **PowerShell** o **CMD** en la carpeta del proyecto
2. Ejecuta:
   ```powershell
   .\build_exe.bat
   ```
3. El script automáticamente:
   - ✅ Detecta si PyInstaller está instalado (lo instala si falta)
   - ✅ Busca un icono personalizado en `assets/icono.ico` (opcional)
   - ✅ Compila la aplicación
   - ✅ Crea el ejecutable en `dist/SEPTEM.exe`

### Qué hace el script:

```
build_exe.bat
├── Verifica PyInstaller
├── Busca icono (opcional)
├── Compila con PyInstaller
└── Genera: dist/SEPTEM.exe
```

## Método 2: Compilación Manual con PyInstaller

Si prefieres compilar manualmente sin el script:

```bash
# Sin icono personalizado
pyinstaller --onefile --windowed --name "SEPTEM" app.py

# Con icono personalizado
pyinstaller --onefile --windowed --icon=assets/icono.ico --name "SEPTEM" app.py
```

## Resultado de la Compilación

Después de ejecutar `build_exe.bat`, encontrarás:

```
proyecto_aureo/
├── dist/
│   └── SEPTEM.exe           ← TU EJECUTABLE
├── build/                   ← Archivos temporales
├── SEPTEM.spec              ← Especificación de compilación
└── ...
```

## Usar el Ejecutable

1. **Navega a la carpeta `dist/`**
2. **Doble-click en `SEPTEM.exe`** para ejecutar
3. ¡Listo! La aplicación se ejecutará directamente

### Nota:
- ✅ No necesitas Python instalado para ejecutar el .exe
- ✅ No necesitas tener la carpeta del repositorio
- ✅ Puedes compartir el .exe con otros usuarios

## Personalizar el Icono

Si quieres agregar un icono personalizado:

1. **Crea o descarga un archivo `.ico`**
   - Herramientas online: https://icoconvert.com/
   - Tamaño recomendado: 256x256 píxeles

2. **Guárdalo en:** `assets/icono.ico`

3. **Compila normalmente:**
   ```powershell
   .\build_exe.bat
   ```

4. El script detectará automáticamente el icono y lo incluirá

## Solución de Problemas

### Error: "PyInstaller no encontrado"

**Solución:**
```bash
pip install pyinstaller
```

O ejecuta el script normalmente - `build_exe.bat` lo instala automáticamente.

### Error: "app.py no encontrado"

**Solución:**
- Asegúrate de estar en la carpeta correcta del proyecto
- Verifica que `app.py` existe en la carpeta raíz

### El .exe no funciona

**Soluciones:**
1. Verifica que `openpyxl` está instalado: `pip install openpyxl`
2. Compila nuevamente: `.\build_exe.bat`
3. Revisa la consola de Windows (si aparece) para ver errores

### Archivo .exe muy grande

- Esto es normal con PyInstaller (contiene Python empaquetado)
- SEPTEM con todas sus dependencias: ~50-100 MB

### Antivirus detecta el .exe como sospechoso

- Esto ocurre a veces con ejecutables compilados
- Es un falso positivo común
- Puedes:
  - Agregar una excepción en tu antivirus
  - Compilar con el código fuente en el mismo directorio
  - Usar PyInstaller en modo "onedir" (genera carpeta en lugar de archivo único)

## Cambiar Opciones de Compilación

Si quieres modificar cómo se compila, edita `build_exe.bat`:

```batch
pyinstaller ^
    --noconfirm              # No preguntar confirmaciones
    --onefile                # Un solo archivo ejecutable
    --windowed               # Ocultar consola de Windows
    %ICON_PARAM%             # Icono personalizado (si existe)
    --name "SEPTEM"          # Nombre del programa
    app.py
```

### Opciones útiles:

- `--onedir` → Crear carpeta con archivos (ejecutable más pequeño)
- `--console` → Mostrar consola de Windows (para debugging)
- `--add-data` → Agregar archivos adicionales
- `--hidden-import` → Importaciones no detectadas automáticamente

## Ejemplo: Compilación en Modo "onedir"

Si quieres reducir el tamaño, modifica `build_exe.bat`:

```batch
pyinstaller ^
    --noconfirm ^
    --onedir ^
    --windowed ^
    %ICON_PARAM% ^
    --name "SEPTEM" ^
    app.py
```

Esto crea una carpeta `SEPTEM/` en lugar de un único .exe (un poco más pequeño).

## Despliegue

Una vez tengas `SEPTEM.exe`:

1. **Usuarios locales:** Comparte solo `SEPTEM.exe`
2. **Distribución:** Crea un ZIP con:
   ```
   SEPTEM.exe
   README.md
   LICENSE
   ```
3. **Instalador avanzado:** Usa Inno Setup o NSIS para crear un instalador

## Referencia Rápida

```powershell
# Compilar
.\build_exe.bat

# Ejecutar resultado
.\dist\SEPTEM.exe

# Limpiar archivos de compilación
rm -r build, dist, SEPTEM.spec
```

---

**¿Más información?**

- [Documentación de PyInstaller](https://pyinstaller.org/)
- [Documentación de SEPTEM](README.md)
- [Manual de Uso](README.md#manual-de-uso)

---

**by ElSuinda @v@**
