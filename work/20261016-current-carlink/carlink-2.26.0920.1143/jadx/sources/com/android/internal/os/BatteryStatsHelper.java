package com.android.internal.os;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.BatteryStats;
import android.os.Bundle;
import android.os.MemoryFile;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseLongArray;
import com.android.internal.R;
import com.android.internal.app.IBatteryStats;
import com.android.internal.util.ArrayUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class BatteryStatsHelper {
    private static Intent sBatteryBroadcastXfer;
    private static BatteryStats sStatsXfer;
    private Intent mBatteryBroadcast;
    private IBatteryStats mBatteryInfo;
    long mBatteryRealtimeUs;
    long mBatteryTimeRemainingUs;
    long mBatteryUptimeUs;
    PowerCalculator mBluetoothPowerCalculator;
    private final List<BatterySipper> mBluetoothSippers;
    PowerCalculator mCameraPowerCalculator;
    long mChargeTimeRemainingUs;
    private final boolean mCollectBatteryBroadcast;
    private double mComputedPower;
    private final Context mContext;
    PowerCalculator mCpuPowerCalculator;
    PowerCalculator mFlashlightPowerCalculator;
    boolean mHasBluetoothPowerReporting;
    boolean mHasWifiPowerReporting;
    private double mMaxDrainedPower;
    private double mMaxPower;
    private double mMaxRealPower;
    PowerCalculator mMemoryPowerCalculator;
    private double mMinDrainedPower;
    MobileRadioPowerCalculator mMobileRadioPowerCalculator;
    private final List<BatterySipper> mMobilemsppList;
    private PackageManager mPackageManager;
    private PowerProfile mPowerProfile;
    long mRawRealtimeUs;
    long mRawUptimeUs;
    PowerCalculator mSensorPowerCalculator;
    private String[] mServicepackageArray;
    private BatteryStats mStats;
    private long mStatsPeriod;
    private int mStatsType;
    private String[] mSystemPackageArray;
    private double mTotalPower;
    long mTypeBatteryRealtimeUs;
    long mTypeBatteryUptimeUs;
    private final List<BatterySipper> mUsageList;
    private final SparseArray<List<BatterySipper>> mUserSippers;
    PowerCalculator mWakelockPowerCalculator;
    private final boolean mWifiOnly;
    PowerCalculator mWifiPowerCalculator;
    private final List<BatterySipper> mWifiSippers;
    static final boolean DEBUG = getDeBugBatteryLog();
    private static final String TAG = "BatteryStatsHelper";
    private static ArrayMap<File, BatteryStats> sFileXfer = new ArrayMap<>();

    public BatteryStatsHelper(Context context) {
        this(context, true);
    }

    private void addBluetoothUsage() {
        BatterySipper batterySipper = new BatterySipper(BatterySipper.DrainType.BLUETOOTH, null, 0.0d);
        this.mBluetoothPowerCalculator.calculateRemaining(batterySipper, this.mStats, this.mRawRealtimeUs, this.mRawUptimeUs, this.mStatsType);
        aggregateSippers(batterySipper, this.mBluetoothSippers, "Bluetooth");
        if (batterySipper.totalPowerMah > 0.0d) {
            this.mUsageList.add(batterySipper);
        }
    }

    private BatterySipper addEntry(BatterySipper.DrainType drainType, long j2, double d2) {
        BatterySipper batterySipper = new BatterySipper(drainType, null, 0.0d);
        batterySipper.usagePowerMah = d2;
        batterySipper.usageTimeMs = j2;
        batterySipper.sumPower();
        this.mUsageList.add(batterySipper);
        return batterySipper;
    }

    private void addIdleUsage() {
        double d2;
        double averagePower = this.mPowerProfile.getAveragePower(PowerProfile.POWER_CPU_IDLE) * (this.mTypeBatteryRealtimeUs / 1000);
        double averagePower2 = this.mPowerProfile.getAveragePower(PowerProfile.POWER_CPU_AWAKE) * (this.mTypeBatteryUptimeUs / 1000);
        double d3 = (averagePower + averagePower2) / 3600000.0d;
        if (!DEBUG || d3 == 0.0d) {
            d2 = 0.0d;
        } else {
            String str = TAG;
            Log.d(str, "Suspend: time=" + (this.mTypeBatteryRealtimeUs / 1000) + " power=" + makemAh(averagePower / 3600000.0d));
            Log.d(str, "Idle: time=" + (this.mTypeBatteryUptimeUs / 1000) + " power=" + makemAh(averagePower2 / 3600000.0d));
            d2 = 0.0d;
        }
        if (d3 != d2) {
            addEntry(BatterySipper.DrainType.IDLE, this.mTypeBatteryRealtimeUs / 1000, d3);
        }
    }

    private void addMemoryUsage() {
        BatterySipper batterySipper = new BatterySipper(BatterySipper.DrainType.MEMORY, null, 0.0d);
        this.mMemoryPowerCalculator.calculateRemaining(batterySipper, this.mStats, this.mRawRealtimeUs, this.mRawUptimeUs, this.mStatsType);
        batterySipper.sumPower();
        if (batterySipper.totalPowerMah > 0.0d) {
            this.mUsageList.add(batterySipper);
        }
    }

    private void addPhoneUsage() {
        long phoneOnTime = this.mStats.getPhoneOnTime(this.mRawRealtimeUs, this.mStatsType) / 1000;
        double averagePower = (this.mPowerProfile.getAveragePower(PowerProfile.POWER_RADIO_ACTIVE) * phoneOnTime) / 3600000.0d;
        if (averagePower != 0.0d) {
            addEntry(BatterySipper.DrainType.PHONE, phoneOnTime, averagePower);
        }
    }

    private void addRadioUsage() {
        BatterySipper batterySipper = new BatterySipper(BatterySipper.DrainType.CELL, null, 0.0d);
        this.mMobileRadioPowerCalculator.calculateRemaining(batterySipper, this.mStats, this.mRawRealtimeUs, this.mRawUptimeUs, this.mStatsType);
        batterySipper.sumPower();
        if (batterySipper.totalPowerMah > 0.0d) {
            this.mUsageList.add(batterySipper);
        }
    }

    private void addScreenUsage() {
        long j2 = 1000;
        long screenOnTime = this.mStats.getScreenOnTime(this.mRawRealtimeUs, this.mStatsType) / 1000;
        double averagePower = (this.mPowerProfile.getAveragePower(PowerProfile.POWER_SCREEN_ON) * screenOnTime) + 0.0d;
        double averagePower2 = this.mPowerProfile.getAveragePower(PowerProfile.POWER_SCREEN_FULL);
        int i2 = 0;
        while (i2 < 5) {
            long screenBrightnessTime = this.mStats.getScreenBrightnessTime(i2, this.mRawRealtimeUs, this.mStatsType) / j2;
            double d2 = ((((double) (i2 + 0.5f)) * averagePower2) / 5.0d) * screenBrightnessTime;
            if (DEBUG && d2 != 0.0d) {
                Log.d(TAG, "Screen bin #" + i2 + ": time=" + screenBrightnessTime + " power=" + makemAh(d2 / 3600000.0d));
            }
            averagePower += d2;
            i2++;
            j2 = 1000;
        }
        double d3 = averagePower / 3600000.0d;
        if (d3 != 0.0d) {
            addEntry(BatterySipper.DrainType.SCREEN, screenOnTime, d3);
        }
    }

    private void addUserUsage() {
        for (int i2 = 0; i2 < this.mUserSippers.size(); i2++) {
            int iKeyAt = this.mUserSippers.keyAt(i2);
            BatterySipper batterySipper = new BatterySipper(BatterySipper.DrainType.USER, null, 0.0d);
            batterySipper.userId = iKeyAt;
            aggregateSippers(batterySipper, this.mUserSippers.valueAt(i2), "User");
            this.mUsageList.add(batterySipper);
        }
    }

    private void addWiFiUsage() {
        BatterySipper batterySipper = new BatterySipper(BatterySipper.DrainType.WIFI, null, 0.0d);
        this.mWifiPowerCalculator.calculateRemaining(batterySipper, this.mStats, this.mRawRealtimeUs, this.mRawUptimeUs, this.mStatsType);
        aggregateSippers(batterySipper, this.mWifiSippers, "WIFI");
        if (batterySipper.totalPowerMah > 0.0d) {
            this.mUsageList.add(batterySipper);
        }
    }

    private void aggregateSippers(BatterySipper batterySipper, List<BatterySipper> list, String str) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            BatterySipper batterySipper2 = list.get(i2);
            if (DEBUG) {
                Log.d(TAG, str + " adding sipper " + batterySipper2 + ": cpu=" + batterySipper2.cpuTimeMs);
            }
            batterySipper.add(batterySipper2);
        }
        batterySipper.computeMobilemspp();
        batterySipper.sumPower();
    }

    public static boolean checkHasBluetoothPowerReporting(BatteryStats batteryStats, PowerProfile powerProfile) {
        return (!batteryStats.hasBluetoothActivityReporting() || powerProfile.getAveragePower(PowerProfile.POWER_BLUETOOTH_CONTROLLER_IDLE) == 0.0d || powerProfile.getAveragePower(PowerProfile.POWER_BLUETOOTH_CONTROLLER_RX) == 0.0d || powerProfile.getAveragePower(PowerProfile.POWER_BLUETOOTH_CONTROLLER_TX) == 0.0d) ? false : true;
    }

    public static boolean checkHasWifiPowerReporting(BatteryStats batteryStats, PowerProfile powerProfile) {
        return (!batteryStats.hasWifiActivityReporting() || powerProfile.getAveragePower(PowerProfile.POWER_WIFI_CONTROLLER_IDLE) == 0.0d || powerProfile.getAveragePower(PowerProfile.POWER_WIFI_CONTROLLER_RX) == 0.0d || powerProfile.getAveragePower(PowerProfile.POWER_WIFI_CONTROLLER_TX) == 0.0d) ? false : true;
    }

    public static boolean checkWifiOnly(Context context) {
        return !((ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE)).isNetworkSupported(0);
    }

    public static void dropFile(Context context, String str) {
        makeFilePath(context, str).delete();
    }

    private static boolean getDeBugBatteryLog() {
        return new StringBuilder(SystemProperties.get("persist.sys.power.fw.debug")).toString().contains("battery");
    }

    private void load() {
        IBatteryStats iBatteryStats = this.mBatteryInfo;
        if (iBatteryStats == null) {
            return;
        }
        this.mStats = getStats(iBatteryStats);
        if (this.mCollectBatteryBroadcast) {
            this.mBatteryBroadcast = this.mContext.registerReceiver(null, new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
        }
    }

    private static File makeFilePath(Context context, String str) {
        return new File(context.getFilesDir(), str);
    }

    public static String makemAh(double d2) {
        String str;
        if (d2 == 0.0d) {
            return WifiEnterpriseConfig.ENGINE_DISABLE;
        }
        if (d2 < 1.0E-5d) {
            str = "%.8f";
        } else if (d2 < 1.0E-4d) {
            str = "%.7f";
        } else if (d2 < 0.001d) {
            str = "%.6f";
        } else if (d2 < 0.01d) {
            str = "%.5f";
        } else if (d2 < 0.1d) {
            str = "%.4f";
        } else if (d2 < 1.0d) {
            str = "%.3f";
        } else if (d2 < 10.0d) {
            str = "%.2f";
        } else {
            str = d2 < 100.0d ? "%.1f" : "%.0f";
        }
        return String.format(Locale.ENGLISH, str, Double.valueOf(d2));
    }

    private void processAppUsage(SparseArray<UserHandle> sparseArray) {
        BatterySipper batterySipper;
        boolean z2 = sparseArray.get(-1) != null;
        this.mStatsPeriod = this.mTypeBatteryRealtimeUs;
        SparseArray<? extends BatteryStats.Uid> uidStats = this.mStats.getUidStats();
        int size = uidStats.size();
        BatterySipper batterySipper2 = null;
        int i2 = 0;
        while (i2 < size) {
            BatteryStats.Uid uidValueAt = uidStats.valueAt(i2);
            BatterySipper batterySipper3 = new BatterySipper(BatterySipper.DrainType.APP, uidValueAt, 0.0d);
            SparseArray<? extends BatteryStats.Uid> sparseArray2 = uidStats;
            this.mCpuPowerCalculator.calculateApp(batterySipper3, uidValueAt, this.mRawRealtimeUs, this.mRawUptimeUs, this.mStatsType);
            this.mWakelockPowerCalculator.calculateApp(batterySipper3, uidValueAt, this.mRawRealtimeUs, this.mRawUptimeUs, this.mStatsType);
            this.mMobileRadioPowerCalculator.calculateApp(batterySipper3, uidValueAt, this.mRawRealtimeUs, this.mRawUptimeUs, this.mStatsType);
            this.mWifiPowerCalculator.calculateApp(batterySipper3, uidValueAt, this.mRawRealtimeUs, this.mRawUptimeUs, this.mStatsType);
            this.mBluetoothPowerCalculator.calculateApp(batterySipper3, uidValueAt, this.mRawRealtimeUs, this.mRawUptimeUs, this.mStatsType);
            this.mSensorPowerCalculator.calculateApp(batterySipper3, uidValueAt, this.mRawRealtimeUs, this.mRawUptimeUs, this.mStatsType);
            this.mCameraPowerCalculator.calculateApp(batterySipper3, uidValueAt, this.mRawRealtimeUs, this.mRawUptimeUs, this.mStatsType);
            this.mFlashlightPowerCalculator.calculateApp(batterySipper3, uidValueAt, this.mRawRealtimeUs, this.mRawUptimeUs, this.mStatsType);
            double dSumPower = batterySipper3.sumPower();
            if (DEBUG && dSumPower != 0.0d) {
                Log.d(TAG, String.format("UID %d: total power=%s", Integer.valueOf(uidValueAt.getUid()), makemAh(dSumPower)));
            }
            if (dSumPower != 0.0d || uidValueAt.getUid() == 0) {
                int uid = batterySipper3.getUid();
                int userId = UserHandle.getUserId(uid);
                if (uid == 1010) {
                    batterySipper = batterySipper3;
                    this.mWifiSippers.add(batterySipper);
                } else {
                    batterySipper = batterySipper3;
                    if (uid == 1002) {
                        this.mBluetoothSippers.add(batterySipper);
                    } else if (z2 || sparseArray.get(userId) != null || UserHandle.getAppId(uid) < 10000) {
                        this.mUsageList.add(batterySipper);
                    } else {
                        List<BatterySipper> arrayList = this.mUserSippers.get(userId);
                        if (arrayList == null) {
                            arrayList = new ArrayList<>();
                            this.mUserSippers.put(userId, arrayList);
                        }
                        arrayList.add(batterySipper);
                    }
                }
                if (uid == 0) {
                    batterySipper2 = batterySipper;
                }
            }
            i2++;
            uidStats = sparseArray2;
        }
        if (batterySipper2 != null) {
            this.mWakelockPowerCalculator.calculateRemaining(batterySipper2, this.mStats, this.mRawRealtimeUs, this.mRawUptimeUs, this.mStatsType);
            batterySipper2.sumPower();
        }
    }

    private void processMiscUsage() {
        addUserUsage();
        addPhoneUsage();
        addScreenUsage();
        addWiFiUsage();
        addBluetoothUsage();
        addMemoryUsage();
        addIdleUsage();
        if (this.mWifiOnly) {
            return;
        }
        addRadioUsage();
    }

    public static byte[] readFully(FileInputStream fileInputStream) {
        return readFully(fileInputStream, fileInputStream.available());
    }

    public static BatteryStats statsFromFile(Context context, String str) {
        synchronized (sFileXfer) {
            File fileMakeFilePath = makeFilePath(context, str);
            BatteryStats batteryStats = sFileXfer.get(fileMakeFilePath);
            if (batteryStats != null) {
                return batteryStats;
            }
            FileInputStream fileInputStream = null;
            try {
                try {
                    FileInputStream fileInputStream2 = new FileInputStream(fileMakeFilePath);
                    try {
                        byte[] fully = readFully(fileInputStream2);
                        Parcel parcelObtain = Parcel.obtain();
                        parcelObtain.unmarshall(fully, 0, fully.length);
                        parcelObtain.setDataPosition(0);
                        BatteryStatsImpl batteryStatsImplCreateFromParcel = BatteryStatsImpl.CREATOR.createFromParcel(parcelObtain);
                        try {
                            fileInputStream2.close();
                        } catch (IOException unused) {
                        }
                        return batteryStatsImplCreateFromParcel;
                    } catch (IOException e2) {
                        e = e2;
                        fileInputStream = fileInputStream2;
                        Log.w(TAG, "Unable to read history to file", e);
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        return getStats(IBatteryStats.Stub.asInterface(ServiceManager.getService(BatteryStats.SERVICE_NAME)));
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException unused3) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e3) {
                e = e3;
            }
        }
    }

    public void clearStats() {
        this.mStats = null;
    }

    public long convertMsToUs(long j2) {
        return j2 * 1000;
    }

    public long convertUsToMs(long j2) {
        return j2 / 1000;
    }

    public void create(BatteryStats batteryStats) {
        this.mPowerProfile = new PowerProfile(this.mContext);
        this.mStats = batteryStats;
    }

    public Intent getBatteryBroadcast() {
        if (this.mBatteryBroadcast == null && this.mCollectBatteryBroadcast) {
            load();
        }
        return this.mBatteryBroadcast;
    }

    public double getComputedPower() {
        return this.mComputedPower;
    }

    public long getForegroundActivityTotalTimeUs(BatteryStats.Uid uid, long j2) {
        BatteryStats.Timer foregroundActivityTimer = uid.getForegroundActivityTimer();
        if (foregroundActivityTimer != null) {
            return foregroundActivityTimer.getTotalTimeLocked(j2, 0);
        }
        return 0L;
    }

    public double getMaxDrainedPower() {
        return this.mMaxDrainedPower;
    }

    public double getMaxPower() {
        return this.mMaxPower;
    }

    public double getMaxRealPower() {
        return this.mMaxRealPower;
    }

    public double getMinDrainedPower() {
        return this.mMinDrainedPower;
    }

    public List<BatterySipper> getMobilemsppList() {
        return this.mMobilemsppList;
    }

    public PowerProfile getPowerProfile() {
        return this.mPowerProfile;
    }

    public long getProcessForegroundTimeMs(BatteryStats.Uid uid, int i2) {
        long jConvertMsToUs = convertMsToUs(SystemClock.elapsedRealtime());
        return convertUsToMs(Math.min(uid.getProcessStateTime(0, jConvertMsToUs, i2) + 0, getForegroundActivityTotalTimeUs(uid, jConvertMsToUs)));
    }

    public BatteryStats getStats() {
        if (this.mStats == null) {
            load();
        }
        return this.mStats;
    }

    public long getStatsPeriod() {
        return this.mStatsPeriod;
    }

    public int getStatsType() {
        return this.mStatsType;
    }

    public double getTotalPower() {
        return this.mTotalPower;
    }

    public List<BatterySipper> getUsageList() {
        return this.mUsageList;
    }

    public boolean isTypeService(BatterySipper batterySipper) {
        String[] packagesForUid = this.mPackageManager.getPackagesForUid(batterySipper.getUid());
        if (packagesForUid == null) {
            return false;
        }
        for (String str : packagesForUid) {
            if (ArrayUtils.contains(this.mServicepackageArray, str)) {
                return true;
            }
        }
        return false;
    }

    public boolean isTypeSystem(BatterySipper batterySipper) {
        int uid = batterySipper.uidObj == null ? -1 : batterySipper.getUid();
        String[] packagesForUid = this.mPackageManager.getPackagesForUid(uid);
        batterySipper.mPackages = packagesForUid;
        if (uid >= 0 && uid < 10000) {
            return true;
        }
        if (packagesForUid != null) {
            for (String str : packagesForUid) {
                if (ArrayUtils.contains(this.mSystemPackageArray, str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void refreshStats(int i2, int i3) {
        SparseArray<UserHandle> sparseArray = new SparseArray<>(1);
        sparseArray.put(i3, new UserHandle(i3));
        refreshStats(i2, sparseArray);
    }

    public double removeHiddenBatterySippers(List<BatterySipper> list) {
        BatterySipper.DrainType drainType;
        double d2 = 0.0d;
        BatterySipper batterySipper = null;
        for (int size = list.size() - 1; size >= 0; size--) {
            BatterySipper batterySipper2 = list.get(size);
            boolean zShouldHideSipper = shouldHideSipper(batterySipper2);
            batterySipper2.shouldHide = zShouldHideSipper;
            if (zShouldHideSipper && (drainType = batterySipper2.drainType) != BatterySipper.DrainType.OVERCOUNTED && drainType != BatterySipper.DrainType.SCREEN && drainType != BatterySipper.DrainType.UNACCOUNTED && drainType != BatterySipper.DrainType.BLUETOOTH && drainType != BatterySipper.DrainType.WIFI && drainType != BatterySipper.DrainType.IDLE) {
                d2 += batterySipper2.totalPowerMah;
            }
            if (batterySipper2.drainType == BatterySipper.DrainType.SCREEN) {
                batterySipper = batterySipper2;
            }
        }
        smearScreenBatterySipper(list, batterySipper);
        return d2;
    }

    public void setPackageManager(PackageManager packageManager) {
        this.mPackageManager = packageManager;
    }

    public void setServicePackageArray(String[] strArr) {
        this.mServicepackageArray = strArr;
    }

    public void setSystemPackageArray(String[] strArr) {
        this.mSystemPackageArray = strArr;
    }

    public boolean shouldHideSipper(BatterySipper batterySipper) {
        BatterySipper.DrainType drainType = batterySipper.drainType;
        return drainType == BatterySipper.DrainType.IDLE || drainType == BatterySipper.DrainType.CELL || drainType == BatterySipper.DrainType.SCREEN || drainType == BatterySipper.DrainType.UNACCOUNTED || drainType == BatterySipper.DrainType.OVERCOUNTED || isTypeService(batterySipper) || isTypeSystem(batterySipper);
    }

    public void smearScreenBatterySipper(List<BatterySipper> list, BatterySipper batterySipper) {
        SparseLongArray sparseLongArray = new SparseLongArray();
        int size = list.size();
        long j2 = 0;
        int i2 = 0;
        long j3 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            BatteryStats.Uid uid = list.get(i3).uidObj;
            if (uid != null) {
                long processForegroundTimeMs = getProcessForegroundTimeMs(uid, 0);
                sparseLongArray.put(uid.getUid(), processForegroundTimeMs);
                j3 += processForegroundTimeMs;
            }
        }
        if (batterySipper == null || j3 < 600000) {
            return;
        }
        double d2 = batterySipper.totalPowerMah;
        int size2 = list.size();
        while (i2 < size2) {
            BatterySipper batterySipper2 = list.get(i2);
            batterySipper2.screenPowerMah = (sparseLongArray.get(batterySipper2.getUid(), j2) * d2) / j3;
            i2++;
            j2 = 0;
        }
    }

    public void storeState() {
        sStatsXfer = this.mStats;
        sBatteryBroadcastXfer = this.mBatteryBroadcast;
    }

    public void storeStatsHistoryInFile(String str) {
        synchronized (sFileXfer) {
            File fileMakeFilePath = makeFilePath(this.mContext, str);
            sFileXfer.put(fileMakeFilePath, getStats());
            FileOutputStream fileOutputStream = null;
            try {
                try {
                    try {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(fileMakeFilePath);
                        try {
                            Parcel parcelObtain = Parcel.obtain();
                            getStats().writeToParcelWithoutUids(parcelObtain, 0);
                            fileOutputStream2.write(parcelObtain.marshall());
                            fileOutputStream2.close();
                        } catch (IOException e2) {
                            e = e2;
                            fileOutputStream = fileOutputStream2;
                            Log.w(TAG, "Unable to write history to file", e);
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException unused) {
                                }
                            }
                            throw th;
                        }
                    } catch (IOException e3) {
                        e = e3;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException unused2) {
            }
        }
    }

    public BatteryStatsHelper(Context context, boolean z2) {
        this(context, z2, checkWifiOnly(context));
    }

    public static byte[] readFully(FileInputStream fileInputStream, int i2) throws IOException {
        byte[] bArr = new byte[i2];
        int i3 = 0;
        while (true) {
            int i4 = fileInputStream.read(bArr, i3, bArr.length - i3);
            if (i4 <= 0) {
                return bArr;
            }
            i3 += i4;
            int iAvailable = fileInputStream.available();
            if (iAvailable > bArr.length - i3) {
                byte[] bArr2 = new byte[iAvailable + i3];
                System.arraycopy(bArr, 0, bArr2, 0, i3);
                bArr = bArr2;
            }
        }
    }

    public BatteryStatsHelper(Context context, boolean z2, boolean z3) {
        this.mUsageList = new ArrayList();
        this.mWifiSippers = new ArrayList();
        this.mBluetoothSippers = new ArrayList();
        this.mUserSippers = new SparseArray<>();
        this.mMobilemsppList = new ArrayList();
        this.mStatsType = 0;
        this.mStatsPeriod = 0L;
        this.mMaxPower = 1.0d;
        this.mMaxRealPower = 1.0d;
        this.mHasWifiPowerReporting = false;
        this.mHasBluetoothPowerReporting = false;
        this.mContext = context;
        this.mCollectBatteryBroadcast = z2;
        this.mWifiOnly = z3;
        this.mPackageManager = context.getPackageManager();
        Resources resources = context.getResources();
        this.mSystemPackageArray = resources.getStringArray(R.array.config_batteryPackageTypeSystem);
        this.mServicepackageArray = resources.getStringArray(R.array.config_batteryPackageTypeService);
    }

    public void create(Bundle bundle) {
        if (bundle != null) {
            this.mStats = sStatsXfer;
            this.mBatteryBroadcast = sBatteryBroadcastXfer;
        }
        this.mBatteryInfo = IBatteryStats.Stub.asInterface(ServiceManager.getService(BatteryStats.SERVICE_NAME));
        this.mPowerProfile = new PowerProfile(this.mContext);
    }

    private static BatteryStatsImpl getStats(IBatteryStats iBatteryStats) {
        try {
            ParcelFileDescriptor statisticsStream = iBatteryStats.getStatisticsStream();
            if (statisticsStream != null) {
                try {
                    ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(statisticsStream);
                    try {
                        byte[] fully = readFully(autoCloseInputStream, MemoryFile.getSize(statisticsStream.getFileDescriptor()));
                        Parcel parcelObtain = Parcel.obtain();
                        parcelObtain.unmarshall(fully, 0, fully.length);
                        parcelObtain.setDataPosition(0);
                        BatteryStatsImpl batteryStatsImplCreateFromParcel = BatteryStatsImpl.CREATOR.createFromParcel(parcelObtain);
                        autoCloseInputStream.close();
                        return batteryStatsImplCreateFromParcel;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            try {
                                autoCloseInputStream.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                            throw th2;
                        }
                    }
                } catch (IOException e2) {
                    Log.w(TAG, "Unable to read statistics stream", e2);
                }
            }
        } catch (RemoteException e3) {
            Log.w(TAG, "RemoteException:", e3);
        }
        return new BatteryStatsImpl();
    }

    public void refreshStats(int i2, List<UserHandle> list) {
        int size = list.size();
        SparseArray<UserHandle> sparseArray = new SparseArray<>(size);
        for (int i3 = 0; i3 < size; i3++) {
            UserHandle userHandle = list.get(i3);
            sparseArray.put(userHandle.getIdentifier(), userHandle);
        }
        refreshStats(i2, sparseArray);
    }

    public void refreshStats(int i2, SparseArray<UserHandle> sparseArray) {
        refreshStats(i2, sparseArray, SystemClock.elapsedRealtime() * 1000, SystemClock.uptimeMillis() * 1000);
    }

    public void refreshStats(int i2, SparseArray<UserHandle> sparseArray, long j2, long j3) {
        getStats();
        this.mMaxPower = 0.0d;
        this.mMaxRealPower = 0.0d;
        this.mComputedPower = 0.0d;
        this.mTotalPower = 0.0d;
        this.mUsageList.clear();
        this.mWifiSippers.clear();
        this.mBluetoothSippers.clear();
        this.mUserSippers.clear();
        this.mMobilemsppList.clear();
        if (this.mStats == null) {
            return;
        }
        if (this.mCpuPowerCalculator == null) {
            this.mCpuPowerCalculator = new CpuPowerCalculator(this.mPowerProfile);
        }
        this.mCpuPowerCalculator.reset();
        if (this.mMemoryPowerCalculator == null) {
            this.mMemoryPowerCalculator = new MemoryPowerCalculator(this.mPowerProfile);
        }
        this.mMemoryPowerCalculator.reset();
        if (this.mWakelockPowerCalculator == null) {
            this.mWakelockPowerCalculator = new WakelockPowerCalculator(this.mPowerProfile);
        }
        this.mWakelockPowerCalculator.reset();
        if (this.mMobileRadioPowerCalculator == null) {
            this.mMobileRadioPowerCalculator = new MobileRadioPowerCalculator(this.mPowerProfile, this.mStats);
        }
        this.mMobileRadioPowerCalculator.reset(this.mStats);
        boolean zCheckHasWifiPowerReporting = checkHasWifiPowerReporting(this.mStats, this.mPowerProfile);
        if (this.mWifiPowerCalculator == null || zCheckHasWifiPowerReporting != this.mHasWifiPowerReporting) {
            this.mWifiPowerCalculator = zCheckHasWifiPowerReporting ? new WifiPowerCalculator(this.mPowerProfile) : new WifiPowerEstimator(this.mPowerProfile);
            this.mHasWifiPowerReporting = zCheckHasWifiPowerReporting;
        }
        this.mWifiPowerCalculator.reset();
        boolean zCheckHasBluetoothPowerReporting = checkHasBluetoothPowerReporting(this.mStats, this.mPowerProfile);
        if (this.mBluetoothPowerCalculator == null || zCheckHasBluetoothPowerReporting != this.mHasBluetoothPowerReporting) {
            this.mBluetoothPowerCalculator = new BluetoothPowerCalculator(this.mPowerProfile);
            this.mHasBluetoothPowerReporting = zCheckHasBluetoothPowerReporting;
        }
        this.mBluetoothPowerCalculator.reset();
        if (this.mSensorPowerCalculator == null) {
            this.mSensorPowerCalculator = new SensorPowerCalculator(this.mPowerProfile, (SensorManager) this.mContext.getSystemService(Context.SENSOR_SERVICE));
        }
        this.mSensorPowerCalculator.reset();
        if (this.mCameraPowerCalculator == null) {
            this.mCameraPowerCalculator = new CameraPowerCalculator(this.mPowerProfile);
        }
        this.mCameraPowerCalculator.reset();
        if (this.mFlashlightPowerCalculator == null) {
            this.mFlashlightPowerCalculator = new FlashlightPowerCalculator(this.mPowerProfile);
        }
        this.mFlashlightPowerCalculator.reset();
        this.mStatsType = i2;
        this.mRawUptimeUs = j3;
        this.mRawRealtimeUs = j2;
        this.mBatteryUptimeUs = this.mStats.getBatteryUptime(j3);
        this.mBatteryRealtimeUs = this.mStats.getBatteryRealtime(j2);
        this.mTypeBatteryUptimeUs = this.mStats.computeBatteryUptime(j3, this.mStatsType);
        this.mTypeBatteryRealtimeUs = this.mStats.computeBatteryRealtime(j2, this.mStatsType);
        this.mBatteryTimeRemainingUs = this.mStats.computeBatteryTimeRemaining(j2);
        this.mChargeTimeRemainingUs = this.mStats.computeChargeTimeRemaining(j2);
        if (DEBUG) {
            String str = TAG;
            Log.d(str, "Raw time: realtime=" + (j2 / 1000) + " uptime=" + (j3 / 1000));
            Log.d(str, "Battery time: realtime=" + (this.mBatteryRealtimeUs / 1000) + " uptime=" + (this.mBatteryUptimeUs / 1000));
            Log.d(str, "Battery type time: realtime=" + (this.mTypeBatteryRealtimeUs / 1000) + " uptime=" + (this.mTypeBatteryUptimeUs / 1000));
        }
        this.mMinDrainedPower = (this.mPowerProfile.getBatteryCapacity() * ((double) this.mStats.getLowDischargeAmountSinceCharge())) / 100.0d;
        this.mMaxDrainedPower = (this.mPowerProfile.getBatteryCapacity() * ((double) this.mStats.getHighDischargeAmountSinceCharge())) / 100.0d;
        processAppUsage(sparseArray);
        for (int i3 = 0; i3 < this.mUsageList.size(); i3++) {
            BatterySipper batterySipper = this.mUsageList.get(i3);
            batterySipper.computeMobilemspp();
            if (batterySipper.mobilemspp != 0.0d) {
                this.mMobilemsppList.add(batterySipper);
            }
        }
        for (int i4 = 0; i4 < this.mUserSippers.size(); i4++) {
            List<BatterySipper> listValueAt = this.mUserSippers.valueAt(i4);
            for (int i5 = 0; i5 < listValueAt.size(); i5++) {
                BatterySipper batterySipper2 = listValueAt.get(i5);
                batterySipper2.computeMobilemspp();
                if (batterySipper2.mobilemspp != 0.0d) {
                    this.mMobilemsppList.add(batterySipper2);
                }
            }
        }
        Collections.sort(this.mMobilemsppList, new Comparator<BatterySipper>() { // from class: com.android.internal.os.BatteryStatsHelper.1
            @Override // java.util.Comparator
            public int compare(BatterySipper batterySipper3, BatterySipper batterySipper4) {
                return Double.compare(batterySipper4.mobilemspp, batterySipper3.mobilemspp);
            }
        });
        processMiscUsage();
        Collections.sort(this.mUsageList);
        if (!this.mUsageList.isEmpty()) {
            double d2 = this.mUsageList.get(0).totalPowerMah;
            this.mMaxPower = d2;
            this.mMaxRealPower = d2;
            int size = this.mUsageList.size();
            for (int i6 = 0; i6 < size; i6++) {
                this.mComputedPower += this.mUsageList.get(i6).totalPowerMah;
            }
        }
        if (DEBUG) {
            Log.d(TAG, "Accuracy: total computed=" + makemAh(this.mComputedPower) + ", min discharge=" + makemAh(this.mMinDrainedPower) + ", max discharge=" + makemAh(this.mMaxDrainedPower));
        }
        this.mTotalPower = this.mComputedPower;
        if (this.mStats.getLowDischargeAmountSinceCharge() > 1) {
            double d3 = this.mMinDrainedPower;
            double d4 = this.mComputedPower;
            if (d3 > d4) {
                double d5 = d3 - d4;
                this.mTotalPower = d3;
                BatterySipper batterySipper3 = new BatterySipper(BatterySipper.DrainType.UNACCOUNTED, null, d5);
                int iBinarySearch = Collections.binarySearch(this.mUsageList, batterySipper3);
                if (iBinarySearch < 0) {
                    iBinarySearch = -(iBinarySearch + 1);
                }
                this.mUsageList.add(iBinarySearch, batterySipper3);
                this.mMaxPower = Math.max(this.mMaxPower, d5);
            } else {
                double d6 = this.mMaxDrainedPower;
                if (d6 < d4) {
                    double d7 = d4 - d6;
                    BatterySipper batterySipper4 = new BatterySipper(BatterySipper.DrainType.OVERCOUNTED, null, d7);
                    int iBinarySearch2 = Collections.binarySearch(this.mUsageList, batterySipper4);
                    if (iBinarySearch2 < 0) {
                        iBinarySearch2 = -(iBinarySearch2 + 1);
                    }
                    this.mUsageList.add(iBinarySearch2, batterySipper4);
                    this.mMaxPower = Math.max(this.mMaxPower, d7);
                }
            }
        }
        double dRemoveHiddenBatterySippers = removeHiddenBatterySippers(this.mUsageList);
        double totalPower = getTotalPower() - dRemoveHiddenBatterySippers;
        if (Math.abs(totalPower) > 0.001d) {
            int size2 = this.mUsageList.size();
            for (int i7 = 0; i7 < size2; i7++) {
                BatterySipper batterySipper5 = this.mUsageList.get(i7);
                if (!batterySipper5.shouldHide) {
                    batterySipper5.proportionalSmearMah = ((batterySipper5.totalPowerMah + batterySipper5.screenPowerMah) / totalPower) * dRemoveHiddenBatterySippers;
                    batterySipper5.sumPower();
                }
            }
        }
    }
}
