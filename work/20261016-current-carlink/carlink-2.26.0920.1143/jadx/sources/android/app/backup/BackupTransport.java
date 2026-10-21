package android.app.backup;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import com.android.internal.backup.IBackupTransport;

/* JADX INFO: loaded from: classes.dex */
public class BackupTransport {
    public static final int AGENT_ERROR = -1003;
    public static final int AGENT_UNKNOWN = -1004;
    public static final int FLAG_USER_INITIATED = 1;
    public static final int NO_MORE_DATA = -1;
    public static final int TRANSPORT_ERROR = -1000;
    public static final int TRANSPORT_NOT_INITIALIZED = -1001;
    public static final int TRANSPORT_OK = 0;
    public static final int TRANSPORT_PACKAGE_REJECTED = -1002;
    public static final int TRANSPORT_QUOTA_EXCEEDED = -1005;
    IBackupTransport mBinderImpl = new TransportImpl();

    public class TransportImpl extends IBackupTransport.Stub {
        public TransportImpl() {
        }

        @Override // com.android.internal.backup.IBackupTransport
        public int abortFullRestore() {
            return BackupTransport.this.abortFullRestore();
        }

        @Override // com.android.internal.backup.IBackupTransport
        public void cancelFullBackup() {
            BackupTransport.this.cancelFullBackup();
        }

        @Override // com.android.internal.backup.IBackupTransport
        public int checkFullBackupSize(long j2) {
            return BackupTransport.this.checkFullBackupSize(j2);
        }

        @Override // com.android.internal.backup.IBackupTransport
        public int clearBackupData(PackageInfo packageInfo) {
            return BackupTransport.this.clearBackupData(packageInfo);
        }

        @Override // com.android.internal.backup.IBackupTransport
        public Intent configurationIntent() {
            return BackupTransport.this.configurationIntent();
        }

        @Override // com.android.internal.backup.IBackupTransport
        public String currentDestinationString() {
            return BackupTransport.this.currentDestinationString();
        }

        @Override // com.android.internal.backup.IBackupTransport
        public Intent dataManagementIntent() {
            return BackupTransport.this.dataManagementIntent();
        }

        @Override // com.android.internal.backup.IBackupTransport
        public String dataManagementLabel() {
            return BackupTransport.this.dataManagementLabel();
        }

        @Override // com.android.internal.backup.IBackupTransport
        public int finishBackup() {
            return BackupTransport.this.finishBackup();
        }

        @Override // com.android.internal.backup.IBackupTransport
        public void finishRestore() {
            BackupTransport.this.finishRestore();
        }

        @Override // com.android.internal.backup.IBackupTransport
        public RestoreSet[] getAvailableRestoreSets() {
            return BackupTransport.this.getAvailableRestoreSets();
        }

        @Override // com.android.internal.backup.IBackupTransport
        public long getBackupQuota(String str, boolean z2) {
            return BackupTransport.this.getBackupQuota(str, z2);
        }

        @Override // com.android.internal.backup.IBackupTransport
        public long getCurrentRestoreSet() {
            return BackupTransport.this.getCurrentRestoreSet();
        }

        @Override // com.android.internal.backup.IBackupTransport
        public int getNextFullRestoreDataChunk(ParcelFileDescriptor parcelFileDescriptor) {
            return BackupTransport.this.getNextFullRestoreDataChunk(parcelFileDescriptor);
        }

        @Override // com.android.internal.backup.IBackupTransport
        public int getRestoreData(ParcelFileDescriptor parcelFileDescriptor) {
            return BackupTransport.this.getRestoreData(parcelFileDescriptor);
        }

        @Override // com.android.internal.backup.IBackupTransport
        public int initializeDevice() {
            return BackupTransport.this.initializeDevice();
        }

        @Override // com.android.internal.backup.IBackupTransport
        public boolean isAppEligibleForBackup(PackageInfo packageInfo, boolean z2) {
            return BackupTransport.this.isAppEligibleForBackup(packageInfo, z2);
        }

        @Override // com.android.internal.backup.IBackupTransport
        public String name() {
            return BackupTransport.this.name();
        }

        @Override // com.android.internal.backup.IBackupTransport
        public RestoreDescription nextRestorePackage() {
            return BackupTransport.this.nextRestorePackage();
        }

