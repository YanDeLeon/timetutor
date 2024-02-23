-- 20240221143316 - add_classes migration

CREATE TABLE IF NOT EXISTS classes (
    "id" UUID PRIMARY KEY,
    "date" TIMESTAMP NOT NULL,
    "start_time" TIMESTAMP NOT NULL,
    "duration" INTEGER NOT NULL,
    "tutor_id" UUID NOT NULL,
    "client_id" UUID NOT NULL,

    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
)