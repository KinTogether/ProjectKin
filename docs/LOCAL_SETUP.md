# Local development setup

> Status: **stub**. Full guide tracked in [issue #7](https://github.com/KinTogether/ProjectKin/issues/7) (Supabase) and [#12](https://github.com/KinTogether/ProjectKin/issues/12) (Flutter).

## Prerequisites

- **Docker** and **Docker Compose** (for the local Supabase stack)
- **Flutter** (stable channel) -- for the mobile app
- **Make** (optional but convenient)
- **Git**

## First-time setup

```bash
# 1. Clone
git clone https://github.com/KinTogether/ProjectKin.git
cd ProjectKin

# 2. Create your local env file
make bootstrap         # copies .env.example -> .env

# 3. Edit .env and fill in the placeholders
$EDITOR .env

# 4. Start the local Supabase stack (once docker-compose.yml lands)
make up

# 5. Apply database migrations and seed data
make db-migrate
make db-seed

# 6. Run the mobile app
cd mobile && flutter pub get
make mobile-run
```

## Useful commands

Run `make help` for the full list.

| Command           | Purpose                              |
| ----------------- | ------------------------------------ |
| `make up`         | Start local Supabase stack           |
| `make down`       | Stop local stack                     |
| `make db-reset`   | Drop & recreate local DB             |
| `make mobile-run` | Run the Flutter app                  |
| `make test`       | Run all tests                        |
| `make lint`       | Format + analyze                     |

## Troubleshooting

This section will grow as the setup matures. For now, please open an issue with the `infrastructure` label if you get stuck.
