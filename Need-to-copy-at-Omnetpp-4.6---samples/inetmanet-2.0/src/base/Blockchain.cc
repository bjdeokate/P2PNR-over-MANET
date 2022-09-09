#include <stdio.h>
#include <ctime>
#include <string>

#include "Hash_One.h"
#include "Blockchain.h"


#include <stdio.h>
#include <iostream>
#include <fstream>


#include <vector>


Blockchain::Blockchain(){
}


std::vector<Hash_One> Blockchain::getChain() {
    return chain;
}

Hash_One *Blockchain::getLatestBlock(){
    return &chain.back();
}

void Blockchain::addBlock(TransactionData d){
    int index = (int)chain.size();
    std::size_t previousHash = (int)chain.size() > 0 ? getLatestBlock()->getHash() : 0;
    Hash_One newBlock(index, d, previousHash);
    chain.push_back(newBlock);
}

bool Blockchain::isChainValid(){
    std::vector<Hash_One>::iterator it;

    for (it = chain.begin(); it != chain.end(); ++it){
        Hash_One currentBlock = *it;
        if (!currentBlock.isHashValid()){
            return false;
        }


        if (it != chain.begin()){
            Hash_One previousBlock = *(it - 1);
            if (currentBlock.getPreviousHash() != previousBlock.getHash())
            {
                return false;
            }
        }
    }

    return true;
}

void Blockchain::printChain() {
    std::vector<Hash_One>::iterator it;

    for (it = chain.begin(); it != chain.end(); ++it){
        Hash_One currentBlock = *it;

    }
}




