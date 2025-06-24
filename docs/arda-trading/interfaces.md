# Trading Interfaces and SDKs

> *Version: 1.0 • Last updated: 2025-06-23*

---

## Overview

Arda Trading exposes a suite of SDKs, APIs, and UI components that enable wallet providers, brokers, custodians, and marketplaces to interact with the trading infrastructure. All interfaces enforce embedded compliance constraints and are designed to work seamlessly across regional ArdaOS deployments.

Interfaces support listing, order submission, RFQ messaging, market data access, and real-time trade execution routing through Arda Clear.

---

## SDK Endpoints

| Endpoint | Description |
|----------|-------------|
| `POST /orderbook/order` | Submit order (limit, market, stop, etc.) |
| `GET /orderbook/depth` | Retrieve orderbook for a token |
| `POST /rfq/submit` | Initiate request-for-quote negotiation |
| `POST /rfq/respond` | Respond to an RFQ if qualified |
| `GET /token/:id` | Fetch token metadata and fractional rights |
| `GET /wallet/:id/compliance` | Return compliance permissions for wallet |
| `GET /trade/:id/status` | Query execution or settlement status |

---

## SDK Features

- Compliance middleware for TransferRule and jurisdiction checks
- Typed schema generation for token definitions
- Event stream for matched trades and quote activity
- Pluggable adapters for brokers, custodians, and DAO UIs
- Automatic settlement routing and escrow support

---

## UI Integration

Developers may embed components via:

- **Order Forms** — Pre-validated entry points for trading any token
- **Market Viewers** — Read-only interfaces filtered by region/tier
- **RFQ Messenger** — Chat-style UX for regulated block trades
- **Portfolio Dashboards** — Aggregated ownership, yield, and order history

---

## Integration Patterns

| Pattern | Audience | Description |
|---------|----------|-------------|
| API Gateway | Custodians, Brokers | Direct REST-based execution |
| SDK Client | DApps, UIs | JS/TS libraries for fast integration |
| Agent Mode | Institutions | API + CLI interface with identity attestation |
| RPC Plugin | Exchanges | Low-latency RPC wrapper for order injection |

---

## Compliance Enforcement

Every SDK call routes through:

- **KYC Tier Filter**
- **JurisdictionProfile**
- **AuditLog Hook**
- **TransferRule Validator**

Misconfigured or disallowed calls return clear structured errors and are never forwarded to execution layer.

---

## Example Error (Unauthorized Wallet)

```json
{
  "error": "AccessDenied",
  "message": "KYC tier too low for asset class: TrancheToken",
  "requiredTier": 2,
  "actualTier": 1
}
```

---

## Related Docs

- [`orderbook.md`](./orderbook.md)
- [`wallet.md`](../arda-core/wallet.md)
- [`identity.md`](../arda-core/identity.md)
- [`compliance.md`](./compliance.md)

---

*© Arda OS Documentation • Licensed under MIT*
