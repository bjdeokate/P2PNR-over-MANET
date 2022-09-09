#ifndef HASH_ONE_H_
#define HASH_ONE_H_

#include<string.h>
#include<omnetpp.h>
#include "TransactionData.h"

class Hash_One{
private:
    int index;
    size_t blockHash;
    size_t previousHash;
    size_t generateHash();

public:
    Hash_One(int idx, TransactionData d, size_t prevHash);
    int getIndex();
    size_t getHash();
    size_t getPreviousHash();
    TransactionData data;
    bool isHashValid();
};

#endif
