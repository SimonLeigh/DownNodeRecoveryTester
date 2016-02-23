# DownNodeRecoveryTester
A Java command-line application used when testing a down node situation

Prerequisites: a 3-node Couchbase 3.x cluster with the beer-sample already loaded

Runs in a loop, sleeps one second between iterations

Upon each iteration produces a table like so

    Node #     get() exception  getFromReplica() exception  get() time  replica time  get size  replica size
    ---------  ---------------  --------------------------  ----------  ------------  --------  ------------
            1            false                       false           3             2       406           406
            2            false                       false           2             3       613           613
            3            false                       false           2             2       656           656

The first row is a get() test to node 1, with a key that is known to hash to node 1.  And so forth for the next two rows.

You can remove and fail over nodes while this program is running, and observe the results in the table output by this program.

    Node #     get() exception  getFromReplica() exception  get() time  replica time  get size  replica size
    ---------  ---------------  --------------------------  ----------  ------------  --------  ------------
            1            false                        true           1          2503       406            -1
            2             true                       false        2500             3        -1           614
            3            false                        true           2          2504       657            -1

The above is an example when node 2 was stopped.
