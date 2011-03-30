package ch.eiafr.tic.application2;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class Activity1 extends Activity {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        Button b = (Button)findViewById(R.id.Oneto2);
        b.setOnClickListener(new OnClickListener() {
        	@Override
        	public void onClick(View v) {
        		Log.i("Ex2","Click on button Oneto2");
        		Intent intent = new Intent(getApplicationContext(),Activity2.class);
        		startActivity(intent);
        	}
       	});
    }
}