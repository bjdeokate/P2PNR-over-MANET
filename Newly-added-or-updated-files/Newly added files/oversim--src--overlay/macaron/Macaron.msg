

// Author Balu Deokate

cplusplus {{
#include <NodeHandle.h>
#include <OverlayKey.h>
#include <CommonMessages_m.h>
}}
class noncobject NodeHandle;
class noncobject OverlayKey;

class BaseCallMessage;
class BaseResponseMessage;

packet MyNeighborCall extends BaseCallMessage
{
    OverlayKey destinationKey;
};

packet MyNeighborResponse extends BaseResponseMessage
{
    NodeHandle respondingNode;
    NodeHandle prevNeighbor;
    NodeHandle nextNeighbor;
};

