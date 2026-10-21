package android.telephony.ims.stub;

import com.android.ims.ImsConfigListener;
import com.android.ims.internal.IImsConfig;

/* JADX INFO: loaded from: classes2.dex */
public class ImsConfigImplBase extends IImsConfig.Stub {
    @Override // com.android.ims.internal.IImsConfig
    public void getFeatureValue(int i2, int i3, ImsConfigListener imsConfigListener) {
    }

    @Override // com.android.ims.internal.IImsConfig
    public String getProvisionedStringValue(int i2) {
        return null;
    }

    @Override // com.android.ims.internal.IImsConfig
    public int getProvisionedValue(int i2) {
        return -1;
    }

    @Override // com.android.ims.internal.IImsConfig
    public void getVideoQuality(ImsConfigListener imsConfigListener) {
    }

    @Override // com.android.ims.internal.IImsConfig
    public boolean getVolteProvisioned() {
        return false;
    }

    @Override // com.android.ims.internal.IImsConfig
    public void setFeatureValue(int i2, int i3, int i4, ImsConfigListener imsConfigListener) {
    }

    @Override // com.android.ims.internal.IImsConfig
    public int setProvisionedStringValue(int i2, String str) {
        return 1;
    }

    @Override // com.android.ims.internal.IImsConfig
    public int setProvisionedValue(int i2, int i3) {
        return 1;
    }

    @Override // com.android.ims.internal.IImsConfig
    public void setVideoQuality(int i2, ImsConfigListener imsConfigListener) {
    }
}
