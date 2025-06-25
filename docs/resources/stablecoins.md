--8<-- "warning.md"

# Stablecoins and Fiat Integration

---

## Overview

Arda integrates fiat-backed and crypto-native stablecoins to enable on-chain settlement of real estate and capital market transactions. Stablecoins serve as the unit of account for pricing, settlement, and collateralization across all protocol layers.

Fiat on/off ramps are regionally configured and integrated into the Arda Wallet, Clear, and Treasury modules with optional escrow and compliance enforcement.

---

## Supported Stablecoins

| Token | Type | Description |
|-------|------|-------------|
| USDC | Fiat-backed | Primary stablecoin for USD-denominated transactions |
| D-Dirham | Custodial | Region-specific AED stablecoin integrated with local banks |
| EUROe | Regulated | Euro-pegged stablecoin used in EU-compliant pools |
| USDT | DeFi-native | Optional, used in legacy integrations |
| ArdaUSD | Synthetic | Cross-chain Arda-native stable unit (future roadmap) |

---

## Fiat Integration

- Local banking APIs for custody-backed mint/burn (e.g. DLD in UAE)
- KYC-gated access to stablecoin issuance or redemption
- Regulated custody required for region-specific fiat tokens
- Vault-anchored documentation of reserve attestations

---

## Stablecoin Use Cases

- **Capital Pools**: All syndicated lending and tranching priced in stablecoins
- **Settlements**: Arda Clear finalizes token transfers in stable denomination
- **Yield Distribution**: Income streamed to TrancheToken holders
- **Collateral**: Used in hybrid real-world/DeFi loan structures
- **Bridge Liquidity**: Used in cross-chain FX routing and paired orderbooks

---

## Compliance and Safeguards

- TransferRules applied to restrict stablecoin flow
- JurisdictionProfile configures who may mint/redeem
- FeeEngine may deduct FX, gas buffer, or protocol toll
- OracleUpdate supports price tracking and peg validation

---

## Integration Points

- **Clear** — Settlement instructions and escrow holding logic
- **Treasury** — Sweep instructions, idle balance buffering
- **Wallet** — Stablecoin approval and mint/redeem authorization
- **Vault** — Anchors reserve proof and issuer documentation

---

## Example

```json
{
  "token": "D-Dirham",
  "issuer": "ADCB Custody",
  "region": "UAE",
  "kycRequired": true,
  "oracle": "Dirham-USD FX Feed",
  "attestationDoc": "vault://reserves/d-dirham-q1.pdf"
}
```
