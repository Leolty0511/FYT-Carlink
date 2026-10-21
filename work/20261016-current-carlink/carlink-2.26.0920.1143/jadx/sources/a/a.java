package a;

import android.hidl.base.V1_0.IBase;
import android.os.HwBinder;
import android.os.IHwBinder;
import android.os.IHwInterface;
import android.os.RemoteException;
import com.android.internal.telephony.PhoneConstants;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static IBase a(IHwBinder iHwBinder) {
        if (iHwBinder == null) {
            return null;
        }
        IHwInterface iHwInterfaceQueryLocalInterface = iHwBinder.queryLocalInterface(IBase.kInterfaceName);
        if (iHwInterfaceQueryLocalInterface != null && (iHwInterfaceQueryLocalInterface instanceof IBase)) {
            return (IBase) iHwInterfaceQueryLocalInterface;
        }
        IBase.Proxy proxy = new IBase.Proxy(iHwBinder);
        try {
            Iterator<String> it = proxy.interfaceChain().iterator();
            while (it.hasNext()) {
                if (it.next().equals(IBase.kInterfaceName)) {
                    return proxy;
                }
            }
        } catch (RemoteException unused) {
        }
        return null;
    }

    public static IBase b(IHwInterface iHwInterface) {
        if (iHwInterface == null) {
            return null;
        }
        return a(iHwInterface.asBinder());
    }

    public static IBase c() {
        return a(HwBinder.getService(IBase.kInterfaceName, PhoneConstants.APN_TYPE_DEFAULT));
    }

    public static IBase d(String str) {
        return a(HwBinder.getService(IBase.kInterfaceName, str));
    }
}
