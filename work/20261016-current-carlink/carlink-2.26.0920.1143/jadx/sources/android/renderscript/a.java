package android.renderscript;

import android.os.Parcel;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.android.ims.internal.IImsCallSession;
import com.google.android.projection.proto.Protos;
import com.google.protobuf.DescriptorProtos;
import java.util.Arrays;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import kotlinx.coroutines.android.AndroidDispatcherFactory;
import kotlinx.coroutines.android.AndroidExceptionPreHandler;
import u.e;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static int a(float f2, float f3, float f4) {
        return Math.round((f2 + f3) * f4);
    }

    public static IImsCallSession b(Parcel parcel, String str) {
        parcel.enforceInterface(str);
        return IImsCallSession.Stub.asInterface(parcel.readStrongBinder());
    }

    public static Object c(int i2) {
        return Protos.getDescriptor().getMessageTypes().get(i2);
    }

    public static String d(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.exceptionLabel());
        return sb.toString();
    }

    public static String e(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    public static /* synthetic */ Iterator f() {
        try {
            return Arrays.asList(new AndroidExceptionPreHandler()).iterator();
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }

    public static /* synthetic */ void g(Object obj) {
        if (obj != null) {
            throw new ClassCastException();
        }
    }

    public static /* synthetic */ void h(e eVar) {
        if (eVar != null) {
            throw new ClassCastException();
        }
    }

    public static boolean i(Allocation allocation, Element element) {
        return allocation.getType().getElement().isCompatible(element);
    }

    public static Object j(int i2) {
        return Protos.getDescriptor().getEnumTypes().get(i2);
    }

    public static /* synthetic */ Iterator k() {
        try {
            return Arrays.asList(new AndroidDispatcherFactory()).iterator();
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }

    public static Object l(int i2) {
        return DescriptorProtos.getDescriptor().getMessageTypes().get(i2);
    }
}
