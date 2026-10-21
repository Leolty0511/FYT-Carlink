package android.telephony.ims.stub;

import android.os.Bundle;
import com.android.ims.internal.IImsUt;
import com.android.ims.internal.IImsUtListener;

/* JADX INFO: loaded from: classes2.dex */
public class ImsUtImplBase extends IImsUt.Stub {
    @Override // com.android.ims.internal.IImsUt
    public void close() {
    }

    @Override // com.android.ims.internal.IImsUt
    public int queryCLIP() {
        return -1;
    }

    @Override // com.android.ims.internal.IImsUt
    public int queryCLIR() {
        return -1;
    }

    @Override // com.android.ims.internal.IImsUt
    public int queryCOLP() {
        return -1;
    }

    @Override // com.android.ims.internal.IImsUt
    public int queryCOLR() {
        return -1;
    }

    @Override // com.android.ims.internal.IImsUt
    public int queryCallBarring(int i2) {
        return -1;
    }

    @Override // com.android.ims.internal.IImsUt
    public int queryCallForward(int i2, String str) {
        return -1;
    }

    @Override // com.android.ims.internal.IImsUt
    public int queryCallWaiting() {
        return -1;
    }

    @Override // com.android.ims.internal.IImsUt
    public void setListener(IImsUtListener iImsUtListener) {
    }

    @Override // com.android.ims.internal.IImsUt
    public int transact(Bundle bundle) {
        return -1;
    }

    @Override // com.android.ims.internal.IImsUt
    public int updateCLIP(boolean z2) {
        return -1;
    }

    @Override // com.android.ims.internal.IImsUt
    public int updateCLIR(int i2) {
        return -1;
    }

    @Override // com.android.ims.internal.IImsUt
    public int updateCOLP(boolean z2) {
        return -1;
    }

    @Override // com.android.ims.internal.IImsUt
    public int updateCOLR(int i2) {
        return -1;
    }

    @Override // com.android.ims.internal.IImsUt
    public int updateCallBarring(int i2, int i3, String[] strArr) {
        return -1;
    }

    @Override // com.android.ims.internal.IImsUt
    public int updateCallForward(int i2, int i3, String str, int i4, int i5) {
        return 0;
    }

    @Override // com.android.ims.internal.IImsUt
    public int updateCallWaiting(boolean z2, int i2) {
        return -1;
    }
}
