# Accounting Primitives

> *Version: 1.0 • Last updated: 2025-06-23*

---

## Overview

Arda’s accounting primitives define the fundamental mechanisms for calculating, accruing, distributing, and reconciling financial flows across the protocol. These primitives support everything from interest accrual on loans to fee allocation, treasury sweeping, and escrow disbursement.

They are core to the Treasury, Clear, Tranche, and Yield systems and operate deterministically across ArdaOS chains.

---

## Key Primitives

| Primitive | Description |
|-----------|-------------|
| InterestAccrual | Calculates interest over time based on principal, rate, duration |
| Drawdown | Reduces available capital on disbursement and logs event |
| Burn/Repay | Updates repayment balance and destroys DebtToken accordingly |
| FeeEngine | Applies configurable fees to issuance, trading, or settlement |
| SweepInstruction | Routes funds or tokens between modules based on triggers |
| InterestSplitRule | Divides earnings among investors, agents, and treasury |

---

## Example: Interest Accrual

```json
{
  "principal": 1000000,
  "rate": 0.08,
  "periodDays": 90,
  "accruedInterest": 19726.03
}
```

---

## Example: Sweep Instruction

```json
{
  "instructionId": "SWP-221",
  "from": "Pool-01",
  "to": "TreasurySink",
  "trigger": "onInterestPayment",
  "jurisdiction": "SG"
}
```

---

## Lifecycle Hooks

Each primitive can bind to on-chain event triggers such as:

- InterestPaymentReceived
- LoanDrawdownInitiated
- DebtFullyRepaid
- TokenMaturityReached

These hooks trigger Vault logging, AuditLog updates, and state transitions in Token or Tranche lifecycles.

---

## Compliance Links

- Sweep and Fee primitives are subject to TransferRules
- Drawdown and Burn can enforce escrow verification
- Interest splits validate recipient eligibility against JurisdictionProfile

---

## Integration

- **Treasury**: Sweep, split, buffer, and burn logic
- **Clear**: Executes actual transfers post-reconciliation
- **TokenFactory**: Triggers lifecycle hooks based on token type
- **Vault**: Anchors off-chain proof for payments and disbursements

---

## Related Docs

- [`treasury.md`](../arda-capital/treasury.md)
- [`clear.md`](../arda-core/clear.md)
- [`token-factory.md`](../arda-core/token-factory.md)

---

*© Arda OS Documentation • Licensed under MIT*
