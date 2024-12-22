#!/bin/bash

###############################################################################
# estos son opcionales:
# npm install eslint@^8.57.1 eslint-plugin-react-hooks@^4.6.2 --legacy-peer-deps
# npm install ajv@^8.0.0 --legacy-peer-deps
###############################################################################


# Nombre del script: fix-and-optimize-project.sh

echo "===== Iniciando proceso para solucionar problemas, actualizar y optimizar el proyecto ====="

# Paso 1: Verificar vulnerabilidades iniciales
echo "Ejecutando 'npm audit' para identificar vulnerabilidades..."
npm audit

# Paso 2: Reinstalar todas las dependencias (primer intento)
echo "Reinstalando todas las dependencias..."
npm install

# Paso 3: Mostrar dependencias desactualizadas antes de realizar cambios
echo "Verificando dependencias desactualizadas (antes de los cambios)..."
npm outdated

# Paso 4: Actualizar dependencias a sus últimas versiones compatibles
echo "Actualizando dependencias con 'npm update'..."
npm update

# Paso 5: Actualizar a las versiones más recientes posibles
echo "Haciendo upgrade de dependencias con 'npm upgrade'..."
npm upgrade

# Paso 6: Intentar corregir vulnerabilidades (primera revisión)
echo "Revisando y corrigiendo vulnerabilidades con 'npm audit fix --force'..."
npm audit fix --force

# Paso 7: Limpiar dependencias no utilizadas
echo "Limpiando dependencias no utilizadas con 'npm clean --force'..."
npm clean --force

# Paso 8: Reinstalar dependencias después de limpieza
echo "Reinstalando todas las dependencias nuevamente..."
npm install

# Paso 9: Instalar la última versión de Next.js
echo "Instalando la última versión de Next.js..."
npm install next@latest

# Paso 10: Forzar instalación de dependencias con conflictos
echo "Resolviendo conflictos de dependencias con 'npm install --legacy-peer-deps'..."
npm install --legacy-peer-deps

# Paso 11: Intentar corregir vulnerabilidades nuevamente
echo "Revisando y corrigiendo vulnerabilidades con 'npm audit fix --force' (segundo intento)..."
npm audit fix --force

# Paso 12: Reinstalar dependencias por última vez para garantizar un entorno limpio
echo "Reinstalando todas las dependencias una vez más..."
npm install

# Paso 13: Mostrar dependencias desactualizadas después de los cambios
echo "Verificando dependencias desactualizadas (después de los cambios)..."
npm outdated

# Paso 14: Iniciar el servidor de desarrollo para validación final
echo "Iniciando servidor de desarrollo con 'npm run dev'..."
npm run dev

echo "===== Proceso completado. El entorno debería estar funcionando correctamente. ====="

