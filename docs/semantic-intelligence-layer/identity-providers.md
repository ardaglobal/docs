--8<-- "warning.md"

# Identity Providers

Identity provider integrations enable Arda to verify users, investors, institutions, and agents across jurisdictions using trusted KYC/KYB workflows. Arda supports pluggable, programmable identity systems that conform to both local compliance rules and global coordination needs.

---

## Identity Types

### 1. **KYC (Individuals)**

- Tiered system:
    - Tier 0: Email-only (read-only access)
    - Tier 1: Government ID
    - Tier 2: Proof of address, selfie, AML screen
    - Tier 3: Source of funds, enhanced due diligence

### 2. **KYB (Organizations)**

- Entity verification includes:
    - Registration number
    - UBO (ultimate beneficial owner) data
    - Tax and regulatory standing

### 3. **Agent Attribution**

- Agents are linked to originating Entity
- Enforced by signature attestations or AIP delegation

---

## Integration Standards

- OAuth2 and OpenID Connect supported
- Verifiable Credential (VC) format with ZK proof compatibility
- REST APIs for provider hooks:
    - `verifyIdentity()`, `getKYCStatus()`, `updateRiskScore()`

---

## Regional Providers (Examples)

| Region | Providers |
|--------|-----------|
| UAE    | uqudo, IDnow, Jumio |
| US     | Alloy, Socure, Persona |
| EU     | Veriff, Onfido, iDenfy |
| SG     | MyInfo, ACRA |

---

## Identity Lifecycle

1. User initiates onboarding
2. Identity verified via provider
3. Entity created and linked to Wallet Group
4. JurisdictionProfile + KYC Tier assigned
5. Logs and documents anchored to Vault
