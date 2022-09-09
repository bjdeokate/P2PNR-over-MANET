#include <omnetpp.h>
#include <stdio.h>
#include <string.h>
#include "Hash_One.h"
#include "TransactionData.h"
Hash_One::Hash_One(int idx, TransactionData d, size_t prevHash){
    index = idx;
    data = d;
    previousHash = prevHash;
    blockHash = generateHash();
}
int Hash_One::getIndex(){
    return index;
}
size_t Hash_One::generateHash(){
    std::string toHashS = data.skey + std::to_string(data.timestamp);
    std::hash<std::string> tDataHash;
    std::hash<std::string> prevHash;
    return tDataHash(toHashS) ^ (prevHash(std::to_string(previousHash)) << 1);
}
size_t Hash_One::getHash(){
    return blockHash;
}
size_t Hash_One::getPreviousHash(){
    return previousHash;
}
bool Hash_One::isHashValid(){
    return generateHash() == getHash();
}





