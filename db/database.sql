DROP DATABASE if exists portafolio_grn;
CREATE DATABASE if not exists portafolio_grn;

USE portafolio_grn;

-- EDUCATION
DROP TABLE IF EXISTS education;
CREATE TABLE education (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) DEFAULT NULL,
    dates VARCHAR(30) DEFAULT NULL,
    title VARCHAR(100) DEFAULT NULL,
    image VARCHAR(30) DEFAULT NULL,
    link VARCHAR(50) DEFAULT NULL,
    PRIMARY KEY(id)
);

INSERT INTO education VALUES
    (
		1,
        "Universidad Nacional de San Martín",
        "06/2014 - 02/2020",
        "Técnico Universitario en Programación Informática",
        "unsam.png",
        "https://unsam.edu.ar/"
    ),(
		2,
        "E.T. 28 \"República Francesa\"",
        "03/2002 - 12/2008",
        "Técnico en Electrónica",
        "et28.png",
        "https://www.et28.net/"
    );

SELECT * FROM education;

-- JOBS
DROP TABLE IF EXISTS jobs;
CREATE TABLE jobs (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) DEFAULT NULL,
    job VARCHAR(100) DEFAULT NULL,
    dates VARCHAR(30) DEFAULT NULL,
    tasks VARCHAR(3000) DEFAULT NULL,
    image VARCHAR(30) DEFAULT NULL,
    link VARCHAR(50) DEFAULT NULL,
    PRIMARY KEY(id)
);

INSERT INTO jobs VALUES
    (
		1,
        "Universidad Nacional de San Martin",
        "Auxiliar Docente",
        "09/2021 - actualidad",
        "Laboratorio de Computación II: Consultoría a estudiantes, dictado de clases y corrección de parciales y trabajos prácticos. Seminario de programación Concurrente, Paralela y Distribuida: Corrección de parciales y tabajos prácticos.",
        "unsam.png",
        "https://www.unsam.edu.ar/"
    ),(
        2,
        "Prosumia - Smart Consumer S.A.",
        "Desarrollador Salesforce",
        "08/2019 - 12/2022",
        "Desarrollo de comunidades usando Aura Components, Lightning Web Components, APEX (Java), Javascript, HTML, CSS, SLDS, Bootstrap, Visualforce Pages. Creación y configuración de usuarios customer y grupos públicos para dichas comunidades.",
        "prosumia.png",
        "https://prosumia.la/"
    ),(
        3,
        "Centro de Investigación y Desarrollo en Informática - UNSAM",
        "Desarrollador Fullstack",
        "06/2018 - 02/2020",
        "Desarrollo de sitio web para Jornadas Arte Electrónico 2018 usando Wordpress, PGP, W3CSS. Pasantía en Visitas a Escuelas Sadosky usando Alice, capacitando a estudiantes de secundaria para hacer un juego/animación desde cero en 8hs de capacitación. Trabajo interno para la rectoría usando Laravel y MySQL.",
        "cidi-footer.png",
        "http://www.unsam.edu.ar/cidi/"
    ),(
        4,
        "Emerix - Soft Office S.A.",
        "Analista programador y funcional",
        "12/2018 - 09/2019",
        "Analista funcional en Mesa de Ayuda con conocimientos de desarrollo. Desarrollos para clientes usando ASP, Visual FoxPro 6, tablas DBF. Analista onsite MSSQL en varios clientes. Desarrollador y soporte BI con SSIS en cliente.",
        "emerix.png",
        "https://www.emerix.net/"
    ),(
        5,
        "We Plan S.A.",
        "Consultor ETL",
        "10/2018 - 12/2018",
        "Desarrollo con Pentaho, Batch Scripting y Java. ETL y creación de vistas en MSSQL. Documentación del proceso, de tablas y de manejo de errores.",
        "weplan.png",
        "https://www.weplan-latam.com/"
    ),(
        6,
        "Emerix - Soft Office S.A.",
        "Analista Programador",
        "11/2016 - 02/2018",
        "Migración de base de datos, DB2 a MSSQL usando SSIS (DTSx). Desarrollo y modificación de DLL's y páginas para clientes usando ASP.NET, Visual Basic.NET y VB6.0. Creación y modificación de Stored Procedures con SQL Server 2008, 2012, 2014 y 2016. Capacitación en Pentaho y VB6.0. Desarrollo, implementación y documentación técnica de Data Warehouse on site para la creación de vistas con MSSQL.",
        "emerix.png",
        "https://www.emerix.net/"
    );

SELECT * FROM jobs;


-- PROFILE
DROP TABLE IF EXISTS profile;
CREATE TABLE profile (
    id INT NOT NULL AUTO_INCREMENT,
    fullname VARCHAR(100) DEFAULT NULL,
    city VARCHAR(100) DEFAULT NULL,
    image VARCHAR(30) DEFAULT NULL,
    title VARCHAR(50) DEFAULT NULL,
    birthday VARCHAR(30) DEFAULT NULL,
    PRIMARY KEY(id)
);

INSERT INTO profile VALUES (
    1,
    "José Ernesto Gerstner Javid",
    "José León Suárez, Buenos Aires, Argentina",
    "miFoto.jpg",
    "Desarrollador Fullstack",
    "02/07/1988"
);

SELECT * FROM profile;

DROP TABLE IF EXISTS social_profile;
CREATE TABLE social_profile (
    id INT NOT NULL AUTO_INCREMENT,
    profile_id INT,
    name VARCHAR(100) DEFAULT NULL,
    link VARCHAR(100) DEFAULT NULL,
    image VARCHAR(30) DEFAULT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (profile_id)
      REFERENCES profile(id)
);

INSERT INTO social_profile VALUES 
    (
        1,
        1,
        "LinkedIn",
        "https://www.linkedin.com/in/jos%C3%A9-ernesto-gerstner-javid/",
        "linkedin.png"
    ),(
        2,
        1,
        "Github",
        "https://github.com/josegerstner",
        "github.png"
    ),(
        3,
        1,
        "Mandame un email",
        "mailto:joseernestogerstnerjavid@gmail.com",
        "email.png"
    );


-- PROJECTS
DROP TABLE IF EXISTS projects;
CREATE TABLE projects (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) DEFAULT NULL,
    technology VARCHAR(100) DEFAULT NULL,
    image VARCHAR(30) DEFAULT NULL,
    link VARCHAR(100) DEFAULT NULL,
    github VARCHAR(100) DEFAULT NULL,
    PRIMARY KEY(id)
);

INSERT INTO projects VALUES
    (
        1,
        "Pokédex",
        "React js",
        "pokedex.png",
        "https://pokedex-b3552.web.app/",
        "no disponible"
    ),(
        2,
        "Scaloneta Museum",
        "React js",
        "scaloneta.png",
        "https://scaloneta-museum.web.app/",
        "https://github.com/josegerstner/scaloneta-museum"
    );
        

