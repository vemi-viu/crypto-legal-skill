# Stablecoin Regulations for Solana Builders

## Two very different questions

1. **Integrating** stablecoins (USDC, USDT) into your Solana app → low regulatory burden
2. **Issuing** your own stablecoin → high regulatory burden, requires licenses in most jurisdictions

This file covers both.

---

## Integrating existing stablecoins (USDC / USDT)

### USDC on Solana
- Issued by Circle, regulated as a money transmitter in the US
- Native on Solana via the SPL token standard
- Circle holds 1:1 USD reserves, audited monthly
- **Legal risk for integrators:** low — you are using a regulated instrument
- **What you need:** nothing special to accept/display USDC in your app
- **What you need for custody:** if you hold USDC on behalf of users = money transmission rules apply

### USDT on Solana
- Issued by Tether, domiciled in BVI
- Less regulatory clarity than USDC but widely used
- **Legal risk for integrators:** similar to USDC — low for non-custodial use

### PYUSD (PayPal USD) on Solana
- PayPal launched native PYUSD on Solana in 2024
- Issued by Paxos, regulated by NYDFS
- Growing adoption, especially for US-facing consumer apps

### Practical guidance for builders
- Non-custodial use (swap, display, transfer in/out) = minimal legal exposure
- Custodial use (you hold user USDC in your smart contract) = check your jurisdiction's money transmission laws
- Displaying prices or facilitating swaps = generally fine globally

---

## Issuing your own stablecoin

Issuing a stablecoin means you are creating a payment instrument. Almost every major jurisdiction now requires a license for this.

### US: Payment Stablecoin Act (2025)
- Passed in late 2025 — first comprehensive US stablecoin law
- Requires issuers to be: a federally approved institution, an insured depository, or state-licensed money transmitter
- 1:1 reserve backing required, audited monthly
- Foreign issuers can apply for Federal Reserve approval
- **Practical impact:** if you want to issue a USD stablecoin for US users, you need a license or must use a licensed issuer (Circle, Paxos)

### EU: MiCA (Markets in Crypto-Assets Regulation)
- Fully in effect as of 2024
- Stablecoins classified as "e-money tokens" or "asset-referenced tokens"
- E-money tokens: require EU e-money license (or partner with licensed EMI)
- Asset-referenced tokens (backed by basket of assets): stricter requirements
- Non-EU issuers can serve EU users only if they comply with MiCA or use a licensed EU entity

### UAE: CBUAE Stablecoin Regulation (2024)
- Central Bank of UAE issued rules for payment stablecoins
- AED-backed stablecoins require CBUAE license
- Foreign stablecoins (USDC, USDT) allowed but regulated
- Strong framework — UAE is one of the clearest jurisdictions for stablecoin issuers

### Singapore: MAS Payment Services Act
- Stablecoin issuers must hold a Major Payment Institution (MPI) license
- 1:1 reserve requirement, monthly reporting
- Singapore is a favorable jurisdiction if you can get licensed

### Pakistan: (2026 status)
- State Bank of Pakistan has not issued stablecoin-specific rules yet
- Crypto broadly in a regulatory grey zone
- Pakistani founders typically issue stablecoins via UAE or Cayman entities
- Do not issue a PKR-backed stablecoin without specific SBP guidance

---

## Algorithmic stablecoins

After the UST/LUNA collapse (2022), algorithmic stablecoins face severe regulatory headwinds:

- US Payment Stablecoin Act explicitly excludes algorithmic stablecoins from the licensed framework
- EU MiCA effectively bans new algorithmic stablecoin issuance
- Building one is technically legal in most jurisdictions but faces existential listing and banking risk
- **Recommendation:** avoid unless you have specific legal clearance and strong risk management

---

## Yield-bearing stablecoins (e.g. sUSDS, USDY)

Growing category — stablecoins that automatically accrue yield (from T-bills, DeFi protocols, etc.):

- May be classified as securities in some jurisdictions (yield = investment return)
- Ondo Finance's USDY took a careful approach: restricted from US persons
- MiCA does not have clear rules yet for yield-bearing tokens
- **Recommendation:** get legal opinion before building yield-bearing stablecoin products for users

---

## Quick reference: can I use this stablecoin in my Solana app?

| Stablecoin | Non-custodial use | Custodial use | Issue in your app |
|-----------|------------------|--------------|------------------|
| USDC | ✅ Yes | ⚠️ Check jurisdiction | ❌ Need Circle license |
| USDT | ✅ Yes | ⚠️ Check jurisdiction | ❌ Need Tether partnership |
| PYUSD | ✅ Yes | ⚠️ Check jurisdiction | ❌ Need Paxos partnership |
| Your own USD stablecoin | N/A | N/A | ❌ Need license in most jurisdictions |
| Your own yield-bearing stable | N/A | N/A | ⚠️ Legal opinion required |
