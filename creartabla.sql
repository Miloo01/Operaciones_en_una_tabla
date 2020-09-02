-- para traer el valor maximo
SELECT nombre FROM modelos WHERE cilindrada=(SELECT MAX(cilindrada) FROM modelos);

-- para ordenar alfabeticamente
SELECT nombre FROM marcas ORDER BY(nombre);

--traer todas las marcas y todos los modelos que tengo --
