# Architecture

> Status: **stub**. Full document tracked in [issue #3](https://github.com/KinTogether/ProjectKin/issues/3) and the journey state machine in [issue #6](https://github.com/KinTogether/ProjectKin/issues/6).

## High-level components

```
+-------------------+         +--------------------+         +-------------------+
|   Flutter app     | <-----> |  Supabase backend  | <-----> |   PostgreSQL      |
|  (Android / iOS)  |  HTTPS  |  (auth, RLS, edge) |   SQL   |  (RLS-protected)  |
+-------------------+         +--------------------+         +-------------------+
         |                            |
         |                            +-- Storage (encrypted blobs)
         |                            +-- Realtime (journey updates)
         |                            +-- Edge functions (matching engine)
         |
         +-- Local-only: keys, raw media, draft submissions
```

## Principles

- **Security-first.** Every component assumes the next one is hostile.
- **Minimum data on the server.** If it does not need to leave the device, it does not.
- **Self-hostable.** No SaaS lock-in. A small team must be able to run their own instance.
- **Auditable.** Every transition affecting another user is enforced server-side and logged for the journey owner.

## To be filled in

- Component diagram (mermaid)
- Journey state machine diagram
- Matching engine sequence
- Media flow and client-side encryption
- Realtime model
- Self-hosting topology
- Data retention policy
