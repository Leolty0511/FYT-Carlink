package f;

import android.app.AlertDialog;
import android.content.DialogInterface;

/* JADX INFO: loaded from: classes4.dex */
public final class r implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f856b;
    public final /* synthetic */ int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ t f857d;

    public r(t tVar, int i2, int i3) {
        this.f857d = tVar;
        this.f856b = i2;
        this.c = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        t tVar = this.f857d;
        if (!tVar.f862b.c.showVideoFocusDialog()) {
            tVar.f862b.f647e.mainDisplayVideoSink.setVideoFocus(this.f856b, this.c, false);
        } else {
            if (tVar.f861a == null) {
                AlertDialog.Builder builder = new AlertDialog.Builder(tVar.f862b.getActivity());
                builder.setMessage("Phone has requested video focus").setTitle("Video Focus Request From Phone").setPositiveButton("Grant", new q(this)).setNegativeButton("Deny", (DialogInterface.OnClickListener) null);
                tVar.f861a = builder.create();
            }
            tVar.f861a.show();
        }
    }
}
