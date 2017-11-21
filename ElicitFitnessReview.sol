pragma solidity ^0.4.18;
    import "https://github.com/Bit-Nation/Lucy-draft/blob/master/AgreementMade.sol";
    import "https://github.com/Bit-Nation/Lucy-draft/blob/master/Mediation.sol";
    import "https://github.com/Bit-Nation/Lucy-draft/blob/master/agreementRegistryIFPS.sol";

contract ElicitFitnessReview is AgreementMade, Mediation, agreementRegistryIFPS {
                                            // TODO: add payable for applicable functions

    /**
     * state variables
     * 
     * the following forms the basis of an autonomous "Lucy" able to deliver performance fitness for actors such as 
     * contracts (agreements), laws, and nations. It's assumed that these values will be stored in the IPFS-hosted 
     * AgreementRegistry, which would be part of the IPFS contract registry. These architectural decisions are 
     * still open TODO
     * 
     * struct perfScoring {
         bool T;            // Perceived (subjective) timeliness 
         bool R;            // Perceived (subective) subjectiveness to questions and inquiries
         bool W;            // Would you recommend this "actor" to a friend or colleague? (basis of the Net Promoter Score)
         bool E;            // Perceived (subjective) efficient (later: calculated T & E (cost-consideration))
         bool Ef;           // Perceived (subjective) effectiveness / efficacy (automated evaluation being defined)
         uint P;            // Future auto-calc for some actors: (T + E + EF) = P, relative to baseline performance 
                                for actor x as sampled from AgreementRegistry over time period t 
     }
     * 
     * mapping (bytes32 => perfScoring) public perfScore; 
     * 
     */
     
     
     /**
      * sanity check
      * 
      * modifer {
          sanity check making sure the calling actor type can even perform this function 
      }
      * 
      * 
      * function sanityCheck() public payable costs(price) { // TODO: costs and price definition
          called from agreement || called from arbitration 
          verified
          
      }

     /**
      * TODO: (6) define review matrix to inspire design of AgreementRegistry as prototype Exocortex  (above)
      * 
      */


     /**
      * TODO: (7) elicit actors for review / automated review for performance  
      * 
      */


      * 
      * function elicitFeedback (uint this.AgreementMade[actorType], uint this.AgreementMade[actorAddr, uint this.AgreementMade[tokenType], bool this.AgreementMade[canRate], bool this.AgreementMade[isWitness], bool this.AgreementMade[isDapp]) public {
          if then logic (TODO)
      }
      * 

      * 
      * 
      */

     /**
      * Fallback function (self-protection)  
      * 
      * Note: no longer needed after 0.4.0 
      * 
      */

}