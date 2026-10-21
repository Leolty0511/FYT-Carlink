package android.telephony.ims.stub;

import android.os.Bundle;
import com.android.ims.ImsCallForwardInfo;
import com.android.ims.ImsReasonInfo;
import com.android.ims.ImsSsInfo;
import com.android.ims.internal.IImsUt;
import com.android.ims.internal.IImsUtListener;

/* JADX INFO: loaded from: classes2.dex */
public class ImsUtListenerImplBase extends IImsUtListener.Stub {
    @Override // com.android.ims.internal.IImsUtListener
    public void utConfigurationCallBarringQueried(IImsUt iImsUt, int i2, ImsSsInfo[] imsSsInfoArr) {
    }

    @Override // com.android.ims.internal.IImsUtListener
    public void utConfigurationCallForwardQueried(IImsUt iImsUt, int i2, ImsCallForwardInfo[] imsCallForwardInfoArr) {
    }

    @Override // com.android.ims.internal.IImsUtListener
    public void utConfigurationCallWaitingQueried(IImsUt iImsUt, int i2, ImsSsInfo[] imsSsInfoArr) {
    }

    @Override // com.android.ims.internal.IImsUtListener
    public void utConfigurationQueried(IImsUt iImsUt, int i2, Bundle bundle) {
    }

    @Override // com.android.ims.internal.IImsUtListener
    public void utConfigurationQueryFailed(IImsUt iImsUt, int i2, ImsReasonInfo imsReasonInfo) {
    }

    @Override // com.android.ims.internal.IImsUtListener
    public void utConfigurationUpdateFailed(IImsUt iImsUt, int i2, ImsReasonInfo imsReasonInfo) {
    }

    @Override // com.android.ims.internal.IImsUtListener
    public void utConfigurationUpdated(IImsUt iImsUt, int i2) {
    }
}
