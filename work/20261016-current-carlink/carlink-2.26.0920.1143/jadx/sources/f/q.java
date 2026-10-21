package f;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes4.dex */
public final class q implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f855b;

    public q(r rVar) {
        this.f855b = rVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        r rVar = this.f855b;
        rVar.f857d.f862b.f647e.mainDisplayVideoSink.setVideoFocus(rVar.f856b, rVar.c, false);
    }
}
