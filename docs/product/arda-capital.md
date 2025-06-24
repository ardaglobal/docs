# Arda Capital

> **Status**: Stable  
> **Last Updated**: 2025-06-23  
> **Authors**: Arda Protocol Core Team

---

## 🧭 Overview

Arda Capital is the programmable capital formation and lending layer of the Arda stack. It enables compliant issuance, syndication, and structuring of real-world asset-backed facilities, such as mortgages, credit lines, construction loans, and tokenized debt pools.

Built on Arda's core primitives, Arda Capital integrates lifecycle logic, compliance, and programmable underwriting into a unified experience.

---

## 🧱 Core Features

### 1. **Facility Creation**
- Programmable wrappers for debt or equity instruments.
- Supports legal anchoring via Arda Foundry.
- Can be created via SDK or UI with defined rulesets and triggers.

### 2. **Capital Formation**
- Primary market fundraising via PermissionedPools.
- Supports investor mandates, pro-rata allocation, soft/hard caps.
- Integrated with compliance and jurisdiction gating.

### 3. **Drawdown Mechanics**
- Partial or full drawdown support.
- Triggered by milestone checks, oracle data, or governance.
- Each drawdown event linked to repayment schedule and DebtToken issuance.

### 4. **Interest and Repayment Logic**
- InterestAccrual model supports fixed, floating, step-up, or indexed terms.
- Repayment tracked on-chain and broadcast to YieldToken holders.
- Default triggers can pause disbursement or initiate liquidation.

### 5. **Structuring and Syndication**
- Facility may be sliced into TrancheTokens with defined risk profiles.
- Waterfall logic and AllocationEngine govern distribution.
- Syndication via programmable pools (e.g. Sharpe > 2, LTV < 70%).

### 6. **Automated Underwriting & Compliance**: Enforce jurisdictional rules, investor accreditation, and loan covenants programmatically.
### 7. **Dynamic Securitization**: Pool and tranche loans into investable assets with just-in-time settlement.

---

## 💡 Capital Types Supported

- **Mortgages**
- **Bridge Loans**
- **Construction Facilities**
- **REIT Debt and Equity**
- **Revolving Credit for Developers**
- **Factoring and Invoice Lending (Future)**

---

## 📜 Compliance Controls

- Investor eligibility tied to KYC tier and jurisdiction.
- Facility template rules enforce limits on ticket size, currency, risk exposure.
- Tax withholding and reporting built-in for repayment flows.

---

## 🛠️ Developer Notes

- SDK includes `createFacility()`, `drawdown()`, `registerTranche()`
- All facilities are indexed via `FacilityRegistry`
- Compliance checks embedded into every capital call or repayment action

---

## 🧪 Example Workflow

1. SPV deploys a facility via Foundry
2. Capital raised via PermissionedPool (KYC Tier 2+ only)
3. Drawdowns initiated as construction phases complete
4. Interest split between TrancheToken holders
5. Facility closes, debt burned, residual equity distributed

---

## 📚 Related Specs

- [Core Primitives](../primitives/core-primitives.md)
- [Token Models](../protocol/token-models.md)
- [Lifecycle](../protocol/lifecycle.md)
- [Treasury Flow](../protocol/treasury-flow.md)
- [Arda Foundry](arda-foundry.md)
- [Loan Structures](../arda-capital/loan-structures.md)

---

## 🧭 Changelog

| Date       | Change           | Author       |
|------------|------------------|--------------|
| 2025-06-23 | Initial Draft    | Arda Team    |

---

## 📚 See Also

- [Core Primitives](../primitives/core-primitives.md)
- [Loan Structures](../arda-capital/loan-structures.md)
- [Treasury Flow](../protocol/treasury-flow.md)
