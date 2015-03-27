# Testing Procedure

Step 1.  Start with the 3-node cluster in a balanced, idle state

Step 2.  Start the testing program

Step 3.  Stop node 2 with "sudo service couchbase-server stop"

Step 4.  Failover the down node.

Step 5.  Rebalance the cluster


