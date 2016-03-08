#!/bin/bash
#
javac -classpath  ./lib/couchbase-core-io-1.1.6.jar:./lib/couchbase-java-client-2.1.6.jar -d ./bin src/com/couchbase/support/DownNodeRecoveryTester.java
