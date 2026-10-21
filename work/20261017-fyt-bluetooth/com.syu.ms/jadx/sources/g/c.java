package g;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.provider.Settings;
import app.App;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"NewApi"})
public class c implements g {
    public static void c(int i2) {
        Settings.Global.putInt(App.c().getContentResolver(), "airplane_mode_on", i2 != 0 ? 1 : 0);
        Intent intent = new Intent(Intent.ACTION_AIRPLANE_MODE_CHANGED);
        intent.putExtra("state", i2 != 0);
        intent.setFlags(32);
        App.c().sendBroadcast(intent);
    }
}
