package Mobility_Aware_Cross_Layer_Routing_Approach.simulations;

import inet.base.SHA1_HASH;
import inet.networklayer.autorouting.ipv4.IPv4NetworkConfigurator;
import inet.base.Mobilenode;
import inet.networklayer.routing.MACARON.MACARON;
import inet.networklayer.routing.aodv.EAR_P2P;
import inet.nodes.aodv.AccessPoint;
import inet.nodes.ipv6.Router;
import inet.nodes.xmipv6.Server;
import inet.world.radio.ChannelControl;


network Mobility_Aware_Cross_Layer_Routing_Approach_EAR_P2P_NW
{
    parameters:
        @display("bgb=1000,1000;bgi=background/terrain,s");
    submodules:
        configurator: IPv4NetworkConfigurator {
            config = xml("<config><interface Mobilenodes='*' address='192.168.x.x' netmask='255.255.0.0'/></config>");
            @display("p=125,33;is=s");
        }

        channelControl: ChannelControl {
            @display("p=39,32");
        }
        Mobilenode: Mobilenode {
            @display("p=459,664;i=device/cellphone");
        }
        Mobilenode1: Mobilenode {
            @display("p=377,703;i=device/cellphone");
        }
        Mobilenode2: Mobilenode {
            @display("p=814,860;i=device/cellphone");
        }
        Mobilenode3: Mobilenode {
            @display("p=410,766;i=device/cellphone");
        }
        Mobilenode4: Mobilenode {
            @display("p=201,122;i=device/cellphone");
        }
        Mobilenode5: Mobilenode {
            @display("p=530,851;i=device/cellphone");
        }
        Mobilenode6: Mobilenode {
            @display("p=346,439;i=device/cellphone");
        }
        Mobilenode7: Mobilenode {
            @display("p=655,886;i=device/cellphone");
        }
        Mobilenode8: Mobilenode {
            @display("p=285,684;i=device/cellphone");
        }
        Mobilenode9: Mobilenode {
            @display("p=732,758;i=device/cellphone");
        }
        Mobilenode10: Mobilenode {
            @display("p=712,472;i=device/cellphone");
        }
        Mobilenode11: Mobilenode {
            @display("p=853,750;i=device/cellphone");
        }
        Mobilenode12: Mobilenode {
            @display("p=629,570;i=device/cellphone");
        }
        Mobilenode13: Mobilenode {
            @display("p=522,731;i=device/cellphone");
        }
        Mobilenode14: Mobilenode {
            @display("p=785,445;i=device/cellphone");
        }
        Mobilenode15: Mobilenode {
            @display("p=577,559;i=device/cellphone");
        }
        Mobilenode16: Mobilenode {
            @display("p=265,609;i=device/cellphone");
        }
        Mobilenode17: Mobilenode {
            @display("p=712,692;i=device/cellphone");
        }
        Mobilenode18: Mobilenode {
            @display("p=439,559;i=device/cellphone");
        }
        Mobilenode19: Mobilenode {
            @display("p=169,821;i=device/cellphone");
        }
        Mobilenode20: Mobilenode {
            @display("p=79,750;i=device/cellphone");
        }
        Mobilenode21: Mobilenode {
            @display("p=853,664;i=device/cellphone");
        }
        Mobilenode22: Mobilenode {
            @display("p=622,742;i=device/cellphone");
        }
        Mobilenode23: Mobilenode {
            @display("p=285,899;i=device/cellphone");
        }
        Mobilenode24: Mobilenode {
            @display("p=570,648;i=device/cellphone");
        }
        Mobilenode25: Mobilenode {
            @display("p=29,598;i=device/cellphone");
        }
        Mobilenode26: Mobilenode {
            @display("p=245,462;i=device/cellphone");
        }
        Mobilenode27: Mobilenode {
            @display("p=410,325;i=device/cellphone");
        }
        Mobilenode28: Mobilenode {
            @display("p=346,537;i=device/cellphone");
        }
        Mobilenode29: Mobilenode {
            @display("p=675,805;i=device/cellphone");
        }
        Mobilenode30: Mobilenode {
            @display("p=530,293;i=device/cellphone");
        }
        Mobilenode31: Mobilenode {
            @display("p=577,484;i=device/cellphone");
        }
        Mobilenode32: Mobilenode {
            @display("p=700,279;i=device/cellphone");
        }
        Mobilenode33: Mobilenode {
            @display("p=479,154;i=device/cellphone");
        }
        Mobilenode34: Mobilenode {
            @display("p=158,484;i=device/cellphone");
        }
        Mobilenode35: Mobilenode {
            @display("p=210,731;i=device/cellphone");
        }
        Mobilenode36: Mobilenode {
            @display("p=586,186;i=device/cellphone");
        }
        Mobilenode37: Mobilenode {
            @display("p=430,484;i=device/cellphone");
        }
        Mobilenode38: Mobilenode {
            @display("p=49,423;i=device/cellphone");
        }
        Mobilenode39: Mobilenode {
            @display("p=109,357;i=device/cellphone");
        }
        Mobilenode40: Mobilenode {
            @display("p=224,318;i=device/cellphone");
        }
        Mobilenode41: Mobilenode {
            @display("p=96,648;i=device/cellphone");
        }
        Mobilenode42: Mobilenode {
            @display("p=181,625;i=device/cellphone");
        }
        Mobilenode43: Mobilenode {
            @display("p=291,318;i=device/cellphone");
        }
        Mobilenode44: Mobilenode {
            @display("p=530,406;i=device/cellphone");
        }
        Mobilenode45: Mobilenode {
            @display("p=887,570;i=device/cellphone");
        }
        Mobilenode46: Mobilenode {
            @display("p=926,484;i=device/cellphone");
        }
        Mobilenode47: Mobilenode {
            @display("p=38,254;i=device/cellphone");
        }
        Mobilenode48: Mobilenode {
            @display("p=358,215;i=device/cellphone");
        }
        Mobilenode49: Mobilenode {
            @display("p=218,193;i=device/cellphone");
        }
        Mobilenode50: Mobilenode {
            @display("p=765,186;i=device/cellphone");
        }
        //AccessPoint: AccessPoint {
        //    @display("p=117,232;i=device/AP");
        //}
        //AccessPoint1: AccessPoint {
         //   @display("p=762,591;i=device/AP");
        //}
        sha1_HASH: SHA1_HASH {
            @display("p=80,33;i=device/Blockchain;is=vs");
        }
        ear_P2P: EAR_P2P {
            @display("p=41,79;is=vs");
        }
}
