package com.example.myapplication2.app;

/**
 * Created by austim on 7/7/14.
 * Test class to demonstrate how intrinsic locks work with synchronization.
 * Reference: http://docs.oracle.com/javase/tutorial/essential/concurrency/locksync.html
 * This class demonstrates a station integer count to see how many times this class was instantiated.
 * The constructor ensure thread-safety on the increment count object by acquiring an intrinsic lock
 * on the Integer member variable.
 */
public class TKClassCountTest {

    private static Integer numInstancesCreated = new Integer(0);

    TKClassCountTest(){

        synchronized (numInstancesCreated){
            numInstancesCreated = new Integer((numInstancesCreated.intValue() + 1));
        }

    }

    public int numInstancesCreated(){
        return numInstancesCreated.intValue();
    }

}
