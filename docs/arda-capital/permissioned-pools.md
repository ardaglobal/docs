# Permissioned Pools

---

## Overview

Permissioned Pools are a foundational primitive in Arda Capital used to facilitate jurisdiction-aware, KYC-gated capital formation. They enable only qualified participants to join investment opportunities, ensuring compliance with regional regulations while supporting programmable capital deployment.

Pools can be used for lending, syndication, insurance, or investment — and each enforces compliance rules at entry, operation, and exit.

---

## Core Features

| Feature | Description |
|---------|-------------|
| KYC Tier Enforcement | Restricts pool access based on verified identity level |
| Jurisdiction Scope | Pools may limit participation to investors from specific regions |
| Risk Filters | Pools may impose capital limits, rating bands, or deal types |
| Token Binding | Participation may be tokenized via TrancheToken or PoolShare |
| Dynamic Governance | Pool creators may update filters or terminate pools (with constraints) |

---

## Lifecycle

1. **Initialization** — Pool is created with access rules and optional funding caps
2. **Staking** — Eligible users commit capital
3. **Matching** — Capital is allocated to deals, tranches, or lending lines
4. **Monitoring** — Compliance and performance checks occur continuously
5. **Redemption** — Capital + returns distributed per PoolShare or TrancheToken
6. **Closure** — Optional wind-down or rollover into a new mandate

---

## Example Pool Configuration

```json
{
  "poolId": "POOL-XYZ",
  "region": "US",
  "requiredKycTier": 3,
  "maxAUM": 50000000,
  "acceptedToken": "USDC",
  "restrictions": {
    "investorType": "accredited",
    "jurisdictionWhitelist": ["US", "SG"]
  }
}
```

---

## Access Enforcement

Pool access is governed by:

- **TransferRule** — Applies to inbound token transfers and staking intents
- **Attestation Check** — Confirms accredited status or verified role
- **Vault Conditions** — May require document upload or agent certification
- **Audit Logging** — Every entry, exit, and role assignment is recorded

---

## Integration

- **Syndication Engine** — Pulls matched pools into capital allocation flows
- **Tranche System** — Issues TrancheTokens for risk-layered pools
- **Compliance Engine** — Validates eligibility of each participant
- **Identity Module** — Binds wallet groups to entity roles within the pool

---

*© Arda OS Documentation • Licensed under MIT*
