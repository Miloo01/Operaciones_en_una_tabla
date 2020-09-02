-- psql entrar---

---Crear Base de datos posts---
CREATE DATABASE posts;

--\c posts--

--Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido,descripción
CREATE TABLE post(id SERIAL PRIMARY KEY, nombre_de_usuario VARCHAR(25),fecha DATE, contenido VARCHAR(100), descripcion VARCHAR(25));

--Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos" --
INSERT INTO post(nombre_de_usuario, fecha, contenido, descripcion) VALUES('Pamela',   
posts(# '2020-09-01', 'estoy flipando','uta que soy rica');
INSERT INTO post(nombre_de_usuario, fecha, contenido, descripcion) VALUES('Carlos',   
'2020-09-02', 'ostias','profesional');
INSERT INTO post(nombre_de_usuario, fecha, contenido, descripcion) VALUES('Pamela',   
'2020-09-04', 'coño','española');

--Modificar la tabla post, agregando la columna título 
ALTER TABLE post ADD COLUMN titulo VARCHAR(25);

--Agregar título a las publicaciones ya ingresadas
UPDATE post SET titulo= 'este es un titulo' WHERE id= 1;
UPDATE post SET titulo= 'esta es una española' WHERE id= 3;
UPDATE post SET titulo= 'este es un nacional'WHERE id= 2; 

--Insertar 2 post para el usuario "Pedro"--
INSERT INTO post(nombre_de_usuario, fecha, contenido, descripcion,titulo) VALUES('Pedro',   
'2020-09-06', 'upsie','chileno','rut');
INSERT INTO post(nombre_de_usuario, fecha, contenido, descripcion,titulo) VALUES('Pedro',   
'2020-09-06', 'upsie','chileno','rut');

--Eliminar el post de Carlos--
DELETE FROM post WHERE nombre_de_usuario= 'Carlos'

--Ingresar un nuevo post para el usuario "Carlos"--
INSERT INTO post(nombre_de_usuario, fecha, contenido, descripcion,titulo) VALUES('Carlos',   
'2020-09-14', 'extranjero','peruano','whatever');


--PARTE 2 ---

--Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación,contenido, que se relacione con la tabla posts
CREATE TABLE comentarios(id SERIAL PRIMARY KEY, fecha_y_hora_de_creacion TIMESTAMP, contenido VARCHAR(25))
CREATE TABLE comentarios(id SERIAL PRIMARY KEY, fecha_y_hora_de_creacion TIMESTAMP, contenido VARCHAR(25), post_id INT, FOREIGN KEY(post_id) REFERENCES post(id));
ALTER TABLE comentarios ALTER COLUMN post_id SET NOT NULL;

--Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos" --

INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-05-21 11:30:20','esto es','1');
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-05-22 11:30:21','esto ya es de','3');
-- CARLOS 
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-05-22 11:30:22','esto e','6');
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-05-22 11:30:22','eASD','6');
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-05-22 11:30:22','ca2','6');
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-05-22 11:30:22','ca3','6');

--Crear un nuevo post para "Margarita"--
INSERT INTO post(nombre_de_usuario, fecha, contenido, descripcion,titulo) VALUES('Margarita','2020-10-12','doup','chilena','ouch');
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-05-22 11:30:23','marg','7');

--Ingresar 5 comentarios para el post de Margarita.-
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-05-22 11:30:23','fas','7');
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-05-22 11:30:23','fas','7');
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-05-22 11:30:23','fas','7');
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-05-22 11:30:23','holycamolies','7');
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-05-22 11:30:23','seeyoulatermirson','7');






