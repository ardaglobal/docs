--8<-- "warning.md"
# Loan Structures

---

## Overview

This module defines the supported loan structures within Arda Capital. Each structure represents a standardized template for configuring real-world asset-backed loans, including repayment mechanics, collateralization terms, jurisdiction-specific rules, and tokenization logic.

Loan structures are programmable and lifecycle-aware, enabling automated interest accrual, drawdown, repayment, and enforcement via Arda protocol components.

---

## Loan Types

| Type | Description | Features |
|------|-------------|----------|
| `Mortgage` | Secured by real estate collateral | Fixed/floating interest, amortization, foreclosure logic |
| `Bridge Loan` | Short-term loan for development or gap financing | Bullet repayment, time-gated drawdown, rollover support |
| `HELOC` | Revolving credit secured by property equity | Variable balance, repayment triggers, lien protection |
| `Construction Facility` | Milestone-based disbursements for new developments | Phase gating, builder attestations, escrow-based |
| `Convertible Note` | Debt that can convert into equity/tranche tokens | Optional conversion rules, discount rate, maturity event |

---

## Lifecycle Events

Each loan structure includes a series of lifecycle transitions triggered by protocol interactions or off-chain events:

- **INITIATED**: Terms agreed, structure committed
- **DRAWN**: Initial funds released or drawdown started
- **ACCRUING**: Interest calculation and metadata updates begin
- **PARTIALLY REPAID**: Repayment transaction received and validated
- **MATURED**: Loan reaches terminal status or conversion point
- **CLOSED**: Principal repaid, token burned or settled

---

## Compliance Features

Loan structures enforce embedded permissions and jurisdictional logic:

- **KYC Tiering**: Only eligible entities may originate or fund
- **Tokenization Hooks**: Generates DebtToken, TrancheToken upon funding
- **Transfer Restrictions**: Complies with TransferRule and JurisdictionProfile
- **Attestation Checkpoints**: Can require notarization or milestone proofs for drawdown

---

## Drawdown Logic

Loans may be structured with full or partial draw capability:

```yaml
draw_schedule:
  total_amount: 1000000
  tranche:
    - amount: 300000
      condition: signed_contract
    - amount: 400000
      condition: verified_foundation_phase
    - amount: 300000
      condition: inspection_certified
```

This ensures funds are released based on performance and verified evidence (e.g. from a Monitoring Agent).

---

## Integration

Loan structures interact with:

- **Token Factory** – For DebtToken issuance
- **Vault** – For proof of documentation, contracts, inspection reports
- **Clear** – For repayment, accrual, and waterfall logic
- **Syndication Engine** – When structured into tranches or capital pools
