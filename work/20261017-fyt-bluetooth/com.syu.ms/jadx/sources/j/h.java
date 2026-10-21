package j;

import android.R;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.os.Bundle;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class h extends DialogFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2941a = "routeTypes";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public View.OnClickListener f2942b;

    public h() {
        setCancelable(true);
        setStyle(0, R.style.Theme_DeviceDefault_Dialog);
    }

    public int a() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments.getInt("routeTypes");
        }
        return 0;
    }

    public g b(Context context, Bundle bundle) {
        return new g(context, getTheme());
    }

    public void c(View.OnClickListener onClickListener) {
        if (onClickListener != this.f2942b) {
            this.f2942b = onClickListener;
            g gVar = (g) getDialog();
            if (gVar != null) {
                gVar.d(onClickListener);
            }
        }
    }

    public void d(int i2) {
        if (i2 != a()) {
            Bundle arguments = getArguments();
            if (arguments == null) {
                arguments = new Bundle();
            }
            arguments.putInt("routeTypes", i2);
            setArguments(arguments);
            g gVar = (g) getDialog();
            if (gVar != null) {
                gVar.e(i2);
            }
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        g gVarB = b(getActivity(), bundle);
        gVarB.e(a());
        gVarB.d(this.f2942b);
        return gVarB;
    }
}
