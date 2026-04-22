# Project Kin

> *We are not data points. We are not engagement metrics. We are humans, and we deserve better than an app that profits from our loneliness.*

[![License: MIT](https://img.shields.io/badge/License-MIT-black.svg)](LICENSE)
[![Status: Pre-alpha](https://img.shields.io/badge/Status-Pre--alpha-orange.svg)]()
[![Contributors Welcome](https://img.shields.io/badge/Contributors-Welcome-brightgreen.svg)](CONTRIBUTING.md)
[![Stack: Flutter + Supabase](https://img.shields.io/badge/Stack-Flutter%20%2B%20Supabase-blue.svg)]()

---

## What is Kin?

Kin is an open source human connection app. Not a marketplace. Not a dopamine machine. A guided journey toward real friendship, and sometimes something more.

Kin matches two people anonymously then walks them through a **science-backed series of shared challenges**: real-world activities, creative prompts, and lived experiences that build genuine connection before any identity reveal. There is no swiping. No browsing. No inbox full of strangers. One journey at a time, moving at a human pace.

When two people are ready to meet, Kin steps aside. It does not own the relationship. It just starts it.

---

## Why Kin exists

Every major dating app is designed to keep you single long enough to keep paying. Premium matches, unlimited likes, and instant visibility are all built on one model: **the longer you are alone, the more you spend.**

Kin is built on the opposite premise. Our only measure of success is how fast we get you off the app.

---

## Core principles

| Principle | What it means |
|---|---|
| **One account per human** | Phone verification and device binding. No fake personas, no spam accounts. |
| **No chat by default** | Kin does not host a messaging platform. When ready, users exchange real contact info and move to Signal, WhatsApp, or whatever they trust. Kin steps away. |
| **Friendship first** | By default, Kin is for any human connection. Romance is opt-in, behind a deliberate wall, for safety. |
| **Gradual identity reveal** | You meet a personality before a face. Identity unlocks incrementally with mutual consent at every step. |
| **No face reveal inside the app** | Ever. Faces happen in real life, on the user's terms. Kin never holds or transmits face photos. |
| **Quiet exit, always** | Either person can leave a journey at any time. No notification is sent. No guilt. No pressure. |
| **Soft requirements, not walls** | Preferences have three states: Yes / Open to explore / Not a priority. The app resists very narrow filtering, because the perfect person is someone you build together, not find perfect. |
| **No monetization of loneliness** | No premium matching, no pay-to-be-seen. Kin is funded by donations and venue partnerships, never by your loneliness. |

---

## How the journey works

Two people are matched anonymously based on mutual preference overlap. They then move through a series of **challenges**: not tasks, not commitments, but real lived moments they bring back to share.

```
Soul challenges      ->  Mind challenges      ->  World challenges     ->  Reveal
--------------------------------------------------------------------------------
Anonymous prompts        Shared experiences       Real-world activities    Gradual unlock
No identity at all       Same input, different    Hike. Cook. Draw.        Voice -> silhouette
                         inner worlds             First threads form        -> name -> meeting
```

**Examples of challenges:**
- Go somewhere in your city you have never been. Take one photo of something small inside. No faces.
- Watch the same short film. Share your favorite scene in one sentence.
- Draw something using the other person's favorite color.
- Make a 3-song playlist for them based on what you have learned so far.
- Record 15 seconds of ambient sound from wherever you are right now.

The number and sequence of stages is grounded in psychological research on intimacy formation, not arbitrary design. Contributions from researchers and psychologists are actively welcomed.

---

## The garden

While waiting for a match, users exist in a **personal garden space**: a cozy, avatar-driven world where waiting is not a loading screen but a state of existing.

When a match is found, their avatar quietly appears across the garden. No ping. No popup. They are just there.

As the journey progresses, a **shared garden plot** grows between the two users, shaped by the challenges they complete together. When a journey ends, the shared garden remains as a memory.

---

## Tech stack

| Layer | Choice | Reason |
|---|---|---|
| Mobile | Flutter | Single codebase, no JS bridge attack surface, strong native security |
| Backend | Supabase (self-hosted) | Row-level security, open source, auditable, JSONB for flexible preferences |
| Auth | Passwordless OTP | No password database means no password breach |
| Encryption | Client-side | Media encrypted before upload. Server never sees plaintext. |
| Identity anti-spam | Phone and device binding | One real human, one account |
| Infrastructure | Fly.io + Cloudflare | Simple, affordable, DDoS protection |
| Preferences | PostgreSQL JSONB | Schema-free, flexible, no predefined field lock-in |

**Security is the foundation, not a feature.** Our users share vulnerable moments. A breach here is not a data problem. It is a human harm problem. Every contribution is reviewed with this in mind.

---

## Roadmap

### Phase 0 -- Foundation *(current)*
- [ ] Finalize journey stage design with psychology research backing
- [ ] Core data models: users, preferences (JSONB), journeys, challenges, stages
- [ ] Event-driven architecture for journey state machine
- [ ] Supabase self-hosted setup with row-level security policies
- [ ] Phone auth and device binding (anti-spam)
- [ ] Project governance: contribution guidelines, code of conduct, issue templates

### Phase 1 -- Core journey
- [ ] Anonymous matching engine (mutual preference overlap)
- [ ] Challenge library v1 (Soul and Mind stages)
- [ ] Journey state machine (stage progression, both-complete gates)
- [ ] Avatar builder v1 (base customization)
- [ ] Garden space (personal, waiting state)
- [ ] Quiet exit mechanic

### Phase 2 -- The world and reveal
- [ ] World stage challenges (real-world activities, photo/audio submissions)
- [ ] Reveal stage (voice -> silhouette -> name, mutual consent gates)
- [ ] Opt-in chat (mutual consent only, at reveal stage)
- [ ] Contact exchange mechanic (users leave Kin for real apps)
- [ ] Shared garden plot (grows with journey progress)

### Phase 3 -- Personality and safety
- [ ] AI-powered requirement reaction engine (comedic, warm feedback on narrow preferences)
- [ ] Preference spectrum UI (connection type slider: friendship to romance)
- [ ] Religion and values preference layer
- [ ] Three-tier requirement system (Yes / Open to explore / Not a priority)
- [ ] Safety reporting and moderation tools

### Phase 4 -- Community and growth
- [ ] Community challenge contributions (PR-based, reviewed for ethics)
- [ ] Venue partnership integration (meeting place suggestions at journey end)
- [ ] Donation infrastructure (opt-in, post-journey)
- [ ] Localization (Arabic, French, English, Spanish as first targets)
- [ ] Accessibility audit

### Phase 5 -- Open ecosystem
- [ ] Public API for research access (anonymized, opt-in)
- [ ] Self-hosting documentation (run your own Kin instance)
- [ ] Community governance model
- [ ] Grant applications (Mozilla, NLnet, Wellcome Trust)

---

## Contributing

We welcome contributors who share the mission. Before contributing, read `CONTRIBUTING.md` in full.

**We are actively looking for:**

| Role | What you would work on |
|---|---|
| Flutter developer | Journey UI, challenge mechanics, garden space |
| UI / UX designer | Design system, no dark patterns, warm and human aesthetic |
| Psychologist / researcher | Journey stage design grounded in intimacy science |
| Security engineer | Encryption, auth, data handling audit |
| Backend engineer | Supabase, matching algorithm, state machine |
| Localization | Arabic, French, Spanish, and beyond |

**Good first issues** are labeled in the issue tracker. Start there.

---

## Contribution rules

1. **Read the philosophy first.** Every technical decision in Kin flows from the core principles above. If a feature conflicts with them, it does not ship, regardless of how technically clever it is.

2. **No dark patterns. Ever.** No streak mechanics, no artificial urgency, no notification manipulation, no engagement optimization that conflicts with user wellbeing.

3. **Security is everyone's responsibility.** Any code touching user data, auth, media handling, or identity must be reviewed by at least two contributors before merge.

4. **Challenges must be reviewed for ethics.** New challenge contributions go through a separate review: is this safe, is it equal for both participants, does it reveal something true without exploiting vulnerability?

5. **One PR, one concern.** Keep pull requests focused. Large refactors need discussion in an issue first.

6. **Write for the next person.** Document your decisions. Future contributors deserve to understand why, not just what.

7. **Disagreements happen in the open.** Use issues and discussions, not private channels. This is a public project with a public soul.

---

## AI contribution guidelines

AI tools (GitHub Copilot, Claude, ChatGPT, and similar) are permitted and welcome in contributions. The following rules apply without exception.

**What is allowed:**
- Using AI to generate boilerplate, write tests, suggest implementations, or draft documentation
- AI-assisted code review and refactoring
- Using AI to translate or improve localization strings

**What is not allowed:**
- Submitting AI-generated code without reading, understanding, and taking full responsibility for it
- Using AI to generate challenge content without human review for safety and ethics
- AI-generated security-sensitive code (auth, encryption, identity) without explicit human audit
- Passing AI output off as original human reasoning in philosophy or research discussions

**The rule in plain language:** You are responsible for everything you submit, regardless of how it was generated. If AI wrote it and you did not understand it, do not submit it. Reviewers will ask questions. You need to have answers.

AI-generated challenges require the full challenge ethics review just like human-written ones. The review process does not change based on the author.

---

## Testing guidelines

Kin handles vulnerable user data and safety-critical matching logic. Tests are not optional.

**Coverage expectations:**

| Area | Minimum expectation |
|---|---|
| Matching algorithm | Full unit test coverage. Every preference combination that could affect a match must be tested. |
| Journey state machine | All stage transitions, both-complete gates, and quiet exit paths must be tested. |
| Preference validation | All three-tier states tested for correct overlap behavior. |
| Auth and identity | Phone verification, device binding, and duplicate account detection fully covered. |
| Reveal consent gates | Every consent step must confirm neither side can proceed without mutual agreement. |
| Encryption | Client-side encryption verified: server receives only ciphertext, never plaintext media. |

**Test conventions:**
- Flutter: use `flutter_test` for unit and widget tests, `integration_test` for end-to-end flows
- Backend: test RLS (row-level security) policies directly. A user must never be able to query another user's journey data.
- Write tests before fixing bugs. If a bug existed without a test, add the test first.
- Name tests in plain language: `test('user cannot proceed to reveal without mutual consent', ...)`
- Security-related tests are labeled `[security]` in their description

**What we do not accept:**
- PRs touching matching, auth, reveal logic, or encryption without accompanying tests
- Tests that only verify the happy path for safety-critical flows
- Mocked security checks in tests that are not replicated in production

If you are unsure what to test, open an issue and ask before writing code.

---

## What we will never build

- Pay-to-match or pay-to-be-seen features
- A chat platform inside Kin
- Face photo storage or transmission
- Algorithmic feed or profile browsing
- Engagement mechanics designed to maximize time-in-app
- Advertising of any kind

If you open a PR for any of the above it will be closed. This is not negotiable.

---

## Licensing

Project Kin is released under the **MIT License**.

You are free to use, copy, modify, merge, publish, distribute, sublicense, and sell copies of the software, subject to the following condition: the above copyright notice and this permission notice shall be included in all copies or substantial portions of the software.

See `LICENSE` for the full text.

**One request beyond the license:** If you fork Kin to build something, please do not build something that exploits loneliness. The code is free. The ethics are the ask.

---

## Community

- **Issues** -- bug reports, feature proposals, research questions
- **Discussions** -- open conversations about the philosophy, design, and direction
- **Discord** -- *(coming soon)*

---

## Acknowledgments

Kin is inspired by the frustration of millions of people who deserved better from the apps they trusted. It is built for them.

---

*Project Kin -- started April 2026*
