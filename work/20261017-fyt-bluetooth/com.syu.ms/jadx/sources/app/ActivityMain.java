package app;

import android.app.Activity;
import android.content.Context;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.provider.CalendarContract;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.SeekBar;
import android.widget.TextView;
import y0.h;

/* JADX INFO: loaded from: classes.dex */
public class ActivityMain extends Activity {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static float f211c = -88.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SeekBar f212a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextView f213b;

    public class a implements SeekBar.OnSeekBarChangeListener {
        public a() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i2, boolean z2) {
            ActivityMain.f211c = (i2 - 176) / 2.0f;
            h.M();
            ActivityMain.this.f213b.setText(ProxyProperties.LOCAL_EXCL_LIST + ActivityMain.f211c + " db");
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int progress = ActivityMain.this.f212a.getProgress() - 1;
            if (progress < 0) {
                progress = 0;
            }
            ActivityMain.this.f212a.setProgress(progress);
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int progress = ActivityMain.this.f212a.getProgress() + 1;
            if (progress > 224) {
                progress = 224;
            }
            ActivityMain.this.f212a.setProgress(progress);
        }
    }

    public class d extends ViewGroup {
        public d(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SeekBar seekBar = new SeekBar(this);
        this.f212a = seekBar;
        seekBar.setMax(224);
        this.f212a.setOnSeekBarChangeListener(new a());
        this.f212a.layout(10, 100, 910, 200);
        TextView textView = new TextView(this);
        this.f213b = textView;
        textView.layout(920, 100, 1000, 200);
        Button button = new Button(this);
        button.layout(300, 300, 500, 380);
        button.setText("<<<");
        button.setOnClickListener(new b());
        Button button2 = new Button(this);
        button2.layout(CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 300, 800, 380);
        button2.setText(">>>");
        button2.setOnClickListener(new c());
        d dVar = new d(this);
        dVar.addView(this.f212a);
        dVar.addView(this.f213b);
        dVar.addView(button);
        dVar.addView(button2);
        setContentView(dVar);
    }
}
