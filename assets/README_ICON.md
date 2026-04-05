# Iconos para SEPTEM

## Cómo agregar un icono personalizado

El archivo `build_exe.bat` puede incluir un icono personalizado para tu ejecutable.

### Para agregar un icono:

1. **Prepara tu icono:**
   - Crea o descarga un archivo de icono en formato `.ico`
   - Recomendación: 256x256 píxeles o superior
   - Nombre: `icono.ico`

2. **Coloca el archivo:**
   - Guarda tu archivo como `icono.ico` en esta carpeta (`assets/`)
   - Ruta completa: `assets/icono.ico`

3. **Compila el ejecutable:**
   ```bash
   build_exe.bat
   ```
   - Si el archivo `icono.ico` existe, se usará automáticamente
   - Si no existe, se compilará sin icono personalizado

### Ejemplo de estructura:

```
proyecto_aureo/
├── app.py
├── build_exe.bat
├── assets/
│   ├── icono.ico          (agregar aquí tu icono)
│   └── README_ICON.md     (este archivo)
└── ...
```

### Herramientas para crear iconos:

- **Online:** https://icoconvert.com/ (convierte PNG/JPG a ICO)
- **Online:** https://convertio.co/es/png-ico/
- **Software:** GIMP (gratuito, descargable)
- **Software:** Adobe Photoshop (pago)

### Notas:

- El icono debe estar en formato `.ico` (no PNG, JPG, etc.)
- El archivo debe estar nombrado exactamente como `icono.ico`
- Si falta el icono, el `build_exe.bat` compilará sin problema, solo sin icono personalizado

---

**¿Quieres crear un icono para SEPTEM?**

Aquí hay algunos conceptos visuales que podrían funcionar:
- Un triángulo dorado (proporción áurea)
- Una espiral de Fibonacci
- El símbolo φ (phi)
- Una secuencia de números

Cualquier diseño geométrico que represente la belleza matemática del número áureo sería perfecto. ✨
