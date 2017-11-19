pragma solidity ^0.4.18;
    import "./AgreementMade";

contract Mediation is AgreementMade {
    /**
     * state variables
     * 
     */
     // TODO: define array for actors participating in mediation (struct or enum), plus applicable transaction context (agreement info)
     uint public numWitnesses;
     bool mediationEnded;
     uint arbitrationID;

     
     /**
      * functions
      * 
      * function updateAgreementStatus(uint this.AgreementMade[agreementStatus])
      * 
      * 
      * function registerArbitrationID()
      * 
      * 
      */

    function startLucy () public {         // calls Lucy (with what values? TODO)
        Lucy l = Lucy(/**put lucy contract address here later*/);
        return l.tokenDist();
    }
    
    function mediationSatisfaction () public returns (uint) {
        if (mediationEnded = true ) {
            startLucy; // I assume delivering to her the IDs of those who participated TODO 
            }
    }



}