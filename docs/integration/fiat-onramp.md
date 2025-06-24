# Fiat Onramp Integration

---

## Overview

Fiat onramps in Arda allow users to convert local currency into compliant, programmable MoneyTokens for use across Arda OS chains. These integrations bridge banking infrastructure with blockchain execution while preserving KYC, auditability, and jurisdictional scope.

---

## Supported Models

### 1. **Bank Transfer via Trusted Partner**
- ACH / SEPA / SWIFT transfers
- User wires funds to a designated collection account
- Platform mints corresponding `MoneyToken` (e.g. `USD.ae`) after settlement

### 2. **Bank-Issued Stablecoin Minting**
- Regulated banks mint tokens (e.g. Dirham Stablecoin)
- Arda integrates token registry and TransferRules
- Token backed 1:1 in licensed custody

### 3. **Licensed Payment Gateway**
- Integration with:
  - Checkout.com
  - Stripe (crypto API)
  - Adyen
- Card payments → Token issuance after KYC and fraud checks

---

## Compliance Controls

- KYC enforced before token issuance
- TransferRules encode:
  - Spending limits
  - Jurisdiction boundaries
  - Flow tracking
- Every fiat → MoneyToken mint logged in AuditLog and Vault

---

## Fiat Conversion Workflow

1. User completes KYC and links wallet
2. Transfers $10,000 to Arda partner account
3. Payment verified by Oracles or manual attestation
4. `mintMoneyToken()` triggered for wallet
5. Tokens usable across Arda Capital, Trading, and Clear

---

## Custody & Settlement

- All fiat held in segregated accounts or trust vehicles
- Proof of Reserves published periodically
- Token redemptions handled via `burnMoneyToken()` and off-chain settlement request

---

## Developer Notes

- SDK includes:
  - `initiateFiatOnramp()`, `mintMoneyToken()`, `burnMoneyToken()`
- Oracle feeds verify off-chain payment status
- Integrated with Arda Vault for regulatory audit trail

---

## Related Specs

- [Token Models](../protocol/token-models.md)
- [Settlement](../protocol/settlement.md)
- [Compliance Engine](../protocol/compliance-engine.md)
- [Arda Clear](../product/arda-core.md)

---

## Changelog

| Date       | Change           | Author       |
|------------|------------------|--------------|
| 2025-06-23 | Initial Draft    | Arda Team    |
