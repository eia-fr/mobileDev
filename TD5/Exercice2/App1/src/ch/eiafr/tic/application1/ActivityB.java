package ch.eiafr.tic.application1;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;


public class ActivityB extends Activity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    setContentView(R.layout.activityb);
    super.onCreate(savedInstanceState);
    Button b = (Button)findViewById(R.id.Bto2);
    b.setOnClickListener(new OnClickListener() {
    	@Override
    	public void onClick(View v) {
    		Log.i("Ex2","Click on button Bto2");
    		Intent intent = new Intent(getApplicationContext(),ActivityB.class);
    		startActivity(intent);
    	}
   	});
  }
}