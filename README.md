# <h1 align=center> **PROYECTO INDIVIDUAL** </h1>

# <h1 align=center>**`Data Engineering` :construction_worker:**</h1>

## **Introducción :paperclip:**

En esta ocasión, les mostraré el proyecto en el que estuve trabajando, donde me situé en el rol de una ***Data Engineer***, poniendo como foco central el proceso de `ETL` que es un tipo de integración de datos que hace referencia a tres pasos (extraer, transformar, cargar). Por otro lado también puntualizaré en la elaboración y creación de la base de datos, donde se alojarán los datos, una vez terminadas las transformaciones y limpieza.

## **Objetivo :paperclip:**
El objetivo del proyecto fue procesar y analizar datos de dos plataformas de streaming, Disney y Netflix, para luego utilizarlos en un modelo de motor de recomendaciones. 

## **Desarrollo :paperclip:**
- Comencé descargando dos archivos .CSV desde un bucket S3 y comencé con el proceso de ETL.

- Para la extracción, utilicé Python con la librería Pandas.

- Luego realicé las transformaciones necesarias para limpiar los datos, identificación de datos nulos, duplicados y corrección de datos corruptos.

- Una vez finalizado este proceso, utilicé la interfaz de PostgreSQL de pgAdmin para diseñar un DER (diagrama entidad-relación) de la base de datos. Decidí utilizar un modelo estrella combinado con un copo de nieve, donde la tabla de hecho se llama ***Program*** y el resto de las tablas son de dimensiones con sus respectivas FK y PK.

- Luego, cargué los datos a la base de datos desde Python utilizando la librería SQLAlchemy, y así finalicé el proceso de ETL. Los datos se encuentran listos para su uso en Business Intelligence, ya sea a través de un dashboard, consultas a la base de datos o para el desarrollo de un modelo de Machine Learning.

## **Conclusión :paperclip:**

Es importante destacar la relevancia de la ingeniería de datos para poder lograr un analisis profundo de la información y la creación de modelos de machine learning confiables y precisos.
En este caso, se sugiere la implementación de un modelo de motor de recomendaciones basado en contenidos, aunque se recomienda incorporar información adicional, como el score de puntuaciones de los usuarios, para mejorar la precisión del modelo.

## **Stack tecnológico :paperclip:**

- Python <a href="https://emoji.gg/emoji/9794-python"><img src="https://cdn3.emoji.gg/emojis/9794-python.png" width="20px" height="20px" alt="python"></a> 

- Pandas <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/pandas/pandas-original.svg" width="20px" height="20px" />

- SQLAlchemy <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/sqlalchemy/sqlalchemy-original.svg" width="30px" height="30px" /> 

- PostgreSQL <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-original.svg" width="20px" height="20px" />
