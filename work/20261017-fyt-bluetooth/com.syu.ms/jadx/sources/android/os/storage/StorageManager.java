package android.os.storage;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.provider.Settings;
import android.util.Log;
import android.util.SparseArray;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import u.j;

/* JADX INFO: loaded from: classes.dex */
public class StorageManager {
    private static final long DEFAULT_FULL_THRESHOLD_BYTES = 1048576;
    private static final long DEFAULT_THRESHOLD_MAX_BYTES = 524288000;
    private static final int DEFAULT_THRESHOLD_PERCENTAGE = 10;
    private static final String TAG = "StorageManager";
    private MountServiceBinderListener mBinderListener;
    private final IMountService mMountService;
    private final ContentResolver mResolver;
    private final Looper mTgtLooper;
    private List<ListenerDelegate> mListeners = new ArrayList();
    private final AtomicInteger mNextNonce = new AtomicInteger(0);
    private final ObbActionListener mObbActionListener = new ObbActionListener();

    public class ListenerDelegate {
        private final Handler mHandler;
        public final StorageEventListener mStorageEventListener;

        public ListenerDelegate(StorageEventListener storageEventListener) {
            this.mStorageEventListener = storageEventListener;
            this.mHandler = new Handler(StorageManager.this.mTgtLooper) { // from class: android.os.storage.StorageManager.ListenerDelegate.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    StorageEvent storageEvent = (StorageEvent) message.obj;
                    int i2 = message.what;
                    if (i2 == 1) {
                        ListenerDelegate.this.mStorageEventListener.onUsbMassStorageConnectionChanged(((UmsConnectionChangedStorageEvent) storageEvent).available);
                        return;
                    }
                    if (i2 == 2) {
                        StorageStateChangedStorageEvent storageStateChangedStorageEvent = (StorageStateChangedStorageEvent) storageEvent;
                        ListenerDelegate.this.mStorageEventListener.onStorageStateChanged(storageStateChangedStorageEvent.path, storageStateChangedStorageEvent.oldState, storageStateChangedStorageEvent.newState);
                    } else {
                        Log.e(StorageManager.TAG, "Unsupported event " + message.what);
                    }
                }
            };
        }

        public StorageEventListener getListener() {
            return this.mStorageEventListener;
        }

        public void sendShareAvailabilityChanged(boolean z2) {
            this.mHandler.sendMessage(StorageManager.this.new UmsConnectionChangedStorageEvent(z2).getMessage());
        }

