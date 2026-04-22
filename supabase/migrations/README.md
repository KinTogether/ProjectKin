# Migrations

SQL migrations live here, named `YYYYMMDDHHMMSS_short_description.sql`.

Rules:

- Append-only. Never edit a committed migration.
- Every table created here must have an RLS policy in the same migration (or the next one).
- Test locally with `make db-reset && make db-migrate` before opening a PR.
