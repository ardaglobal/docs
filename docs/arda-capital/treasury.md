# Treasury and Float Management

> *Version: 1.0 • Last updated: 2025-06-23*

---

## Overview

The Treasury module in Arda Capital manages the flow of funds across capital formation, interest collection, fee distribution, and idle balance allocation. It enables programmable control over how capital is swept, retained, or redirected across tranches, issuers, agents, or protocol reserves.

It serves as the accounting and liquidity management layer that complements Arda Clear and TrancheTokens, ensuring capital is used efficiently, compliantly, and transparently.

---

## Key Functions

| Function | Description |
|----------|-------------|
| Sweep Instruction | Rules that route funds from one address or pool to another |
| Interest Split Rule | Defines how earned interest is split among parties (investor, agent, protocol) |
| Fee Sink | Receives protocol or administrative fees |
| Float Allocation | Routes idle balances to holding accounts, escrow, or auto-yield systems |
| Oracle Update | Pulls interest rates, FX rates, or reference benchmarks |

---

## Example Sweep Configuration

```json
{
  "instructionId": "SWP-023",
  "source": "Pool-001",
  "destination": "FeeSink-001",
  "trigger": "onInterestAccrual",
  "amount": "dynamic",
  "condition": "kycTier >= 2 && jurisdiction == 'UAE'"
}
```

This setup routes interest from a regional pool to a fee sink, conditioned on compliant identity and location.

---

## Interest Split Logic

A portion of accrued interest is distributed according to governance-defined rules:

| Party | Share |
|-------|-------|
| Investor (TrancheToken holder) | 80% |
| Protocol Treasury | 15% |
| Agent / Originator | 5% |

This logic is enforced automatically by Arda Clear during settlement cycles.

---

## Float Use Cases

- **Yield Optimization**: Temporarily park funds in on-chain yield vaults or bank deposits
- **Compliance Holding**: Retain idle funds for AML/settlement checks
- **Drawdown Buffering**: Retain liquidity for partial loan drawdowns or reserve disbursements

All float logic is transparent and auditable, with every sweep and sink logged on-chain.

---

## Integration Points

- **Clear**: Executes all fund movement and priority enforcement
- **Tranches**: Determines interest streams for each token holder group
- **Compliance Engine**: Validates sweep rules and jurisdictional logic
- **Vault**: Stores and anchors reference configurations and triggers

---

## Related Docs

- [`clear.md`](../arda-core/clear.md)
- [`tranches.md`](./tranches.md)
- [`compliance.md`](../arda-core/compliance.md)

---

*© Arda OS Documentation • Licensed under MIT*
