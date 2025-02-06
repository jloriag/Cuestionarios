DROP TABLE IF EXISTS respuestas;

DROP TABLE IF EXISTS preguntas;


CREATE TABLE preguntas (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Para MySQL
    -- id SERIAL PRIMARY KEY, -- Para PostgreSQL
    pregunta TEXT NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE respuestas (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Para MySQL
    -- id SERIAL PRIMARY KEY, -- Para PostgreSQL
    pregunta_id INT NOT NULL,
    respuesta TEXT NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (pregunta_id) REFERENCES preguntas(id) ON DELETE CASCADE
);

-- Insertar pregunta y respuesta 1
INSERT INTO preguntas (pregunta) VALUES ('¿Qué son las pruebas de software?');
INSERT INTO respuestas (pregunta_id, respuesta) VALUES (LAST_INSERT_ID(), 'Podemos decir que las pruebas de software <b>verifican</b> si se cumplen con los requisitos esperados. Además, nos aseguramos de que el software tenga la menor cantidad de bugs.');

-- Insertar pregunta y respuesta 2
INSERT INTO preguntas (pregunta) VALUES ('¿Por qué es importante la prueba de software?');
INSERT INTO respuestas (pregunta_id, respuesta) VALUES (LAST_INSERT_ID(), 'Las pruebas de software son importantes porque podemos identificar temprano los errores. Esto hace que el software sea confiable y logramos una gran satisfacción del cliente.');

-- Insertar pregunta y respuesta 3
INSERT INTO preguntas (pregunta) VALUES ('¿Cuáles son los beneficios de las pruebas de software?');
INSERT INTO respuestas (pregunta_id, respuesta) VALUES (LAST_INSERT_ID(), 'Los beneficios de las pruebas de software hacen que nuestro producto sea rentable, ya que ahorramos dinero en aspectos como: la seguridad, la calidad del software y la satisfacción del cliente.');

-- Insertar pregunta y respuesta 4
INSERT INTO preguntas (pregunta) VALUES ('¿Cuáles son los tipos de pruebas de software?');
INSERT INTO respuestas (pregunta_id, respuesta) VALUES (LAST_INSERT_ID(), 'Los tipos de pruebas de software se dividen en pruebas funcionales, pruebas no funcionales y pruebas de mantenimiento.');

-- Insertar pregunta y respuesta 5
INSERT INTO preguntas (pregunta) VALUES ('¿Qué son las pruebas funcionales?');
INSERT INTO respuestas (pregunta_id, respuesta) VALUES (LAST_INSERT_ID(), 'Las pruebas funcionales responden a la pregunta: ¿El software cumple con lo esperado? Esto se evalúa en base a los requerimientos.');

-- Insertar pregunta y respuesta 6
INSERT INTO preguntas (pregunta) VALUES ('¿Cuáles son los siete principios de las pruebas de software?');
INSERT INTO respuestas (pregunta_id, respuesta) VALUES (LAST_INSERT_ID(), 
'1. El primer principio es que no es posible realizar pruebas exhaustivas, ya que no se pueden probar todos los escenarios posibles. </br>
2. El segundo principio es la agrupación por defectos, ya que dice que la mayoría de los defectos en un software tienden a concentrarse en unas pocas áreas específicas. </br>
3. El tercer principio es la paradoja de los pesticidas: si repetimos siempre las mismas pruebas, con el tiempo, estas dejan de ser efectivas para encontrar nuevos errores.');


# 1 No es posible realizar pruebas exhaustivas * Necesitamos una cantidad optima de pruebas
# 2 Agrupación de defectos
Modulo reporte 20% defectos
# 3 Paradoja de los pesticidas Mejorar las pruebas
* Las pruebas que son reptitivas automatizarlas
# 4 Las pruebas muestran la presencia de defectos * Sus pruebas estan enfocadas a detectar defectos
# 5 Ausencia de Error - falacia
* Libre de errores al 99% pero no se pueda usar