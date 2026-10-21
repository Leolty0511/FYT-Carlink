package android.hardware.cas.V1_0;

import android.os.HwBinder;
import android.os.IHwBinder;
import android.os.IHwInterface;
import android.os.RemoteException;
import com.android.internal.telephony.PhoneConstants;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static ICas a(IHwBinder iHwBinder) {
        if (iHwBinder == null) {
            return null;
        }
        IHwInterface iHwInterfaceQueryLocalInterface = iHwBinder.queryLocalInterface(ICas.kInterfaceName);
        if (iHwInterfaceQueryLocalInterface != null && (iHwInterfaceQueryLocalInterface instanceof ICas)) {
            return (ICas) iHwInterfaceQueryLocalInterface;
        }
        ICas.Proxy proxy = new ICas.Proxy(iHwBinder);
        try {
            Iterator<String> it = proxy.interfaceChain().iterator();
            while (it.hasNext()) {
                if (it.next().equals(ICas.kInterfaceName)) {
                    return proxy;
                }
            }
        } catch (RemoteException unused) {
        }
        return null;
    }

    public static ICas b(IHwInterface iHwInterface) {
        if (iHwInterface == null) {
            return null;
        }
        return a(iHwInterface.asBinder());
    }

    public static ICas c() {
        return a(HwBinder.getService(ICas.kInterfaceName, PhoneConstants.APN_TYPE_DEFAULT));
    }

    public static ICas d(String str) {
        return a(HwBinder.getService(ICas.kInterfaceName, str));
    }
}
