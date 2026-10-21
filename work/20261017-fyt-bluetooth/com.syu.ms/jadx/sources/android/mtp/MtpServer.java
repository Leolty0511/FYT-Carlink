package android.mtp;

/* JADX INFO: loaded from: classes.dex */
public class MtpServer implements Runnable {
    private int mNativeContext;

    static {
        System.loadLibrary("media_jni");
    }

    public MtpServer(MtpDatabase mtpDatabase, boolean z2) {
        native_setup(mtpDatabase, z2);
    }

    private final native void native_add_storage(MtpStorage mtpStorage);

    private final native void native_cleanup();

    private final native void native_remove_storage(int i2);

    private final native void native_run();

    private final native void native_send_object_added(int i2);

    private final native void native_send_object_removed(int i2);

    private final native void native_setup(MtpDatabase mtpDatabase, boolean z2);

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
