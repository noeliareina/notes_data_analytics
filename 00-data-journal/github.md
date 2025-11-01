🚀 Comando para Avanzar (cd)
El comando más fundamental para moverte hacia adelante (a una subcarpeta) es cd (Change Directory), seguido del nombre de la carpeta a la que quieres acceder.
cd nombre_de_la_carpeta
Comando,Acción,Ejemplo
cd carpeta_siguiente,Avanza a una subcarpeta que esté dentro de tu ubicación actual.,cd Documentos

🧭 Comandos de Navegación Esenciales
Otros comandos clave que te ayudarán a moverte por el sistema de archivos:
Comando,Acción
cd ..,Retrocede un nivel de carpeta (vas a la carpeta padre).
cd / (Linux/Mac),Avanza a la carpeta raíz del sistema (el nivel más alto).
cd C:\ (Windows),Avanza a la raíz del disco C: (el nivel más alto en Windows).
cd ~ (Linux/Mac),Avanza a tu directorio de usuario (Home).
ls (Linux/Mac),Lista los archivos y carpetas dentro de la ubicación actual.
dir (Windows),Lista los archivos y carpetas dentro de la ubicación actual.

🚀 Pasos para Subir tu Carpeta a GitHub
1. Navega a tu Carpeta Local
cd /ruta/a/tu/carpeta/local/
2. Inicializa Git y Haz el Primer Commit
Convierte tu carpeta en un repositorio local de Git y guarda su contenido inicial:
# Inicializa Git en esta carpeta
git init

# Agrega todos los archivos al área de preparación
git add .

# Confirma el primer estado de tu proyecto
git commit -m "Initial commit of my project"

3. Conecta con GitHub
# (Opcional) Renombra la rama principal a 'main' (práctica estándar)
git branch -M main

# Añade el enlace remoto de GitHub. 
# Reemplaza la URL con la de tu repositorio nuevo.
git remote add origin [URL_DE_TU_REPOSITORIO]

4. Sube la Carpeta (Push)
Este es el paso final donde envías todo el contenido a GitHub:
git push -u origin main
La opción -u origin main establece que tu rama local main debe seguir a la rama remota main, facilitando futuros git push o git pull.