# Oracle Integration

---

## Overview

Oracles in Arda supply off-chain data needed for risk assessment, asset valuation, repayment triggers, and compliance enforcement. Arda supports trusted oracles scoped by jurisdiction and role, with optional staking, signature, or zero-knowledge attestation.

---

## Oracle Use Cases

### 1. **Asset Valuation**
- Periodic updates for:
  - LTV calculations
  - Loan re-underwriting
  - Collateral rebalancing

### 2. **Payment Confirmation**
- Used to:
  - Confirm fiat repayments
  - Release escrowed funds
  - Trigger YieldToken distribution

### 3. **Milestone Triggers**
- Common for:
  - Construction loans
  - Development phases
  - Legal registration milestones

### 4. **Compliance Updates**
- Supports:
  - Jurisdiction blacklist sync
  - Sanctions list refresh
  - Economic indicator thresholds (e.g. interest cap by region)

---

## Security Models

- Oracles may be:
  - Signed by validator sets
  - Anchored via ZK proof or MPC attestations
  - Submitted via multi-party threshold schemes

- Oracle metadata includes:
  - Source (e.g. DLD, Bloomberg, Chainlink node)
  - Region and role scope
  - Validity window
  - Hash of input data

---

## Developer Notes

- SDK methods:
  - `registerOracleSource()`, `submitOracleUpdate()`, `verifyOracleProof()`
- Oracles can trigger EventHooks, repayment recalculations, or compliance lockdowns
- Indexed via OracleRegistry scoped by asset class or facility

---

## Example Oracle Update

```json
{
  "oracle_id": "VAL-DXB-01",
  "asset_id": "AST-2038",
  "valuation_usd": 1320000,
  "timestamp": "2025-06-01T00:00:00Z",
  "signature": "0xabc123...",
  "region": "UAE"
}
```

---

## Related Specs

- [Compliance Engine](../protocol/compliance-engine.md)
- [Lifecycle](../protocol/lifecycle.md)
- [Arda Vault](../middleware/arda-vault.md)
- [Treasury Flow](../protocol/treasury-flow.md)

---

## Changelog

| Date       | Change           | Author       |
|------------|------------------|--------------|
| 2025-06-23 | Initial Draft    | Arda Team    |
