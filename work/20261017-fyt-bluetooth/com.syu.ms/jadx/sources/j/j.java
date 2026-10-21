package j;

import android.R;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class j extends DialogFragment {
    public j() {
        setCancelable(true);
        setStyle(0, R.style.Theme_DeviceDefault_Dialog);
    }

    public i a(Context context, Bundle bundle) {
        return new i(context, getTheme());
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        return a(getActivity(), bundle);
    }
}
