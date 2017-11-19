pragma solidity ^0.4.18;
    import "./AgreementMade";
    import "./Mediation";
    import "./ElicitFitnessReview";

contract Lucy is AgreementMade, Mediation, ElicitFitnessReview {

    /**
     * state variables
     * 
     * (TODO) ensure I've not missed token-related variables that should be passed from contracts AgreementMade or Mediation
     * 
     */

     
     
     /**
      * functions
      * 
      * modifer {
          make sure the calling actor type can even perform this function 
      }
      */ 
      
      function tokenDist () public {
      }

    function giveTokens(address aaddr, uint ttype, uint atokenbal, uint agreeval) public {
        AgreementMade[actor.atokenbal] += agreeval; // I'm doing this all wrong. Bleh 
    }   




}