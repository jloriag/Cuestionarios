DROP TABLE IF EXISTS preguntas;

DROP TABLE IF EXISTS respuestas;

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
INSERT INTO preguntas (pregunta) VALUES ('La prueba de software ¿qué son?');
INSERT INTO respuestas (pregunta_id, respuesta) VALUES (LAST_INSERT_ID(), 'Podemos de decir que la pruebas de software <b>verifican</b> si se cumplen con los requisitos esperados, ademas nos aseguramos que el software esta con la menor cantidad de bugs');

-- Insertar pregunta y respuesta 2
INSERT INTO preguntas (pregunta) VALUES ('¿Por qué es importante la prueba de software?');
INSERT INTO respuestas (pregunta_id, respuesta) VALUES (LAST_INSERT_ID(), 'Las pruebas de software son importantes por que podemos identificar temprano los errores, esto hace que el software sea confiable y logramos una gran satisfacció del cliente');

-- Insertar pregunta y respuesta 3
INSERT INTO preguntas (pregunta) VALUES ('¿Cuáles son los beneficios de las pruebas de software?');
INSERT INTO respuestas (pregunta_id, respuesta) VALUES (LAST_INSERT_ID(), 'Los beneficios de las pruebas de software hacen que nuestro product sea rentable, ya que ahorramos dinero en aspectos como:  La seguridad,  la calidad del software y satisfacción del cliente');

-- Insertar pregunta y respuesta 4
INSERT INTO preguntas (pregunta) VALUES ('¿Cuáles son los tipos de pruebas de software?');
INSERT INTO respuestas (pregunta_id, respuesta) VALUES (LAST_INSERT_ID(), 'Los tipos de pruebas de software se dividen en pruebas funcionales, pruebas no funcionales y pruebas de mantenimiento');

-- Insertar pregunta y respuesta 5
INSERT INTO preguntas (pregunta) VALUES ('¿Qué son las pruebas funcionales?');
INSERT INTO respuestas (pregunta_id, respuesta) VALUES (LAST_INSERT_ID(), 'Las pruebas funcionales responden a la pregunta: ¿El software cumple con lo esperado? Esto en base a los requerimientos');


# 1 No es posible realizar pruebas exhaustivas * Necesitamos una cantidad optima de pruebas
# 2 Agrupación de defectos
Modulo reporte 20% defectos
# 3 Paradoja de los pesticidas Mejorar las pruebas
* Las pruebas que son reptitivas automatizarlas
# 4 Las pruebas muestran la presencia de defectos * Sus pruebas estan enfocadas a detectar defectos
# 5 Ausencia de Error - falacia
* Libre de errores al 99% pero no se pueda usar