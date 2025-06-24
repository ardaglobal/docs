# Investment Mandates

---

## 🧭 Overview

The Mandates module in Arda Capital facilitates the creation and management of legal and operational structures such as SPVs, trusts, and fund wrappers. These entities enable tokenized assets and debt instruments to remain legally enforceable off-chain while interoperating with Arda Core's programmable logic.

Mandates provide the bridge between on-chain financial instruments and traditional legal entities required by institutional investors, regulators, and auditors.

---

## Key Components

| Component | Description |
|-----------|-------------|
| SPV | Special Purpose Vehicle to hold title, debt, or yield rights |
| Mandate | Legal and operational directive encoded into the Arda protocol |
| CustodyRelationship | Defines relationships between wallets, custodians, and legal entities |
| Issuer Entity | Registered entity responsible for offering tokens or executing capital deals |

---

## Use Cases

- **Real Estate Tokenization**: Establish an SPV that holds the asset title and issues AssetTokens.
- **Fund Vehicles**: Create mandates for REITs, LPs, or debt funds tied to syndicated pools.
- **Legal Attribution**: Link token rights (e.g. rent income, liquidation claims) to contractually enforceable roles.

---

## Mandate Lifecycle

1. **Drafting** – Legal metadata and documents submitted to the Vault
2. **Verification** – Third-party validation or notary attestation
3. **Mandate Creation** – On-chain issuance of Mandate object with parameters and linked wallets
4. **Execution Binding** – Roles and custody logic established
5. **Termination / Migration** – Entity can be sunset or replaced

---

## Mandate Object Example

```json
{
  "mandateId": "MND-001",
  "type": "SPV",
  "jurisdiction": "UAE",
  "entityId": "ENTITY-014",
  "authorizedSigners": ["Wallet-0x123", "Wallet-0x456"],
  "rights": ["token_issuance", "rental_disbursement"],
  "documents": ["vault://mandates/UAE-SPV.pdf"]
}
```

---

## Compliance Considerations

- All mandates are verified against jurisdictional rules before activation
- CustodyRelationships enforce who may sign or transact on behalf of the entity
- Vault-anchored documents ensure auditability and off-chain enforceability

---

## Integration Points

- **Vault**: Storage of signed legal docs, attestations, operating agreements
- **Token Factory**: Restricts issuance to authorized issuer roles via mandate link
- **Compliance Engine**: Ensures only valid mandates and entities may act
- **Identity Module**: Binds WalletGroups to operational roles and entity representations

---

## Related Docs

- [`token-factory.md`](../arda-core/token-factory.md)
- [`identity.md`](../arda-core/identity.md)
- [`vault.md`](../arda-core/vault.md)
- [`compliance.md`](../arda-core/compliance.md)

---

*© Arda OS Documentation • Licensed under MIT*
