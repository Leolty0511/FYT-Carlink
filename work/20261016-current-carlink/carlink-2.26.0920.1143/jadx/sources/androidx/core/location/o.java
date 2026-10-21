package androidx.core.location;

import android.content.ClipData;
import android.location.LocationRequest;
import android.os.OutcomeReceiver;
import android.view.ContentInfo;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class o {
    public static /* synthetic */ LocationRequest.Builder c(long j2) {
        return new LocationRequest.Builder(j2);
    }

    public static /* bridge */ /* synthetic */ OutcomeReceiver j(Object obj) {
        return (OutcomeReceiver) obj;
    }

    public static /* synthetic */ ContentInfo.Builder k(ClipData clipData, int i2) {
        return new ContentInfo.Builder(clipData, i2);
    }

    public static /* synthetic */ ContentInfo.Builder m(ContentInfo contentInfo) {
        return new ContentInfo.Builder(contentInfo);
    }

    public static /* bridge */ /* synthetic */ ContentInfo o(Object obj) {
        return (ContentInfo) obj;
    }

    public static /* synthetic */ void p() {
    }

    public static /* synthetic */ void x() {
    }
}
