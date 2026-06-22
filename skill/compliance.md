# KYC / AML Compliance for Solana Projects

## Do you need KYC/AML?

Not every Solana project needs KYC. It depends on what you're building:

| Project type | KYC/AML required? |
|-------------|------------------|
| Pure DEX / AMM (non-custodial) | Generally no — but monitor regulations |
| Centralized exchange or swap | Yes — you are a VASP |
| Fiat on/off ramp | Yes — almost always |
| Token sale / ICO | Depends on jurisdiction and structure |
| NFT marketplace | Low risk, but FATF guidance expanding |
| Lending protocol (non-custodial) | Generally no — but evolving |
| DAO treasury management | Depends on DAO structure and jurisdiction |

---

## Key regulatory frameworks

### FATF (Financial Action Task Force)
The global standard-setter for AML. Their "Travel Rule" is the most impactful rule for crypto:

**Travel Rule:** When a VASP (Virtual Asset Service Provider) sends crypto above a threshold (~$1,000 USD), it must share sender/receiver identity information with the receiving VASP.

- Implemented in: EU, Singapore, South Korea, UAE, Switzerland, UK
- Not yet fully implemented in: Pakistan, Nigeria, Turkey (but FATF pressure ongoing)
- Affects: exchanges, custodians, payment processors

### FATF "Virtual Asset" definition
If your project facilitates transfer, exchange, or safekeeping of virtual assets for others = you are likely a VASP and must comply with AML rules in your jurisdiction.

---

## Sanctions screening (OFAC)

The US Office of Foreign Assets Control (OFAC) maintains a sanctions list. If your protocol interacts with sanctioned wallets or persons, you face US penalties — even if you're not a US company.

**Key sanctions lists for crypto:**
- SDN List (Specially Designated Nationals) — individuals and entities
- Tornado Cash (sanctioned in 2022, partially lifted 2024 — check current status)
- North Korean hacker wallets (Lazarus Group addresses)

**Best practices:**
- Screen wallet addresses against OFAC SDN list before processing transactions
- Use Chainalysis, TRM Labs, or Elliptic for automated screening
- Document your screening policy
- Do not process transactions from sanctioned jurisdictions: North Korea, Iran, Cuba, Syria, certain Russian entities

---

## KYC implementation options for Solana projects

### No-code / API solutions
- **Jumio** — global identity verification, strong in EU/US
- **Persona** — flexible, developer-friendly, popular in crypto
- **Sumsub** — strong emerging markets coverage (India, Pakistan, Nigeria, Ukraine)
- **Fractal ID** — crypto-native, Solana-friendly, privacy-preserving
- **Civic** — built on Solana, on-chain identity verification

### On-chain identity (Solana-native)
- **Civic Pass** — soulbound token proving KYC status without revealing data
- **dialect** — on-chain verified identity layer
- **Solana Name Service** — not KYC but identity anchoring

### Recommended for most Solana projects
Use **Fractal ID** or **Civic Pass** — both are Solana-native, handle global users well, and provide privacy-preserving verification that doesn't store raw user data on-chain.

---

## AML program requirements (if you are a regulated VASP)

A basic AML program must include:

1. **Written AML Policy** — documented procedures for identifying and reporting suspicious activity
2. **Customer Due Diligence (CDD)** — verify identity of users above thresholds
3. **Enhanced Due Diligence (EDD)** — extra checks for high-risk users (PEPs, high-volume traders)
4. **Transaction Monitoring** — flag unusual patterns (layering, smurfing, rapid movement)
5. **Suspicious Activity Reports (SARs)** — file with FinCEN (US) or equivalent
6. **Record Keeping** — retain KYC records for 5 years minimum
7. **AML Officer** — designate a responsible person

---

## Privacy vs. compliance: the Solana builder's dilemma

Many Solana builders want permissionless, private protocols. Here's how to think about it:

**Fully non-custodial protocols** (you never hold user funds, never have custody):
- Generally not VASPs
- No KYC requirement in most jurisdictions
- Still screen for OFAC compliance

**Protocols with admin keys / upgradeability:**
- Regulators may argue you have control = you are a VASP
- Mitigate by progressively decentralizing governance

**Frontend operators:**
- Even if your smart contract is permissionless, your frontend can be targeted
- Uniswap geofences sanctioned countries at the frontend level
- Consider doing the same

---

## Costs of KYC/AML tooling (2026)

| Provider | Pricing model | Approx cost |
|----------|--------------|-------------|
| Sumsub | Per verification | $1–3 per user |
| Persona | Per verification | $1.50–4 per user |
| Civic Pass | On-chain pass | ~$2–5 per pass |
| Fractal ID | Tiered plans | From $299/month |
| Chainalysis (screening) | Enterprise | $10k+/yr |
| TRM Labs | Enterprise | $10k+/yr |

For early-stage projects: start with **Fractal ID** or **Civic Pass** — cheapest Solana-native options with solid coverage.
