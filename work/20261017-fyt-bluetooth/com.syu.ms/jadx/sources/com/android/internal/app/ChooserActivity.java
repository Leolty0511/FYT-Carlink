package com.android.internal.app;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class ChooserActivity extends ResolverActivity {
    @Override // com.android.internal.app.ResolverActivity, com.android.internal.app.AlertActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Intent intent = getIntent();
        Parcelable parcelableExtra = intent.getParcelableExtra(Intent.EXTRA_INTENT);
        if (!(parcelableExtra instanceof Intent)) {
            Log.w("ChooseActivity", "Target is not an intent: " + parcelableExtra);
            finish();
            return;
        }
        Intent intent2 = (Intent) parcelableExtra;
        CharSequence charSequenceExtra = intent.getCharSequenceExtra(Intent.EXTRA_TITLE);
        if (charSequenceExtra == null) {
            charSequenceExtra = getResources().getText(17040381);
        }
        CharSequence charSequence = charSequenceExtra;
        Parcelable[] parcelableArrayExtra = intent.getParcelableArrayExtra(Intent.EXTRA_INITIAL_INTENTS);
        Intent[] intentArr = null;
        if (parcelableArrayExtra != null) {
            intentArr = new Intent[parcelableArrayExtra.length];
            for (int i2 = 0; i2 < parcelableArrayExtra.length; i2++) {
                if (!(parcelableArrayExtra[i2] instanceof Intent)) {
                    Log.w("ChooseActivity", "Initial intent #" + i2 + " not an Intent: " + parcelableArrayExtra[i2]);
                    finish();
                    return;
                }
                intentArr[i2] = (Intent) parcelableArrayExtra[i2];
            }
        }
        super.k(bundle, intent2, charSequence, intentArr, null, false);
    }
}
