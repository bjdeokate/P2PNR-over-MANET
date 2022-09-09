package Mobility_Aware_Cross_Layer_Routing_Approach.simulations;

import inet.base.SHA1_HASH;
import inet.networklayer.autorouting.ipv4.IPv4NetworkConfigurator;
import inet.base.Mobilenode;
import inet.networklayer.routing.MACARON.MACARON;
import inet.nodes.aodv.AccessPoint;
import inet.nodes.ipv6.Router;
import inet.nodes.xmipv6.Server;
import inet.world.radio.ChannelControl;


network Mobility_Aware_Cross_Layer_Routing_Approach_MACARON_NW
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
            @display("p=550,772;i=device/cellphone");
        }
        Mobilenode1: Mobilenode {
            @display("p=499,805;i=device/cellphone");
        }
        Mobilenode2: Mobilenode {
            @display("p=814,860;i=device/cellphone");
        }
        Mobilenode3: Mobilenode {
            @display("p=377,890;i=device/cellphone");
        }
        Mobilenode4: Mobilenode {
            @display("p=140,676;i=device/cellphone");
        }
        Mobilenode5: Mobilenode {
            @display("p=451,900;i=device/cellphone");
        }
        Mobilenode6: Mobilenode {
            @display("p=178,742;i=device/cellphone");
        }
        Mobilenode7: Mobilenode {
            @display("p=655,886;i=device/cellphone");
        }
        Mobilenode8: Mobilenode {
            @display("p=403,825;i=device/cellphone");
        }
        Mobilenode9: Mobilenode {
            @display("p=720,886;i=device/cellphone");
        }
        Mobilenode10: Mobilenode {
            @display("p=479,715;i=device/cellphone");
        }
        Mobilenode11: Mobilenode {
            @display("p=913,886;i=device/cellphone");
        }
        Mobilenode12: Mobilenode {
            @display("p=765,805;i=device/cellphone");
        }
        Mobilenode13: Mobilenode {
            @display("p=161,938;i=device/cellphone");
        }
        Mobilenode14: Mobilenode {
            @display("p=819,772;i=device/cellphone");
        }
        Mobilenode15: Mobilenode {
            @display("p=338,729;i=device/cellphone");
        }
        Mobilenode16: Mobilenode {
            @display("p=21,832;i=device/cellphone");
        }
        Mobilenode17: Mobilenode {
            @display("p=712,692;i=device/cellphone");
        }
        Mobilenode18: Mobilenode {
            @display("p=550,861;i=device/cellphone");
        }
        Mobilenode19: Mobilenode {
            @display("p=70,921;i=device/cellphone");
        }
        Mobilenode20: Mobilenode {
            @display("p=38,890;i=device/cellphone");
        }
        Mobilenode21: Mobilenode {
            @display("p=893,793;i=device/cellphone");
        }
        Mobilenode22: Mobilenode {
            @display("p=622,742;i=device/cellphone");
        }
        Mobilenode23: Mobilenode {
            @display("p=285,899;i=device/cellphone");
        }
        Mobilenode24: Mobilenode {
            @display("p=410,754;i=device/cellphone");
        }
        Mobilenode25: Mobilenode {
            @display("p=29,598;i=device/cellphone");
        }
        Mobilenode26: Mobilenode {
            @display("p=358,598;i=device/cellphone");
        }
        Mobilenode27: Mobilenode {
            @display("p=550,637;i=device/cellphone");
        }
        Mobilenode28: Mobilenode {
            @display("p=285,805;i=device/cellphone");
        }
        Mobilenode29: Mobilenode {
            @display("p=675,805;i=device/cellphone");
        }
        Mobilenode30: Mobilenode {
            @display("p=655,559;i=device/cellphone");
        }
        Mobilenode31: Mobilenode {
            @display("p=655,653;i=device/cellphone");
        }
        Mobilenode32: Mobilenode {
            @display("p=732,570;i=device/cellphone");
        }
        Mobilenode33: Mobilenode {
            @display("p=403,472;i=device/cellphone");
        }
        Mobilenode34: Mobilenode {
            @display("p=198,637;i=device/cellphone");
        }
        Mobilenode35: Mobilenode {
            @display("p=218,860;i=device/cellphone");
        }
        Mobilenode36: Mobilenode {
            @display("p=493,491;i=device/cellphone");
        }
        Mobilenode37: Mobilenode {
            @display("p=423,653;i=device/cellphone");
        }
        Mobilenode38: Mobilenode {
            @display("p=69,821;i=device/cellphone");
        }
        Mobilenode39: Mobilenode {
            @display("p=275,551;i=device/cellphone");
        }
        Mobilenode40: Mobilenode {
            @display("p=135,559;i=device/cellphone");
        }
        Mobilenode41: Mobilenode {
            @display("p=161,832;i=device/cellphone");
        }
        Mobilenode42: Mobilenode {
            @display("p=255,676;i=device/cellphone");
        }
        Mobilenode43: Mobilenode {
            @display("p=69,742;i=device/cellphone");
        }
        Mobilenode44: Mobilenode {
            @display("p=41,684;i=device/cellphone");
        }
        Mobilenode45: Mobilenode {
            @display("p=887,570;i=device/cellphone");
        }
        Mobilenode46: Mobilenode {
            @display("p=926,484;i=device/cellphone");
        }
        Mobilenode47: Mobilenode {
            @display("p=235,504;i=device/cellphone");
        }
        Mobilenode48: Mobilenode {
            @display("p=318,465;i=device/cellphone");
        }
        Mobilenode49: Mobilenode {
            @display("p=178,433;i=device/cellphone");
        }
        Mobilenode50: Mobilenode {
            @display("p=814,380;i=device/cellphone");
        }
        Mobilenode51: Mobilenode {
            @display("p=403,373;i=device/cellphone");
        }
        Mobilenode52: Mobilenode {
            @display("p=655,394;i=device/cellphone");
        }
        Mobilenode53: Mobilenode {
            @display("p=799,537;i=device/cellphone");
        }
        Mobilenode54: Mobilenode {
            @display("p=873,351;i=device/cellphone");
        }
        Mobilenode55: Mobilenode {
            @display("p=485,364;i=device/cellphone");
        }
        Mobilenode56: Mobilenode {
            @display("p=834,445;i=device/cellphone");
        }
        Mobilenode57: Mobilenode {
            @display("p=431,559;i=device/cellphone");
        }
        Mobilenode58: Mobilenode {
            @display("p=695,472;i=device/cellphone");
        }
        Mobilenode59: Mobilenode {
            @display("p=907,627;i=device/cellphone");
        }
        Mobilenode60: Mobilenode {
            @display("p=70,520;i=device/cellphone");
        }
        Mobilenode61: Mobilenode {
            @display("p=655,194;i=device/cellphone");
        }
        Mobilenode62: Mobilenode {
            @display("p=390,312;i=device/cellphone");
        }
        Mobilenode63: Mobilenode {
            @display("p=437,187;i=device/cellphone");
        }
        Mobilenode64: Mobilenode {
            @display("p=265,380;i=device/cellphone");
        }
        Mobilenode65: Mobilenode {
            @display("p=41,233;i=device/cellphone");
        }
        Mobilenode66: Mobilenode {
            @display("p=38,325;i=device/cellphone");
        }
        Mobilenode67: Mobilenode {
            @display("p=913,272;i=device/cellphone");
        }
        Mobilenode68: Mobilenode {
            @display("p=140,334;i=device/cellphone");
        }
        Mobilenode69: Mobilenode {
            @display("p=740,243;i=device/cellphone");
        }
        Mobilenode70: Mobilenode {
            @display("p=519,233;i=device/cellphone");
        }
        Mobilenode71: Mobilenode {
            @display("p=198,218;i=device/cellphone");
        }
        Mobilenode72: Mobilenode {
            @display("p=235,295;i=device/cellphone");
        }
        Mobilenode73: Mobilenode {
            @display("p=326,666;i=device/cellphone");
        }
        Mobilenode74: Mobilenode {
            @display("p=580,559;i=device/cellphone");
        }
        Mobilenode75: Mobilenode {
            @display("p=560,705;i=device/cellphone");
        }
        Mobilenode76: Mobilenode {
            @display("p=720,754;i=device/cellphone");
        }
        Mobilenode77: Mobilenode {
            @display("p=602,484;i=device/cellphone");
        }
        Mobilenode78: Mobilenode {
            @display("p=49,406;i=device/cellphone");
        }
        Mobilenode79: Mobilenode {
            @display("p=570,312;i=device/cellphone");
        }
        Mobilenode80: Mobilenode {
            @display("p=732,341;i=device/cellphone");
        }
        //AccessPoint: AccessPoint {
          //  @display("p=117,232;i=device/AP");
        //}
        //AccessPoint1: AccessPoint {
          //  @display("p=814,684;i=device/AP");
        //}

        macaron: MACARON {
            @display("p=27,88");
        }
        sha1_HASH: SHA1_HASH {
            @display("p=100,86;i=device/Blockchain;is=vs");
        }
}
