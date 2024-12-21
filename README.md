# nextjs-fix-optimizer
script para optimizar y solucionar problemas comunes en proyectos Next.js, incluyendo la actualización de dependencias, corrección de vulnerabilidades, limpieza de dependencias no utilizadas y ejecución del servidor de desarrollo.


```markdown
# next-fix-optimizer.sh

Este script está diseñado para optimizar y solucionar problemas comunes en proyectos **Next.js**. Incluye varias herramientas para mantener las dependencias actualizadas, corregir vulnerabilidades, limpiar dependencias no utilizadas, y asegurar que el entorno de desarrollo esté funcionando correctamente.

## Características

- **Verificación de vulnerabilidades**: Usa `npm audit` para detectar vulnerabilidades de seguridad en las dependencias.
- **Reinstalación de dependencias**: Reinstala todas las dependencias asegurando que estén actualizadas.
- **Actualización de dependencias**: Ejecuta `npm update` y `npm upgrade` para actualizar las dependencias a la última versión compatible.
- **Corrección de vulnerabilidades**: Usa `npm audit fix --force` para corregir vulnerabilidades.
- **Limpieza de dependencias no utilizadas**: Limpia dependencias innecesarias con `npm clean --force`.
- **Instalación de Next.js**: Asegura que se tenga la última versión de Next.js.
- **Compatibilidad con dependencias antiguas**: Forzar la instalación de dependencias usando `npm install --legacy-peer-deps` para resolver conflictos.

## Requisitos

- Node.js v14 o superior.
- npm v7 o superior.

## Uso

1. Clona el repositorio o descarga el archivo del script.

   ```bash
   git clone https://github.com/espinozan/next-fix-optimizer.git
   cd next-fix-optimizer
   ```

2. Da permisos de ejecución al script:

   ```bash
   chmod +x next-fix-optimizer.sh
   ```

3. Ejecuta el script:

   ```bash
   ./next-fix-optimizer.sh
   ```

Este script ejecutará automáticamente los siguientes pasos:
- Verificación de vulnerabilidades.
- Reinstalación de dependencias.
- Actualización de dependencias.
- Corrección de vulnerabilidades.
- Limpieza de dependencias no utilizadas.
- Instalación de Next.js.
- Verificación final de dependencias desactualizadas.
- Ejecución del servidor de desarrollo para comprobar el estado del entorno.

## Contribuciones

Si encuentras algún error o deseas agregar más características, por favor crea un _pull request_ o abre un _issue_.

## Licencia

Este proyecto está licenciado bajo la licencia MIT.
```
