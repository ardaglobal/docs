--8<-- "warning.md"
# Arda Capital

---

## Overview

Arda Capital is the programmable debt and capital formation layer of the Arda protocol. It enables compliant lending, borrowing, syndication, and securitization of real-world assets using composable, interoperable primitives across sovereign ArdaOS chains.

The module is designed to serve the full capital lifecycle — from deal origination and underwriting to tranche structuring, yield distribution, and loan repayment. Arda Capital integrates deeply with the Compliance Engine, Token Factory, Vault, and Arda Clear for enforcement, data, and settlement.

Arda Capital is the programmable capital formation and lending layer of the Arda stack. It enables compliant issuance, syndication, and structuring of real-world asset-backed facilities, such as mortgages, credit lines, construction loans, and tokenized debt pools.

Built on Arda's core primitives, Arda Capital integrates lifecycle logic, compliance, and programmable underwriting into a unified experience.


---

## Key Modules

| Module | Description |
|--------|-------------|
| `Loan Structures` | Defines supported loan types and configurations |
| `Underwriting` | Risk scoring, collateral analysis, dynamic LTV enforcement |
| `Syndication Engine` | Permissioned capital formation using programmable pools |
| `Tranche System` | Tokenizes risk layers and defines cashflow waterfalls |
| `Treasury/Float` | Manages interest, fees, and idle capital allocation |
| `Permissioned Pools` | 

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
KYC/attestation-gated capital markets for specific jurisdictions |

---

## Key Token Types

- **DebtToken**: Represents a borrower's principal and interest obligation
- **YieldToken**: Grants rights to a portion of cashflows from assets or loans
- **TrancheToken**: Encodes a risk-adjusted share of a syndicated capital pool

Each token type is lifecycle-managed and complies with TransferRules and jurisdictional logic.

---

## Capital Lifecycle

```mermaid
flowchart TD
    A[Deal Origination] --> B[Underwriting]
    B --> C[Syndication + Allocation]
    C --> D[Token Issuance (Tranche / Debt)]
    D --> E[Interest Accrual + Repayment]
    E --> F[Settlement via Arda Clear]
```

---

## Interop & Compliance

- **Compliance First**: Only verified participants can join pools or execute deals.
- **Jurisdiction Sync**: Capital rules adapt per region via JurisdictionProfiles.
- **Global Liquidity**: Tranche and YieldTokens may be tradable cross-chain via Interop.
- **Audit-Ready**: Capital flows and token events are logged to on-chain AuditLog.

---

## Use Cases

- Real estate-backed loans
- Tokenized bridge financing
- REIT syndication and redemption
- Crowdfunding and retail-accessible capital pools
- Institutional-grade structured products

## Capital Types Supported

- **Mortgages**
- **Bridge Loans**
- **Construction Facilities**
- **REIT Debt and Equity**
- **Revolving Credit for Developers**
- **Factoring and Invoice Lending (Future)**

---

## Compliance Controls

- Investor eligibility tied to KYC tier and jurisdiction.
- Facility template rules enforce limits on ticket size, currency, risk exposure.
- Tax withholding and reporting built-in for repayment flows.

---

## Developer Notes

- SDK includes `createFacility()`, `drawdown()`, `registerTranche()`
- All facilities are indexed via `FacilityRegistry`
- Compliance checks embedded into every capital call or repayment action

---

## Example Workflow

1. SPV deploys a facility via Foundry
2. Capital raised via PermissionedPool (KYC Tier 2+ only)
3. Drawdowns initiated as construction phases complete
4. Interest split between TrancheToken holders
5. Facility closes, debt burned, residual equity distributed
