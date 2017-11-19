pragma solidity ^0.4.18;
    import "./AgreementMade";
    import "./Mediation";

contract ElicitFitnessReview is AgreementMade, Mediation {
    /**
     * state variables
     * 
     * struct Feedback {
     *  uint satisfactionScore;
     *  uint timelinessScore;
     *  bool recommendToOthers; // shooting for something akin to the Net Promoter Score (NPS)
     *  }
     * 
     * mapping 
     * 
     */
     
     
     /**
      * functions
      * 
      * modifer {
          sanity check making sure the calling actor type can even perform this function 
      }
      * 
      * 
      * function sanityCheck() public {
          called from agreement || called from arbitration 
          verified
          
      }
      * 
      * function elicitFeedback (uint this.AgreementMade[actorType], uint this.AgreementMade[actorAddr, uint this.AgreementMade[tokenType], bool this.AgreementMade[canRate], bool this.AgreementMade[isWitness], bool this.AgreementMade[isDapp]) public {
          if then logic (TODO)
      }
      * 

      * 
      * 
      */

}
