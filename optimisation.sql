CREATE INDEX client_id ON clients (id);
CREATE UNIQUE INDEX client_name ON clients (name DESC, surname DESC);