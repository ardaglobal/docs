--8<-- "warning.md"

# Regional Deployment

---

## Overview

Regional deployment is the process of launching and configuring an ArdaOS instance for a specific jurisdiction. This enables compliance with local regulations, data residency mandates, and infrastructure control, while maintaining global interoperability through Arda Core.

Each deployment is modular, sovereign, and optimized for local needs.

---

## Deployment Architecture

### 1. **Sovereign Chain Instance**

- Rollkit / Cosmos SDK-based rollup or POA chain
- Anchored to Celestia, EigenDA, or local DA layer
- Validator set controlled by regional stakeholders

### 2. **Cloud or On-Prem Infrastructure**

- Common environments:
  - AWS Region (e.g. UAE, Singapore)
  - Azure Government Cloud
  - Local Ministry Datacenters

### 3. **Chain Configuration**

- Governance parameters
- Local stablecoin support
- Compliance module registry
- Asset classification mapping (from Arda Taxonomy)

---

## Integration with Arda Core

- All regional chains register:
  - Chain ID
  - Supported token types
  - KYC schemas
  - Validator identities
- Synced via Arda Core messaging or snapshot state export

---

## Legal & Regulatory Considerations

- Requires MOU or legal agreement with:
  - Land registry
  - Financial regulator
  - KYC providers
- SPV registration and legal wrappers often deployed in parallel (via Foundry)

---

## Developer Notes

- Deployment SDK available for scripted config and validator launch
- Initial setup includes:
  - Genesis file creation
  - Validator keygen and rotation
  - Compliance rule upload
- Monitored by observability tools via Arda Core
