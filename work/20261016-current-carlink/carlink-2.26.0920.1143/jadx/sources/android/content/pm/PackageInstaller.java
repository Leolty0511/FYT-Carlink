package android.content.pm;

import android.app.AppGlobals;
import android.content.Intent;
import android.content.IntentSender;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.FileBridge;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.ParcelableException;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.system.ErrnoException;
import android.system.Os;
import android.util.ExceptionUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.Preconditions;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PackageInstaller {
    public static final String ACTION_CONFIRM_PERMISSIONS = "android.content.pm.action.CONFIRM_PERMISSIONS";
    public static final String ACTION_SESSION_COMMITTED = "android.content.pm.action.SESSION_COMMITTED";
    public static final String ACTION_SESSION_DETAILS = "android.content.pm.action.SESSION_DETAILS";
    public static final boolean ENABLE_REVOCABLE_FD = SystemProperties.getBoolean("fw.revocable_fd", false);
    public static final String EXTRA_CALLBACK = "android.content.pm.extra.CALLBACK";
    public static final String EXTRA_LEGACY_BUNDLE = "android.content.pm.extra.LEGACY_BUNDLE";
    public static final String EXTRA_LEGACY_STATUS = "android.content.pm.extra.LEGACY_STATUS";
    public static final String EXTRA_OTHER_PACKAGE_NAME = "android.content.pm.extra.OTHER_PACKAGE_NAME";
    public static final String EXTRA_PACKAGE_NAME = "android.content.pm.extra.PACKAGE_NAME";

    @Deprecated
    public static final String EXTRA_PACKAGE_NAMES = "android.content.pm.extra.PACKAGE_NAMES";
    public static final String EXTRA_SESSION = "android.content.pm.extra.SESSION";
    public static final String EXTRA_SESSION_ID = "android.content.pm.extra.SESSION_ID";
    public static final String EXTRA_STATUS = "android.content.pm.extra.STATUS";
    public static final String EXTRA_STATUS_MESSAGE = "android.content.pm.extra.STATUS_MESSAGE";
    public static final String EXTRA_STORAGE_PATH = "android.content.pm.extra.STORAGE_PATH";
    public static final int STATUS_FAILURE = 1;
    public static final int STATUS_FAILURE_ABORTED = 3;
    public static final int STATUS_FAILURE_BLOCKED = 2;
    public static final int STATUS_FAILURE_CONFLICT = 5;
    public static final int STATUS_FAILURE_INCOMPATIBLE = 7;
    public static final int STATUS_FAILURE_INVALID = 4;
    public static final int STATUS_FAILURE_STORAGE = 6;
    public static final int STATUS_PENDING_USER_ACTION = -1;
    public static final int STATUS_SUCCESS = 0;
    private static final String TAG = "PackageInstaller";
    private final ArrayList<SessionCallbackDelegate> mDelegates = new ArrayList<>();
    private final IPackageInstaller mInstaller;
    private final String mInstallerPackageName;
    private final int mUserId;

    public static class Session implements Closeable {
        private IPackageInstallerSession mSession;

        public Session(IPackageInstallerSession iPackageInstallerSession) {
            this.mSession = iPackageInstallerSession;
        }

        public void abandon() {
            try {
                this.mSession.abandon();
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }

        public void addProgress(float f2) {
            try {
                this.mSession.addClientProgress(f2);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            try {
                this.mSession.close();
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }

        public void commit(IntentSender intentSender) {
            try {
                this.mSession.commit(intentSender, false);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }

        public void commitTransferred(IntentSender intentSender) {
            try {
                this.mSession.commit(intentSender, true);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }

        public void fsync(OutputStream outputStream) throws IOException {
            if (!PackageInstaller.ENABLE_REVOCABLE_FD) {
                if (!(outputStream instanceof FileBridge.FileBridgeOutputStream)) {
                    throw new IllegalArgumentException("Unrecognized stream");
                }
                ((FileBridge.FileBridgeOutputStream) outputStream).fsync();
            } else {
                if (!(outputStream instanceof ParcelFileDescriptor.AutoCloseOutputStream)) {
                    throw new IllegalArgumentException("Unrecognized stream");
                }
                try {
                    Os.fsync(((ParcelFileDescriptor.AutoCloseOutputStream) outputStream).getFD());
                } catch (ErrnoException e2) {
                    throw e2.rethrowAsIOException();
                }
            }
        }

        public String[] getNames() throws Throwable {
            try {
                return this.mSession.getNames();
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            } catch (RuntimeException e3) {
                ExceptionUtils.maybeUnwrapIOException(e3);
                throw e3;
            }
        }

        public InputStream openRead(String str) throws Throwable {
            try {
                return new ParcelFileDescriptor.AutoCloseInputStream(this.mSession.openRead(str));
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            } catch (RuntimeException e3) {
                ExceptionUtils.maybeUnwrapIOException(e3);
                throw e3;
            }
        }

        public OutputStream openWrite(String str, long j2, long j3) throws Throwable {
            try {
                return PackageInstaller.ENABLE_REVOCABLE_FD ? new ParcelFileDescriptor.AutoCloseOutputStream(this.mSession.openWrite(str, j2, j3)) : new FileBridge.FileBridgeOutputStream(this.mSession.openWrite(str, j2, j3));
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            } catch (RuntimeException e3) {
                ExceptionUtils.maybeUnwrapIOException(e3);
                throw e3;
            }
        }

        public void removeSplit(String str) throws Throwable {
            try {
                this.mSession.removeSplit(str);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            } catch (RuntimeException e3) {
                ExceptionUtils.maybeUnwrapIOException(e3);
                throw e3;
            }
        }

        @Deprecated
        public void setProgress(float f2) {
            setStagingProgress(f2);
        }

        public void setStagingProgress(float f2) {
            try {
                this.mSession.setClientProgress(f2);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }

        public void transfer(String str) throws Throwable {
            Preconditions.checkNotNull(str);
            try {
                this.mSession.transfer(str);
            } catch (ParcelableException e2) {
                e2.maybeRethrow(PackageManager.NameNotFoundException.class);
                throw new RuntimeException(e2);
            } catch (RemoteException e3) {
                throw e3.rethrowFromSystemServer();
            }
        }
    }

    public static abstract class SessionCallback {
        public abstract void onActiveChanged(int i2, boolean z2);

        public abstract void onBadgingChanged(int i2);

        public abstract void onCreated(int i2);

        public abstract void onFinished(int i2, boolean z2);

        public abstract void onProgressChanged(int i2, float f2);
    }

    public static class SessionCallbackDelegate extends IPackageInstallerCallback.Stub implements Handler.Callback {
        private static final int MSG_SESSION_ACTIVE_CHANGED = 3;
        private static final int MSG_SESSION_BADGING_CHANGED = 2;
        private static final int MSG_SESSION_CREATED = 1;
        private static final int MSG_SESSION_FINISHED = 5;
        private static final int MSG_SESSION_PROGRESS_CHANGED = 4;
        final SessionCallback mCallback;
        final Handler mHandler;

        public SessionCallbackDelegate(SessionCallback sessionCallback, Looper looper) {
            this.mCallback = sessionCallback;
            this.mHandler = new Handler(looper, this);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.arg1;
            int i3 = message.what;
            if (i3 == 1) {
                this.mCallback.onCreated(i2);
                return true;
            }
            if (i3 == 2) {
                this.mCallback.onBadgingChanged(i2);
                return true;
            }
            if (i3 == 3) {
                this.mCallback.onActiveChanged(i2, message.arg2 != 0);
                return true;
            }
            if (i3 == 4) {
                this.mCallback.onProgressChanged(i2, ((Float) message.obj).floatValue());
                return true;
            }
            if (i3 != 5) {
                return false;
            }
            this.mCallback.onFinished(i2, message.arg2 != 0);
            return true;
        }

        @Override // android.content.pm.IPackageInstallerCallback
        public void onSessionActiveChanged(int i2, boolean z2) {
            this.mHandler.obtainMessage(3, i2, z2 ? 1 : 0).sendToTarget();
        }

        @Override // android.content.pm.IPackageInstallerCallback
        public void onSessionBadgingChanged(int i2) {
            this.mHandler.obtainMessage(2, i2, 0).sendToTarget();
        }

        @Override // android.content.pm.IPackageInstallerCallback
        public void onSessionCreated(int i2) {
            this.mHandler.obtainMessage(1, i2, 0).sendToTarget();
        }

        @Override // android.content.pm.IPackageInstallerCallback
        public void onSessionFinished(int i2, boolean z2) {
            this.mHandler.obtainMessage(5, i2, z2 ? 1 : 0).sendToTarget();
        }

        @Override // android.content.pm.IPackageInstallerCallback
        public void onSessionProgressChanged(int i2, float f2) {
            this.mHandler.obtainMessage(4, i2, 0, Float.valueOf(f2)).sendToTarget();
        }
    }

    public static class SessionInfo implements Parcelable {
        public static final Parcelable.Creator<SessionInfo> CREATOR = new Parcelable.Creator<SessionInfo>() { // from class: android.content.pm.PackageInstaller.SessionInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SessionInfo createFromParcel(Parcel parcel) {
                return new SessionInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SessionInfo[] newArray(int i2) {
                return new SessionInfo[i2];
            }
        };
        public boolean active;
        public Bitmap appIcon;
        public CharSequence appLabel;
        public String appPackageName;
        public String[] grantedRuntimePermissions;
        public int installFlags;
        public int installLocation;
        public int installReason;
        public String installerPackageName;
        public int mode;
        public int originatingUid;
        public Uri originatingUri;
        public float progress;
        public Uri referrerUri;
        public String resolvedBaseCodePath;
        public boolean sealed;
        public int sessionId;
        public long sizeBytes;

        public SessionInfo() {
        }

        public Intent createDetailsIntent() {
            Intent intent = new Intent(PackageInstaller.ACTION_SESSION_DETAILS);
            intent.putExtra(PackageInstaller.EXTRA_SESSION_ID, this.sessionId);
            intent.setPackage(this.installerPackageName);
            intent.setFlags(268435456);
            return intent;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean getAllocateAggressive() {
            return (this.installFlags & 32768) != 0;
        }

        public boolean getAllowDowngrade() {
            return (this.installFlags & 128) != 0;
        }

        public Bitmap getAppIcon() {
            if (this.appIcon == null) {
                try {
                    SessionInfo sessionInfo = AppGlobals.getPackageManager().getPackageInstaller().getSessionInfo(this.sessionId);
                    this.appIcon = sessionInfo != null ? sessionInfo.appIcon : null;
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            }
            return this.appIcon;
        }

        public CharSequence getAppLabel() {
            return this.appLabel;
        }

        public String getAppPackageName() {
            return this.appPackageName;
        }

        @Deprecated
        public Intent getDetailsIntent() {
            return createDetailsIntent();
        }

        public boolean getDontKillApp() {
            return (this.installFlags & 4096) != 0;
        }

        public String[] getGrantedRuntimePermissions() {
            return this.grantedRuntimePermissions;
        }

        public boolean getInstallAsFullApp(boolean z2) {
            return (this.installFlags & 16384) != 0;
        }

        public boolean getInstallAsInstantApp(boolean z2) {
            return (this.installFlags & 2048) != 0;
        }

        public boolean getInstallAsVirtualPreload() {
            return (this.installFlags & 65536) != 0;
        }

        public int getInstallLocation() {
            return this.installLocation;
        }

        public int getInstallReason() {
            return this.installReason;
        }

        public String getInstallerPackageName() {
            return this.installerPackageName;
        }

        public int getMode() {
            return this.mode;
        }

        public int getOriginatingUid() {
            return this.originatingUid;
        }

        public Uri getOriginatingUri() {
            return this.originatingUri;
        }

        public float getProgress() {
            return this.progress;
        }

        public Uri getReferrerUri() {
            return this.referrerUri;
        }

        public int getSessionId() {
            return this.sessionId;
        }

        public long getSize() {
            return this.sizeBytes;
        }

        public boolean isActive() {
            return this.active;
        }

        @Deprecated
        public boolean isOpen() {
            return isActive();
        }

        public boolean isSealed() {
            return this.sealed;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.sessionId);
            parcel.writeString(this.installerPackageName);
            parcel.writeString(this.resolvedBaseCodePath);
            parcel.writeFloat(this.progress);
            parcel.writeInt(this.sealed ? 1 : 0);
            parcel.writeInt(this.active ? 1 : 0);
            parcel.writeInt(this.mode);
            parcel.writeInt(this.installReason);
            parcel.writeLong(this.sizeBytes);
            parcel.writeString(this.appPackageName);
            parcel.writeParcelable(this.appIcon, i2);
            CharSequence charSequence = this.appLabel;
            parcel.writeString(charSequence != null ? charSequence.toString() : null);
            parcel.writeInt(this.installLocation);
            parcel.writeParcelable(this.originatingUri, i2);
            parcel.writeInt(this.originatingUid);
            parcel.writeParcelable(this.referrerUri, i2);
            parcel.writeStringArray(this.grantedRuntimePermissions);
            parcel.writeInt(this.installFlags);
        }

        public SessionInfo(Parcel parcel) {
            this.sessionId = parcel.readInt();
            this.installerPackageName = parcel.readString();
            this.resolvedBaseCodePath = parcel.readString();
            this.progress = parcel.readFloat();
            this.sealed = parcel.readInt() != 0;
            this.active = parcel.readInt() != 0;
            this.mode = parcel.readInt();
            this.installReason = parcel.readInt();
            this.sizeBytes = parcel.readLong();
            this.appPackageName = parcel.readString();
            this.appIcon = (Bitmap) parcel.readParcelable(null);
            this.appLabel = parcel.readString();
            this.installLocation = parcel.readInt();
            this.originatingUri = (Uri) parcel.readParcelable(null);
            this.originatingUid = parcel.readInt();
            this.referrerUri = (Uri) parcel.readParcelable(null);
            this.grantedRuntimePermissions = parcel.readStringArray();
            this.installFlags = parcel.readInt();
        }
    }

    public PackageInstaller(IPackageInstaller iPackageInstaller, String str, int i2) {
        this.mInstaller = iPackageInstaller;
        this.mInstallerPackageName = str;
        this.mUserId = i2;
    }

    public void abandonSession(int i2) {
        try {
            this.mInstaller.abandonSession(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void addSessionCallback(SessionCallback sessionCallback) {
        registerSessionCallback(sessionCallback);
    }

    public int createSession(SessionParams sessionParams) throws Throwable {
        try {
            return this.mInstaller.createSession(sessionParams, this.mInstallerPackageName, this.mUserId);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        } catch (RuntimeException e3) {
            ExceptionUtils.maybeUnwrapIOException(e3);
            throw e3;
        }
    }

    public List<SessionInfo> getAllSessions() {
        try {
            return this.mInstaller.getAllSessions(this.mUserId).getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<SessionInfo> getMySessions() {
        try {
            return this.mInstaller.getMySessions(this.mInstallerPackageName, this.mUserId).getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public SessionInfo getSessionInfo(int i2) {
        try {
            return this.mInstaller.getSessionInfo(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Session openSession(int i2) throws Throwable {
        try {
            return new Session(this.mInstaller.openSession(i2));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        } catch (RuntimeException e3) {
            ExceptionUtils.maybeUnwrapIOException(e3);
            throw e3;
        }
    }

    public void registerSessionCallback(SessionCallback sessionCallback) {
        registerSessionCallback(sessionCallback, new Handler());
    }

    @Deprecated
    public void removeSessionCallback(SessionCallback sessionCallback) {
        unregisterSessionCallback(sessionCallback);
    }

    public void setPermissionsResult(int i2, boolean z2) {
        try {
            this.mInstaller.setPermissionsResult(i2, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void uninstall(String str, IntentSender intentSender) {
        uninstall(str, 0, intentSender);
    }

    public void unregisterSessionCallback(SessionCallback sessionCallback) {
        synchronized (this.mDelegates) {
            Iterator<SessionCallbackDelegate> it = this.mDelegates.iterator();
            while (it.hasNext()) {
                SessionCallbackDelegate next = it.next();
                if (next.mCallback == sessionCallback) {
                    try {
                        this.mInstaller.unregisterCallback(next);
                        it.remove();
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
                    }
                }
            }
        }
    }

    public void updateSessionAppIcon(int i2, Bitmap bitmap) {
        try {
            this.mInstaller.updateSessionAppIcon(i2, bitmap);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void updateSessionAppLabel(int i2, CharSequence charSequence) {
        String string;
        if (charSequence != null) {
            try {
                string = charSequence.toString();
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        } else {
            string = null;
        }
        this.mInstaller.updateSessionAppLabel(i2, string);
    }

    @Deprecated
    public void addSessionCallback(SessionCallback sessionCallback, Handler handler) {
        registerSessionCallback(sessionCallback, handler);
    }

    public void registerSessionCallback(SessionCallback sessionCallback, Handler handler) {
        synchronized (this.mDelegates) {
            SessionCallbackDelegate sessionCallbackDelegate = new SessionCallbackDelegate(sessionCallback, handler.getLooper());
            try {
                this.mInstaller.registerCallback(sessionCallbackDelegate, this.mUserId);
                this.mDelegates.add(sessionCallbackDelegate);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public void uninstall(String str, int i2, IntentSender intentSender) {
        uninstall(new VersionedPackage(str, -1), i2, intentSender);
    }

    public void uninstall(VersionedPackage versionedPackage, IntentSender intentSender) {
        uninstall(versionedPackage, 0, intentSender);
    }

    public void uninstall(VersionedPackage versionedPackage, int i2, IntentSender intentSender) {
        Preconditions.checkNotNull(versionedPackage, "versionedPackage cannot be null");
        try {
            this.mInstaller.uninstall(versionedPackage, this.mInstallerPackageName, i2, intentSender, this.mUserId);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static class SessionParams implements Parcelable {
        public static final Parcelable.Creator<SessionParams> CREATOR = new Parcelable.Creator<SessionParams>() { // from class: android.content.pm.PackageInstaller.SessionParams.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SessionParams createFromParcel(Parcel parcel) {
                return new SessionParams(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SessionParams[] newArray(int i2) {
                return new SessionParams[i2];
            }
        };
        public static final int MODE_FULL_INSTALL = 1;
        public static final int MODE_INHERIT_EXISTING = 2;
        public static final int MODE_INVALID = -1;
        public static final int UID_UNKNOWN = -1;
        public String abiOverride;
        public Bitmap appIcon;
        public long appIconLastModified;
        public String appLabel;
        public String appPackageName;
        public String[] grantedRuntimePermissions;
        public int installFlags;
        public int installLocation;
        public int installReason;
        public int mode;
        public int originatingUid;
        public Uri originatingUri;
        public Uri referrerUri;
        public long sizeBytes;
        public String volumeUuid;

        public SessionParams(int i2) {
            this.installLocation = 1;
            this.installReason = 0;
            this.sizeBytes = -1L;
            this.appIconLastModified = -1L;
            this.originatingUid = -1;
            this.mode = i2;
        }

        public boolean areHiddenOptionsSet() {
            int i2 = this.installFlags;
            return ((120960 & i2) == i2 && this.abiOverride == null && this.volumeUuid == null) ? false : true;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void dump(IndentingPrintWriter indentingPrintWriter) {
            indentingPrintWriter.printPair("mode", Integer.valueOf(this.mode));
            indentingPrintWriter.printHexPair("installFlags", this.installFlags);
            indentingPrintWriter.printPair("installLocation", Integer.valueOf(this.installLocation));
            indentingPrintWriter.printPair("sizeBytes", Long.valueOf(this.sizeBytes));
            indentingPrintWriter.printPair("appPackageName", this.appPackageName);
            indentingPrintWriter.printPair("appIcon", Boolean.valueOf(this.appIcon != null));
            indentingPrintWriter.printPair("appLabel", this.appLabel);
            indentingPrintWriter.printPair("originatingUri", this.originatingUri);
            indentingPrintWriter.printPair("originatingUid", Integer.valueOf(this.originatingUid));
            indentingPrintWriter.printPair("referrerUri", this.referrerUri);
            indentingPrintWriter.printPair("abiOverride", this.abiOverride);
            indentingPrintWriter.printPair("volumeUuid", this.volumeUuid);
            indentingPrintWriter.printPair("grantedRuntimePermissions", (Object[]) this.grantedRuntimePermissions);
            indentingPrintWriter.println();
        }

        public void setAllocateAggressive(boolean z2) {
            if (z2) {
                this.installFlags |= 32768;
            } else {
                this.installFlags &= -32769;
            }
        }

        public void setAllowDowngrade(boolean z2) {
            if (z2) {
                this.installFlags |= 128;
            } else {
                this.installFlags &= -129;
            }
        }

        public void setAppIcon(Bitmap bitmap) {
            this.appIcon = bitmap;
        }

        public void setAppLabel(CharSequence charSequence) {
            this.appLabel = charSequence != null ? charSequence.toString() : null;
        }

        public void setAppPackageName(String str) {
            this.appPackageName = str;
        }

        public void setDontKillApp(boolean z2) {
            if (z2) {
                this.installFlags |= 4096;
            } else {
                this.installFlags &= -4097;
            }
        }

        public void setGrantedRuntimePermissions(String[] strArr) {
            this.installFlags |= 256;
            this.grantedRuntimePermissions = strArr;
        }

        public void setInstallAsInstantApp(boolean z2) {
            if (z2) {
                this.installFlags = (this.installFlags | 2048) & (-16385);
            } else {
                this.installFlags = (this.installFlags & (-2049)) | 16384;
            }
        }

        public void setInstallAsVirtualPreload() {
            this.installFlags |= 65536;
        }

        public void setInstallFlagsExternal() {
            this.installFlags = (this.installFlags | 8) & (-17);
        }

        public void setInstallFlagsForcePermissionPrompt() {
            this.installFlags |= 1024;
        }

        public void setInstallFlagsInternal() {
            this.installFlags = (this.installFlags | 16) & (-9);
        }

        public void setInstallLocation(int i2) {
            this.installLocation = i2;
        }

        public void setInstallReason(int i2) {
            this.installReason = i2;
        }

        public void setOriginatingUid(int i2) {
            this.originatingUid = i2;
        }

        public void setOriginatingUri(Uri uri) {
            this.originatingUri = uri;
        }

        public void setReferrerUri(Uri uri) {
            this.referrerUri = uri;
        }

        public void setSize(long j2) {
            this.sizeBytes = j2;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.mode);
            parcel.writeInt(this.installFlags);
            parcel.writeInt(this.installLocation);
            parcel.writeInt(this.installReason);
            parcel.writeLong(this.sizeBytes);
            parcel.writeString(this.appPackageName);
            parcel.writeParcelable(this.appIcon, i2);
            parcel.writeString(this.appLabel);
            parcel.writeParcelable(this.originatingUri, i2);
            parcel.writeInt(this.originatingUid);
            parcel.writeParcelable(this.referrerUri, i2);
            parcel.writeString(this.abiOverride);
            parcel.writeString(this.volumeUuid);
            parcel.writeStringArray(this.grantedRuntimePermissions);
        }

        public SessionParams(Parcel parcel) {
            this.mode = -1;
            this.installLocation = 1;
            this.installReason = 0;
            this.sizeBytes = -1L;
            this.appIconLastModified = -1L;
            this.originatingUid = -1;
            this.mode = parcel.readInt();
            this.installFlags = parcel.readInt();
            this.installLocation = parcel.readInt();
            this.installReason = parcel.readInt();
            this.sizeBytes = parcel.readLong();
            this.appPackageName = parcel.readString();
            this.appIcon = (Bitmap) parcel.readParcelable(null);
            this.appLabel = parcel.readString();
            this.originatingUri = (Uri) parcel.readParcelable(null);
            this.originatingUid = parcel.readInt();
            this.referrerUri = (Uri) parcel.readParcelable(null);
            this.abiOverride = parcel.readString();
            this.volumeUuid = parcel.readString();
            this.grantedRuntimePermissions = parcel.readStringArray();
        }
    }
}
