package f;

import com.google.android.projection.sink.InstrumentClusterListener;
import com.syu.carlink.auto.AutoFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class m0 extends InstrumentClusterListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AutoFragment f851a;

    public m0(AutoFragment autoFragment) {
        this.f851a = autoFragment;
    }

    @Override // com.google.android.projection.sink.InstrumentClusterListener, com.google.android.projection.protocol.NavigationStatus.NavigationStatusListener
    public final void onStatus(int i2) {
        this.f851a.H = i2;
        super.onStatus(i2);
    }
}
