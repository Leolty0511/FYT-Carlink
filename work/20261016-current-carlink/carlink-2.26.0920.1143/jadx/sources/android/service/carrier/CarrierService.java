package android.service.carrier;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.PersistableBundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import com.android.internal.telephony.ITelephonyRegistry;

/* JADX INFO: loaded from: classes.dex */
public abstract class CarrierService extends Service {
    public static final String CARRIER_SERVICE_INTERFACE = "android.service.carrier.CarrierService";
    private static ITelephonyRegistry sRegistry;
    private final ICarrierService.Stub mStubWrapper = new ICarrierServiceWrapper();

    public class ICarrierServiceWrapper extends ICarrierService.Stub {
        private ICarrierServiceWrapper() {
        }

        @Override // android.service.carrier.ICarrierService
        public PersistableBundle getCarrierConfig(CarrierIdentifier carrierIdentifier) {
            return CarrierService.this.onLoadConfig(carrierIdentifier);
        }
    }

    public CarrierService() {
        if (sRegistry == null) {
            sRegistry = ITelephonyRegistry.Stub.asInterface(ServiceManager.getService("telephony.registry"));
        }
    }

    public final void notifyCarrierNetworkChange(boolean z2) {
        try {
            ITelephonyRegistry iTelephonyRegistry = sRegistry;
            if (iTelephonyRegistry != null) {
                iTelephonyRegistry.notifyCarrierNetworkChange(z2);
            }
        } catch (RemoteException | NullPointerException unused) {
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mStubWrapper;
    }

    public abstract PersistableBundle onLoadConfig(CarrierIdentifier carrierIdentifier);
}
