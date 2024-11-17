module StarClaims {

    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    /// Struct representing an insurance claim.
    struct Claim has store, key {
        amount: u64,        // Amount claimed
        approved: bool,     // Whether the claim is approved or not
    }

    /// Function to create a new insurance claim.
    public fun create_claim(owner: &signer, amount: u64) {
        let claim = Claim {
            amount,
            approved: false,
        };
        move_to(owner, claim);
    }

    /// Function for the insurance provider to approve a claim.
    public fun approve_claim(provider: &signer, claimant: address) acquires Claim {
        let claim = borrow_global_mut<Claim>(claimant);

        // Set the claim as approved
        claim.approved = true;

        // Withdraw the funds from the provider and deposit them to the claimant
        let payment = coin::withdraw<AptosCoin>(provider, claim.amount);
        coin::deposit<AptosCoin>(claimant, payment);
    }
}
