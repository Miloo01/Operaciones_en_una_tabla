--PARTE 1--

--Ingresar a terminal y colocar---
psql

-- Crear base de datos posts---
CREATE DATABASE posts;

-- Ir a base de datos--
\c posts

-- Crear tabla post, con atributos id, nombres de usuario,fecha de creación, contenido, descripción--
-- Establecer tipo de dato para cada atributo--
CREATE TABLE post (id INT, nombre_de_usuario VARCHAR(25), fecha_de_creación DATE, contenido VARCHAR(25), descripción VARCHAR(255) );

--Ver tabla--
SELECt * FROM post;

--Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos"
INSERT INTO post(id, nombre_de_usuario, fecha_de_creación, contenido, descripción) VALUES('1','Pamela', '2020-08-31', 'joven', 'linda');
INSERT INTO post(id, nombre_de_usuario, fecha_de_creación, contenido, descripción) VALUES('2','Carlos', '2020-09-01', 'joven', 'usa lentes');
-- Preguntar como se puede dejar vacio el valor de un atributo y que quede en posición correspondiente--

--Ver tabla--
SELECt * FROM post;

--Modificar la tabla post, agregando la columna título --
ALTER TABLE post ADD título VARCHAR(25);

--Agregar título a las publicaciones ya ingresadas--
UPDATE post SET título='título' WHERE nombre_de_usuario='Pamela';
UPDATE post SET título='título' WHERE nombre_de_usuario='Carlos';

--Insertar 2 post para el usuario "Pedro"--
INSERT INTO post(id, nombre_de_usuario, fecha_de_creación, contenido, descripción) VALUES('3','Pedro', '2020-09-04', 'viejo', 'calvo');

--Eliminar el post de Carlos descripción--
DELETE FROM post WHERE descripción= 'usa lentes'
; --Preguntar como eliminar solo el post de descripcion sin borrar toda la fila

-- Ingresar un nuevo post para el usuario "Carlos" --
INSERT INTO post(id, nombre_de_usuario) VALUES('2','Carlos');

--PARTE 2--

-- usé ALTER TABLE post ADD PRIMARY KEY (ID); para establecer como primary key tabla post, y luego asociarla con tabla comentarios llave foranea, no resultó dou!

--Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación,contenido, que se relacione con la tabla posts--

CREATE TABLE comentarios(id INT, fecha DATE, hora_de_creación VARCHAR(25), contenido VARCHAR(25) ); 


--Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos" --
INSERT INTO post(id, nombre_de_usuario, fecha_de_creación, contenido, descripción) VALUES('2','Carlos','2020-09-17', 'joven', 'dentista'); -- problema arroja null , consultar
UPDATE post SET título='profesional' WHERE nombre_de_usuario='Pamela';
UPDATE post SET descripción='alta y guapa' WHERE nombre_de_usuario='Pamela';

--Crear un nuevo post para "Margarita" --
--Ingresar 5 comentarios para el post de Margarita.--
INSERT INTO post(id, nombre_de_usuario, fecha_de_creación, contenido, descripción,título) VALUES('4','Margarita', '2020-09-20', 'joven adulto', 'profesional', 'arquitecta');












