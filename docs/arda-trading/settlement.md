--8<-- "warning.md"
# Trade Settlement and Finality

---

## Overview

Settlement in Arda Trading is powered by Arda Clear, ensuring compliant, atomic finalization of asset transfers and payments. The system supports real-time and delayed settlement, netting, fee deduction, and multi-jurisdictional compliance validation across all ArdaOS regions.

Arda Clear acts as a post-trade coordination layer between the matching engine, compliance filters, custody systems, and fiat on/off-ramps.

---

## Key Components

| Component | Description |
|-----------|-------------|
| Settlement Queue | Buffers and orders pending trade instructions |
| Compliance Hook | Enforces KYC, TransferRule, and JurisdictionProfile checks |
| Netting Engine | Aggregates trades for batch resolution or bilateral offsetting |
| Escrow Layer | Optional hold-and-release for regulatory cooling-off periods |
| Fee Engine | Calculates and routes trading, protocol, and brokerage fees |

---

## Settlement Lifecycle

1. **Trade Matched** – Orderbook or RFQ engine produces matched trade
2. **Instruction Queued** – Trade passed to Arda Clear
3. **Compliance Evaluation** – TransferRule, JurisdictionProfile, AuditLog checks
4. **Asset + Fund Escrow** – If needed, assets locked prior to settlement
5. **Finalization** – Tokens and payments atomically swapped and recorded

---

## Settlement Modes

| Mode | Description | Use Case |
|------|-------------|----------|
| Real-Time | Finalizes instantly after trade match | Spot trading, high-liquidity assets |
| Delayed | Holds instruction for defined window | Jurisdictional cooling-off periods |
| Net Settlement | Batches trades across multiple matches | Syndication, custody transfer |
| Escrow-Based | Multi-party approval before release | Institutional sales, brokered deals |

---

## Fee Routing Example

```json
{
  "instructionId": "TX-031",
  "tokenId": "AssetToken-014",
  "buyer": "0xAAA",
  "seller": "0xBBB",
  "price": 125000,
  "fees": {
    "protocol": 750,
    "broker": 500
  },
  "status": "FINALIZED"
}
```

---

## Integration Points

- **Clear**: Executes and records all instructions
- **Vault**: References off-chain proof or escrow triggers
- **Compliance Engine**: Blocks unauthorized settlements
- **Wallet / Identity**: Applies tier logic for volume thresholds
