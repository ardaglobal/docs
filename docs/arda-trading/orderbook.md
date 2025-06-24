# Orderbook and Matching Engine

---

## Overview

The Arda Orderbook and Matching Engine powers the open market side of Arda Trading. It facilitates secondary market transactions for tokenized assets through limit, market, and conditional orders. It is tightly coupled with compliance logic to ensure only permitted trades execute, and every match routes to Arda Clear for atomic settlement.

The engine is designed to serve both low-friction retail experiences and institutional execution use cases.

---

## Supported Order Types

| Type | Description |
|------|-------------|
| `Limit` | Buy/sell at a specified price or better |
| `Market` | Immediate execution at best available price |
| `Stop-Loss` | Triggers market sell when asset drops below threshold |
| `TWAP` | Time-weighted average price algorithmic execution |
| `RFQ` | Broker-assisted, non-custodial quote negotiation |

---

## Matching Logic

1. **Order Submission** — User submits via SDK or UI
2. **Pre-Trade Compliance** — Enforces TransferRules, KYC tiers, and jurisdiction constraints
3. **Order Matching** — Best bid/ask match executed
4. **Settlement Routing** — Trade is queued in Arda Clear
5. **Finalization** — Funds and tokens transferred atomically

---

## Market Data

The engine supports:

- Orderbook depth queries
- Trade history
- Spread calculation
- Price discovery for NAV models or yield assumptions

All data is scoped to eligible users based on jurisdiction and attestation level.

---

## Compliance Enforcement

The engine consults the Compliance Engine on every action:

- **Order Submission** — KYC/region check
- **Order Visibility** — Only display listings allowed by region/tier
- **Trade Execution** — Validate TransferRule before settlement
- **AuditLog** — Every match, cancel, or fail event is recorded

---

## Matching Modes

| Mode | Audience | Visibility | Execution |
|------|----------|------------|-----------|
| Public | Tier 2+ | All verified users | Automatic |
| Private | Tier 3 only | Whitelisted | Manual or auction |
| RFQ | Institutional | Bilateral | Quote-based |

---

## Example Order Submission (SDK)

```json
{
  "type": "limit",
  "tokenId": "AssetToken-001",
  "price": 105.25,
  "quantity": 10,
  "side": "buy",
  "wallet": "0x123...",
  "kycTier": 2
}
```

---

## Integration Points

- **Clear** — Atomic netting and compliance-validated transfers
- **Vault** — Resolves asset metadata (e.g. location, type, rights)
- **Wallet + Identity** — Validates tier and role on submit
- **Compliance Engine** — Final approval gate

---

## Related Docs

- [`fractional.md`](./fractional.md)
- [`settlement.md`](./settlement.md)
- [`compliance.md`](./compliance.md)
- [`README.md`](./README.md)

---

*© Arda OS Documentation • Licensed under MIT*
