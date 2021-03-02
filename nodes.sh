#!/bin/bash
$(ssh -q -p12306 sky@fit.tccl.xyz 'curl -s localhost:5200/gpool/nodes_available' > .fit.tccl.xyz.res && mv .fit.tccl.xyz.res fit.tccl.xyz.res)&
$(ssh -q -p22 sky@lib.tccl.xyz 'curl -s localhost:5200/gpool/nodes_available' > .lib.tccl.xyz.res && mv .lib.tccl.xyz.res lib.tccl.xyz.res)&
$(ssh -q -p22 sky@group.tccl.xyz 'curl -s localhost:5200/gpool/nodes_available' > .group.tccl.xyz.res && mv .group.tccl.xyz.res group.tccl.xyz.res)&
$(ssh -q -p22 lijun@chem.tccl.xyz 'curl -s localhost:5200/gpool/nodes_available' > .chem.tccl.xyz.res && mv .chem.tccl.xyz.res chem.tccl.xyz.res)&


# ssh -q -p $PORT $HOSTUSER@$HOST 'curl -s localhost:5200/gpool/nodes_available' > $HOST.res


wait

