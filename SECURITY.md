# Security Policy

> Security is the foundation of Kin, not a feature. Our users share vulnerable moments. A breach here is not a data problem -- it is a human harm problem.

This document is the **placeholder** entry point. The full threat model is tracked in [issue #17](https://github.com/KinTogether/ProjectKin/issues/17).

## Reporting a vulnerability

**Please do not open a public GitHub issue for security vulnerabilities.**

Instead, report privately via one of these channels:

- GitHub: open a [private security advisory](https://github.com/KinTogether/ProjectKin/security/advisories/new)
- Email: *security contact to be added once project email is configured*

Include:

- A description of the vulnerability
- Steps to reproduce
- Affected versions / commits
- Your assessment of impact
- Any suggested mitigation

We will acknowledge your report within **72 hours** and aim to provide a status update within **7 days**.

## Disclosure

We follow coordinated disclosure. Once a fix is available and deployed (or the issue is determined not to be exploitable), we will publish a security advisory crediting the reporter (with their permission).

## Scope

In scope:
- Auth / identity flows
- Row-level security policies
- Media handling and encryption
- Matching engine integrity
- Reveal-stage consent gates
- Self-hosted deployment defaults

Out of scope:
- Issues requiring physical access to a user's unlocked device
- Social engineering of contributors
- DoS that requires unrealistic resources
- Vulnerabilities in third-party dependencies without a Kin-specific exploit path (please report upstream)

## Supported versions

Kin is **pre-alpha**. There are no released versions yet. Once we ship, this section will define the support window.
