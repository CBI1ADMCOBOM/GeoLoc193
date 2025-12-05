-- 1. Criar usuário
CREATE USER geoloc_user_postgres WITH PASSWORD 'tWYkjxz2FCVVjEnKZIXUcKCVgPwFMBYp';

-- 2. Criar banco de dados
CREATE DATABASE geoloc_bombeiros WITH OWNER = geoloc_user_postgres;

-- 3. Conectar ao novo banco
\c geoloc_bombeiros

-- 4. Conceder privilégios completos
GRANT ALL PRIVILEGES ON DATABASE geoloc_bombeiros TO geoloc_user_postgres;

-- 5. Conceder privilégios no schema public
GRANT USAGE ON SCHEMA public TO geoloc_user_postgres;
GRANT CREATE ON SCHEMA public TO geoloc_user_postgres;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO geoloc_user_postgres;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO geoloc_user_postgres;
GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public TO geoloc_user_postgres;

-- 6. Para objetos futuros (auto-privilégios)
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO geoloc_user_postgres;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO geoloc_user_postgres;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON FUNCTIONS TO geoloc_user_postgres;

-- 7. Extensões úteis
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- 8. Voltar para postgres
\c postgres