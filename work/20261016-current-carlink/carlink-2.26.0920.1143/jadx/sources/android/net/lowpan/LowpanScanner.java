package android.net.lowpan;

import android.os.Handler;
import android.os.RemoteException;
import android.os.ServiceSpecificException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class LowpanScanner {
    private static final String TAG = "LowpanScanner";
    private ILowpanInterface mBinder;
    private Callback mCallback = null;
    private Handler mHandler = null;
    private ArrayList<Integer> mChannelMask = null;
    private int mTxPower = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: android.net.lowpan.LowpanScanner$1, reason: invalid class name */
    public class AnonymousClass1 extends ILowpanNetScanCallback.Stub {
        public AnonymousClass1() {
        }

        @Override // android.net.lowpan.ILowpanNetScanCallback
        public void onNetScanBeacon(LowpanBeaconInfo lowpanBeaconInfo) {
            Callback callback;
            Handler handler;
            synchronized (LowpanScanner.this) {
                callback = LowpanScanner.this.mCallback;
                handler = LowpanScanner.this.mHandler;
            }
            if (callback == null) {
                return;
            }
            a aVar = new a(callback, lowpanBeaconInfo, 2);
            if (handler != null) {
                handler.post(aVar);
            } else {
                aVar.run();
            }
        }

        @Override // android.net.lowpan.ILowpanNetScanCallback
        public void onNetScanFinished() {
            Callback callback;
            Handler handler;
            synchronized (LowpanScanner.this) {
                callback = LowpanScanner.this.mCallback;
                handler = LowpanScanner.this.mHandler;
            }
            if (callback == null) {
                return;
            }
            h hVar = new h(callback, 0);
            if (handler != null) {
                handler.post(hVar);
            } else {
                hVar.run();
            }
        }
    }

    /* JADX INFO: renamed from: android.net.lowpan.LowpanScanner$2, reason: invalid class name */
    public class AnonymousClass2 extends ILowpanEnergyScanCallback.Stub {
        public AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onEnergyScanResult$0(Callback callback, int i2, int i3) {
            if (callback != null) {
                LowpanEnergyScanResult lowpanEnergyScanResult = new LowpanEnergyScanResult();
                lowpanEnergyScanResult.setChannel(i2);
                lowpanEnergyScanResult.setMaxRssi(i3);
                callback.onEnergyScanResult(lowpanEnergyScanResult);
            }
        }

        @Override // android.net.lowpan.ILowpanEnergyScanCallback
        public void onEnergyScanFinished() {
            Callback callback = LowpanScanner.this.mCallback;
            Handler handler = LowpanScanner.this.mHandler;
            if (callback == null) {
                return;
            }
            h hVar = new h(callback, 1);
            if (handler != null) {
                handler.post(hVar);
            } else {
                hVar.run();
            }
        }

        @Override // android.net.lowpan.ILowpanEnergyScanCallback
        public void onEnergyScanResult(final int i2, final int i3) {
            final Callback callback = LowpanScanner.this.mCallback;
            Handler handler = LowpanScanner.this.mHandler;
            if (callback == null) {
                return;
            }
            Runnable runnable = new Runnable() { // from class: android.net.lowpan.i
                @Override // java.lang.Runnable
                public final void run() {
                    LowpanScanner.AnonymousClass2.lambda$onEnergyScanResult$0(callback, i2, i3);
                }
            };
            if (handler != null) {
                handler.post(runnable);
            } else {
                runnable.run();
            }
        }
    }

    public static abstract class Callback {
        public void onEnergyScanResult(LowpanEnergyScanResult lowpanEnergyScanResult) {
        }

        public void onNetScanBeacon(LowpanBeaconInfo lowpanBeaconInfo) {
        }

        public void onScanFinished() {
        }
    }

    public LowpanScanner(ILowpanInterface iLowpanInterface) {
        this.mBinder = iLowpanInterface;
    }

    private Map<String, Object> createScanOptionMap() {
        HashMap map = new HashMap();
        ArrayList<Integer> arrayList = this.mChannelMask;
        if (arrayList != null) {
            LowpanProperties.KEY_CHANNEL_MASK.putInMap(map, arrayList.stream().mapToInt(new android.hardware.radio.b(1)).toArray());
        }
        int i2 = this.mTxPower;
        if (i2 != Integer.MAX_VALUE) {
            LowpanProperties.KEY_MAX_TX_POWER.putInMap(map, Integer.valueOf(i2));
        }
        return map;
    }

    public void addChannel(int i2) {
        if (this.mChannelMask == null) {
            this.mChannelMask = new ArrayList<>();
        }
        this.mChannelMask.add(Integer.valueOf(i2));
    }

    public Collection<Integer> getChannelMask() {
        return (Collection) this.mChannelMask.clone();
    }

    public int getTxPower() {
        return this.mTxPower;
    }

    public synchronized void setCallback(Callback callback, Handler handler) {
        this.mCallback = callback;
        this.mHandler = handler;
    }

    public void setChannelMask(Collection<Integer> collection) {
        if (collection == null) {
            this.mChannelMask = null;
            return;
        }
        ArrayList<Integer> arrayList = this.mChannelMask;
        if (arrayList == null) {
            this.mChannelMask = new ArrayList<>();
        } else {
            arrayList.clear();
        }
        this.mChannelMask.addAll(collection);
    }

    public void setTxPower(int i2) {
        this.mTxPower = i2;
    }

    public void startEnergyScan() throws LowpanException {
        try {
            this.mBinder.startEnergyScan(createScanOptionMap(), new AnonymousClass2());
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        } catch (ServiceSpecificException e3) {
            throw LowpanException.rethrowFromServiceSpecificException(e3);
        }
    }

    public void startNetScan() throws LowpanException {
        try {
            this.mBinder.startNetScan(createScanOptionMap(), new AnonymousClass1());
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        } catch (ServiceSpecificException e3) {
            throw LowpanException.rethrowFromServiceSpecificException(e3);
        }
    }

    public void stopEnergyScan() {
        try {
            this.mBinder.stopEnergyScan();
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    public void stopNetScan() {
        try {
            this.mBinder.stopNetScan();
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    public void setCallback(Callback callback) {
        setCallback(callback, null);
    }
}
