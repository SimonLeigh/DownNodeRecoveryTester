# Hashing

An explanation of how the three keys hash to different nodes

Key whose master is node 1, and replica is on node 2

    # curl -s -u Administrator:password http://localhost:8091/pools/default/buckets/beer-sample | ./tools/vbuckettool  - shmaltz_enterprises
    key: shmaltz_enterprises 
    master: 10.0.0.1:11210 
    vBucketId: 5 
    couchApiBase: http://10.0.0.1:8092/beer-sample%2B57b9f6bc4a4ed0b6d52a3f3e8e614f03 
    replicas: 10.0.0.2:11210

Key whose master is on node 2, and whose replica is on node 1

    # curl -s -u Administrator:password http://localhost:8091/pools/default/buckets/beer-sample | ./tools/vbuckettool  - 21st_amendment_brewery_cafe-21a_ipa
    key: 21st_amendment_brewery_cafe-21a_ipa 
    master: 10.0.0.2:11210 
    vBucketId: 561 
    couchApiBase: http://10.0.0.2:8092/beer-sample%2B57b9f6bc4a4ed0b6d52a3f3e8e614f03 
    replicas: 10.0.0.1:11210

Key whose master is on node 3, and whose replica is on node 2

    # curl -s -u Administrator:password http://localhost:8091/pools/default/buckets/beer-sample | ./tools/vbuckettool  - 21st_amendment_brewery_cafe-oyster_point_oyster_stout
    key: 21st_amendment_brewery_cafe-oyster_point_oyster_stout 
    master: 10.0.0.3:11210 
    vBucketId: 952 
    couchApiBase: http://10.0.0.3:8092/beer-sample%2B57b9f6bc4a4ed0b6d52a3f3e8e614f03 
    replicas: 10.0.0.2:11210

Note:  The output from vbuckettool has been reformatted to be more readable.

