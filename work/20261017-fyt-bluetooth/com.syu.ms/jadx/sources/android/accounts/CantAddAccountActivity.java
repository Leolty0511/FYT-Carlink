package android.accounts;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class CantAddAccountActivity extends Activity {
    public void onCancelButtonClicked(View view) {
        onBackPressed();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(17367082);
    }
}
