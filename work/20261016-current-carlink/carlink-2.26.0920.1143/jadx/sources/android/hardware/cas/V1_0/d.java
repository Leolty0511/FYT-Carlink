package android.hardware.cas.V1_0;

import android.os.HwBinder;
import android.os.IHwBinder;
import android.os.IHwInterface;
import android.os.RemoteException;
import com.android.internal.telephony.PhoneConstants;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class d {
    public static IMediaCasService a(IHwBinder iHwBinder) {
        if (iHwBinder == null) {
            return null;
        }
        IHwInterface iHwInterfaceQueryLocalInterface = iHwBinder.queryLocalInterface(IMediaCasService.kInterfaceName);
        if (iHwInterfaceQueryLocalInterface != null && (iHwInterfaceQueryLocalInterface instanceof IMediaCasService)) {
            return (IMediaCasService) iHwInterfaceQueryLocalInterface;
        }
        IMediaCasService.Proxy proxy = new IMediaCasService.Proxy(iHwBinder);
        try {
            Iterator<String> it = proxy.interfaceChain().iterator();
            while (it.hasNext()) {
                if (it.next().equals(IMediaCasService.kInterfaceName)) {
                    return proxy;
                }
            }
        } catch (RemoteException unused) {
        }
        return null;
    }

    public static IMediaCasService b(IHwInterface iHwInterface) {
        if (iHwInterface == null) {
            return null;
        }
        return a(iHwInterface.asBinder());
    }

    public static IMediaCasService c() {
        return a(HwBinder.getService(IMediaCasService.kInterfaceName, PhoneConstants.APN_TYPE_DEFAULT));
    }

    public static IMediaCasService d(String str) {
        return a(HwBinder.getService(IMediaCasService.kInterfaceName, str));
    }
}
