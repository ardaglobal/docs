--8<-- "warning.md"
# External Agents

---

## Overview

External agents in the Arda ecosystem are autonomous or semi-autonomous service providers that perform roles such as deal structuring, monitoring, verification, and execution support. These agents enhance trust, scale throughput, and standardize execution across asset and capital lifecycles.

They operate under permissioned attestations and are tracked via the Agent Registry. Agents may be institutional (e.g. broker-dealers), DAO-governed, or programmatic (smart contracts or AI models).

---

## Agent Types

| Agent | Role |
|-------|------|
| Connect Agent | Matches investors with capital pools based on mandate fit |
| Risk Agent | Evaluates asset and borrower risk using underwriting data |
| Structuring Agent | Designs tranches, cashflows, and waterfall logic |
| Monitoring Agent | Tracks loan performance and flags anomalies |
| IM Agent | Generates investment memos from standard templates |
| RFQ Agent | Facilitates cross-chain and bilateral deal negotiations |

---

## Registration Process

1. **Identity Verification** — Must be linked to a Tier 2+ Wallet or Entity
2. **Attestation Submission** — Includes capabilities, jurisdiction, track record
3. **Score Assignment** — Based on performance, uptime, and participation volume
4. **Activation** — Registered in the Agent Registry for matching and query routing

---

## Agent Registry Record (Example)

```json
{
  "agentId": "AGENT-019",
  "type": "Monitoring Agent",
  "entity": "RealData Analytics Ltd.",
  "jurisdiction": "EU",
  "score": 92,
  "active": true
}
```

---

## Permissions and Responsibilities

- Must act within approved jurisdictional scopes
- Can be slashed or delisted for inactivity, fraud, or poor performance
- May be delegated roles by pool creators, brokers, or DAOs
- Compensated via protocol incentives or custom fee agreements

---

## Compliance

- All agent actions are recorded in the AuditLog
- Role-specific TransferRules apply (e.g. only Structuring Agents may configure waterfalls)
- Monitoring Agents may access encrypted Vault data via MPC or FHE

---

## Integration Points

- **Underwriting + Syndication** — Used during deal assessment and capital formation
- **Token Factory** — May submit structuring logic and tranche metadata
- **Vault** — Secure access to inspection reports, contracts, or valuation records
- **Clear** — Triggers based on agent signals (e.g. default events, payment failures)
