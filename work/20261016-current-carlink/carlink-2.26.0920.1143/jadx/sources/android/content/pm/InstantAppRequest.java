package android.content.pm;

import android.content.Intent;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class InstantAppRequest {
    public final String callingPackage;
    public final Intent origIntent;
    public final boolean resolveForStart;
    public final String resolvedType;
    public final AuxiliaryResolveInfo responseObj;
    public final int userId;
    public final Bundle verificationBundle;

    public InstantAppRequest(AuxiliaryResolveInfo auxiliaryResolveInfo, Intent intent, String str, String str2, int i2, Bundle bundle, boolean z2) {
        this.responseObj = auxiliaryResolveInfo;
        this.origIntent = intent;
        this.resolvedType = str;
        this.callingPackage = str2;
        this.userId = i2;
        this.verificationBundle = bundle;
        this.resolveForStart = z2;
    }
}