        @Override // com.android.internal.backup.IBackupTransport
        public int performBackup(PackageInfo packageInfo, ParcelFileDescriptor parcelFileDescriptor, int i2) {
            return BackupTransport.this.performBackup(packageInfo, parcelFileDescriptor, i2);
        }

        @Override // com.android.internal.backup.IBackupTransport
        public int performFullBackup(PackageInfo packageInfo, ParcelFileDescriptor parcelFileDescriptor, int i2) {
            return BackupTransport.this.performFullBackup(packageInfo, parcelFileDescriptor, i2);
        }

        @Override // com.android.internal.backup.IBackupTransport
        public long requestBackupTime() {
            return BackupTransport.this.requestBackupTime();
        }

        @Override // com.android.internal.backup.IBackupTransport
        public long requestFullBackupTime() {
            return BackupTransport.this.requestFullBackupTime();
        }

        @Override // com.android.internal.backup.IBackupTransport
        public int sendBackupData(int i2) {
            return BackupTransport.this.sendBackupData(i2);
        }

        @Override // com.android.internal.backup.IBackupTransport
        public int startRestore(long j2, PackageInfo[] packageInfoArr) {
            return BackupTransport.this.startRestore(j2, packageInfoArr);
        }

        @Override // com.android.internal.backup.IBackupTransport
        public String transportDirName() {
            return BackupTransport.this.transportDirName();
        }
    }

    public int abortFullRestore() {
        return 0;
    }

    public void cancelFullBackup() {
        throw new UnsupportedOperationException("Transport cancelFullBackup() not implemented");
    }

    public int checkFullBackupSize(long j2) {
        return 0;
    }

    public int clearBackupData(PackageInfo packageInfo) {
        return -1000;
    }

    public Intent configurationIntent() {
        return null;
    }

    public String currentDestinationString() {
        throw new UnsupportedOperationException("Transport currentDestinationString() not implemented");
    }

    public Intent dataManagementIntent() {
        return null;
    }

    public String dataManagementLabel() {
        throw new UnsupportedOperationException("Transport dataManagementLabel() not implemented");
    }

    public int finishBackup() {
        return -1000;
    }

    public void finishRestore() {
        throw new UnsupportedOperationException("Transport finishRestore() not implemented");
    }

    public RestoreSet[] getAvailableRestoreSets() {
        return null;
    }

    public long getBackupQuota(String str, boolean z2) {
        return Long.MAX_VALUE;
    }

    public IBinder getBinder() {
        return this.mBinderImpl.asBinder();
    }

    public long getCurrentRestoreSet() {
        return 0L;
    }

    public int getNextFullRestoreDataChunk(ParcelFileDescriptor parcelFileDescriptor) {
        return 0;
    }

    public int getRestoreData(ParcelFileDescriptor parcelFileDescriptor) {
        return -1000;
    }

    public int initializeDevice() {
        return -1000;
    }

    public boolean isAppEligibleForBackup(PackageInfo packageInfo, boolean z2) {
        return true;
    }

    public String name() {
        throw new UnsupportedOperationException("Transport name() not implemented");
    }

    public RestoreDescription nextRestorePackage() {
        return null;
    }

    public int performBackup(PackageInfo packageInfo, ParcelFileDescriptor parcelFileDescriptor) {
        return -1000;
    }

    public int performFullBackup(PackageInfo packageInfo, ParcelFileDescriptor parcelFileDescriptor) {
        return -1002;
    }

    public long requestBackupTime() {
        return 0L;
    }

    public long requestFullBackupTime() {
        return 0L;
    }

    public int sendBackupData(int i2) {
        return -1000;
    }

    public int startRestore(long j2, PackageInfo[] packageInfoArr) {
        return -1000;
    }

    public String transportDirName() {
        throw new UnsupportedOperationException("Transport transportDirName() not implemented");
    }

    public int performBackup(PackageInfo packageInfo, ParcelFileDescriptor parcelFileDescriptor, int i2) {
        return performBackup(packageInfo, parcelFileDescriptor);
    }

    public int performFullBackup(PackageInfo packageInfo, ParcelFileDescriptor parcelFileDescriptor, int i2) {
        return performFullBackup(packageInfo, parcelFileDescriptor);
    }
}
