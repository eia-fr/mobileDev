package ch.eiafr.tic.application2;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class Activity3 extends Activity {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity3);
        Button b = (Button)findViewById(R.id.Threeto1);
        b.setOnClickListener(new OnClickListener() {
        	@Override
        	public void onClick(View v) {
        		Log.i("Ex2","Click on button 3 to A");
        		Intent intent =  new Intent("ch.eiafr.tic.application1.VIEW_ACTIVITYA");
        		startActivity(intent);
        	}
       	});
    }
}