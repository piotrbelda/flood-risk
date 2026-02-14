/* creating necessary db schemas */
CREATE SCHEMA gov;
CREATE SCHEMA airflow;

/* creating superuser specifically for airflow-related structures*/
CREATE USER airflow WITH PASSWORD 'airflow' SUPERUSER;
ALTER SCHEMA airflow OWNER TO airflow;
