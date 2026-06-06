/* if we use user data and automatically create tools */

#!/bin/bash

wget -O /tmp/install.sh https://raw.githubusercontent.com/Rohitchoudhary7060/kubectl-eks-installation/main/install.sh

chmod +x /tmp/install.sh

bash /tmp/install.sh



/* if we clone repository , than give execute permission of sh file */

chmod +x install-tools.sh
./install-tools.sh
chmod +x create-cluster.sh
./create-cluster.sh
