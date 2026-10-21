package android.hardware;

import android.content.Context;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class ConsumerIrManager {
    private static final String TAG = "ConsumerIr";
    private final String mPackageName;
    private final IConsumerIrService mService = IConsumerIrService.Stub.asInterface(ServiceManager.getService(Context.CONSUMER_IR_SERVICE));

    public final class CarrierFrequencyRange {
        private final int mMaxFrequency;
        private final int mMinFrequency;

        public CarrierFrequencyRange(int i2, int i3) {
            this.mMinFrequency = i2;
            this.mMaxFrequency = i3;
        }

        public int getMaxFrequency() {
            return this.mMaxFrequency;
        }

        public int getMinFrequency() {
            return this.mMinFrequency;
        }
    }

    public ConsumerIrManager(Context context) {
        this.mPackageName = context.getPackageName();
    }

    public CarrierFrequencyRange[] getCarrierFrequencies() {
        IConsumerIrService iConsumerIrService = this.mService;
        if (iConsumerIrService == null) {
            Log.w(TAG, "no consumer ir service.");
            return null;
        }
        try {
            int[] carrierFrequencies = iConsumerIrService.getCarrierFrequencies();
            if (carrierFrequencies.length % 2 != 0) {
                Log.w(TAG, "consumer ir service returned an uneven number of frequencies.");
                return null;
            }
            CarrierFrequencyRange[] carrierFrequencyRangeArr = new CarrierFrequencyRange[carrierFrequencies.length / 2];
            for (int i2 = 0; i2 < carrierFrequencies.length; i2 += 2) {
                carrierFrequencyRangeArr[i2 / 2] = new CarrierFrequencyRange(carrierFrequencies[i2], carrierFrequencies[i2 + 1]);
            }
            return carrierFrequencyRangeArr;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public boolean hasIrEmitter() {
        IConsumerIrService iConsumerIrService = this.mService;
        if (iConsumerIrService == null) {
            Log.w(TAG, "no consumer ir service.");
            return false;
        }
        try {
            return iConsumerIrService.hasIrEmitter();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void transmit(int i2, int[] iArr) {
        IConsumerIrService iConsumerIrService = this.mService;
        if (iConsumerIrService == null) {
            Log.w(TAG, "failed to transmit; no consumer ir service.");
            return;
        }
        try {
            iConsumerIrService.transmit(this.mPackageName, i2, iArr);
        } catch (RemoteException e2) {
            Log.w(TAG, "failed to transmit.", e2);
        }
    }
}
