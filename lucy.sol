pragma solidity ^0.4.18;
    import "https://github.com/Bit-Nation/Lucy-draft/blob/master/AgreementMade.sol";
    import "https://github.com/Bit-Nation/Lucy-draft/blob/master/Mediation.sol";
    import "https://github.com/Bit-Nation/Lucy-draft/blob/master/ElicitFitnessReview";
    import "https://github.com/Bit-Nation/Lucy-draft/blob/master/agreementRegistryIFPS.sol";

contract Lucy is AgreementMade, Mediation, ElicitFitnessReview, agreementRegistryIFPS {
                                            // TODO: add payable for applicable functions


    /**
     * state variables
     * 
     * (TODO) ensure I've not missed token-related variables that should be passed from contracts AgreementMade or Mediation
     * 
     */

     
     
     /**
      * sanity check 
      * 
      * modifer {
          make sure the calling actor type can even perform this function 
      }
      */ 

     /**
      * TODO: collect review values from ElicitFitnessReview 
      * Currently planning how a variety of performance characteristics may define a performance score which may, in turn, 
      * maps to variable value of an actor entity on Pangea. For example, if a "code of law" is simply heads and shoulders 
      * better for its customers, in terms of timeliness, responsiveness, efficency, and overall performance, why not 
      * reward it, accordingly?)
      * 
      */

     
     /**
      * TODO:  define agreement value 
      * 
      */



     /**
      * TODO: mint and distribute tokens 
      * 
      */


     /**
      * TODO: (8) deliver performance review to Oracle 
      * 
      * Open, but currently planning on using Florian's Oracle implementation until we roll with Oracleize.it later on '
      * 
      */
     
      
      function tokenDist () public {
      }

    function giveTokens(address aaddr, uint ttype, uint atokenbal, uint agreeval) public {
        AgreementMade[actor.atokenbal] += agreeval; // I'm doing this all wrong. Bleh 
    }   


     /**
      * Fallback function (self-protection)  
      * 
      * Note: no longer needed after 0.4.0 
      * 
      */

}