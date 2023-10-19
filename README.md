# Configuración de Base de Datos de Películas

Este repositorio contiene scripts SQL y datos de ejemplo para configurar una base de datos de películas con MySQL.

## Pasos de Configuración

### 1. Crear Tablas y Datos de Ejemplo

1. Ejecuta el script `create_tables.sql` para crear las tablas necesarias en tu base de datos.

   ```bash
   mysql -u tu_usuario -p tu_contrasena < create_tables.sql
Ejecuta el script insert_data.sql para insertar datos de ejemplo en la base de datos```bash

mysql -u tu_usuario -p tu_contrasena < insert_data.sql
1. Consultas SQL
Obtener películas por género:

sql

SELECT c.titulo, g.nombre AS genero
FROM catalogo c
JOIN generos g ON c.generoid = g.id
WHERE g.nombre = 'Acción';
Obtener películas por tags:

sql
Copy code
SELECT c.titulo, GROUP_CONCAT(t.nombre) AS tags
FROM catalogo c
JOIN tags t ON FIND_IN_SET(t.id, c.tagsid)
WHERE t.nombre IN ('Aventura', 'Ciencia Ficción') OR t.nombre IN ('Aventura', 'Fantasía')
GROUP BY c.titulo;
Estructura de Carpetas
scripts/: Contiene los scripts SQL.
data/: Contiene archivos JSON con datos de ejemplo.
Notas
Asegúrate de tener MySQL instalado y accesible desde la línea de comandos.
Reemplaza tu_usuario y tu_contrasena con tu nombre de usuario y contraseña de MySQL.
¡Disfruta explorando tu base de datos de películas!




