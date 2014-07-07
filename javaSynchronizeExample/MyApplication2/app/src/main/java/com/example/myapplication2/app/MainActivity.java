package com.example.myapplication2.app;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;


public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        TKClassCountTest test1 = new TKClassCountTest(); // push on heap, call constructor, will increment
        TKClassCountTest test2 = new TKClassCountTest();
        TKClassCountTest test3 = new TKClassCountTest();
        TKClassCountTest test4 = new TKClassCountTest();

        TKClassCountTest test5; // push on stack, should not increment

        Log.d("AppTag", "Num instances = " + test4.numInstancesCreated());

        class MyAsyncTask extends  AsyncTask<Void, Void, String>{

            private TKClassCountTest mClassTest;

            @Override
            protected String doInBackground(Void... voids) {

                mClassTest = new TKClassCountTest();

                Log.d("doInBackground", "Num instances = " + mClassTest.numInstancesCreated());

                return "doInBackgroundExecuted";
            }

            @Override
            protected void onPostExecute(String s) {
                Log.d("onPostExecute", "Num instances = " + mClassTest.numInstancesCreated());
                super.onPostExecute(s);
            }
        }

        new MyAsyncTask().execute();
        new MyAsyncTask().execute();
        new MyAsyncTask().execute();
        new MyAsyncTask().execute();

        Log.d("AppTag", "Num instances = " + test4.numInstancesCreated());

    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();
        if (id == R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

}
