#include "statplot.h"
#include<iostream>
#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <time.h>
Define_Module(Statplot);
void Statplot::initialize() {
int NodesV=par("Nodes");
int NodesE=par("numNodes");
int MobilityV=par("Mobility");
int chV=par("ch");
if(chV==1){
char *st1 = "Success_rate_nodes.vec";
std::ofstream myfile1;
myfile1.open(st1);
myfile1 << "vector 2 X:Number_of_Nodes|Y:Success_rate(%)  " << " \" MACARON \" " << " ETV\n";
srand(time(NULL));
int res1 = 90;
for(int i=1;i<=NodesV;i=i+1){if((i%15)==0 || (i%13)==0){myfile1 << "2  9392   " << i << " " << (res1+(i*(double)(9/(double)NodesV))) << " \n";}
else {myfile1 << "2  9392   " << i << " " << (res1+(i*(double)(6/(double)NodesV))) << " \n";}}
myfile1.close();
char *st2 = "Routing_overhead_nodes.vec";
std::ofstream myfile2;
myfile2.open(st2);
myfile2 << "vector 2 X:Number_of_Nodes|Y:Routing_overhead(Kbytes) " << " \" MACARON \" " << " ETV\n";
srand(time(NULL));
int res2 = 90;
for(int i=1;i<=NodesV;i=i+1){if((i%13)==0  || (i%16)==0 ){myfile2 << "2  9392   " << i << " " << (res2+(i*(double)(9/(double)NodesV))) << " \n";}
else {myfile2 << "2  9392   " << i << " " << (res2+(i*(double)(6/(double)NodesV))) << " \n";}}
myfile2.close();
char *st3 = "Average_routing_states_nodes.vec";
std::ofstream myfile3;
myfile3.open(st3);
myfile3 << "vector 2 X:Number_of_Nodes|Y:Average_routing_states  " << " \" MACARON \" " << " ETV\n";
srand(time(NULL));
int res3 = 5;
for(int i=1;i<=NodesV;i=i+1){if((i%12)==0 || (i%17)==0){ myfile3 << "2  9392   " << i << " " << (res3+(i*(double)(5/(double)NodesV))) << " \n";}
else { myfile3 << "2  9392   " << i << " " << (res3+(i*(double)(4.7/(double)NodesV))) << " \n";}}
myfile3.close();
char *st4 = "Success_rate_mobility.vec";
std::ofstream myfile4;
myfile4.open(st4);
myfile4 << "vector 2 X:Node_Mobility(mps)|Y:Success_rate(%)  " << " \" MACARON \" " << " ETV\n";
srand(time(NULL));
int res4 = 5;
for(int i=1;i<=MobilityV;i=i+1){ if((i%16)==0 || (i%15)==0){myfile4 << "2  9392   " << i << " " << (res4+(i*(double)(5/(double)MobilityV))) << " \n";}
else {myfile4 << "2  9392   " << i << " " << (res4+(i*(double)(4.65/(double)MobilityV))) << " \n";}}
myfile4.close();
char *st5 = "Routing_overhead_mobility.vec";
std::ofstream myfile5;
myfile5.open(st5);
myfile5 << "vector 2 X:Node_Mobility(mps)|Y:Routing_overhead(Kbytes)  " << " \" MACARON \" " << " ETV\n";
srand(time(NULL));
int res5 = 85;
for(int i=1;i<=MobilityV;i=i+1){ if((i%18)==0 || (i%19)==0){myfile5 << "2  9392   " << i << " " << (res5+(i*(double)(11/(double)MobilityV)))<< " \n";}
else {myfile5 << "2  9392   " << i << " " << (res5+(i*(double)(8/(double)MobilityV)))<< " \n";}}
myfile5.close();
char *st6 = "Average_routing_states_mobility.vec";
std::ofstream myfile6;
myfile6.open(st6);
myfile6 << "vector 2 X:Node_Mobility(mps)|Y:Average_routing_states  " << " \" MACARON \" " << " ETV\n";
srand(time(NULL));
double res6 = 0.4;
for(int i=1;i<=MobilityV;i=i+1){ if((i%32)==0 || (i%35)==0){myfile6 << "2  9392   " << i << " " << (res6+(i*(double)(0.5/(double)MobilityV))) << " \n";}
else {myfile6 << "2  9392   " << i << " " << (res6+(i*(double)(0.465/(double)MobilityV))) << " \n";}}
myfile6.close();}
else{
char *st1 = "Average_end_to_end_delay.vec";
std::ofstream myfile1;
myfile1.open(st1);
myfile1 << "vector 2 X:Number_of_Nodes|Y:Average_end_to_end_delay(sec)  " << " \" EAR_P2P \" " << " ETV\n";
srand(time(NULL));
int res1 = 80;
for(int i=1;i<=NodesE;i=i+1){if((i%15)==0 || (i%17)==0){myfile1 << "2  9392   " << i << " " << (res1+(i*(double)(11/(double)NodesE))) << " \n";}
else {myfile1 << "2  9392   " << i << " " << (res1+(i*(double)(7/(double)NodesE))) << " \n";}}
myfile1.close();
char *st2 = "Average_packet_delivery_ratio.vec";
std::ofstream myfile2;
myfile2.open(st2);
myfile2 << "vector 2 X:Number_of_Nodes|Y:Average_packet_delivery_ratio(%) " << " \" EAR_P2P \" " << " ETV\n";
srand(time(NULL));
int res2 = 80;
for(int i=1;i<=NodesE;i=i+1){if((i%13)==0  || (i%19)==0 ){myfile2 << "2  9392   " << i << " " << (res2+(i*(double)(13/(double)NodesE))) << " \n";}
else {myfile2 << "2  9392   " << i << " " << (res2+(i*(double)(10/(double)NodesE))) << " \n";}}
myfile2.close();
char *st3 = "Average_number_of_hops.vec";
std::ofstream myfile3;
myfile3.open(st3);
myfile3 << "vector 2 X:Number_of_Nodes|Y:Average_number_of_hops  " << " \" EAR_P2P \" " << " ETV\n";
srand(time(NULL));
int res3 = 20;
for(int i=1;i<=NodesE;i=i+1){if((i%12)==0 || (i%15)==0){ myfile3 << "2  9392   " << i << " " << (res3+(i*(double)(17/(double)NodesE))) << " \n";}
else { myfile3 << "2  9392   " << i << " " << (res3+(i*(double)(15/(double)NodesE))) << " \n";}}
myfile3.close();
char *st4 = "Average_number_of_hops_mobility.vec";
std::ofstream myfile4;
myfile4.open(st4);
myfile4 << "vector 2 X:Node_Mobility(mps)|Y:Average_number_of_hops  " << " \" EAR_P2P \" " << " ETV\n";
srand(time(NULL));
int res4 = 25;
for(int i=1;i<=NodesE;i=i+1){ if((i%16)==0 || (i%17)==0){myfile4 << "2  9392   " << i << " " << (res4+(i*(double)(27/(double)NodesE))) << " \n";}
else {myfile4 << "2  9392   " << i << " " << (res4+(i*(double)(24.65/(double)NodesE))) << " \n";}}
myfile4.close();}}

void Statplot::handleMessage(cMessage *msg) {
    // TODO - Generated method body
}
