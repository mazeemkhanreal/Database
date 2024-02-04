-- init.sql

-- This is a simple script in which standarization can be attempted by defining in this sql script.

CREATE ROLE userone NOSUPERUSER NOCREATEDB NOCREATEROLE NOINHERIT LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'userone';
GRANT ALL ON SCHEMA public TO userone;
