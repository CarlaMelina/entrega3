


--primera consulta

SELECT c.titulo, g.nombre AS genero
FROM catalogo c
JOIN generos g ON c.generoid = g.id
WHERE g.nombre = 'Acción';

--segunda
SELECT c.titulo, GROUP_CONCAT(t.nombre) AS tags
FROM catalogo c
JOIN tags t ON FIND_IN_SET(t.id, c.tagsid)
WHERE t.nombre IN ('Aventura', 'Ciencia Ficción') OR t.nombre IN ('Aventura', 'Fantasía')
GROUP BY c.titulo;