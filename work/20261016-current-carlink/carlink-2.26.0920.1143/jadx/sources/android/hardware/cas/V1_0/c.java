package android.hardware.cas.V1_0;

import android.os.HwBinder;
import android.os.IHwBinder;
import android.os.IHwInterface;
import android.os.RemoteException;
import com.android.internal.telephony.PhoneConstants;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class c {
    public static IDescramblerBase a(IHwBinder iHwBinder) {
        if (iHwBinder == null) {
            return null;
        }
        IHwInterface iHwInterfaceQueryLocalInterface = iHwBinder.queryLocalInterface(IDescramblerBase.kInterfaceName);
        if (iHwInterfaceQueryLocalInterface != null && (iHwInterfaceQueryLocalInterface instanceof IDescramblerBase)) {
            return (IDescramblerBase) iHwInterfaceQueryLocalInterface;
        }
        IDescramblerBase.Proxy proxy = new IDescramblerBase.Proxy(iHwBinder);
        try {
            Iterator<String> it = proxy.interfaceChain().iterator();
            while (it.hasNext()) {
                if (it.next().equals(IDescramblerBase.kInterfaceName)) {
                    return proxy;
                }
            }
        } catch (RemoteException unused) {
        }
        return null;
    }

    public static IDescramblerBase b(IHwInterface iHwInterface) {
        if (iHwInterface == null) {
            return null;
        }
        return a(iHwInterface.asBinder());
    }

    public static IDescramblerBase c() {
        return a(HwBinder.getService(IDescramblerBase.kInterfaceName, PhoneConstants.APN_TYPE_DEFAULT));
    }

    public static IDescramblerBase d(String str) {
        return a(HwBinder.getService(IDescramblerBase.kInterfaceName, str));
    }
}
