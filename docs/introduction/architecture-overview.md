--8<-- "warning.md"

# Arda Architecture Overview

Arda's architecture is a vertically integrated, modular system for enabling real-world assets to be tokenized, traded, financed, and governed across jurisdictions. It is organized across 4 primary layers, each serving a specific role in delivering trust, compliance, and composability in private markets.

---

## Architecture Layers

### ArdaOS

Regional execution environments tailored to sovereign compliance, privacy, and legal constraints.

- Defines Arda's primitives: tokens (Asset, Money, Debt, Yield), identity (Entities, KYC), compliance rules, and lifecycle logic (Drawdown, Settlement).
- Encoded in a deterministic, no-VM logic format for auditability and control.
- Regionally deployed sovereign rollups or chains.
- Enforce local compliance, residency, and performance requirements.
- Tailored to government and institutional needs (e.g. Dubai, NY, Singapore).

### Arda Core

The foundational infrastructure supporting the Arda ecosystem.

- Shared services layer across sovereign chains.
- Responsible for identity registry, compliance rule sets, governance, liquidity routing, and global semantics (e.g. rights classification).
- Includes the Arda Vault (privacy-preserving data layer) and Arda Clear (settlement engine).

### Semantic Intelligence Layer

A standardized data model that turns fragmented deal data into machine-readable intelligence.

- Modular software agents (e.g. Risk Agent, Monitoring Agent, Structuring Agent) automate workflows.
- Agents perform underwriting, flagging, benchmarking, investment memo generation, and deal monitoring.
- Semantic data model standardizes how assets, deals, and rights are represented.
- Supports real-time analytics, AI augmentation, and structured reporting.
- Powers the Intelligence Protocol and programmable filters for capital matching.

### Application Layer

Capital formation, trading, asset management, marketplace tools.

- Composed of products like:
    - **Arda Capital**: lending, issuance, capital formation
    - **Arda Trading**: secondary markets, RFQs, exchanges
- Exposed via SDKs and platform APIs.

---

## Diagram

```mermaid
[ Application Layer: Capital | Trading ]
        ↑
[ Semantic Data & Intelligence Layer ]
      ↑
[ Arda Core ]
    ↑
[ ArdaOS ]
```
