package ch.eiaf.tic.application2;

import ch.eiaf.tic.R;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;


public class ActivityA extends Activity {
    /** Called when the activity is first created. */
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		Button b = (Button)findViewById(R.id.btnCreateView);
		b.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				Log.i("Ex1","Click on button");
				Intent intent = new Intent(getApplicationContext(),ActivityB.class);
				startActivity(intent);
			}
		});
	}
	@Override
	protected void onStart() {
		Log.i("Ex1","onStart()");		
		super.onStart();

	}
	@Override
	protected void onStop() {
		Log.i("Ex1","onStop()");
		super.onStop();
	}
	
	@Override
	protected void onRestart() {
		Log.i("Ex1","onRestart()");
		super.onRestart();
	}
	
	@Override
	protected void onResume() {
		Log.i("Ex1","onResume()");
		super.onResume();
	}
	
	@Override
	protected void onDestroy() {
		Log.i("Ex1","onDestroy()");
		super.onDestroy();
	}
	
	@Override
	protected void onPause() {
		Log.i("Ex1","onPause()");
		super.onPause();
	}
	

	
    
}