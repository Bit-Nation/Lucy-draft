pragma solidity ^0.4.18;
    import "./PangeaTokens";

contract AgreementMade is PangeaTokens {    // this seems redundant, but want to make sure 


    /**
     * Purpose: defines "actor" parameters used within the following associated contracts, and defines parameters of 
     * agreement between two parties 
     * - contract: Mediation
     * - contract: ElicitFitnessReview
     * - contract: Lucy
     * 
     */
    struct Actor {
        uint actorType;         // TODO: has to be defined in the Dapp - Citizen, Arbitrator, Legal Code, Agreement, Nation 
        address actorAddr;      // Address for the actor participating in the transcation 
        uint tokenType;         // I'll associate the proper tokenType per actorType
        uint actorTokenBal;     // The balance of tokens associated with the actor - Citizen, Arbitrator, Legal Code, Agreement, Nation
        bool canRate;           // Some actors can't provide a rating (PoN)
        bool canMakeAgreement;  // Some actors can't make an agreement (Witnesses)
        bool isWitness;         // Has the actor opted in to being a witness? Also: witnesses can receive but not give fitness rating
        bool isDapp;            // possible vector - placeholder until I think this through entirely
    }   

    mapping (bytes32 => Actor) public actorStruct;  // An array we can leverage from this and other contracts re: actors and their attributes
 
    /** this may not be necessary except to simplify logic flow in following contracts*/
    function actor (
        uint atype, 
        address aaddr, 
        uint ttype, 
        uint atokenbal,          
        bool yrate, 
        bool ymakeagree, 
        bool iswit, 
        bool isdapp) 
        public {
            atype = [Actor].actorType;
            aaddr = [Actor].actorAddr;
            ttype = [Actor].tokenType;
            atokenbal = [Actor].actorTokenBal;
            yrate = [Actor].canRate;
            ymakeagree = [Actor].canMakeAgreement;
            iswit = [Actor].isWitness;
            isdapp = [Actor].isDapp;
    }

    
    struct Agreement {
       uint agreementID;        // Defines agreement ID associated with agreement between two parties 
       uint agreementDeadline;  // Allows for the definition of a temporal deadline
       uint agreementTerms;     // Aka: the contract between the two parties. Staying away from "contract" within the context of Solidity
       string agreementStatus;  // Implies a string table containing a variety of statuses (which may also facilitate localization efforts)
       bool agreementEnded;     // Yes or no: is the agreement finalized?
       uint agreementAwardVal;  // Amount value (merits definition - in this contract? TODO)
    }

    mapping (bytes32 => Agreement) agreementRegistry;   // Merits better definition because I believe this becomes/is the Exocortex
                                                        // Intend to turn this into a mapped struct with index, or one that allows deletions 

    /** this may not be necessary except to simplify logic flow in following contracts*/
    function agreement (
        uint agreeid,
        uint agreedeadline,
        uint agreeterms,
        string agreestat,
        bool agreeend,
        uint agreeawval)
        public {
            agreeid = [Agreement].agreementID;
            agreedeadline = [Agreement].agreementDeadline;
            agreeterms = [Agreement].agreementTerms;
            agreestat = [Agreement].agreementStatus;
            agreeend = [Agreement].agreementEnded;
            agreeawval = [Agreement].agreementAwardVal;
        }
            
     
     /**
      * functions
      * 
      */

    /** Sanity check: is the actor allowed to define an agreement with another party?*/
    function isAllowedToMakeAgreement(uint atype, bool ymakeagree, bool iswit) public {     // TODO: make this simpler, because: yuck 
        if (atype = "Citizen" || atype = "Abritrator" || atype = "Legal_Code" || atype = "Agreement")
                ymakeagree = true; 

        else (atype = "Nation" || iswit = true);
                ymakeagree = false;
                revert;

        }

    /** Sanity check: ensuring this (what "this?) functions and/or lives within the context of Pangea - merits clarification TODO*/        
    function onlyPangea (uint agreeid, uint agreeterms) public {
        agreementRegistry[agreeid] = agreeterms;
    }



 
    /**
     * Work in progress: putting some thought into how we define what goes into the agreementRegistry TODO
     * 
    function newAgreement(
        uint actorType, 
        address actorAddr, 
        uint tokenType, 
        bool canMakeAgreement, 
        bool isWitness, 
        bool isDapp, 
        uint agreementID,
        uint agreementDeadline) {
            Agreement storage a =   // working on committing values to storage 
            
    }
    */


    /** Registers the agreement - incomplete TODO*/
    function registerAgreement(uint _actorAddr, uint _actorType, uint _deadline, uint _terms) public { 

    }




    /** If agreement ends to satisfaction, calls contract Lucy. If not, calls contract Arbitration/Mediation*/    
    function startFitnessReview () public {
        ElicitFitnessReview e = ElicitFitnessReview("ElicitFitnessReview_address");   //hard-coded address for contract? TODO
        return e.sanityCheck();
    }    
    
    function startMediation () public {
        Mediation m = Mediation("Mediation_address");  //hard-coded address for contract? TODO
        return m.registerArbitrationID(); // begin arbitration from within the contract "Mediation"
    } 
    
    function agreementSatisfaction (uint agreeend, uint agreestat) public returns (uint) {
        if (agreeend = true ) {
            if (agreestat = "Satisfied") {  // implied reference to a string table value (not yet defined) sent by Dapp
                startFitnessReview;
            }
        }
        else 
            startMediation;
        }

}