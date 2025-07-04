--8<-- "warning.md"

# Cross-Chain Interoperability

Arda's cross-chain architecture enables secure interoperability between sovereign ArdaOS chains, Arda Core, and external blockchains. It ensures that assets, users, and rights can move across jurisdictions without fragmenting compliance, state, or governance.

Arda achieves this via a layered bridging and message-passing infrastructure anchored in Arda Clear.

---

## Key Interaction Models

### 1. **ArdaOS ↔ ArdaOS**

- Message passing via:
    - Validator signatures
    - zkBridge (ZK light client)
    - TEE-based notarization
- Used for:
    - Asset transfer across regions
    - Compliance rule propagation
    - Liquidity migration

### 2. **ArdaOS ↔ Arda Core**

- Trusted coordination layer with global registry and event syncing
- Used for:
    - Wallet and entity mapping
    - Jurisdiction rule synchronization
    - Token indexing

### 3. **Arda ↔ External Blockchains**

- Supported via:
    - ERC-20 / ERC-721 wrappers
    - Cosmos IBC-compatible relays
    - Hyperlane / LayerZero plug-ins
- Allows tokens and messages to move to EVMs, rollups, and Cosmos zones

---

## Arda Clear Bridge Layer

Arda Clear includes:

- **SettlementQueue** for managing pending finality
- **Validator attestation registry** for outbound messages
- **Wrapped token registry** for mirrored representations
- **Fee handler** for cross-chain gas abstraction

---

## Compliance Enforcement

- Transfers are only finalized if:
    - TransferRules pass on both sides
    - KYC and jurisdiction alignment is validated
    - Wrapped token metadata matches asset origin

---

## Interop Security Design

- All bridge messages are:
    - Signed by quorum of regional validators
    - Optionally proven via ZK light client
    - Anchored to Arda AuditLog

- Messages can be:
    - Immediate
    - Buffered (e.g. 24h delay)
    - Escrowed pending external confirmation (e.g. fiat or legal filing)

---

## Developer Notes

- SDK includes:
    - `wrapToken()`, `transferToRegion()`, `queryBridgeProof()`
- Bridged assets maintain link to Vault and SPV for traceability
- Chain state synchronization monitored via Arda Core indexers
