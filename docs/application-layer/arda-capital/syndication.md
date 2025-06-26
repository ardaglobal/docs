--8<-- "warning.md"

# Syndication

---

## Overview

The Syndication Engine is the programmable capital allocation layer within Arda Capital. It enables institutional and retail investors to participate in structured deals by staking capital into permissioned pools. These pools syndicate approved loans or deals based on predefined risk filters, jurisdictional rules, and tranche mechanics.

Syndication provides a decentralized alternative to manual book-building, while enforcing compliance, auditability, and transparency.

---

## Key Components

| Component | Description |
|-----------|-------------|
| Programmable Pool | Smart contract for gated investor capital |
| Risk Filter | Criteria such as LTV, Sharpe Ratio, KYC Tier, or property type |
| Allocation Engine | Matches deals to pools based on eligibility and timing |
| Waterfall Logic | Determines cashflow distribution order (e.g. senior vs junior) |
| OrderBook | Aggregates commitments and facilitates final tranche splits |

---

## Pool Lifecycle

1. **Creation** — Anchor investor or fund defines risk filters and terms
2. **Capital Commitments** — Investors stake capital subject to permissioned checks
3. **Matching** — Underwritten deals are routed to matched pools
4. **Allocation** — Investors receive TrancheTokens or allocations proportional to commitment
5. **Distribution** — Cashflows (interest, principal) paid out based on tranche priority
6. **Settlement** — Final events processed via Arda Clear

---

## Example Pool Configuration

```json
{
  "poolId": "POOL-001",
  "jurisdiction": "UAE",
  "kycTier": 2,
  "maxLTV": 0.75,
  "minSharpe": 1.2,
  "currency": "USDC",
  "tranches": [
    { "id": "SENIOR", "rate": 0.05, "priority": 1 },
    { "id": "JUNIOR", "rate": 0.12, "priority": 2 }
  ]
}
```

---

## Tranching

Each pool may tokenize capital commitments into TrancheTokens:

| Tranche | Risk | Return | Priority |
|---------|------|--------|----------|
| Senior | Low | 4–6% | First to be paid |
| Mezzanine | Medium | 8–12% | Second |
| Junior | High | 12–20%+ | Last, high risk/reward |

Waterfall logic enforces these ranks programmatically at settlement.

---

## Compliance Enforcement

- **Transfer Rules**: Prevent transfer of TrancheTokens to unqualified parties
- **Jurisdiction Profiles**: Apply limits per region (e.g. max contribution size)
- **Attestation Matching**: Anchor investor or verifier identity linked to pool creation
- **Audit Log**: Every allocation and distribution is logged immutably
