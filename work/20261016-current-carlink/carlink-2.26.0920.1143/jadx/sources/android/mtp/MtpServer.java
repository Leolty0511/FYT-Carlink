package android.mtp;

import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public class MtpServer implements Runnable {
    private final MtpDatabase mDatabase;
    private long mNativeContext;
    private final Runnable mOnTerminate;

    static {
        System.loadLibrary("media_jni");
    }

    public MtpServer(MtpDatabase mtpDatabase, boolean z2, Runnable runnable, String str, String str2, String str3, String str4) {
        this.mDatabase = (MtpDatabase) Preconditions.checkNotNull(mtpDatabase);
        this.mOnTerminate = (Runnable) Preconditions.checkNotNull(runnable);
        native_setup(mtpDatabase, z2, str, str2, str3, str4);
        mtpDatabase.setServer(this);
    }

    public static void configure(boolean z2) {
        native_configure(z2);
    }

    private final native void native_add_storage(MtpStorage mtpStorage);

    private final native void native_cleanup();

    public static final native void native_configure(boolean z2);

    private final native void native_remove_storage(int i2);

    private final native void native_run();

    private final native void native_send_device_property_changed(int i2);

    private final native void native_send_object_added(int i2);

    private final native void native_send_object_removed(int i2);

    private final native void native_setup(MtpDatabase mtpDatabase, boolean z2, String str, String str2, String str3, String str4);

    public void addStorage(MtpStorage mtpStorage) {
        native_add_storage(mtpStorage);
    }

    public void removeStorage(MtpStorage mtpStorage) {
        native_remove_storage(mtpStorage.getStorageId());
    }

    @Override // java.lang.Runnable
    public void run() {
        native_run();
        native_cleanup();
        this.mDatabase.close();
        this.mOnTerminate.run();
    }

    public void sendDevicePropertyChanged(int i2) {
        native_send_device_property_changed(i2);
    }

    public void sendObjectAdded(int i2) {
        native_send_object_added(i2);
    }

    public void sendObjectRemoved(int i2) {
        native_send_object_removed(i2);
    }

    public void start() {
        new Thread(this, "MtpServer").start();
    }
}
