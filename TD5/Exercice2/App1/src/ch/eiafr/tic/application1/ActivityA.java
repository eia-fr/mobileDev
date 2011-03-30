package ch.eiafr.tic.application1;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class ActivityA extends Activity {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        Button b = (Button)findViewById(R.id.AtoB);
        b.setOnClickListener(new OnClickListener() {
        	@Override
        	public void onClick(View v) {
        		Log.i("Ex2","Click on button AtpB");
        		Intent intent = new Intent(getApplicationContext(),ActivityB.class);
        		startActivity(intent);
        	}
       	});
    }
}