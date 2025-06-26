--8<-- "warning.md"

# Glossary

---

## Overview

This glossary defines the key concepts, roles, and primitives used throughout the Arda ecosystem. It is intended as a quick-reference index for protocol developers, integrators, and stakeholders.

---

## Key Terms

### **AIP (Arda Improvement Proposal)**

Governance proposal format used to upgrade standards, taxonomies, and rules across Arda.

### **Agent**

A programmable protocol actor (e.g. Risk Agent, Connect Agent) that performs automated tasks like matching, monitoring, and structuring.

### **AssetToken**

Token representing legal or beneficial ownership of a real-world asset (e.g. real estate, infrastructure).

### **AuditLog**

Immutable on-chain event log for tracking compliance-relevant actions across the protocol.

### **Compliance Engine**

Protocol subsystem enforcing rules around KYC, jurisdiction, TransferRules, and role-permissioning.

### **DebtToken**

Token representing a borrower's obligation under a facility or credit agreement.

### **Drawdown**

Capital disbursement from a facility, triggering DebtToken issuance and repayment scheduling.

### **Entity**

A verified participant in the protocol (person, company, government, etc.), represented in the identity registry.

### **EventHook**

Programmable trigger tied to a condition (e.g. milestone reached, date passed, breach occurred).

### **Facility**

Structured capital issuance (loan, fund, bond) governed by lifecycle rules and repayment logic.

### **JurisdictionProfile**

Defines rules applicable to a geographic or legal region (e.g. tax handling, KYC level, asset scope).

### **KYC Tier**

Hierarchical level of identity verification assigned to a user or entity, controlling access and permissions.

### **Monitoring Agent**

Automated role that observes facility behavior and triggers events like covenant breaches or milestone completions.

### **PermissionedPool**

Capital pool constrained by compliance rules, investor criteria, and deal scope.

### **SettlementQueue**

Queue of pending settlement instructions processed by Arda Clear, including cross-chain and fiat operations.

### **SPV (Special Purpose Vehicle)**

Legal wrapper used to anchor asset ownership or capital formation on-chain.

### **Token Models**

Standardized representations for various financial instruments (AssetToken, DebtToken, TrancheToken, etc.).

### **TrancheToken**

Risk-segmented share in a capital structure, defined by position in the waterfall.

### **Vault**

Encrypted, jurisdiction-aware off-chain storage layer used for sensitive documents and attestations.

### **Asset Tokenization**

A digital representation of an asset, which may be a real-world asset (RWA), a digital asset, or a hybrid instrument. See [Core Primitives](../ardaos/core-primitives.md) for more details.

### **Wallet**

A user-facing application for managing digital assets and interacting with the Arda network. See [Wallet](../arda-core/wallet.md).
