//
// Author Balu Deokate
//


package oversim.overlay.macaron;

import oversim.common.BaseOverlay;
import oversim.common.IOverlay;

simple Macaron extends BaseOverlay
{
    parameters:
        @class(Macaron);
        bool enableDrops;       // do we enable random packet drops for testing?
        double dropChance;      // chance that we drop a packet
}

module MacaronModules like IOverlay
{
    gates:
        input udpIn;   // gate from the UDP layer
        output udpOut;    // gate to the UDP layer
        input tcpIn;    // gate from the TCP layer
        output tcpOut;    // gate to the TCP layer
        input appIn;   // gate from the application
        output appOut;    // gate to the application

    submodules:
        overlay: Macaron;

    connections allowunconnected:
        udpIn --> overlay.udpIn;
        udpOut <-- overlay.udpOut;
        appIn --> overlay.appIn;
        appOut <-- overlay.appOut;
}
