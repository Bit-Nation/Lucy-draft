# Lucy-draft - 16 Nov 2017

/** 
 * HIGH LEVEL FUNCTIONAL OVERVIEW (approximately chronological). 
 * 
 * Pro-tip: copy and paste into remix.ethereum.org to see what's working and needs remediation
 * 
 * (1) Initialize actor type (citizen; witnesses; arbitrator; agreement (aka a contract); code of law; nation; etc)
 * 
 *      Enforce certain hard contraints (examples: can nations evaluate the fitness of a citizen? Do we want to inhibit
 *      the ability for certain automated actors to evaluate the fitness of a citizen? 
 * 
 *      I believe we may want to consider the disproportionate influence automated actors may have in the future, relative 
 *      to citizens. 
 * 
 *      Consider, for instance, a semi-autonomous code of law Dapp that is "self-pruning" through the use of predictive 
 *      analytics and evaluation of data within the Exocortex. This could become a hell of a potent entity/actor within 
 *      Bitnation, and we may want to consider the wisdom of applying constraints to certain scenarios that are currently 
 *      "corner cases")
 * 
 *      In terms of Solidity, I aspire to have two primary actors, but abstracted. In Solidity, "msg.sender" is the actor that initiated
 *      the transaction, and will serve as one "actor" (in this first example, citizen_a), and then there's the other party 
 *      (currently citizen_b).
 * 
 *      In the context of a feature-complete Lucy, there's actually multiple actors: witnesses, arbitrators, codes of law, smart
 *      contracts, nations, and possibly other entities or actors. '
 *
 *      For instance, "msg.sender" could be a citizen; an arbitrator; an arbitration Dapp (there may be reasons why we may want to
 *      distinguish between a human and Dapp automated arbitration - still evaluating); a smart contract; a legal code; and a nation
 *
 *      ...or could it? 
 * 
 *      I'm troubled by the idea that Lucy should not allow some actors to evaluate the fitness of citizens, for 
 *      instance. Do we really want an "economic zone" to evaluate the fitness of a citizen? What about a Dapp automated 
 *      arbitration service that is in some manner affiliated with a nation?
 * 
 * (2) Initialize token type per actor (PoA; PoC; PoN)
 *      Enforce certain hard contraints that may inhibit attack vectors (related to above-stated concern). Intention is to 
 *      take actor type and associate it with proper token type.
 *
 *      Risk scenario: make sure that there aren't corner cases where, for instance: an artibrator associated with
 *      a PoA establishes a highly-regarded reputation, and months later "upgrades" to an automated atribration 
 *      Dapp that's in some manner manipulated by an economic zone to effect disproportionately negative 
 *      fitness ratings upon citizens. 
 * 
 *      Inbalance: small number of "puppet masters" (actors) relative to high level of fitness. 
 * 
 *      I want to think through all the ways we can ensure compartmentalization at several levels, both at the actor level 
 *      (see above) and the token level, if this proves to make sense
 *
 *      There may be instances where an actor type may merit another kind of token once its crossed the line to become 
 *      something else entirely. Again, this is speculative, and abstolutely a strategic concern
 *  
 *      In terms of an attack vector, and from the perspective of a "black hat," it's abstolutely what I'd consider doing: 
 * 
 *      I'd come in slow and low as a "person," and in time upgrade to something more automated, leveraging in some manner 
 *      the reputation I'd carefully cultivated as an individual. 
 * 
 *      Later, I'd leverage the equity of my (Dapp) accumulated reputation to cultivate arrangements with old-world centralized 
 *      entities that enabled them to effect disproportionate power and/or effect retribution in some manner through
 *      back-channel arrangements
 * 
 *      I posit that an individual has far less capability to do this as well as an automated Dapp that can accumulate far
 *      greater reputation and influence on behalf of a "puppetmaster," whereas a PoC, for instance, has implicit (and possibly
 *      explicit) constraints that inhibit such systemic manipulation
 * 
 *      I need Johan's brains right now (zombie sounds)  :)
 * 
 * (3) Santity checks and self-protection 
 *      We may need to include logic that protects us from standardized nonsense, for instance a single actor setting 
 *      up a large number of actors within the Bitnation ecosystem and hammering at us with incomplete transactions
 *      resulting in some kind of weird economic DOS I still need to think through within the context of Dapps and
 *      token value
 * 
 * (4) Lucy facilitates chat between two or more entities (actors)
 *      Is it helpful or confusing to refer to this as a "chatbot" interaction?
 *
 *      If so, I posit that we are at risk of "overloading" the chatbot functionality in this 
 *      contract to the extent that this one could become unduly expensive, in terms of transaction costs
 * 
 *      We may consider putting most of the more mundane chatbot functionality into a seperate contract that calls this 
 *      contract, if necessary, to ensure that Bitnation-based solutions remain economically-viable even if Ethereum or
 *      other blockchain/post-blockchain architectures become expensive in the future (already a problem with Bitcoin and 
 *      some Ethereum-based Dapps)
 * 
 *      In any event, if and when a contract is settled upon, the chatbot functionality of Lucy facilitates the other actors
 *      (witnesses, arbitrators, codes of law, etc), the contract being digitally signed, and its being written to the 
 *      blockchain (Ethereum, for now, but agnostic to blockchain or post-blockchain in the future)
 * 
 *      I'm assuming this is where we capture the core of the "chatbot" capability, which frankly seems expensive to me, 
 *      in terms of transaction costs.
 * 
 *      Thinking that perhaps we consider taking most of the chatbot functionality, dropping it into a separate smart contract, 
 *      and in the event the chat exchange evolves to become a transaction, this smart contract is called
 * 
 *      Chatbot needs to have:
 *          Find citizen (by name and sorted by PoA - UI function)
 *          Find witness(es) (by name and sorted by PoA - UI function)
 *          Ask citizen to be witness
 *          Find arbitrator (sorted by PoA and name - UI function)
 *          Find code of law (sorted by name and PoN - UI function)
 *          Find or write contract, or what I call an Agreement to reduce confusion with Smart Contracts (currently undefined, but large UI functionality)
 *          Other functions yet to be defined
 * 
 * 
 * 
 * (5) Lucy receives indication that the transaction has completed to the satisfaction of all concerned parties 
 *      I can't say I'm entirely satisfied with how we make sure ab arrangement actually completes, or does so within proper constraints. 
 * 
 *      For instance, are there not scenarios where a dispute occurs, but the dispute draws out for years? 
 * 
 *      My concern isn't so much about how we make sure the actors come to an agreement in a timely manner; I worry about the
 *      "long tail" of lengthy disputes, their association with old world actors, and the possible negative impact this
 *      could have upon the financial viability of the PAT tokens, perceived efficacy of Bitnation-based solutions, etc etc. 
 * 
 *      In other words: are there not instances where the arbitration model itself could be used as a form of "battle of 
 *      attrition" that is designed to starve our economy, or make it appear as if we are not effective?
 * 
 *      Other than the instance where proxies of old world entities contrive these scenarios to make Bitnation appear inept, 
 *      I don't have a specific scenario in mind that can deliver upon an impact to PAT, but I want to make sure we're 
 *      thinking of all possible vectors. 
 * 
 *      It's from this perspective that I'm considering a hard limit on dispute duration, or at least some temporal 
 *      parameter that's in some manner impacted by the transaction cost or value of PAT, or something. I need to draw this 
 *      vector out more before I can feel good about it.
 * 
 * 
 * 
 * (6) Lucy elicits a review of fitness and/or automatically assigns a fitness score to all actors 
 *      In the first version I'm pretty sure we're going to have something pretty simple: "on a scale of one to five stars,
 *      how would you rate your satisfaction with this actor?" - something reminicent of Uber or Lyft, etc 
 * 
 *      However, I can see the next step being satisfaction rating (fitness) that's a function of subjective satisfaction plus
 *      temporal duration (see above) as a built-in incentive for bringing these disputes to closure, sooner rather than later.
 * 
 *      In other words: remove the incentive to treat this system like it's free and continue to take forever to wrap things up 
 * 
 *      In later releases I am playing with automatically-assigned fitness for merging efficiency, timeliness, subjective
 *      satisfaction, and investment in continuous improvement, quantified in a demonstrative reduction in transaction costs 
 *      and a corresponding increase in other satisfaction factors.
 * 
 *      For the first release, I intend to add scales of subjective satisfaction (enum 0-5) plus a temporal parameter, and 
 *      leverage a derivative of Johan's code for token value manipulation
 * 
 * 
 * (7) Lucy assigns reputation tokens to actors, distributes them to actors through an Oracle 
 *      
 * 
 * HIGH LEVEL QUESTIONS 
 * 
 *  - How many of our functions are supposed to be "public," meaning: do we want contracts to be able to call them from 
 *      outside Lucy?
 * 
 * 
 * /
