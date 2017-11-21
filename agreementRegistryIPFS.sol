pragma  solidity ^0.4.18;
        // TODO add any applicable contracts via import, here 

    /**
     * This contract is simple: 
     * - provides the hash "address" for a file on IPFS. Specifically to monitor an object on IPFS. It's admittedly incomplete
     * 
     * Functionally, and eventually, it's intended to provide a vehicle for reading from and writing to the agreementRegistry, 
     * which I posit will be a component of the "IPFS Contract Registry" (see the whitepaper), and is stored on IPFS, because 
     * I believe it may serve as the genesis of the eventual Exocortex.
     * 
     * What's not yet decided is "where" these data structures will reside (which is a funny concept within the context of 
     * truly decentralized architectures.)
     * 
     * the considerations are:
     *  - Strategic architectural support 
     *  - Market adoption of architecture 
     *  - Sustaintable architectural viability (for example: aggregate resource requirements from the EVM)
     * 
     * Ethereum facilitates state storage in the Transaction Trie and the Transaction Receipt Trie, sections 4.4 and 4.4.1
     * in the yellow paper), but I'm concerned that it may not be sufficiently extensible to serve the needs of the 
     * Exocortex
     * 
     * Further, and from what I read about strategic direction for Ethereum (truncating the permanance of data), as well as 
     * growing execution expense long-term, I'm concerned we may need a longer-term plan for state storage within a table 
     * array of some sort which may exist within a complementary decentralized architecture, such as IPFS or Swarm (we've 
     * chosen IPFS)
     * 
     * That said: you can't write from Solidity to IPFS, so an intermediary is required. 
     * 
     * Currently chosen direction: 
     *  - Solidity on Ethereum 
     *  - IPFS for content storage 
     *  - LIBP2P
     * 
     * Still open: 
     *  - No clean way to enforce permissions access controls to files on IPFS, or maybe there is, but I've not yet 
     *      digested it - TODO 
     * 
     * TODO: open item, category: strategic architecture
     * 
     * 
     */

contract agreementRegistryIFPS {
    string storedData;              // will be where we store address of IPFS hash for the agreementRegistry  

    function set(string x) public {        // "x" is the hash for the agreementRegistry on IPFS TODO
        storedData = x;
    }

    function get() public constant returns (string x) {
    return storedData;
    }

    /**
      * Fallback function (self-protection)  
      * 
      * Note: no longer needed after 0.4.0 
      * 
      */
    
    
}

