package android.app;

import android.Manifest;
import android.content.Context;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.util.ArrayMap;
import j.b;
import j.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AppOpsManager {
    public static final int MODE_ALLOWED = 0;
    public static final int MODE_ERRORED = 2;
    public static final int MODE_IGNORED = 1;
    public static final int OP_ACCESS_NOTIFICATIONS = 25;
    public static final int OP_AUDIO_ALARM_VOLUME = 37;
    public static final int OP_AUDIO_BLUETOOTH_VOLUME = 39;
    public static final int OP_AUDIO_MASTER_VOLUME = 33;
    public static final int OP_AUDIO_MEDIA_VOLUME = 36;
    public static final int OP_AUDIO_NOTIFICATION_VOLUME = 38;
    public static final int OP_AUDIO_RING_VOLUME = 35;
    public static final int OP_AUDIO_VOICE_VOLUME = 34;
    public static final int OP_CALL_PHONE = 13;
    public static final int OP_CAMERA = 26;
    public static final int OP_COARSE_LOCATION = 0;
    public static final int OP_FINE_LOCATION = 1;
    public static final int OP_GPS = 2;
    public static final int OP_MONITOR_HIGH_POWER_LOCATION = 42;
    public static final int OP_MONITOR_LOCATION = 41;
    public static final int OP_NEIGHBORING_CELLS = 12;
    public static final int OP_NONE = -1;
    public static final int OP_PLAY_AUDIO = 28;
    public static final int OP_POST_NOTIFICATION = 11;
    public static final int OP_READ_CALENDAR = 8;
    public static final int OP_READ_CALL_LOG = 6;
    public static final int OP_READ_CLIPBOARD = 29;
    public static final int OP_READ_CONTACTS = 4;
    public static final int OP_READ_ICC_SMS = 21;
    public static final int OP_READ_SMS = 14;
    public static final int OP_RECEIVE_EMERGECY_SMS = 17;
    public static final int OP_RECEIVE_MMS = 18;
    public static final int OP_RECEIVE_SMS = 16;
    public static final int OP_RECEIVE_WAP_PUSH = 19;
    public static final int OP_RECORD_AUDIO = 27;
    public static final int OP_SEND_SMS = 20;
    public static final int OP_SYSTEM_ALERT_WINDOW = 24;
    public static final int OP_TAKE_AUDIO_FOCUS = 32;
    public static final int OP_TAKE_MEDIA_BUTTONS = 31;
    public static final int OP_VIBRATE = 3;
    public static final int OP_WAKE_LOCK = 40;
    public static final int OP_WIFI_SCAN = 10;
    public static final int OP_WRITE_CALENDAR = 9;
    public static final int OP_WRITE_CALL_LOG = 7;
    public static final int OP_WRITE_CLIPBOARD = 30;
    public static final int OP_WRITE_CONTACTS = 5;
    public static final int OP_WRITE_ICC_SMS = 22;
    public static final int OP_WRITE_SETTINGS = 23;
    public static final int OP_WRITE_SMS = 15;
    public static final int _NUM_OP = 43;
    public static IBinder sToken;
    public final Context mContext;
    public final ArrayMap<OnOpChangedListener, b> mModeWatchers = new ArrayMap<>();
    public final c mService;
    private static int[] sOpToSwitch = {0, 0, 0, 3, 4, 5, 6, 7, 8, 9, 0, 11, 0, 13, 14, 15, 16, 16, 16, 16, 20, 14, 15, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 0, 0};
    public static final String OPSTR_COARSE_LOCATION = "android:coarse_location";
    public static final String OPSTR_FINE_LOCATION = "android:fine_location";
    public static final String OPSTR_MONITOR_LOCATION = "android:monitor_location";
    public static final String OPSTR_MONITOR_HIGH_POWER_LOCATION = "android:monitor_location_high_power";
    private static String[] sOpToString = {OPSTR_COARSE_LOCATION, OPSTR_FINE_LOCATION, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, OPSTR_MONITOR_LOCATION, OPSTR_MONITOR_HIGH_POWER_LOCATION};
    private static String[] sOpNames = {"COARSE_LOCATION", "FINE_LOCATION", "GPS", "VIBRATE", "READ_CONTACTS", "WRITE_CONTACTS", "READ_CALL_LOG", "WRITE_CALL_LOG", "READ_CALENDAR", "WRITE_CALENDAR", "WIFI_SCAN", "POST_NOTIFICATION", "NEIGHBORING_CELLS", "CALL_PHONE", "READ_SMS", "WRITE_SMS", "RECEIVE_SMS", "RECEIVE_EMERGECY_SMS", "RECEIVE_MMS", "RECEIVE_WAP_PUSH", "SEND_SMS", "READ_ICC_SMS", "WRITE_ICC_SMS", "WRITE_SETTINGS", "SYSTEM_ALERT_WINDOW", "ACCESS_NOTIFICATIONS", "CAMERA", "RECORD_AUDIO", "PLAY_AUDIO", "READ_CLIPBOARD", "WRITE_CLIPBOARD", "TAKE_MEDIA_BUTTONS", "TAKE_AUDIO_FOCUS", "AUDIO_MASTER_VOLUME", "AUDIO_VOICE_VOLUME", "AUDIO_RING_VOLUME", "AUDIO_MEDIA_VOLUME", "AUDIO_ALARM_VOLUME", "AUDIO_NOTIFICATION_VOLUME", "AUDIO_BLUETOOTH_VOLUME", "WAKE_LOCK", "MONITOR_LOCATION", "MONITOR_HIGH_POWER_LOCATION"};
    private static String[] sOpPerms = {Manifest.permission.ACCESS_COARSE_LOCATION, Manifest.permission.ACCESS_FINE_LOCATION, null, Manifest.permission.VIBRATE, Manifest.permission.READ_CONTACTS, Manifest.permission.WRITE_CONTACTS, Manifest.permission.READ_CALL_LOG, Manifest.permission.WRITE_CALL_LOG, Manifest.permission.READ_CALENDAR, Manifest.permission.WRITE_CALENDAR, null, Manifest.permission.ACCESS_WIFI_STATE, null, Manifest.permission.CALL_PHONE, Manifest.permission.READ_SMS, Manifest.permission.WRITE_SMS, Manifest.permission.RECEIVE_SMS, Manifest.permission.RECEIVE_EMERGENCY_BROADCAST, Manifest.permission.RECEIVE_MMS, Manifest.permission.RECEIVE_WAP_PUSH, Manifest.permission.SEND_SMS, Manifest.permission.READ_SMS, Manifest.permission.WRITE_SMS, Manifest.permission.WRITE_SETTINGS, Manifest.permission.SYSTEM_ALERT_WINDOW, Manifest.permission.ACCESS_NOTIFICATIONS, Manifest.permission.CAMERA, Manifest.permission.RECORD_AUDIO, null, null, null, null, null, null, null, null, null, null, null, null, Manifest.permission.WAKE_LOCK, null, null};
    private static int[] sOpDefaultMode = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    private static boolean[] sOpDisableReset = {false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
    private static HashMap<String, Integer> sOpStrToOp = new HashMap<>();

    public static class OnOpChangedInternalListener implements OnOpChangedListener {
        public void onOpChanged(int i2, String str) {
        }

        @Override // android.app.AppOpsManager.OnOpChangedListener
        public void onOpChanged(String str, String str2) {
        }
    }

    public interface OnOpChangedListener {
        void onOpChanged(String str, String str2);
    }

    static {
        if (sOpToSwitch.length != 43) {
            throw new IllegalStateException("sOpToSwitch length " + sOpToSwitch.length + " should be 43");
        }
        if (sOpToString.length != 43) {
            throw new IllegalStateException("sOpToString length " + sOpToString.length + " should be 43");
        }
        if (sOpNames.length != 43) {
            throw new IllegalStateException("sOpNames length " + sOpNames.length + " should be 43");
        }
        if (sOpPerms.length != 43) {
            throw new IllegalStateException("sOpPerms length " + sOpPerms.length + " should be 43");
        }
        if (sOpDefaultMode.length != 43) {
            throw new IllegalStateException("sOpDefaultMode length " + sOpDefaultMode.length + " should be 43");
        }
        if (sOpDisableReset.length != 43) {
            throw new IllegalStateException("sOpDisableReset length " + sOpDisableReset.length + " should be 43");
        }
        for (int i2 = 0; i2 < 43; i2++) {
            String[] strArr = sOpToString;
            if (strArr[i2] != null) {
                sOpStrToOp.put(strArr[i2], Integer.valueOf(i2));
            }
        }
    }

    public AppOpsManager(Context context, c cVar) {
        this.mContext = context;
        this.mService = cVar;
    }

    private String buildSecurityExceptionMsg(int i2, int i3, String str) {
        return str + " from uid " + i3 + " not allowed to perform " + sOpNames[i2];
    }

    public static IBinder getToken(c cVar) {
        synchronized (AppOpsManager.class) {
            IBinder iBinder = sToken;
            if (iBinder != null) {
                return iBinder;
            }
            try {
                sToken = cVar.q0(new Binder());
            } catch (RemoteException unused) {
            }
            return sToken;
        }
    }

    public static boolean opAllowsReset(int i2) {
        return !sOpDisableReset[i2];
    }

    public static int opToDefaultMode(int i2) {
        return sOpDefaultMode[i2];
    }

    public static String opToName(int i2) {
        if (i2 == -1) {
            return "NONE";
        }
        String[] strArr = sOpNames;
        if (i2 < strArr.length) {
            return strArr[i2];
        }
        return "Unknown(" + i2 + ")";
    }

    public static String opToPermission(int i2) {
        return sOpPerms[i2];
    }

    public static int opToSwitch(int i2) {
        return sOpToSwitch[i2];
    }

    private int strOpToOp(String str) {
        Integer num = sOpStrToOp.get(str);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalArgumentException("Unknown operation string: " + str);
    }

    public int checkOp(String str, int i2, String str2) {
        return checkOp(strOpToOp(str), i2, str2);
    }

    public int checkOpNoThrow(String str, int i2, String str2) {
        return checkOpNoThrow(strOpToOp(str), i2, str2);
    }

    public void checkPackage(int i2, String str) {
        try {
            if (this.mService.z(i2, str) == 0) {
                return;
            }
            throw new SecurityException("Package " + str + " does not belong to " + i2);
        } catch (RemoteException e2) {
            throw new SecurityException("Unable to verify package ownership", e2);
        }
    }

    public void finishOp(String str, int i2, String str2) {
        finishOp(strOpToOp(str), i2, str2);
    }

    public List<PackageOps> getOpsForPackage(int i2, String str, int[] iArr) {
        try {
            return this.mService.r1(i2, str, iArr);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public List<PackageOps> getPackagesForOps(int[] iArr) {
        try {
            return this.mService.F2(iArr);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public int noteOp(String str, int i2, String str2) {
        return noteOp(strOpToOp(str), i2, str2);
    }

    public int noteOpNoThrow(String str, int i2, String str2) {
        return noteOpNoThrow(strOpToOp(str), i2, str2);
    }

    public void resetAllModes() {
        try {
            this.mService.u0();
        } catch (RemoteException unused) {
        }
    }

    public void setMode(int i2, int i3, String str, int i4) {
        try {
            this.mService.b1(i2, i3, str, i4);
        } catch (RemoteException unused) {
        }
    }

    public int startOp(String str, int i2, String str2) {
        return startOp(strOpToOp(str), i2, str2);
    }

    public int startOpNoThrow(String str, int i2, String str2) {
        return startOpNoThrow(strOpToOp(str), i2, str2);
    }

    public void startWatchingMode(String str, String str2, OnOpChangedListener onOpChangedListener) {
        startWatchingMode(strOpToOp(str), str2, onOpChangedListener);
    }

    public void stopWatchingMode(OnOpChangedListener onOpChangedListener) {
        synchronized (this.mModeWatchers) {
            b bVar = this.mModeWatchers.get(onOpChangedListener);
            if (bVar != null) {
                try {
                    this.mService.o0(bVar);
                } catch (RemoteException unused) {
                }
            }
        }
    }

    public int checkOp(int i2, int i3, String str) {
        try {
            int iM2 = this.mService.m2(i2, i3, str);
            if (iM2 != 2) {
                return iM2;
            }
            throw new SecurityException(buildSecurityExceptionMsg(i2, i3, str));
        } catch (RemoteException unused) {
            return 1;
        }
    }

    public int checkOpNoThrow(int i2, int i3, String str) {
        try {
            return this.mService.m2(i2, i3, str);
        } catch (RemoteException unused) {
            return 1;
        }
    }

    public void finishOp(int i2, int i3, String str) {
        try {
            c cVar = this.mService;
            cVar.M(getToken(cVar), i2, i3, str);
        } catch (RemoteException unused) {
        }
    }

    public int noteOp(int i2, int i3, String str) {
        try {
            int iS = this.mService.S(i2, i3, str);
            if (iS != 2) {
                return iS;
            }
            throw new SecurityException(buildSecurityExceptionMsg(i2, i3, str));
        } catch (RemoteException unused) {
            return 1;
        }
    }

    public int noteOpNoThrow(int i2, int i3, String str) {
        try {
            return this.mService.S(i2, i3, str);
        } catch (RemoteException unused) {
            return 1;
        }
    }

    public int startOp(int i2, int i3, String str) {
        try {
            c cVar = this.mService;
            int iV = cVar.V(getToken(cVar), i2, i3, str);
            if (iV != 2) {
                return iV;
            }
            throw new SecurityException(buildSecurityExceptionMsg(i2, i3, str));
        } catch (RemoteException unused) {
            return 1;
        }
    }

    public int startOpNoThrow(int i2, int i3, String str) {
        try {
            c cVar = this.mService;
            return cVar.V(getToken(cVar), i2, i3, str);
        } catch (RemoteException unused) {
            return 1;
        }
    }

    public void startWatchingMode(int i2, String str, final OnOpChangedListener onOpChangedListener) {
        synchronized (this.mModeWatchers) {
            b bVar = this.mModeWatchers.get(onOpChangedListener);
            if (bVar == null) {
                bVar = new b.a() { // from class: android.app.AppOpsManager.1
                    @Override // j.b
                    public void opChanged(int i3, String str2) {
                        OnOpChangedListener onOpChangedListener2 = onOpChangedListener;
                        if (onOpChangedListener2 instanceof OnOpChangedInternalListener) {
                            ((OnOpChangedInternalListener) onOpChangedListener2).onOpChanged(i3, str2);
                        }
                        if (AppOpsManager.sOpToString[i3] != null) {
                            onOpChangedListener.onOpChanged(AppOpsManager.sOpToString[i3], str2);
                        }
                    }
                };
                this.mModeWatchers.put(onOpChangedListener, bVar);
            }
            try {
                this.mService.H(i2, str, bVar);
            } catch (RemoteException unused) {
            }
        }
    }

    public void finishOp(int i2) {
        finishOp(i2, Process.myUid(), this.mContext.getOpPackageName());
    }

    public static class PackageOps implements Parcelable {
        public static final Parcelable.Creator<PackageOps> CREATOR = new Parcelable.Creator<PackageOps>() { // from class: android.app.AppOpsManager.PackageOps.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PackageOps createFromParcel(Parcel parcel) {
                return new PackageOps(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PackageOps[] newArray(int i2) {
                return new PackageOps[i2];
            }
        };
        private final List<OpEntry> mEntries;
        private final String mPackageName;
        private final int mUid;

        public PackageOps(String str, int i2, List<OpEntry> list) {
            this.mPackageName = str;
            this.mUid = i2;
            this.mEntries = list;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public List<OpEntry> getOps() {
            return this.mEntries;
        }

        public String getPackageName() {
            return this.mPackageName;
        }

        public int getUid() {
            return this.mUid;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.mPackageName);
            parcel.writeInt(this.mUid);
            parcel.writeInt(this.mEntries.size());
            for (int i3 = 0; i3 < this.mEntries.size(); i3++) {
                this.mEntries.get(i3).writeToParcel(parcel, i2);
            }
        }

        public PackageOps(Parcel parcel) {
            this.mPackageName = parcel.readString();
            this.mUid = parcel.readInt();
            this.mEntries = new ArrayList();
            int i2 = parcel.readInt();
            for (int i3 = 0; i3 < i2; i3++) {
                this.mEntries.add(OpEntry.CREATOR.createFromParcel(parcel));
            }
        }
    }

    public int noteOp(int i2) {
        return noteOp(i2, Process.myUid(), this.mContext.getOpPackageName());
    }

    public int startOp(int i2) {
        return startOp(i2, Process.myUid(), this.mContext.getOpPackageName());
    }

    public static class OpEntry implements Parcelable {
        public static final Parcelable.Creator<OpEntry> CREATOR = new Parcelable.Creator<OpEntry>() { // from class: android.app.AppOpsManager.OpEntry.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public OpEntry createFromParcel(Parcel parcel) {
                return new OpEntry(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public OpEntry[] newArray(int i2) {
                return new OpEntry[i2];
            }
        };
        private final int mDuration;
        private final int mMode;
        private final int mOp;
        private final long mRejectTime;
        private final long mTime;

        public OpEntry(int i2, int i3, long j2, long j3, int i4) {
            this.mOp = i2;
            this.mMode = i3;
            this.mTime = j2;
            this.mRejectTime = j3;
            this.mDuration = i4;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getDuration() {
            int i2 = this.mDuration;
            return i2 == -1 ? (int) (System.currentTimeMillis() - this.mTime) : i2;
        }

        public int getMode() {
            return this.mMode;
        }

        public int getOp() {
            return this.mOp;
        }

        public long getRejectTime() {
            return this.mRejectTime;
        }

        public long getTime() {
            return this.mTime;
        }

        public boolean isRunning() {
            return this.mDuration == -1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.mOp);
            parcel.writeInt(this.mMode);
            parcel.writeLong(this.mTime);
            parcel.writeLong(this.mRejectTime);
            parcel.writeInt(this.mDuration);
        }

        public OpEntry(Parcel parcel) {
            this.mOp = parcel.readInt();
            this.mMode = parcel.readInt();
            this.mTime = parcel.readLong();
            this.mRejectTime = parcel.readLong();
            this.mDuration = parcel.readInt();
        }
    }
}
