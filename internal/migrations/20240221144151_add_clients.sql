-- 20240221144151 - add_clients migration

CREATE TABLE IF NOT EXISTS clients (
    "id" UUID PRIMARY KEY,
    "name" TEXT NOT NULL,
    "tutor_id" UUID NOT NULL,
    "rate_per_hour" NUMERIC NOT NULL,


    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
)