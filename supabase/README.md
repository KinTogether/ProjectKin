# Supabase

This folder will hold the self-hosted Supabase configuration, SQL migrations, and seed data.

Planned layout (tracked in [issue #4](https://github.com/KinTogether/ProjectKin/issues/4), [#5](https://github.com/KinTogether/ProjectKin/issues/5), [#7](https://github.com/KinTogether/ProjectKin/issues/7)):

```
supabase/
  config.toml          # Supabase project config
  migrations/          # SQL migration files (timestamped)
  seed.sql             # Local development seed data
  policies/            # Documented RLS policies (mirrors migrations)
  functions/           # Edge functions (e.g. matching engine)
```

Migrations are append-only. Never edit a committed migration -- write a new one.
