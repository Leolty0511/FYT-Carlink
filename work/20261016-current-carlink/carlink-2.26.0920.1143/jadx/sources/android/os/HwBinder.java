package android.os;

import libcore.util.NativeAllocationRegistry;

/* JADX INFO: loaded from: classes.dex */
public abstract class HwBinder implements IHwBinder {
    private static final String TAG = "HwBinder";
    private static final NativeAllocationRegistry sNativeRegistry = new NativeAllocationRegistry(HwBinder.class.getClassLoader(), native_init(), 128);
    private long mNativeContext;

    public HwBinder() {
        native_setup();
        sNativeRegistry.registerNativeAllocation(this, this.mNativeContext);
    }

    public static final native void configureRpcThreadpool(long j2, boolean z2);

    public static final native IHwBinder getService(String str, String str2);

    public static final native void joinRpcThreadpool();

    private static final native long native_init();

    private final native void native_setup();

    public abstract void onTransact(int i2, HwParcel hwParcel, HwParcel hwParcel2, int i3);

    public final native void registerService(String str);

    @Override // android.os.IHwBinder
    public final native void transact(int i2, HwParcel hwParcel, HwParcel hwParcel2, int i3);
}
