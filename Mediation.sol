pragma solidity ^0.4.18;
    import "https://github.com/Bit-Nation/Lucy-draft/blob/master/AgreementMade.sol";
    import "https://github.com/Bit-Nation/Lucy-draft/blob/master/agreementRegistryIFPS.sol";

contract Mediation is AgreementMade, agreementRegistryIFPS {
                                            // TODO: add payable for applicable functions

    /**
     * state variables
     * 
     */
     // TODO: define array for actors participating in mediation (struct or enum), plus applicable transaction context (agreement info)

     struct NewMediation {
         uint numWitnesses;
         bool mediationEnded;
         uint arbitrationID;
     }

    mapping (bytes3 => newMediation) public newMed; 

    /** this may not be necessary except to simplify logic flow in following contracts*/    
    function newmediation (
        uint numwit,
        bool medend,
        uint arbid)
        public {
            numwit = [newMediation].numWitnesses;
            medend = [newMediation].mediationEnded;
            arbid = [newMediation].arbitrationID;
        }

     /**
      * TODO: sanity check (undefined but open)
      * 
      * TODO: limit to Pangea?
      * 
      */



     /**
      * TODO: (4) define new mediation agreement 
      * 
      */

    function createMediation (
        uint numwit,
        bool medend,
        uint arbid) public payable {
        return createMediation();  // clumsy. TODO revisit this soon 
    }




    function startLucy () public {         // calls Lucy (with what values? TODO)
        Lucy l = Lucy(/**put lucy contract address here later*/);
        return l.tokenDist();
    }
    
    function mediationSatisfaction () public returns (uint) {
        if (mediationEnded = true ) {
            startLucy; // I assume delivering to her the IDs of those who participated TODO 
            // TODO: add calling mediation if parties aren't satisifed with outcome
            }
    }

     /**
      * TODO: (5) update the AgreementRegistry 
      * 
      */


     /**
      * Fallback function (self-protection)  
      * 
      * Note: no longer needed after 0.4.0 
      * 
      */


}