        public void sendStorageStateChanged(String str, String str2, String str3) {
            this.mHandler.sendMessage(StorageManager.this.new StorageStateChangedStorageEvent(str, str2, str3).getMessage());
        }
    }

    public class MountServiceBinderListener extends IMountServiceListener.Stub {
        private MountServiceBinderListener() {
        }

        @Override // android.os.storage.IMountServiceListener
        public void onStorageStateChanged(String str, String str2, String str3) {
            int size = StorageManager.this.mListeners.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((ListenerDelegate) StorageManager.this.mListeners.get(i2)).sendStorageStateChanged(str, str2, str3);
            }
        }

        @Override // android.os.storage.IMountServiceListener
        public void onUsbMassStorageConnectionChanged(boolean z2) {
            int size = StorageManager.this.mListeners.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((ListenerDelegate) StorageManager.this.mListeners.get(i2)).sendShareAvailabilityChanged(z2);
            }
        }
    }

    public class ObbActionListener extends IObbActionListener.Stub {
        private SparseArray<ObbListenerDelegate> mListeners;

        private ObbActionListener() {
            this.mListeners = new SparseArray<>();
        }

        public int addListener(OnObbStateChangeListener onObbStateChangeListener) {
            ObbListenerDelegate obbListenerDelegate = StorageManager.this.new ObbListenerDelegate(onObbStateChangeListener);
            synchronized (this.mListeners) {
                this.mListeners.put(obbListenerDelegate.nonce, obbListenerDelegate);
            }
            return obbListenerDelegate.nonce;
        }

        @Override // android.os.storage.IObbActionListener
        public void onObbResult(String str, int i2, int i3) {
            ObbListenerDelegate obbListenerDelegate;
            synchronized (this.mListeners) {
                obbListenerDelegate = this.mListeners.get(i2);
                if (obbListenerDelegate != null) {
                    this.mListeners.remove(i2);
                }
            }
            if (obbListenerDelegate != null) {
                obbListenerDelegate.sendObbStateChanged(str, i3);
            }
        }
    }

    public class ObbListenerDelegate {
        private final Handler mHandler;
        private final WeakReference<OnObbStateChangeListener> mObbEventListenerRef;
        private final int nonce;

        public ObbListenerDelegate(OnObbStateChangeListener onObbStateChangeListener) {
            this.nonce = StorageManager.this.getNextNonce();
            this.mObbEventListenerRef = new WeakReference<>(onObbStateChangeListener);
            this.mHandler = new Handler(StorageManager.this.mTgtLooper) { // from class: android.os.storage.StorageManager.ObbListenerDelegate.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    OnObbStateChangeListener listener = ObbListenerDelegate.this.getListener();
                    if (listener == null) {
                        return;
                    }
                    StorageEvent storageEvent = (StorageEvent) message.obj;
                    if (message.what == 3) {
                        ObbStateChangedStorageEvent obbStateChangedStorageEvent = (ObbStateChangedStorageEvent) storageEvent;
                        listener.onObbStateChange(obbStateChangedStorageEvent.path, obbStateChangedStorageEvent.state);
                    } else {
                        Log.e(StorageManager.TAG, "Unsupported event " + message.what);
                    }
                }
            };
        }

        public OnObbStateChangeListener getListener() {
            WeakReference<OnObbStateChangeListener> weakReference = this.mObbEventListenerRef;
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }

        public void sendObbStateChanged(String str, int i2) {
            this.mHandler.sendMessage(StorageManager.this.new ObbStateChangedStorageEvent(str, i2).getMessage());
        }
    }

    public class ObbStateChangedStorageEvent extends StorageEvent {
        public final String path;
        public final int state;

        public ObbStateChangedStorageEvent(String str, int i2) {
            super(3);
            this.path = str;
            this.state = i2;
        }
    }

    public class StorageEvent {
        public static final int EVENT_OBB_STATE_CHANGED = 3;
        public static final int EVENT_STORAGE_STATE_CHANGED = 2;
        public static final int EVENT_UMS_CONNECTION_CHANGED = 1;
        private Message mMessage;

        public StorageEvent(int i2) {
            Message messageObtain = Message.obtain();
            this.mMessage = messageObtain;
            messageObtain.what = i2;
            messageObtain.obj = this;
        }

        public Message getMessage() {
            return this.mMessage;
        }
    }

    public class StorageStateChangedStorageEvent extends StorageEvent {
        public String newState;
        public String oldState;
        public String path;

        public StorageStateChangedStorageEvent(String str, String str2, String str3) {
            super(2);
            this.path = str;
            this.oldState = str2;
            this.newState = str3;
        }
    }

    public class UmsConnectionChangedStorageEvent extends StorageEvent {
        public boolean available;

        public UmsConnectionChangedStorageEvent(boolean z2) {
            super(1);
            this.available = z2;
        }
    }

    public StorageManager(ContentResolver contentResolver, Looper looper) {
        this.mResolver = contentResolver;
        this.mTgtLooper = looper;
        IMountService iMountServiceAsInterface = IMountService.Stub.asInterface(ServiceManager.getService("mount"));
        this.mMountService = iMountServiceAsInterface;
        if (iMountServiceAsInterface == null) {
            Log.e(TAG, "Unable to connect to mount service! - is it running yet?");
        }
    }

    public static StorageManager from(Context context) {
        return (StorageManager) context.getSystemService(Context.STORAGE_SERVICE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getNextNonce() {
        return this.mNextNonce.getAndIncrement();
    }

    public void disableUsbMassStorage() {
        try {
            this.mMountService.setUsbMassStorageEnabled(false);
        } catch (Exception e2) {
            Log.e(TAG, "Failed to disable UMS", e2);
        }
    }

    public void enableUsbMassStorage() {
        try {
            this.mMountService.setUsbMassStorageEnabled(true);
        } catch (Exception e2) {
            Log.e(TAG, "Failed to enable UMS", e2);
        }
    }

    public String getMountedObbPath(String str) {
        j.b(str, "rawPath cannot be null");
        try {
            return this.mMountService.getMountedObbPath(str);
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to find mounted path for OBB", e2);
            return null;
        }
    }

    public StorageVolume getPrimaryVolume() {
        return getPrimaryVolume(getVolumeList());
    }

    public long getStorageFullBytes(File file) {
        return Settings.Global.getLong(this.mResolver, Settings.Global.SYS_STORAGE_FULL_THRESHOLD_BYTES, 1048576L);
    }

    public long getStorageLowBytes(File file) {
        return Math.min((file.getTotalSpace() * ((long) Settings.Global.getInt(this.mResolver, Settings.Global.SYS_STORAGE_THRESHOLD_PERCENTAGE, 10))) / 100, Settings.Global.getLong(this.mResolver, Settings.Global.SYS_STORAGE_THRESHOLD_MAX_BYTES, DEFAULT_THRESHOLD_MAX_BYTES));
    }

    public StorageVolume[] getVolumeList() {
        IMountService iMountService = this.mMountService;
        if (iMountService == null) {
            return new StorageVolume[0];
        }
        try {
            StorageVolume[] volumeList = iMountService.getVolumeList();
            if (volumeList == null) {
                return new StorageVolume[0];
            }
            int length = volumeList.length;
            StorageVolume[] storageVolumeArr = new StorageVolume[length];
            for (int i2 = 0; i2 < length; i2++) {
                storageVolumeArr[i2] = volumeList[i2];
            }
            return storageVolumeArr;
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to get volume list", e2);
            return null;
        }
    }

    public String[] getVolumePaths() {
        StorageVolume[] volumeList = getVolumeList();
        if (volumeList == null) {
            return null;
        }
        int length = volumeList.length;
        String[] strArr = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            strArr[i2] = volumeList[i2].getPath();
        }
        return strArr;
    }

    public String getVolumeState(String str) {
        IMountService iMountService = this.mMountService;
        if (iMountService == null) {
            return Environment.MEDIA_REMOVED;
        }
        try {
            return iMountService.getVolumeState(str);
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to get volume state", e2);
            return null;
        }
    }

    public boolean isObbMounted(String str) {
        j.b(str, "rawPath cannot be null");
        try {
            return this.mMountService.isObbMounted(str);
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to check if OBB is mounted", e2);
            return false;
        }
    }

    public boolean isUsbMassStorageConnected() {
        try {
            return this.mMountService.isUsbMassStorageConnected();
        } catch (Exception e2) {
            Log.e(TAG, "Failed to get UMS connection state", e2);
            return false;
        }
    }

    public boolean isUsbMassStorageEnabled() {
        try {
            return this.mMountService.isUsbMassStorageEnabled();
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to get UMS enable state", e2);
            return false;
        }
    }

    public boolean mountObb(String str, String str2, OnObbStateChangeListener onObbStateChangeListener) {
        j.b(str, "rawPath cannot be null");
        j.b(onObbStateChangeListener, "listener cannot be null");
        try {
            this.mMountService.mountObb(str, new File(str).getCanonicalPath(), str2, this.mObbActionListener, this.mObbActionListener.addListener(onObbStateChangeListener));
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to mount OBB", e2);
            return false;
        } catch (IOException e3) {
            throw new IllegalArgumentException("Failed to resolve path: " + str, e3);
        }
    }

    public void registerListener(StorageEventListener storageEventListener) {
        if (storageEventListener == null) {
            return;
        }
        synchronized (this.mListeners) {
            if (this.mBinderListener == null) {
                try {
                    MountServiceBinderListener mountServiceBinderListener = new MountServiceBinderListener();
                    this.mBinderListener = mountServiceBinderListener;
                    this.mMountService.registerListener(mountServiceBinderListener);
                } catch (RemoteException unused) {
                    Log.e(TAG, "Register mBinderListener failed");
                    return;
                }
            }
            this.mListeners.add(new ListenerDelegate(storageEventListener));
        }
    }

    public boolean unmountObb(String str, boolean z2, OnObbStateChangeListener onObbStateChangeListener) {
        j.b(str, "rawPath cannot be null");
        j.b(onObbStateChangeListener, "listener cannot be null");
        try {
            this.mMountService.unmountObb(str, z2, this.mObbActionListener, this.mObbActionListener.addListener(onObbStateChangeListener));
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to mount OBB", e2);
            return false;
        }
    }

    public void unregisterListener(StorageEventListener storageEventListener) {
        MountServiceBinderListener mountServiceBinderListener;
        if (storageEventListener == null) {
            return;
        }
        synchronized (this.mListeners) {
            int size = this.mListeners.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (this.mListeners.get(i2).getListener() == storageEventListener) {
                    this.mListeners.remove(i2);
                    break;
                }
            }
            if (this.mListeners.size() == 0 && (mountServiceBinderListener = this.mBinderListener) != null) {
                try {
                    this.mMountService.unregisterListener(mountServiceBinderListener);
                } catch (RemoteException unused) {
                    Log.e(TAG, "Unregister mBinderListener failed");
                }
            }
        }
    }

    public static StorageVolume getPrimaryVolume(StorageVolume[] storageVolumeArr) {
        for (StorageVolume storageVolume : storageVolumeArr) {
            if (storageVolume.isPrimary()) {
                return storageVolume;
            }
        }
        Log.w(TAG, "No primary storage defined");
        return null;
    }
}
