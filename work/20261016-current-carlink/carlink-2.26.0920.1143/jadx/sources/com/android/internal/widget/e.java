package com.android.internal.widget;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class e implements LockPatternUtils.CheckCredentialProgressCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LockPatternChecker.OnCheckCallback f380b;

    public /* synthetic */ e(LockPatternChecker.OnCheckCallback onCheckCallback, int i2) {
        this.f379a = i2;
        this.f380b = onCheckCallback;
    }

    @Override // com.android.internal.widget.LockPatternUtils.CheckCredentialProgressCallback
    public final void onEarlyMatched() {
        int i2 = this.f379a;
        LockPatternChecker.OnCheckCallback onCheckCallback = this.f380b;
        switch (i2) {
            case 0:
                onCheckCallback.onEarlyMatched();
                break;
            default:
                onCheckCallback.onEarlyMatched();
                break;
        }
    }
}
