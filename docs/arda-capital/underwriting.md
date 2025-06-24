# Underwriting

---

## Overview

The Underwriting module in Arda Capital provides programmable, data-driven evaluation logic for real-world asset financing. It enables automatic assessment of borrower profiles, property characteristics, market data, and collateral metrics to enforce eligibility and risk controls in loan origination and syndication workflows.

This system is built to integrate with agentic intelligence layers, enabling predictive scoring, dynamic risk exposure tracking, and milestone-triggered recalibration.

---

## Core Capabilities

| Feature | Description |
|---------|-------------|
| Risk Scoring | AI-assisted borrower and asset scoring using tagged features |
| Collateral Valuation | Periodic appraisal updates from oracles and valuation agents |
| LTV Enforcement | Dynamic loan-to-value monitoring with automatic thresholds |
| Cohort Analysis | Risk segmentation based on geography, asset class, performance |
| Milestone Triggers | Disbursement conditioned on off-chain or attested events |

---

## Underwriting Process

1. **Application Intake** — Deal metadata submitted via onboarding or API
2. **Data Aggregation** — Pull valuation, rent rolls, credit scores, and jurisdictional rules
3. **Risk Model Execution** — Agent evaluates data using scoring primitives and cohort trends
4. **Decision** — Loan is approved, rejected, or gated for further review
5. **Syndication Prep** — Approved deals are matched to pools and moved into tokenization

---

## Risk Parameters

Key underwriting metrics include:

- Loan-to-Value (LTV)
- Debt Service Coverage Ratio (DSCR)
- Risk score (0–100)
- Asset volatility (std deviation of price or yield)
- Jurisdictional flags (e.g. AML, political risk)

These are modeled using shared risk primitives and intelligence protocol agents.

---

## Example Agent Inputs

```json
{
  "assetValue": 2400000,
  "loanAmount": 1600000,
  "creditScore": 720,
  "jurisdiction": "SG",
  "propertyType": "Residential",
  "rentalYield": 0.045
}
```

---

## Integration Points

- **Vault** — Secure inputs (e.g. appraisals, docs, rent rolls)
- **Token Factory** — Defines asset rights and tranching post-approval
- **Syndication Engine** — Auto-matches approved loans to programmable pools
- **Compliance Engine** — Filters disqualified applicants and applies local rules

---

## Related Docs

- [`loan-structures.md`](./loan-structures.md)
- [`syndication.md`](./syndication.md)
- [`token-factory.md`](../arda-core/token-factory.md)
- [`vault.md`](../arda-core/vault.md)

---

*© Arda OS Documentation • Licensed under MIT*
