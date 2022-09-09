#ifndef BLOCKCHAIN_H_
#define BLOCKCHAIN_H_

#include <vector>
#include "Hash_One.h"


class Blockchain{
private:
    Hash_One createGenesisBlock();
    std::vector<Hash_One> chain;
public:
        Blockchain();
    std::vector<Hash_One> getChain();
    Hash_One *getLatestBlock();
    bool isChainValid();
    void addBlock(TransactionData data);
    void printChain();
    void handleMessage();
};

#endif
