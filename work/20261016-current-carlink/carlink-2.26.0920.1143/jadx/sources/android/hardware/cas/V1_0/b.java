package android.hardware.cas.V1_0;

import android.os.HwBinder;
import android.os.IHwBinder;
import android.os.IHwInterface;
import android.os.RemoteException;
import com.android.internal.telephony.PhoneConstants;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class b {
    public static ICasListener a(IHwBinder iHwBinder) {
        if (iHwBinder == null) {
            return null;
        }
        IHwInterface iHwInterfaceQueryLocalInterface = iHwBinder.queryLocalInterface(ICasListener.kInterfaceName);
        if (iHwInterfaceQueryLocalInterface != null && (iHwInterfaceQueryLocalInterface instanceof ICasListener)) {
            return (ICasListener) iHwInterfaceQueryLocalInterface;
        }
        ICasListener.Proxy proxy = new ICasListener.Proxy(iHwBinder);
        try {
            Iterator<String> it = proxy.interfaceChain().iterator();
            while (it.hasNext()) {
                if (it.next().equals(ICasListener.kInterfaceName)) {
                    return proxy;
                }
            }
        } catch (RemoteException unused) {
        }
        return null;
    }

    public static ICasListener b(IHwInterface iHwInterface) {
        if (iHwInterface == null) {
            return null;
        }
        return a(iHwInterface.asBinder());
    }

    public static ICasListener c() {
        return a(HwBinder.getService(ICasListener.kInterfaceName, PhoneConstants.APN_TYPE_DEFAULT));
    }

    public static ICasListener d(String str) {
        return a(HwBinder.getService(ICasListener.kInterfaceName, str));
    }
}
