package android.os.storage;

import android.accessibilityservice.c;
import android.annotation.SuppressLint;
import android.app.ActivityThread;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.IPackageMoveObserver;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Binder;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.ParcelableException;
import android.os.Process;
import android.os.ProxyFileDescriptorCallback;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.Settings;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.content.NativeLibraryHelper;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.os.AppFuseMount;
import com.android.internal.os.FuseAppLoop;
import com.android.internal.os.FuseUnavailableMountException;
import com.android.internal.os.RoSystemProperties;
import com.android.internal.os.SomeArgs;
import com.android.internal.util.Preconditions;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class StorageManager {
    public static final String ACTION_MANAGE_STORAGE = "android.os.storage.action.MANAGE_STORAGE";
    public static final int CRYPT_TYPE_DEFAULT = 1;
    public static final int CRYPT_TYPE_PASSWORD = 0;
    public static final int CRYPT_TYPE_PATTERN = 2;
    public static final int CRYPT_TYPE_PIN = 3;
    public static final int DEBUG_EMULATE_FBE = 2;
    public static final int DEBUG_FORCE_ADOPTABLE = 1;
    public static final int DEBUG_SDCARDFS_FORCE_OFF = 8;
    public static final int DEBUG_SDCARDFS_FORCE_ON = 4;
    public static final int DEBUG_VIRTUAL_DISK = 16;
    private static final long DEFAULT_CACHE_MAX_BYTES = 5368709120L;
    private static final int DEFAULT_CACHE_PERCENTAGE = 10;
    private static final long DEFAULT_FULL_THRESHOLD_BYTES = 1048576;
    private static final long DEFAULT_THRESHOLD_MAX_BYTES = 524288000;
    private static final int DEFAULT_THRESHOLD_PERCENTAGE = 5;
    public static final int ENCRYPTION_STATE_ERROR_CORRUPT = -4;
    public static final int ENCRYPTION_STATE_ERROR_INCOMPLETE = -2;
    public static final int ENCRYPTION_STATE_ERROR_INCONSISTENT = -3;
    public static final int ENCRYPTION_STATE_ERROR_UNKNOWN = -1;
    public static final int ENCRYPTION_STATE_NONE = 1;
    public static final int ENCRYPTION_STATE_OK = 0;
    public static final String EXTRA_REQUESTED_BYTES = "android.os.storage.extra.REQUESTED_BYTES";
    public static final String EXTRA_UUID = "android.os.storage.extra.UUID";
    public static final int FLAG_ALLOCATE_AGGRESSIVE = 1;
    public static final int FLAG_ALLOCATE_DEFY_ALL_RESERVED = 2;
    public static final int FLAG_ALLOCATE_DEFY_HALF_RESERVED = 4;
    public static final int FLAG_FOR_WRITE = 256;
    public static final int FLAG_INCLUDE_INVISIBLE = 1024;
    public static final int FLAG_REAL_STATE = 512;
    public static final int FLAG_STORAGE_CE = 2;
    public static final int FLAG_STORAGE_DE = 1;
    public static final int FSTRIM_FLAG_BENCHMARK = 2;
    public static final int FSTRIM_FLAG_DEEP = 1;
    public static final String OWNER_INFO_KEY = "OwnerInfo";
    public static final String PASSWORD_VISIBLE_KEY = "PasswordVisible";
    public static final String PATTERN_VISIBLE_KEY = "PatternVisible";
    public static final String PROP_ADOPTABLE_FBE = "persist.sys.adoptable_fbe";
    public static final String PROP_EMULATE_FBE = "persist.sys.emulate_fbe";
    public static final String PROP_FORCE_ADOPTABLE = "persist.fw.force_adoptable";
    public static final String PROP_HAS_ADOPTABLE = "vold.has_adoptable";
    public static final String PROP_PRIMARY_PHYSICAL = "ro.vold.primary_physical";
    public static final String PROP_PRIMARY_TYPE = "persist.storage.type";
    public static final String PROP_SDCARDFS = "persist.sys.sdcardfs";
    public static final String PROP_VIRTUAL_DISK = "persist.sys.virtual_disk";
    private static final String SDCARD_MAGIC = "736463617264";
    public static final String SYSTEM_LOCALE_KEY = "SystemLocale";
    private static final String TAG = "StorageManager";
    public static final String UUID_PRIMARY_PHYSICAL = "primary_physical";
    public static final String UUID_PRIVATE_INTERNAL = null;
    public static final String UUID_SYSTEM = "system";
    private static final String XATTR_CACHE_GROUP = "user.cache_group";
    private static final String XATTR_CACHE_TOMBSTONE = "user.cache_tombstone";
    private final Context mContext;
    private final Looper mLooper;
    private final ContentResolver mResolver;
    public static final UUID UUID_DEFAULT = UUID.fromString("41217664-9172-527a-b3d5-edabb50a7d69");
    public static final UUID UUID_PRIMARY_PHYSICAL_ = UUID.fromString("0f95a519-dae7-5abf-9519-fbd6209e05fd");
    public static final UUID UUID_SYSTEM_ = UUID.fromString("5d258386-e60d-59e3-826d-0089cdd42cc0");
    private static volatile IStorageManager sStorageManager = null;
    private final AtomicInteger mNextNonce = new AtomicInteger(0);
    private final ArrayList<StorageEventListenerDelegate> mDelegates = new ArrayList<>();
    private final ObbActionListener mObbActionListener = new ObbActionListener();
    private final Object mFuseAppLoopLock = new Object();

    @GuardedBy("mFuseAppLoopLock")
    private FuseAppLoop mFuseAppLoop = null;
    private final IStorageManager mStorageManager = IStorageManager.Stub.asInterface(ServiceManager.getServiceOrThrow("mount"));

    @Retention(RetentionPolicy.SOURCE)
    public @interface AllocateFlags {
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
            this.mHandler = new Handler(StorageManager.this.mLooper) { // from class: android.os.storage.StorageManager.ObbListenerDelegate.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    OnObbStateChangeListener listener = ObbListenerDelegate.this.getListener();
                    if (listener == null) {
                        return;
                    }
                    listener.onObbStateChange((String) message.obj, message.arg1);
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
            this.mHandler.obtainMessage(0, i2, 0, str).sendToTarget();
        }
    }

    public static class StorageEventListenerDelegate extends IStorageEventListener.Stub implements Handler.Callback {
        private static final int MSG_DISK_DESTROYED = 6;
        private static final int MSG_DISK_SCANNED = 5;
        private static final int MSG_STORAGE_STATE_CHANGED = 1;
        private static final int MSG_UMS_CONNECTION_CHANGED = 7;
        private static final int MSG_VOLUME_FORGOTTEN = 4;
        private static final int MSG_VOLUME_RECORD_CHANGED = 3;
        private static final int MSG_VOLUME_STATE_CHANGED = 2;
        final StorageEventListener mCallback;
        final Handler mHandler;

        public StorageEventListenerDelegate(StorageEventListener storageEventListener, Looper looper) {
            this.mCallback = storageEventListener;
            this.mHandler = new Handler(looper, this);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            SomeArgs someArgs = (SomeArgs) message.obj;
            switch (message.what) {
                case 1:
                    this.mCallback.onStorageStateChanged((String) someArgs.arg1, (String) someArgs.arg2, (String) someArgs.arg3);
                    someArgs.recycle();
                    return true;
                case 2:
                    this.mCallback.onVolumeStateChanged((VolumeInfo) someArgs.arg1, someArgs.argi2, someArgs.argi3);
                    someArgs.recycle();
                    return true;
                case 3:
                    this.mCallback.onVolumeRecordChanged((VolumeRecord) someArgs.arg1);
                    someArgs.recycle();
                    return true;
                case 4:
                    this.mCallback.onVolumeForgotten((String) someArgs.arg1);
                    someArgs.recycle();
                    return true;
                case 5:
                    this.mCallback.onDiskScanned((DiskInfo) someArgs.arg1, someArgs.argi2);
                    someArgs.recycle();
                    return true;
                case 6:
                    this.mCallback.onDiskDestroyed((DiskInfo) someArgs.arg1);
                    someArgs.recycle();
                    return true;
                default:
                    someArgs.recycle();
                    return false;
            }
        }

        @Override // android.os.storage.IStorageEventListener
        public void onDiskDestroyed(DiskInfo diskInfo) {
            SomeArgs someArgsObtain = SomeArgs.obtain();
            someArgsObtain.arg1 = diskInfo;
            this.mHandler.obtainMessage(6, someArgsObtain).sendToTarget();
        }

        @Override // android.os.storage.IStorageEventListener
        public void onDiskScanned(DiskInfo diskInfo, int i2) {
            SomeArgs someArgsObtain = SomeArgs.obtain();
            someArgsObtain.arg1 = diskInfo;
            someArgsObtain.argi2 = i2;
            this.mHandler.obtainMessage(5, someArgsObtain).sendToTarget();
        }

        @Override // android.os.storage.IStorageEventListener
        public void onStorageStateChanged(String str, String str2, String str3) {
            SomeArgs someArgsObtain = SomeArgs.obtain();
            someArgsObtain.arg1 = str;
            someArgsObtain.arg2 = str2;
            someArgsObtain.arg3 = str3;
            this.mHandler.obtainMessage(1, someArgsObtain).sendToTarget();
        }

        @Override // android.os.storage.IStorageEventListener
        public void onUsbMassStorageConnectionChanged(boolean z2) {
        }

        @Override // android.os.storage.IStorageEventListener
        public void onVolumeForgotten(String str) {
            SomeArgs someArgsObtain = SomeArgs.obtain();
            someArgsObtain.arg1 = str;
            this.mHandler.obtainMessage(4, someArgsObtain).sendToTarget();
        }

        @Override // android.os.storage.IStorageEventListener
        public void onVolumeRecordChanged(VolumeRecord volumeRecord) {
            SomeArgs someArgsObtain = SomeArgs.obtain();
            someArgsObtain.arg1 = volumeRecord;
            this.mHandler.obtainMessage(3, someArgsObtain).sendToTarget();
        }

        @Override // android.os.storage.IStorageEventListener
        public void onVolumeStateChanged(VolumeInfo volumeInfo, int i2, int i3) {
            SomeArgs someArgsObtain = SomeArgs.obtain();
            someArgsObtain.arg1 = volumeInfo;
            someArgsObtain.argi2 = i2;
            someArgsObtain.argi3 = i3;
            this.mHandler.obtainMessage(2, someArgsObtain).sendToTarget();
        }
    }

    public StorageManager(Context context, Looper looper) {
        this.mContext = context;
        this.mResolver = context.getContentResolver();
        this.mLooper = looper;
    }

    public static UUID convert(String str) {
        if (Objects.equals(str, UUID_PRIVATE_INTERNAL)) {
            return UUID_DEFAULT;
        }
        if (Objects.equals(str, UUID_PRIMARY_PHYSICAL)) {
            return UUID_PRIMARY_PHYSICAL_;
        }
        return Objects.equals(str, UUID_SYSTEM) ? UUID_SYSTEM_ : UUID.fromString(convert2longId(str));
    }

    private static String convert2longId(String str) {
        if (str.split(NativeLibraryHelper.CLEAR_ABI_OVERRIDE).length != 2) {
            Log.e(TAG, "Invalid short UUID string: " + str + ", return it's orignal value");
            return str;
        }
        String lowerCase = str.replace(NativeLibraryHelper.CLEAR_ABI_OVERRIDE, "").toLowerCase();
        String str2 = lowerCase.substring(0, 2) + "000000-" + lowerCase.substring(2, 4) + "00-" + lowerCase.substring(4, 6) + "00-" + lowerCase.substring(6, 8) + "00-736463617264";
        Log.d(TAG, String.format("convert shortId:%s to longId:%s", str, str2));
        return str2;
    }

    private static String convert2shortId(String str) {
        String[] strArrSplit = str.split(NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
        if (strArrSplit.length != 5 || !Objects.equals(strArrSplit[4], SDCARD_MAGIC)) {
            Log.e(TAG, "Invalid long UUID string: " + str + ", return it's orignal value");
            return str;
        }
        String string = "";
        for (int i2 = 0; i2 < 4; i2++) {
            StringBuilder sbR = c.r(string);
            sbR.append(strArrSplit[i2].substring(0, 2));
            string = sbR.toString();
            if (i2 == 1) {
                string = c.D(string, NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
            }
        }
        Log.d(TAG, String.format("convert longId:%s to shortId:%s", str, string.toUpperCase()));
        return string.toUpperCase();
    }

    @Deprecated
    public static StorageManager from(Context context) {
        return (StorageManager) context.getSystemService(StorageManager.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getNextNonce() {
        return this.mNextNonce.getAndIncrement();
    }

    public static Pair<String, Long> getPrimaryStoragePathAndSize() {
        return Pair.create(null, Long.valueOf(FileUtils.roundStorageSize(Environment.getDataDirectory().getTotalSpace())));
    }

    public static boolean inCryptKeeperBounce() {
        return "trigger_restart_min_framework".equals(SystemProperties.get("vold.decrypt"));
    }

    public static boolean isBlockEncrypted() {
        if (isEncrypted()) {
            return RoSystemProperties.CRYPTO_BLOCK_ENCRYPTED;
        }
        return false;
    }

    public static boolean isBlockEncrypting() {
        return !"".equalsIgnoreCase(SystemProperties.get("vold.encrypt_progress", ""));
    }

    private static boolean isCacheBehavior(File file, String str) throws IOException {
        try {
            Os.getxattr(file.getAbsolutePath(), str);
            return true;
        } catch (ErrnoException e2) {
            if (e2.errno == OsConstants.ENODATA) {
                return false;
            }
            throw e2.rethrowAsIOException();
        }
    }

    public static boolean isEncryptable() {
        return RoSystemProperties.CRYPTO_ENCRYPTABLE;
    }

    public static boolean isFileEncryptedEmulatedOnly() {
        return SystemProperties.getBoolean(PROP_EMULATE_FBE, false);
    }

    public static boolean isFileEncryptedNativeOnly() {
        if (isEncrypted()) {
            return RoSystemProperties.CRYPTO_FILE_ENCRYPTED;
        }
        return false;
    }

    public static boolean isFileEncryptedNativeOrEmulated() {
        return isFileEncryptedNativeOnly() || isFileEncryptedEmulatedOnly();
    }

    public static boolean isNonDefaultBlockEncrypted() {
        if (!isBlockEncrypted()) {
            return false;
        }
        try {
            return IStorageManager.Stub.asInterface(ServiceManager.getService("mount")).getPasswordType() != 1;
        } catch (RemoteException unused) {
            Log.e(TAG, "Error getting encryption type");
            return false;
        }
    }

    public static boolean isUserKeyUnlocked(int i2) {
        if (sStorageManager == null) {
            sStorageManager = IStorageManager.Stub.asInterface(ServiceManager.getService("mount"));
        }
        if (sStorageManager == null) {
            Slog.w(TAG, "Early during boot, assuming locked");
            return false;
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                boolean zIsUserKeyUnlocked = sStorageManager.isUserKeyUnlocked(i2);
                Binder.restoreCallingIdentity(jClearCallingIdentity);
                return zIsUserKeyUnlocked;
            } catch (RemoteException e2) {
                throw e2.rethrowAsRuntimeException();
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            throw th;
        }
    }

    public static File maybeTranslateEmulatedPathToInternal(File file) {
        return file;
    }

    private static void setCacheBehavior(File file, String str, boolean z2) throws IOException {
        if (!file.isDirectory()) {
            throw new IOException("Cache behavior can only be set on directories");
        }
        if (z2) {
            try {
                Os.setxattr(file.getAbsolutePath(), str, WifiEnterpriseConfig.ENGINE_ENABLE.getBytes(StandardCharsets.UTF_8), 0);
            } catch (ErrnoException e2) {
                throw e2.rethrowAsIOException();
            }
        } else {
            try {
                Os.removexattr(file.getAbsolutePath(), str);
            } catch (ErrnoException e3) {
                if (e3.errno != OsConstants.ENODATA) {
                    throw e3.rethrowAsIOException();
                }
            }
        }
    }

    public void allocateBytes(UUID uuid, long j2) throws Throwable {
        allocateBytes(uuid, j2, 0);
    }

    public long benchmark(String str) {
        try {
            return this.mStorageManager.benchmark(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void createUserKey(int i2, int i3, boolean z2) {
        try {
            this.mStorageManager.createUserKey(i2, i3, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void destroyUserKey(int i2) {
        try {
            this.mStorageManager.destroyUserKey(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void destroyUserStorage(String str, int i2, int i3) {
        try {
            this.mStorageManager.destroyUserStorage(str, i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void disableUsbMassStorage() {
    }

    @Deprecated
    public void enableUsbMassStorage() {
    }

    public DiskInfo findDiskById(String str) {
        Preconditions.checkNotNull(str);
        for (DiskInfo diskInfo : getDisks()) {
            if (Objects.equals(diskInfo.id, str)) {
                return diskInfo;
            }
        }
        return null;
    }

    public VolumeInfo findEmulatedForPrivate(VolumeInfo volumeInfo) {
        if (volumeInfo != null) {
            return findVolumeById(volumeInfo.getId().replace(VolumeInfo.ID_PRIVATE_INTERNAL, VolumeInfo.ID_EMULATED_INTERNAL));
        }
        return null;
    }

    public File findPathForUuid(String str) throws FileNotFoundException {
        VolumeInfo volumeInfoFindVolumeByQualifiedUuid = findVolumeByQualifiedUuid(str);
        if (volumeInfoFindVolumeByQualifiedUuid != null) {
            return volumeInfoFindVolumeByQualifiedUuid.getPath();
        }
        throw new FileNotFoundException(c.j("Failed to find a storage device for ", str));
    }

    public VolumeInfo findPrivateForEmulated(VolumeInfo volumeInfo) {
        if (volumeInfo != null) {
            return findVolumeById(volumeInfo.getId().replace(VolumeInfo.ID_EMULATED_INTERNAL, VolumeInfo.ID_PRIVATE_INTERNAL));
        }
        return null;
    }

    public VolumeRecord findRecordByUuid(String str) {
        Preconditions.checkNotNull(str);
        for (VolumeRecord volumeRecord : getVolumeRecords()) {
            if (Objects.equals(volumeRecord.fsUuid, str)) {
                return volumeRecord;
            }
        }
        return null;
    }

    public VolumeInfo findVolumeById(String str) {
        Preconditions.checkNotNull(str);
        for (VolumeInfo volumeInfo : getVolumes()) {
            if (Objects.equals(volumeInfo.id, str)) {
                return volumeInfo;
            }
        }
        return null;
    }

    public VolumeInfo findVolumeByQualifiedUuid(String str) {
        if (Objects.equals(UUID_PRIVATE_INTERNAL, str)) {
            return findVolumeById(VolumeInfo.ID_PRIVATE_INTERNAL);
        }
        return UUID_PRIMARY_PHYSICAL.equals(str) ? getPrimaryPhysicalVolume() : findVolumeByUuid(str);
    }

    public VolumeInfo findVolumeByUuid(String str) {
        Preconditions.checkNotNull(str);
        for (VolumeInfo volumeInfo : getVolumes()) {
            if (Objects.equals(volumeInfo.fsUuid, str)) {
                return volumeInfo;
            }
        }
        return null;
    }

    public void forgetVolume(String str) {
        try {
            this.mStorageManager.forgetVolume(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void format(String str) {
        try {
            this.mStorageManager.format(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public long getAllocatableBytes(UUID uuid) {
        return getAllocatableBytes(uuid, 0);
    }

    public String getBestVolumeDescription(VolumeInfo volumeInfo) {
        VolumeRecord volumeRecordFindRecordByUuid;
        if (volumeInfo == null) {
            return null;
        }
        if (!TextUtils.isEmpty(volumeInfo.fsUuid) && (volumeRecordFindRecordByUuid = findRecordByUuid(volumeInfo.fsUuid)) != null && !TextUtils.isEmpty(volumeRecordFindRecordByUuid.nickname)) {
            return volumeRecordFindRecordByUuid.nickname;
        }
        if (!TextUtils.isEmpty(volumeInfo.getDescription())) {
            return volumeInfo.getDescription();
        }
        DiskInfo diskInfo = volumeInfo.disk;
        if (diskInfo != null) {
            return diskInfo.getDescription();
        }
        return null;
    }

    public long getCacheQuotaBytes(UUID uuid) throws Throwable {
        try {
            return this.mStorageManager.getCacheQuotaBytes(convert(uuid), this.mContext.getApplicationInfo().uid);
        } catch (ParcelableException e2) {
            e2.maybeRethrow(IOException.class);
            throw new RuntimeException(e2);
        } catch (RemoteException e3) {
            throw e3.rethrowFromSystemServer();
        }
    }

    public long getCacheSizeBytes(UUID uuid) throws Throwable {
        try {
            return this.mStorageManager.getCacheSizeBytes(convert(uuid), this.mContext.getApplicationInfo().uid);
        } catch (ParcelableException e2) {
            e2.maybeRethrow(IOException.class);
            throw new RuntimeException(e2);
        } catch (RemoteException e3) {
            throw e3.rethrowFromSystemServer();
        }
    }

    public List<DiskInfo> getDisks() {
        try {
            return Arrays.asList(this.mStorageManager.getDisks());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String getMountedObbPath(String str) {
        Preconditions.checkNotNull(str, "rawPath cannot be null");
        try {
            return this.mStorageManager.getMountedObbPath(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String getPrimaryEmulatedStorageUuid() {
        try {
            return this.mStorageManager.getPrimaryEmulatedStorageUuid();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public VolumeInfo getPrimaryPhysicalVolume() {
        for (VolumeInfo volumeInfo : getVolumes()) {
            if (volumeInfo.isPrimaryPhysical()) {
                return volumeInfo;
            }
        }
        return null;
    }

    public long getPrimaryStorageSize() {
        return FileUtils.roundStorageSize(Environment.getDataDirectory().getTotalSpace());
    }

    public String getPrimaryStorageUuid() {
        try {
            return this.mStorageManager.getPrimaryStorageUuid();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public StorageVolume getPrimaryStorageVolume() {
        return getVolumeList(UserHandle.myUserId(), 1536)[0];
    }

    public StorageVolume getPrimaryVolume() {
        return getPrimaryVolume(getVolumeList());
    }

    public int getProxyFileDescriptorMountPointId() {
        int mountPointId;
        synchronized (this.mFuseAppLoopLock) {
            FuseAppLoop fuseAppLoop = this.mFuseAppLoop;
            mountPointId = fuseAppLoop != null ? fuseAppLoop.getMountPointId() : -1;
        }
        return mountPointId;
    }

    public long getStorageBytesUntilLow(File file) {
        return file.getUsableSpace() - getStorageFullBytes(file);
    }

    public long getStorageCacheBytes(File file, int i2) {
        long jMin = Math.min((file.getTotalSpace() * ((long) Settings.Global.getInt(this.mResolver, Settings.Global.SYS_STORAGE_CACHE_PERCENTAGE, 10))) / 100, Settings.Global.getLong(this.mResolver, Settings.Global.SYS_STORAGE_CACHE_MAX_BYTES, DEFAULT_CACHE_MAX_BYTES));
        if ((i2 & 1) == 0 && (i2 & 2) == 0) {
            return (i2 & 4) != 0 ? jMin / 2 : jMin;
        }
        return 0L;
    }

    public long getStorageFullBytes(File file) {
        return Settings.Global.getLong(this.mResolver, Settings.Global.SYS_STORAGE_FULL_THRESHOLD_BYTES, 1048576L);
    }

    public long getStorageLowBytes(File file) {
        return Math.min((file.getTotalSpace() * ((long) Settings.Global.getInt(this.mResolver, Settings.Global.SYS_STORAGE_THRESHOLD_PERCENTAGE, 5))) / 100, Settings.Global.getLong(this.mResolver, Settings.Global.SYS_STORAGE_THRESHOLD_MAX_BYTES, DEFAULT_THRESHOLD_MAX_BYTES));
    }

    public StorageVolume getStorageVolume(File file) {
        return getStorageVolume(getVolumeList(), file);
    }

    public List<StorageVolume> getStorageVolumes() {
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, getVolumeList(UserHandle.myUserId(), 1536));
        return arrayList;
    }

    public UUID getUuidForPath(File file) throws IOException {
        Preconditions.checkNotNull(file);
        String canonicalPath = file.getCanonicalPath();
        if (FileUtils.contains(Environment.getDataDirectory().getAbsolutePath(), canonicalPath)) {
            return UUID_DEFAULT;
        }
        try {
            for (VolumeInfo volumeInfo : this.mStorageManager.getVolumes(0)) {
                String str = volumeInfo.path;
                if (str != null && FileUtils.contains(str, canonicalPath)) {
                    return convert(volumeInfo.fsUuid);
                }
            }
            throw new FileNotFoundException(c.i("Failed to find a storage device for ", file));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public StorageVolume[] getVolumeList() {
        return getVolumeList(this.mContext.getUserId(), 0);
    }

    @Deprecated
    public String[] getVolumePaths() {
        StorageVolume[] volumeList = getVolumeList();
        int length = volumeList.length;
        String[] strArr = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            strArr[i2] = volumeList[i2].getPath();
        }
        return strArr;
    }

    public List<VolumeRecord> getVolumeRecords() {
        try {
            return Arrays.asList(this.mStorageManager.getVolumeRecords(0));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public String getVolumeState(String str) {
        StorageVolume storageVolume = getStorageVolume(new File(str));
        return storageVolume != null ? storageVolume.getState() : "unknown";
    }

    public List<VolumeInfo> getVolumes() {
        try {
            return Arrays.asList(this.mStorageManager.getVolumes(0));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<VolumeInfo> getWritablePrivateVolumes() {
        try {
            ArrayList arrayList = new ArrayList();
            for (VolumeInfo volumeInfo : this.mStorageManager.getVolumes(0)) {
                if (volumeInfo.getType() == 1 && volumeInfo.isMountedWritable()) {
                    arrayList.add(volumeInfo);
                }
            }
            return arrayList;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isAllocationSupported(FileDescriptor fileDescriptor) {
        try {
            getUuidForPath(ParcelFileDescriptor.getFile(fileDescriptor));
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public boolean isCacheBehaviorGroup(File file) {
        return isCacheBehavior(file, XATTR_CACHE_GROUP);
    }

    public boolean isCacheBehaviorTombstone(File file) {
        return isCacheBehavior(file, XATTR_CACHE_TOMBSTONE);
    }

    public boolean isEncrypted(File file) {
        if (FileUtils.contains(Environment.getDataDirectory(), file)) {
            return isEncrypted();
        }
        return FileUtils.contains(Environment.getExpandDirectory(), file);
    }

    public boolean isObbMounted(String str) {
        Preconditions.checkNotNull(str, "rawPath cannot be null");
        try {
            return this.mStorageManager.isObbMounted(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public boolean isUsbMassStorageConnected() {
        return false;
    }

    @Deprecated
    public boolean isUsbMassStorageEnabled() {
        return false;
    }

    public void lockUserKey(int i2) {
        try {
            this.mStorageManager.lockUserKey(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void mount(String str) {
        try {
            this.mStorageManager.mount(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean mountObb(String str, String str2, OnObbStateChangeListener onObbStateChangeListener) {
        Preconditions.checkNotNull(str, "rawPath cannot be null");
        Preconditions.checkNotNull(onObbStateChangeListener, "listener cannot be null");
        try {
            this.mStorageManager.mountObb(str, new File(str).getCanonicalPath(), str2, this.mObbActionListener, this.mObbActionListener.addListener(onObbStateChangeListener));
            return true;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        } catch (IOException e3) {
            throw new IllegalArgumentException(c.j("Failed to resolve path: ", str), e3);
        }
    }

    public ParcelFileDescriptor openProxyFileDescriptor(int i2, ProxyFileDescriptorCallback proxyFileDescriptorCallback, Handler handler, ThreadFactory threadFactory) throws IOException {
        boolean z2;
        ParcelFileDescriptor parcelFileDescriptorOpenProxyFileDescriptor;
        Preconditions.checkNotNull(proxyFileDescriptorCallback);
        MetricsLogger.count(this.mContext, "storage_open_proxy_file_descriptor", 1);
        while (true) {
            try {
                synchronized (this.mFuseAppLoopLock) {
                    if (this.mFuseAppLoop == null) {
                        AppFuseMount appFuseMountMountProxyFileDescriptorBridge = this.mStorageManager.mountProxyFileDescriptorBridge();
                        if (appFuseMountMountProxyFileDescriptorBridge == null) {
                            throw new IOException("Failed to mount proxy bridge");
                        }
                        this.mFuseAppLoop = new FuseAppLoop(appFuseMountMountProxyFileDescriptorBridge.mountPointId, appFuseMountMountProxyFileDescriptorBridge.fd, threadFactory);
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (handler == null) {
                        handler = new Handler(Looper.getMainLooper());
                    }
                    try {
                        int iRegisterCallback = this.mFuseAppLoop.registerCallback(proxyFileDescriptorCallback, handler);
                        parcelFileDescriptorOpenProxyFileDescriptor = this.mStorageManager.openProxyFileDescriptor(this.mFuseAppLoop.getMountPointId(), iRegisterCallback, i2);
                        if (parcelFileDescriptorOpenProxyFileDescriptor == null) {
                            this.mFuseAppLoop.unregisterCallback(iRegisterCallback);
                            throw new FuseUnavailableMountException(this.mFuseAppLoop.getMountPointId());
                        }
                    } catch (FuseUnavailableMountException e2) {
                        if (z2) {
                            throw new IOException(e2);
                        }
                        this.mFuseAppLoop = null;
                    }
                }
                return parcelFileDescriptorOpenProxyFileDescriptor;
            } catch (RemoteException e3) {
                throw new IOException(e3);
            }
        }
    }

    public void partitionMixed(String str, int i2) {
        try {
            this.mStorageManager.partitionMixed(str, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void partitionPrivate(String str) {
        try {
            this.mStorageManager.partitionPrivate(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void partitionPublic(String str) {
        try {
            this.mStorageManager.partitionPublic(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void prepareUserStorage(String str, int i2, int i3, int i4) {
        try {
            this.mStorageManager.prepareUserStorage(str, i2, i3, i4);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void registerListener(StorageEventListener storageEventListener) {
        synchronized (this.mDelegates) {
            StorageEventListenerDelegate storageEventListenerDelegate = new StorageEventListenerDelegate(storageEventListener, this.mLooper);
            try {
                this.mStorageManager.registerListener(storageEventListenerDelegate);
                this.mDelegates.add(storageEventListenerDelegate);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public void secdiscard(String str) {
        try {
            this.mStorageManager.secdiscard(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setCacheBehaviorGroup(File file, boolean z2) throws IOException {
        setCacheBehavior(file, XATTR_CACHE_GROUP, z2);
    }

    public void setCacheBehaviorTombstone(File file, boolean z2) throws IOException {
        setCacheBehavior(file, XATTR_CACHE_TOMBSTONE, z2);
    }

    public void setPrimaryEmulatedStorageUuid(String str, IPackageMoveObserver iPackageMoveObserver) {
        try {
            this.mStorageManager.setPrimaryEmulatedStorageUuid(str, iPackageMoveObserver);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setPrimaryStorageUuid(String str, IPackageMoveObserver iPackageMoveObserver) {
        try {
            this.mStorageManager.setPrimaryStorageUuid(str, iPackageMoveObserver);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setVolumeInited(String str, boolean z2) {
        try {
            this.mStorageManager.setVolumeUserFlags(str, z2 ? 1 : 0, 1);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setVolumeNickname(String str, String str2) {
        try {
            this.mStorageManager.setVolumeNickname(str, str2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setVolumeSnoozed(String str, boolean z2) {
        try {
            this.mStorageManager.setVolumeUserFlags(str, z2 ? 2 : 0, 2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void unlockUserKey(int i2, int i3, byte[] bArr, byte[] bArr2) {
        try {
            this.mStorageManager.unlockUserKey(i2, i3, bArr, bArr2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void unmount(String str) {
        try {
            this.mStorageManager.unmount(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean unmountObb(String str, boolean z2, OnObbStateChangeListener onObbStateChangeListener) {
        Preconditions.checkNotNull(str, "rawPath cannot be null");
        Preconditions.checkNotNull(onObbStateChangeListener, "listener cannot be null");
        try {
            this.mStorageManager.unmountObb(str, z2, this.mObbActionListener, this.mObbActionListener.addListener(onObbStateChangeListener));
            return true;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void unregisterListener(StorageEventListener storageEventListener) {
        synchronized (this.mDelegates) {
            Iterator<StorageEventListenerDelegate> it = this.mDelegates.iterator();
            while (it.hasNext()) {
                StorageEventListenerDelegate next = it.next();
                if (next.mCallback == storageEventListener) {
                    try {
                        this.mStorageManager.unregisterListener(next);
                        it.remove();
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
                    }
                }
            }
        }
    }

    public void wipeAdoptableDisks() {
        for (DiskInfo diskInfo : getDisks()) {
            String id = diskInfo.getId();
            if (diskInfo.isAdoptable()) {
                Slog.d(TAG, "Found adoptable " + id + "; wiping");
                try {
                    this.mStorageManager.partitionPublic(id);
                } catch (Exception e2) {
                    Slog.w(TAG, "Failed to wipe " + id + ", but soldiering onward", e2);
                }
            } else {
                Slog.d(TAG, "Ignorning non-adoptable disk " + diskInfo.getId());
            }
        }
    }

    public static StorageVolume getPrimaryVolume(StorageVolume[] storageVolumeArr) {
        for (StorageVolume storageVolume : storageVolumeArr) {
            if (storageVolume.isPrimary()) {
                return storageVolume;
            }
        }
        throw new IllegalStateException("Missing primary storage");
    }

    public static StorageVolume getStorageVolume(File file, int i2) {
        return getStorageVolume(getVolumeList(i2, 0), file);
    }

    public static StorageVolume[] getVolumeList(int i2, int i3) {
        IStorageManager iStorageManagerAsInterface = IStorageManager.Stub.asInterface(ServiceManager.getService("mount"));
        try {
            String strCurrentOpPackageName = ActivityThread.currentOpPackageName();
            if (strCurrentOpPackageName == null) {
                String[] packagesForUid = ActivityThread.getPackageManager().getPackagesForUid(Process.myUid());
                if (packagesForUid != null && packagesForUid.length > 0) {
                    strCurrentOpPackageName = packagesForUid[0];
                }
                return new StorageVolume[0];
            }
            int packageUid = ActivityThread.getPackageManager().getPackageUid(strCurrentOpPackageName, 268435456, i2);
            return packageUid <= 0 ? new StorageVolume[0] : iStorageManagerAsInterface.getVolumeList(packageUid, strCurrentOpPackageName, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @SuppressLint({"Doclava125"})
    public void allocateBytes(UUID uuid, long j2, int i2) throws Throwable {
        try {
            this.mStorageManager.allocateBytes(convert(uuid), j2, i2, this.mContext.getOpPackageName());
        } catch (ParcelableException e2) {
            e2.maybeRethrow(IOException.class);
        } catch (RemoteException e3) {
            throw e3.rethrowFromSystemServer();
        }
    }

    @SuppressLint({"Doclava125"})
    public long getAllocatableBytes(UUID uuid, int i2) throws Throwable {
        try {
            return this.mStorageManager.getAllocatableBytes(convert(uuid), i2, this.mContext.getOpPackageName());
        } catch (ParcelableException e2) {
            e2.maybeRethrow(IOException.class);
            throw new RuntimeException(e2);
        } catch (RemoteException e3) {
            throw e3.rethrowFromSystemServer();
        }
    }

    private static StorageVolume getStorageVolume(StorageVolume[] storageVolumeArr, File file) {
        if (file == null) {
            return null;
        }
        try {
            File canonicalFile = file.getCanonicalFile();
            for (StorageVolume storageVolume : storageVolumeArr) {
                try {
                    if (FileUtils.contains(storageVolume.getPathFile().getCanonicalFile(), canonicalFile)) {
                        return storageVolume;
                    }
                } catch (IOException unused) {
                }
            }
            return null;
        } catch (IOException unused2) {
            Slog.d(TAG, "Could not get canonical path for " + file);
            return null;
        }
    }

    public static boolean isEncrypted() {
        return RoSystemProperties.CRYPTO_ENCRYPTED;
    }

    public void allocateBytes(FileDescriptor fileDescriptor, long j2) throws Throwable {
        allocateBytes(fileDescriptor, j2, 0);
    }

    public static String convert(UUID uuid) {
        if (UUID_DEFAULT.equals(uuid)) {
            return UUID_PRIVATE_INTERNAL;
        }
        if (UUID_PRIMARY_PHYSICAL_.equals(uuid)) {
            return UUID_PRIMARY_PHYSICAL;
        }
        return UUID_SYSTEM_.equals(uuid) ? UUID_SYSTEM : convert2shortId(uuid.toString());
    }

    @SuppressLint({"Doclava125"})
    public void allocateBytes(FileDescriptor fileDescriptor, long j2, int i2) throws Throwable {
        File file = ParcelFileDescriptor.getFile(fileDescriptor);
        UUID uuidForPath = getUuidForPath(file);
        for (int i3 = 0; i3 < 3; i3++) {
            try {
                long j3 = j2 - (Os.fstat(fileDescriptor).st_blocks * 512);
                if (j3 > 0) {
                    allocateBytes(uuidForPath, j3, i2);
                }
                try {
                    Os.posix_fallocate(fileDescriptor, 0L, j2);
                    return;
                } catch (ErrnoException e2) {
                    if (e2.errno != OsConstants.ENOSYS && e2.errno != OsConstants.ENOTSUP) {
                        throw e2;
                    }
                    Log.w(TAG, "fallocate() not supported; falling back to ftruncate()");
                    Os.ftruncate(fileDescriptor, j2);
                    return;
                }
            } catch (ErrnoException e3) {
                if (e3.errno == OsConstants.ENOSPC) {
                    Log.w(TAG, "Odd, not enough space; let's try again?");
                } else {
                    throw e3.rethrowAsIOException();
                }
            }
        }
        throw new IOException("Well this is embarassing; we can't allocate " + j2 + " for " + file);
    }

    public ParcelFileDescriptor openProxyFileDescriptor(int i2, ProxyFileDescriptorCallback proxyFileDescriptorCallback) {
        return openProxyFileDescriptor(i2, proxyFileDescriptorCallback, null, null);
    }

    public ParcelFileDescriptor openProxyFileDescriptor(int i2, ProxyFileDescriptorCallback proxyFileDescriptorCallback, Handler handler) {
        Preconditions.checkNotNull(handler);
        return openProxyFileDescriptor(i2, proxyFileDescriptorCallback, handler, null);
    }
}
