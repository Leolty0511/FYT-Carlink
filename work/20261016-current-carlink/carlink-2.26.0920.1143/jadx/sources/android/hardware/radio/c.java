package android.hardware.radio;

import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f83b;
    public final /* synthetic */ TunerCallbackAdapter c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Parcelable f84d;

    public /* synthetic */ c(TunerCallbackAdapter tunerCallbackAdapter, Parcelable parcelable, int i2) {
        this.f83b = i2;
        this.c = tunerCallbackAdapter;
        this.f84d = parcelable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f83b;
        TunerCallbackAdapter tunerCallbackAdapter = this.c;
        Parcelable parcelable = this.f84d;
        switch (i2) {
            case 0:
                tunerCallbackAdapter.lambda$onCurrentProgramInfoChanged$2((RadioManager.ProgramInfo) parcelable);
                break;
            default:
                tunerCallbackAdapter.lambda$onConfigurationChanged$1((RadioManager.BandConfig) parcelable);
                break;
        }
    }
}
