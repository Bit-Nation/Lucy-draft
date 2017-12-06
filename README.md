# Lucy-draft - 6 Dec 2017

I've elected to split Lucy's functions into separate contracts, as such:

- Define and create the agreement between two parties (AgreementMade.sol)
- Solicit and assign a fitness rating to the parties involved at the end of the transaction (ElicitFitnessReview.sol)
- If there's disagreement about the transaction, Lucy orchestrates mediation/arbitration (Mediation.sol)
- A placeholder for creating PoA, PoC, and PoN (haven't yet seen that contract) (PangeaTokens.sol)
- Actual distribution of the tokens (Lucy.sol)

Open issues:

(All contracts)
- How to limit execution to Pangea (define and use a single method)
- Data architecture as it pertains to the AgreementRegistry (align the state variables across the contracts, and ensure we're properly defining how data is declared, in the interest of economy, utility, and cost)

(AgreementMade.sol)
- Writing to the AgreementRegistry: assumed through Oracle, and stored on IPFS (with Filecoin incentivization for data persistence)

(ElicitFitnessReview.sol)
- I've defined a matrix of fitness scoring options I'd like to solidify upon because it would form the basis of the automated fitness scoring from a future version of Lucy - to review (and not currently in the contract)

(Mediation.sol)
- Updating status of the agreement so people can see how things are progressing at a glance (usability feature)
- What happens if one party isn't satisfied with the arbitrator? I'd argue this is an option to call this contract, again, to rate the performance of the arbitrator - just need to make sure it doesn't loop forever, or beyond what's reasonable)

(Lucy.sol)
- Collects the fitness scoring, citizen and "actor" info, distributes tokens, etc


Open worries (from first version):

Q: Enforce certain hard contraints to "actors" to protect against popularity contests and/or retribution

Examples: can nations evaluate the fitness of a citizen? Do we want to inhibit the ability for certain automated actors to evaluate the fitness of a citizen? 

I believe we may want to consider the disproportionate influence automated actors may have in the future, relative to citizens. 

Consider, for instance, a semi-autonomous code of law Dapp that is "self-pruning" through the use of predictive analytics and evaluation of data within the Exocortex. This could become a hell of a potent entity/actor within Bitnation, and we may want to consider the wisdom of applying constraints to certain scenarios that are currently "corner cases")

In terms of Solidity, I aspire to have two primary actors, but abstracted. In Solidity, "msg.sender" is the actor that initiated the transaction, and will serve as one "actor" (in this first example, citizen_a), and then there's the other party.

In the context of a feature-complete Lucy, there's actually multiple actors: witnesses, arbitrators, codes of law, smart contracts, nations, and possibly other entities or actors. 
     
For instance, "msg.sender" could be a citizen; an arbitrator; an arbitration Dapp (there may be reasons why we may want to distinguish between a human and Dapp automated arbitration - still evaluating); a smart contract; a legal code; and a nation

...or could it? 

I'm troubled by the idea that Lucy should not allow some actors to evaluate the fitness of citizens, for instance. Do we really want an "economic zone" (an entity) to evaluate the fitness of a citizen? What about a Dapp automated arbitration service that is in some manner affiliated with a nation?


Q: Impose hard limits of token types per actor (PoA; PoC; PoN)

Enforce certain hard contraints that may inhibit attack vectors (related to above-stated concern). Intention is to take actor type and associate it with proper token type.

Risk scenario: make sure that there aren't corner cases where, for instance: an artibrator associated with a PoA establishes a highly-regarded reputation, and months later "upgrades" to an automated atribration Dapp that's in some manner manipulated by an economic zone to effect disproportionately negative fitness ratings upon citizens. 

Imbalance: small number of "puppet masters" (actors) relative to high level of fitness. Kind of a mix between IRL coersion and a sybil attack. 

I'd come in slow and low as a "person," and in time upgrade to something more automated, leveraging in some manner the reputation I'd carefully cultivated as an individual. 

Later, I'd leverage the equity of my (Dapp) accumulated reputation to cultivate arrangements with old-world centralized entities that enabled them to effect disproportionate power and/or effect retribution in some manner through back-channel arrangements

I posit that an individual has far less capability to do this as well as an automated Dapp that can accumulate far greater reputation and influence on behalf of a "puppetmaster," whereas a PoC, for instance, has implicit (and possibly explicit) constraints that inhibit such systemic manipulation


Q: Santity checks and self-protection 

We may need to include logic that protects us from standardized nonsense, for instance a single actor setting up a large number of actors within the Bitnation ecosystem and hammering at us with incomplete transactions resulting in some kind of weird economic DOS I still need to think through within the context of Dapps and token value


Q: Make sure agreement ends within proper temporal constraints

Original concern: are there not scenarios where a dispute occurs, but the dispute draws out for years? 

My concern isn't so much about how we make sure the actors come to an agreement in a timely manner; I worry about the "long tail" of lengthy disputes, their association with old world actors, and the possible negative impact this could have upon the financial viability of the PAT tokens, perceived efficacy of Bitnation-based solutions, etc etc. 

In other words: are there not instances where the arbitration model itself could be used as a form of "battle of attrition" that is designed to starve our economy, or make it appear as if we are not effective?

Other than the instance where proxies of old world entities contrive these scenarios to make Bitnation appear inept, I don't have a specific scenario in mind that can deliver upon an impact to PAT, but I want to make sure we're thinking of all possible vectors. 

It's from this perspective that I'm considering a hard limit on dispute duration, or at least some temporal parameter that's in some manner impacted by the transaction cost or value of PAT, or something. I need to draw this vector out more before I can feel good about it.

Dana suggested a financial incentive for ending transcations early. I like it. Still merits definition.


Q: Fitness scoring 

In the first version I'm pretty sure we're going to have something pretty simple: "on a scale of one to five stars, how would you rate your satisfaction with this actor?" - something reminicent of Uber or Lyft, etc 

Add to it a couple other questions about timeliness and "would you suggest this to a friend or colleague" and you have a solid start at something which resembles a Net Promoter score.

However, I can see the next step being satisfaction rating (fitness) that's a function of subjective satisfaction plus temporal duration (see above) as a built-in incentive for bringing these disputes to closure, sooner rather than later.

In other words: remove the incentive to treat this system like it's free and continue to take forever to wrap things up 

In later releases I am playing with automatically-assigned fitness for merging efficiency, timeliness, subjective satisfaction, and investment in continuous improvement, quantified in a demonstrative reduction in transaction costs and a corresponding increase in other satisfaction factors.

For the first release, I intend to add scales of subjective satisfaction (enum 0-5) plus a temporal parameter, and leverage a derivative of Johan's code for token value manipulation


Q: Functions that call the oracle

Token distribution?

Score updates per citizen (actor)

Updates to the various registries (on IPFS)




