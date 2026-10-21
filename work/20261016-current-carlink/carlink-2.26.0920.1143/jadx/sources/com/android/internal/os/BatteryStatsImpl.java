package com.android.internal.os;

import android.accessibilityservice.c;
import android.app.ActivityManager;
import android.app.m;
import android.bluetooth.BluetoothActivityEnergyInfo;
import android.bluetooth.UidTraffic;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkStats;
import android.net.wifi.WifiManager;
import android.os.BatteryManager;
import android.os.BatteryStats;
import android.os.Build;
import android.os.FileUtils;
import android.os.Handler;
import android.os.IBatteryPropertiesRegistrar;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.ParcelFormatException;
import android.os.Parcelable;
import android.os.PowerControllerBatteryStatsHelper;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.WorkSource;
import android.provider.Telephony;
import android.telephony.ModemActivityInfo;
import android.telephony.PreciseDisconnectCause;
import android.telephony.SignalStrength;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.util.LogWriter;
import android.util.LongSparseArray;
import android.util.LongSparseLongArray;
import android.util.MutableInt;
import android.util.Pools;
import android.util.Printer;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import android.util.TimeUtils;
import android.util.Xml;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.android.ims.ImsConfig;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.logging.EventLogTags;
import com.android.internal.net.NetworkStatsFactory;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.FastPrintWriter;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.JournaledFile;
import com.android.internal.util.XmlUtils;
import com.google.common.base.Ascii;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import libcore.util.EmptyArray;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes2.dex */
public class BatteryStatsImpl extends BatteryStats {
    static final int BATTERY_DELTA_LEVEL_FLAG = 1;
    public static final int BATTERY_PLUGGED_NONE = 0;
    public static final Parcelable.Creator<BatteryStatsImpl> CREATOR;
    private static final boolean DEBUG = false;
    public static final boolean DEBUG_ENERGY = false;
    private static final boolean DEBUG_ENERGY_CPU = false;
    private static final boolean DEBUG_HISTORY = false;
    private static final boolean DEBUG_MEMORY = false;
    static final long DELAY_UPDATE_WAKELOCKS = 5000;
    static final int DELTA_BATTERY_CHARGE_FLAG = 16777216;
    static final int DELTA_BATTERY_LEVEL_FLAG = 524288;
    static final int DELTA_EVENT_FLAG = 8388608;
    static final int DELTA_STATE2_FLAG = 2097152;
    static final int DELTA_STATE_FLAG = 1048576;
    static final int DELTA_STATE_MASK = -33554432;
    static final int DELTA_TIME_ABS = 524285;
    static final int DELTA_TIME_INT = 524286;
    static final int DELTA_TIME_LONG = 524287;
    static final int DELTA_TIME_MASK = 524287;
    static final int DELTA_WAKELOCK_FLAG = 4194304;
    private static final int MAGIC = -1166707595;
    static final int MAX_DAILY_ITEMS = 10;
    static final int MAX_HISTORY_BUFFER;
    private static final int MAX_HISTORY_ITEMS;
    static final int MAX_LEVEL_STEPS = 200;
    static final int MAX_MAX_HISTORY_BUFFER;
    private static final int MAX_MAX_HISTORY_ITEMS;
    private static final int MAX_WAKELOCKS_PER_UID;
    static final int MSG_REPORT_CHARGING = 3;
    static final int MSG_REPORT_POWER_CHANGE = 2;
    static final int MSG_UPDATE_WAKELOCKS = 1;
    private static final int NUM_BT_TX_LEVELS = 1;
    private static final int NUM_WIFI_TX_LEVELS = 1;
    private static final long RPM_STATS_UPDATE_FREQ_MS = 1000;
    static final int STATE_BATTERY_HEALTH_MASK = 7;
    static final int STATE_BATTERY_HEALTH_SHIFT = 26;
    static final int STATE_BATTERY_MASK = -16777216;
    static final int STATE_BATTERY_PLUG_MASK = 3;
    static final int STATE_BATTERY_PLUG_SHIFT = 24;
    static final int STATE_BATTERY_STATUS_MASK = 7;
    static final int STATE_BATTERY_STATUS_SHIFT = 29;
    private static final String TAG = "BatteryStatsImpl";
    private static final boolean USE_OLD_HISTORY = false;
    private static final int VERSION = 167;
    final BatteryStats.HistoryEventTracker mActiveEvents;
    int mActiveHistoryStates;
    int mActiveHistoryStates2;
    int mAudioOnNesting;
    StopwatchTimer mAudioOnTimer;
    final ArrayList<StopwatchTimer> mAudioTurnedOnTimers;
    ControllerActivityCounterImpl mBluetoothActivity;
    int mBluetoothScanNesting;
    final ArrayList<StopwatchTimer> mBluetoothScanOnTimers;
    protected StopwatchTimer mBluetoothScanTimer;
    private BatteryCallback mCallback;
    int mCameraOnNesting;
    StopwatchTimer mCameraOnTimer;
    final ArrayList<StopwatchTimer> mCameraTurnedOnTimers;
    int mChangedStates;
    int mChangedStates2;
    final BatteryStats.LevelStepTracker mChargeStepTracker;
    boolean mCharging;
    public final AtomicFile mCheckinFile;
    protected Clocks mClocks;
    private long[] mCpuFreqs;
    final BatteryStats.HistoryStepDetails mCurHistoryStepDetails;
    long mCurStepCpuSystemTime;
    long mCurStepCpuUserTime;
    int mCurStepMode;
    long mCurStepStatIOWaitTime;
    long mCurStepStatIdleTime;
    long mCurStepStatIrqTime;
    long mCurStepStatSoftIrqTime;
    long mCurStepStatSystemTime;
    long mCurStepStatUserTime;
    int mCurrentBatteryLevel;
    final BatteryStats.LevelStepTracker mDailyChargeStepTracker;
    final BatteryStats.LevelStepTracker mDailyDischargeStepTracker;
    public final AtomicFile mDailyFile;
    final ArrayList<BatteryStats.DailyItem> mDailyItems;
    ArrayList<BatteryStats.PackageChange> mDailyPackageChanges;
    long mDailyStartTime;
    int mDeviceIdleMode;
    StopwatchTimer mDeviceIdleModeFullTimer;
    StopwatchTimer mDeviceIdleModeLightTimer;
    boolean mDeviceIdling;
    StopwatchTimer mDeviceIdlingTimer;
    boolean mDeviceLightIdling;
    StopwatchTimer mDeviceLightIdlingTimer;
    int mDischargeAmountScreenDoze;
    int mDischargeAmountScreenDozeSinceCharge;
    int mDischargeAmountScreenOff;
    int mDischargeAmountScreenOffSinceCharge;
    int mDischargeAmountScreenOn;
    int mDischargeAmountScreenOnSinceCharge;
    private LongSamplingCounter mDischargeCounter;
    int mDischargeCurrentLevel;
    int mDischargePlugLevel;
    private LongSamplingCounter mDischargeScreenDozeCounter;
    int mDischargeScreenDozeUnplugLevel;
    private LongSamplingCounter mDischargeScreenOffCounter;
    int mDischargeScreenOffUnplugLevel;
    int mDischargeScreenOnUnplugLevel;
    int mDischargeStartLevel;
    final BatteryStats.LevelStepTracker mDischargeStepTracker;
    int mDischargeUnplugLevel;
    boolean mDistributeWakelockCpu;
    final ArrayList<StopwatchTimer> mDrawTimers;
    String mEndPlatformVersion;
    private int mEstimatedBatteryCapacity;
    private ExternalStatsSync mExternalSync;
    private final JournaledFile mFile;
    int mFlashlightOnNesting;
    StopwatchTimer mFlashlightOnTimer;
    final ArrayList<StopwatchTimer> mFlashlightTurnedOnTimers;
    final ArrayList<StopwatchTimer> mFullTimers;
    final ArrayList<StopwatchTimer> mFullWifiLockTimers;
    boolean mGlobalWifiRunning;
    StopwatchTimer mGlobalWifiRunningTimer;
    int mGpsNesting;
    public final MyHandler mHandler;
    boolean mHasBluetoothReporting;
    boolean mHasModemReporting;
    boolean mHasWifiReporting;
    boolean mHaveBatteryLevel;
    int mHighDischargeAmountSinceCharge;
    BatteryStats.HistoryItem mHistory;
    final BatteryStats.HistoryItem mHistoryAddTmp;
    long mHistoryBaseTime;
    final Parcel mHistoryBuffer;
    int mHistoryBufferLastPos;
    BatteryStats.HistoryItem mHistoryCache;
    final BatteryStats.HistoryItem mHistoryCur;
    BatteryStats.HistoryItem mHistoryEnd;
    private BatteryStats.HistoryItem mHistoryIterator;
    BatteryStats.HistoryItem mHistoryLastEnd;
    final BatteryStats.HistoryItem mHistoryLastLastWritten;
    final BatteryStats.HistoryItem mHistoryLastWritten;
    boolean mHistoryOverflow;
    final BatteryStats.HistoryItem mHistoryReadTmp;
    final HashMap<BatteryStats.HistoryTag, Integer> mHistoryTagPool;
    int mInitStepMode;
    private String mInitialAcquireWakeName;
    private int mInitialAcquireWakeUid;
    boolean mInteractive;
    StopwatchTimer mInteractiveTimer;
    final SparseIntArray mIsolatedUids;
    private boolean mIteratingHistory;
    private KernelCpuSpeedReader[] mKernelCpuSpeedReaders;
    private final KernelMemoryBandwidthStats mKernelMemoryBandwidthStats;
    private final LongSparseArray<SamplingTimer> mKernelMemoryStats;
    private final KernelUidCpuFreqTimeReader mKernelUidCpuFreqTimeReader;
    private final KernelUidCpuTimeReader mKernelUidCpuTimeReader;
    private final KernelWakelockReader mKernelWakelockReader;
    private final HashMap<String, SamplingTimer> mKernelWakelockStats;
    int mLastChargeStepLevel;
    int mLastChargingStateLevel;
    int mLastDischargeStepLevel;
    long mLastHistoryElapsedRealtime;
    BatteryStats.HistoryStepDetails mLastHistoryStepDetails;
    byte mLastHistoryStepLevel;
    long mLastIdleTimeStart;

    @GuardedBy("mModemNetworkLock")
    private NetworkStats mLastModemNetworkStats;
    final ArrayList<StopwatchTimer> mLastPartialTimers;
    private long mLastRpmStatsUpdateTimeMs;
    long mLastStepCpuSystemTime;
    long mLastStepCpuUserTime;
    long mLastStepStatIOWaitTime;
    long mLastStepStatIdleTime;
    long mLastStepStatIrqTime;
    long mLastStepStatSoftIrqTime;
    long mLastStepStatSystemTime;
    long mLastStepStatUserTime;
    String mLastWakeupReason;
    long mLastWakeupUptimeMs;

    @GuardedBy("mWifiNetworkLock")
    private NetworkStats mLastWifiNetworkStats;
    long mLastWriteTime;
    private int mLoadedNumConnectivityChange;
    long mLongestFullIdleTime;
    long mLongestLightIdleTime;
    int mLowDischargeAmountSinceCharge;
    int mMaxChargeStepLevel;
    private int mMaxLearnedBatteryCapacity;
    int mMinDischargeStepLevel;
    private int mMinLearnedBatteryCapacity;
    LongSamplingCounter mMobileRadioActiveAdjustedTime;
    StopwatchTimer mMobileRadioActivePerAppTimer;
    long mMobileRadioActiveStartTime;
    StopwatchTimer mMobileRadioActiveTimer;
    LongSamplingCounter mMobileRadioActiveUnknownCount;
    LongSamplingCounter mMobileRadioActiveUnknownTime;
    int mMobileRadioPowerState;
    int mModStepMode;
    ControllerActivityCounterImpl mModemActivity;

    @GuardedBy("mModemNetworkLock")
    private String[] mModemIfaces;
    private final Object mModemNetworkLock;
    final LongSamplingCounter[] mNetworkByteActivityCounters;
    final LongSamplingCounter[] mNetworkPacketActivityCounters;
    private final NetworkStatsFactory mNetworkStatsFactory;
    private final Pools.Pool<NetworkStats> mNetworkStatsPool;
    int mNextHistoryTagIdx;
    long mNextMaxDailyDeadline;
    long mNextMinDailyDeadline;
    boolean mNoAutoReset;
    private int mNumConnectivityChange;
    int mNumHistoryItems;
    int mNumHistoryTagChars;
    boolean mOnBattery;
    boolean mOnBatteryInternal;
    protected final TimeBase mOnBatteryScreenOffTimeBase;
    protected final TimeBase mOnBatteryTimeBase;
    final ArrayList<StopwatchTimer> mPartialTimers;
    Parcel mPendingWrite;
    int mPhoneDataConnectionType;
    final StopwatchTimer[] mPhoneDataConnectionsTimer;
    boolean mPhoneOn;
    StopwatchTimer mPhoneOnTimer;
    private int mPhoneServiceState;
    private int mPhoneServiceStateRaw;
    StopwatchTimer mPhoneSignalScanningTimer;
    int mPhoneSignalStrengthBin;
    int mPhoneSignalStrengthBinRaw;
    final StopwatchTimer[] mPhoneSignalStrengthsTimer;
    private int mPhoneSimStateRaw;
    private final PlatformIdleStateCallback mPlatformIdleStateCallback;
    final PowerControllerBatteryStatsHelper mPowerControllerBatteryStatsHelper;
    private PowerProfile mPowerProfile;
    boolean mPowerSaveModeEnabled;
    StopwatchTimer mPowerSaveModeEnabledTimer;
    boolean mPretendScreenOff;
    int mReadHistoryChars;
    final BatteryStats.HistoryStepDetails mReadHistoryStepDetails;
    String[] mReadHistoryStrings;
    int[] mReadHistoryUids;
    private boolean mReadOverflow;
    long mRealtime;
    long mRealtimeStart;
    public boolean mRecordAllHistory;
    boolean mRecordingHistory;
    private final HashMap<String, SamplingTimer> mRpmStats;
    int mScreenBrightnessBin;
    final StopwatchTimer[] mScreenBrightnessTimer;
    protected StopwatchTimer mScreenDozeTimer;
    private final HashMap<String, SamplingTimer> mScreenOffRpmStats;
    protected StopwatchTimer mScreenOnTimer;
    protected int mScreenState;
    int mSensorNesting;
    final SparseArray<ArrayList<StopwatchTimer>> mSensorTimers;
    boolean mShuttingDown;
    long mStartClockTime;
    int mStartCount;
    String mStartPlatformVersion;
    long mTempTotalCpuSystemTimeUs;
    long mTempTotalCpuUserTimeUs;
    final BatteryStats.HistoryStepDetails mTmpHistoryStepDetails;
    private final RpmStats mTmpRpmStats;
    private final KernelWakelockStats mTmpWakelockStats;
    long mTrackRunningHistoryElapsedRealtime;
    long mTrackRunningHistoryUptime;
    final SparseArray<Uid> mUidStats;
    private int mUnpluggedNumConnectivityChange;
    long mUptime;
    long mUptimeStart;
    private UserInfoProvider mUserInfoProvider;
    int mVideoOnNesting;
    StopwatchTimer mVideoOnTimer;
    final ArrayList<StopwatchTimer> mVideoTurnedOnTimers;
    boolean mWakeLockImportant;
    int mWakeLockNesting;
    private final HashMap<String, SamplingTimer> mWakeupReasonStats;
    ControllerActivityCounterImpl mWifiActivity;
    final SparseArray<ArrayList<StopwatchTimer>> mWifiBatchedScanTimers;
    int mWifiFullLockNesting;

    @GuardedBy("mWifiNetworkLock")
    private String[] mWifiIfaces;
    int mWifiMulticastNesting;
    final ArrayList<StopwatchTimer> mWifiMulticastTimers;
    private final Object mWifiNetworkLock;
    boolean mWifiOn;
    StopwatchTimer mWifiOnTimer;
    int mWifiRadioPowerState;
    final ArrayList<StopwatchTimer> mWifiRunningTimers;
    int mWifiScanNesting;
    final ArrayList<StopwatchTimer> mWifiScanTimers;
    int mWifiSignalStrengthBin;
    final StopwatchTimer[] mWifiSignalStrengthsTimer;
    int mWifiState;
    final StopwatchTimer[] mWifiStateTimer;
    int mWifiSupplState;
    final StopwatchTimer[] mWifiSupplStateTimer;
    final ArrayList<StopwatchTimer> mWindowTimers;
    final ReentrantLock mWriteLock;

    public interface BatteryCallback {
        void batteryNeedsCpuUpdate();

        void batteryPowerChanged(boolean z2);

        void batterySendBroadcast(Intent intent);
    }

    public interface Clocks {
        long elapsedRealtime();

        long uptimeMillis();
    }

    public static class ControllerActivityCounterImpl extends BatteryStats.ControllerActivityCounter implements Parcelable {
        private final LongSamplingCounter mIdleTimeMillis;
        private final LongSamplingCounter mPowerDrainMaMs;
        private final LongSamplingCounter mRxTimeMillis;
        private final LongSamplingCounter[] mTxTimeMillis;

        public ControllerActivityCounterImpl(TimeBase timeBase, int i2) {
            this.mIdleTimeMillis = new LongSamplingCounter(timeBase);
            this.mRxTimeMillis = new LongSamplingCounter(timeBase);
            this.mTxTimeMillis = new LongSamplingCounter[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                this.mTxTimeMillis[i3] = new LongSamplingCounter(timeBase);
            }
            this.mPowerDrainMaMs = new LongSamplingCounter(timeBase);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void detach() {
            this.mIdleTimeMillis.detach();
            this.mRxTimeMillis.detach();
            for (LongSamplingCounter longSamplingCounter : this.mTxTimeMillis) {
                longSamplingCounter.detach();
            }
            this.mPowerDrainMaMs.detach();
        }

        public void readSummaryFromParcel(Parcel parcel) {
            this.mIdleTimeMillis.readSummaryFromParcelLocked(parcel);
            this.mRxTimeMillis.readSummaryFromParcelLocked(parcel);
            int i2 = parcel.readInt();
            LongSamplingCounter[] longSamplingCounterArr = this.mTxTimeMillis;
            if (i2 != longSamplingCounterArr.length) {
                throw new ParcelFormatException("inconsistent tx state lengths");
            }
            for (LongSamplingCounter longSamplingCounter : longSamplingCounterArr) {
                longSamplingCounter.readSummaryFromParcelLocked(parcel);
            }
            this.mPowerDrainMaMs.readSummaryFromParcelLocked(parcel);
        }

        public void reset(boolean z2) {
            this.mIdleTimeMillis.reset(z2);
            this.mRxTimeMillis.reset(z2);
            for (LongSamplingCounter longSamplingCounter : this.mTxTimeMillis) {
                longSamplingCounter.reset(z2);
            }
            this.mPowerDrainMaMs.reset(z2);
        }

        public void writeSummaryToParcel(Parcel parcel) {
            this.mIdleTimeMillis.writeSummaryFromParcelLocked(parcel);
            this.mRxTimeMillis.writeSummaryFromParcelLocked(parcel);
            parcel.writeInt(this.mTxTimeMillis.length);
            for (LongSamplingCounter longSamplingCounter : this.mTxTimeMillis) {
                longSamplingCounter.writeSummaryFromParcelLocked(parcel);
            }
            this.mPowerDrainMaMs.writeSummaryFromParcelLocked(parcel);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            this.mIdleTimeMillis.writeToParcel(parcel);
            this.mRxTimeMillis.writeToParcel(parcel);
            parcel.writeInt(this.mTxTimeMillis.length);
            for (LongSamplingCounter longSamplingCounter : this.mTxTimeMillis) {
                longSamplingCounter.writeToParcel(parcel);
            }
            this.mPowerDrainMaMs.writeToParcel(parcel);
        }

        @Override // android.os.BatteryStats.ControllerActivityCounter
        public LongSamplingCounter getIdleTimeCounter() {
            return this.mIdleTimeMillis;
        }

        @Override // android.os.BatteryStats.ControllerActivityCounter
        public LongSamplingCounter getPowerCounter() {
            return this.mPowerDrainMaMs;
        }

        @Override // android.os.BatteryStats.ControllerActivityCounter
        public LongSamplingCounter getRxTimeCounter() {
            return this.mRxTimeMillis;
        }

        @Override // android.os.BatteryStats.ControllerActivityCounter
        public LongSamplingCounter[] getTxTimeCounters() {
            return this.mTxTimeMillis;
        }

        public ControllerActivityCounterImpl(TimeBase timeBase, int i2, Parcel parcel) {
            this.mIdleTimeMillis = new LongSamplingCounter(timeBase, parcel);
            this.mRxTimeMillis = new LongSamplingCounter(timeBase, parcel);
            if (parcel.readInt() == i2) {
                this.mTxTimeMillis = new LongSamplingCounter[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    this.mTxTimeMillis[i3] = new LongSamplingCounter(timeBase, parcel);
                }
                this.mPowerDrainMaMs = new LongSamplingCounter(timeBase, parcel);
                return;
            }
            throw new ParcelFormatException("inconsistent tx state lengths");
        }
    }

    public static class DualTimer extends DurationTimer {
        private final DurationTimer mSubTimer;

        public DualTimer(Clocks clocks, Uid uid, int i2, ArrayList<StopwatchTimer> arrayList, TimeBase timeBase, TimeBase timeBase2, Parcel parcel) {
            super(clocks, uid, i2, arrayList, timeBase, parcel);
            this.mSubTimer = new DurationTimer(clocks, uid, i2, null, timeBase2, parcel);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.StopwatchTimer, com.android.internal.os.BatteryStatsImpl.Timer
        public void detach() {
            this.mSubTimer.detach();
            super.detach();
        }

        @Override // com.android.internal.os.BatteryStatsImpl.DurationTimer, com.android.internal.os.BatteryStatsImpl.StopwatchTimer, com.android.internal.os.BatteryStatsImpl.Timer
        public void readSummaryFromParcelLocked(Parcel parcel) {
            super.readSummaryFromParcelLocked(parcel);
            this.mSubTimer.readSummaryFromParcelLocked(parcel);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.DurationTimer, com.android.internal.os.BatteryStatsImpl.StopwatchTimer, com.android.internal.os.BatteryStatsImpl.Timer
        public boolean reset(boolean z2) {
            return !((!super.reset(z2)) | (!this.mSubTimer.reset(false)) | false);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.DurationTimer, com.android.internal.os.BatteryStatsImpl.StopwatchTimer
        public void startRunningLocked(long j2) {
            super.startRunningLocked(j2);
            this.mSubTimer.startRunningLocked(j2);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.StopwatchTimer
        public void stopAllRunningLocked(long j2) {
            super.stopAllRunningLocked(j2);
            this.mSubTimer.stopAllRunningLocked(j2);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.DurationTimer, com.android.internal.os.BatteryStatsImpl.StopwatchTimer
        public void stopRunningLocked(long j2) {
            super.stopRunningLocked(j2);
            this.mSubTimer.stopRunningLocked(j2);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.DurationTimer, com.android.internal.os.BatteryStatsImpl.Timer
        public void writeSummaryFromParcelLocked(Parcel parcel, long j2) {
            super.writeSummaryFromParcelLocked(parcel, j2);
            this.mSubTimer.writeSummaryFromParcelLocked(parcel, j2);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.DurationTimer, com.android.internal.os.BatteryStatsImpl.StopwatchTimer, com.android.internal.os.BatteryStatsImpl.Timer
        public void writeToParcel(Parcel parcel, long j2) {
            super.writeToParcel(parcel, j2);
            this.mSubTimer.writeToParcel(parcel, j2);
        }

        @Override // android.os.BatteryStats.Timer
        public DurationTimer getSubTimer() {
            return this.mSubTimer;
        }

        public DualTimer(Clocks clocks, Uid uid, int i2, ArrayList<StopwatchTimer> arrayList, TimeBase timeBase, TimeBase timeBase2) {
            super(clocks, uid, i2, arrayList, timeBase);
            this.mSubTimer = new DurationTimer(clocks, uid, i2, null, timeBase2);
        }
    }

    public interface ExternalStatsSync {
        public static final int UPDATE_ALL = 31;
        public static final int UPDATE_BT = 8;
        public static final int UPDATE_CPU = 1;
        public static final int UPDATE_RADIO = 4;
        public static final int UPDATE_RPM = 16;
        public static final int UPDATE_WIFI = 2;

        Future<?> scheduleCpuSyncDueToRemovedUid(int i2);

        Future<?> scheduleSync(String str, int i2);
    }

    public static class LongSamplingCounterArray extends BatteryStats.LongCounterArray implements TimeBaseObs {
        public long[] mCounts;
        public long[] mLoadedCounts;
        public long[] mPluggedCounts;
        final TimeBase mTimeBase;
        public long[] mUnpluggedCounts;

        private LongSamplingCounterArray(TimeBase timeBase, Parcel parcel) {
            this.mTimeBase = timeBase;
            long[] jArrCreateLongArray = parcel.createLongArray();
            this.mPluggedCounts = jArrCreateLongArray;
            this.mCounts = copyArray(jArrCreateLongArray, this.mCounts);
            this.mLoadedCounts = parcel.createLongArray();
            this.mUnpluggedCounts = parcel.createLongArray();
            timeBase.add(this);
        }

        private static long[] copyArray(long[] jArr, long[] jArr2) {
            if (jArr == null) {
                return null;
            }
            if (jArr2 == null) {
                jArr2 = new long[jArr.length];
            }
            System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
            return jArr2;
        }

        private static void fillArray(long[] jArr, long j2) {
            if (jArr != null) {
                Arrays.fill(jArr, j2);
            }
        }

        public static LongSamplingCounterArray readFromParcel(Parcel parcel, TimeBase timeBase) {
            if (parcel.readInt() != 0) {
                return new LongSamplingCounterArray(timeBase, parcel);
            }
            return null;
        }

        private void readSummaryFromParcelLocked(Parcel parcel) {
            long[] jArrCreateLongArray = parcel.createLongArray();
            this.mCounts = jArrCreateLongArray;
            this.mLoadedCounts = copyArray(jArrCreateLongArray, this.mLoadedCounts);
            this.mUnpluggedCounts = copyArray(this.mCounts, this.mUnpluggedCounts);
            this.mPluggedCounts = copyArray(this.mCounts, this.mPluggedCounts);
        }

        private static void subtract(long[] jArr, long[] jArr2) {
            if (jArr2 == null) {
                return;
            }
            for (int i2 = 0; i2 < jArr.length; i2++) {
                jArr[i2] = jArr[i2] - jArr2[i2];
            }
        }

        private void writeSummaryToParcelLocked(Parcel parcel) {
            parcel.writeLongArray(this.mCounts);
        }

        private void writeToParcel(Parcel parcel) {
            parcel.writeLongArray(this.mCounts);
            parcel.writeLongArray(this.mLoadedCounts);
            parcel.writeLongArray(this.mUnpluggedCounts);
        }

        public void addCountLocked(long[] jArr) {
            if (jArr != null && this.mTimeBase.isRunning()) {
                if (this.mCounts == null) {
                    this.mCounts = new long[jArr.length];
                }
                for (int i2 = 0; i2 < jArr.length; i2++) {
                    long[] jArr2 = this.mCounts;
                    jArr2[i2] = jArr2[i2] + jArr[i2];
                }
            }
        }

        public void detach() {
            this.mTimeBase.remove(this);
        }

        @Override // android.os.BatteryStats.LongCounterArray
        public long[] getCountsLocked(int i2) {
            long[] jArrCopyArray = copyArray(this.mTimeBase.isRunning() ? this.mCounts : this.mPluggedCounts, null);
            if (i2 == 2) {
                subtract(jArrCopyArray, this.mUnpluggedCounts);
            } else if (i2 != 0) {
                subtract(jArrCopyArray, this.mLoadedCounts);
            }
            return jArrCopyArray;
        }

        public int getSize() {
            long[] jArr = this.mCounts;
            if (jArr == null) {
                return 0;
            }
            return jArr.length;
        }

        @Override // android.os.BatteryStats.LongCounterArray
        public void logState(Printer printer, String str) {
            StringBuilder sbU = c.u(str, "mCounts=");
            sbU.append(Arrays.toString(this.mCounts));
            sbU.append(" mLoadedCounts=");
            sbU.append(Arrays.toString(this.mLoadedCounts));
            sbU.append(" mUnpluggedCounts=");
            sbU.append(Arrays.toString(this.mUnpluggedCounts));
            sbU.append(" mPluggedCounts=");
            sbU.append(Arrays.toString(this.mPluggedCounts));
            printer.println(sbU.toString());
        }

        @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStarted(long j2, long j3, long j4) {
            this.mUnpluggedCounts = copyArray(this.mPluggedCounts, this.mUnpluggedCounts);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStopped(long j2, long j3, long j4) {
            this.mPluggedCounts = copyArray(this.mCounts, this.mPluggedCounts);
        }

        public void reset(boolean z2) {
            fillArray(this.mCounts, 0L);
            fillArray(this.mLoadedCounts, 0L);
            fillArray(this.mPluggedCounts, 0L);
            fillArray(this.mUnpluggedCounts, 0L);
            if (z2) {
                detach();
            }
        }

        public static void writeSummaryToParcelLocked(Parcel parcel, LongSamplingCounterArray longSamplingCounterArray) {
            if (longSamplingCounterArray == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                longSamplingCounterArray.writeSummaryToParcelLocked(parcel);
            }
        }

        public static void writeToParcel(Parcel parcel, LongSamplingCounterArray longSamplingCounterArray) {
            if (longSamplingCounterArray != null) {
                parcel.writeInt(1);
                longSamplingCounterArray.writeToParcel(parcel);
            } else {
                parcel.writeInt(0);
            }
        }

        public static LongSamplingCounterArray readSummaryFromParcelLocked(Parcel parcel, TimeBase timeBase) {
            if (parcel.readInt() == 0) {
                return null;
            }
            LongSamplingCounterArray longSamplingCounterArray = new LongSamplingCounterArray(timeBase);
            longSamplingCounterArray.readSummaryFromParcelLocked(parcel);
            return longSamplingCounterArray;
        }

        public LongSamplingCounterArray(TimeBase timeBase) {
            this.mTimeBase = timeBase;
            timeBase.add(this);
        }
    }

    public final class MyHandler extends Handler {
        public MyHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String str;
            BatteryCallback batteryCallback = BatteryStatsImpl.this.mCallback;
            int i2 = message.what;
            if (i2 == 1) {
                synchronized (BatteryStatsImpl.this) {
                    BatteryStatsImpl.this.updateCpuTimeLocked(false);
                }
                if (batteryCallback != null) {
                    batteryCallback.batteryNeedsCpuUpdate();
                    return;
                }
                return;
            }
            if (i2 == 2) {
                if (batteryCallback != null) {
                    batteryCallback.batteryPowerChanged(message.arg1 != 0);
                }
            } else if (i2 == 3 && batteryCallback != null) {
                synchronized (BatteryStatsImpl.this) {
                    str = BatteryStatsImpl.this.mCharging ? BatteryManager.ACTION_CHARGING : BatteryManager.ACTION_DISCHARGING;
                }
                Intent intent = new Intent(str);
                intent.addFlags(67108864);
                batteryCallback.batterySendBroadcast(intent);
            }
        }
    }

    public abstract class OverflowArrayMap<T> {
        private static final String OVERFLOW_NAME = "*overflow*";
        ArrayMap<String, MutableInt> mActiveOverflow;
        T mCurOverflow;
        long mLastCleanupTime;
        long mLastClearTime;
        long mLastOverflowFinishTime;
        long mLastOverflowTime;
        final ArrayMap<String, T> mMap = new ArrayMap<>();
        final int mUid;

        public OverflowArrayMap(int i2) {
            this.mUid = i2;
        }

        public void add(String str, T t2) {
            if (str == null) {
                str = "";
            }
            this.mMap.put(str, t2);
            if (OVERFLOW_NAME.equals(str)) {
                this.mCurOverflow = t2;
            }
        }

        public void cleanup() {
            this.mLastCleanupTime = SystemClock.elapsedRealtime();
            ArrayMap<String, MutableInt> arrayMap = this.mActiveOverflow;
            if (arrayMap != null && arrayMap.size() == 0) {
                this.mActiveOverflow = null;
            }
            if (this.mActiveOverflow == null) {
                if (this.mMap.containsKey(OVERFLOW_NAME)) {
                    Slog.wtf(BatteryStatsImpl.TAG, "Cleaning up with no active overflow, but have overflow entry " + this.mMap.get(OVERFLOW_NAME));
                    this.mMap.remove(OVERFLOW_NAME);
                }
                this.mCurOverflow = null;
                return;
            }
            if (this.mCurOverflow == null || !this.mMap.containsKey(OVERFLOW_NAME)) {
                Slog.wtf(BatteryStatsImpl.TAG, "Cleaning up with active overflow, but no overflow entry: cur=" + this.mCurOverflow + " map=" + this.mMap.get(OVERFLOW_NAME));
            }
        }

        public void clear() {
            this.mLastClearTime = SystemClock.elapsedRealtime();
            this.mMap.clear();
            this.mCurOverflow = null;
            this.mActiveOverflow = null;
        }

        public ArrayMap<String, T> getMap() {
            return this.mMap;
        }

        public abstract T instantiateObject();

        public T startObject(String str) {
            MutableInt mutableInt;
            if (str == null) {
                str = "";
            }
            T t2 = this.mMap.get(str);
            if (t2 != null) {
                return t2;
            }
            ArrayMap<String, MutableInt> arrayMap = this.mActiveOverflow;
            if (arrayMap != null && (mutableInt = arrayMap.get(str)) != null) {
                T tInstantiateObject = this.mCurOverflow;
                if (tInstantiateObject == null) {
                    Slog.wtf(BatteryStatsImpl.TAG, "Have active overflow " + str + " but null overflow");
                    tInstantiateObject = instantiateObject();
                    this.mCurOverflow = tInstantiateObject;
                    this.mMap.put(OVERFLOW_NAME, tInstantiateObject);
                }
                mutableInt.value++;
                return tInstantiateObject;
            }
            if (this.mMap.size() < BatteryStatsImpl.MAX_WAKELOCKS_PER_UID) {
                T tInstantiateObject2 = instantiateObject();
                this.mMap.put(str, tInstantiateObject2);
                return tInstantiateObject2;
            }
            T tInstantiateObject3 = this.mCurOverflow;
            if (tInstantiateObject3 == null) {
                tInstantiateObject3 = instantiateObject();
                this.mCurOverflow = tInstantiateObject3;
                this.mMap.put(OVERFLOW_NAME, tInstantiateObject3);
            }
            if (this.mActiveOverflow == null) {
                this.mActiveOverflow = new ArrayMap<>();
            }
            this.mActiveOverflow.put(str, new MutableInt(1));
            this.mLastOverflowTime = SystemClock.elapsedRealtime();
            return tInstantiateObject3;
        }

        public T stopObject(String str) {
            MutableInt mutableInt;
            T t2;
            if (str == null) {
                str = "";
            }
            T t3 = this.mMap.get(str);
            if (t3 != null) {
                return t3;
            }
            ArrayMap<String, MutableInt> arrayMap = this.mActiveOverflow;
            if (arrayMap != null && (mutableInt = arrayMap.get(str)) != null && (t2 = this.mCurOverflow) != null) {
                int i2 = mutableInt.value - 1;
                mutableInt.value = i2;
                if (i2 <= 0) {
                    this.mActiveOverflow.remove(str);
                    this.mLastOverflowFinishTime = SystemClock.elapsedRealtime();
                }
                return t2;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Unable to find object for ");
            sb.append(str);
            sb.append(" in uid ");
            sb.append(this.mUid);
            sb.append(" mapsize=");
            sb.append(this.mMap.size());
            sb.append(" activeoverflow=");
            sb.append(this.mActiveOverflow);
            sb.append(" curoverflow=");
            sb.append(this.mCurOverflow);
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (this.mLastOverflowTime != 0) {
                sb.append(" lastOverflowTime=");
                TimeUtils.formatDuration(this.mLastOverflowTime - jElapsedRealtime, sb);
            }
            if (this.mLastOverflowFinishTime != 0) {
                sb.append(" lastOverflowFinishTime=");
                TimeUtils.formatDuration(this.mLastOverflowFinishTime - jElapsedRealtime, sb);
            }
            if (this.mLastClearTime != 0) {
                sb.append(" lastClearTime=");
                TimeUtils.formatDuration(this.mLastClearTime - jElapsedRealtime, sb);
            }
            if (this.mLastCleanupTime != 0) {
                sb.append(" lastCleanupTime=");
                TimeUtils.formatDuration(this.mLastCleanupTime - jElapsedRealtime, sb);
            }
            Slog.wtf(BatteryStatsImpl.TAG, sb.toString());
            return null;
        }
    }

    public interface PlatformIdleStateCallback {
        void fillLowPowerStats(RpmStats rpmStats);

        String getPlatformLowPowerStats();

        String getSubsystemLowPowerStats();
    }

    public static class SystemClocks implements Clocks {
        @Override // com.android.internal.os.BatteryStatsImpl.Clocks
        public long elapsedRealtime() {
            return SystemClock.elapsedRealtime();
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Clocks
        public long uptimeMillis() {
            return SystemClock.uptimeMillis();
        }
    }

    public static class TimeBase {
        protected final ArrayList<TimeBaseObs> mObservers = new ArrayList<>();
        protected long mPastRealtime;
        protected long mPastUptime;
        protected long mRealtime;
        protected long mRealtimeStart;
        protected boolean mRunning;
        protected long mUnpluggedRealtime;
        protected long mUnpluggedUptime;
        protected long mUptime;
        protected long mUptimeStart;

        public void add(TimeBaseObs timeBaseObs) {
            this.mObservers.add(timeBaseObs);
        }

        public long computeRealtime(long j2, int i2) {
            if (i2 == 0) {
                return getRealtime(j2) + this.mRealtime;
            }
            if (i2 == 1) {
                return getRealtime(j2);
            }
            if (i2 != 2) {
                return 0L;
            }
            return getRealtime(j2) - this.mUnpluggedRealtime;
        }

        public long computeUptime(long j2, int i2) {
            if (i2 == 0) {
                return getUptime(j2) + this.mUptime;
            }
            if (i2 == 1) {
                return getUptime(j2);
            }
            if (i2 != 2) {
                return 0L;
            }
            return getUptime(j2) - this.mUnpluggedUptime;
        }

        public void dump(PrintWriter printWriter, String str) {
            StringBuilder sb = new StringBuilder(128);
            printWriter.print(str);
            printWriter.print("mRunning=");
            printWriter.println(this.mRunning);
            sb.setLength(0);
            sb.append(str);
            sb.append("mUptime=");
            BatteryStats.formatTimeMs(sb, this.mUptime / 1000);
            printWriter.println(sb.toString());
            sb.setLength(0);
            sb.append(str);
            sb.append("mRealtime=");
            BatteryStats.formatTimeMs(sb, this.mRealtime / 1000);
            printWriter.println(sb.toString());
            sb.setLength(0);
            sb.append(str);
            sb.append("mPastUptime=");
            BatteryStats.formatTimeMs(sb, this.mPastUptime / 1000);
            sb.append("mUptimeStart=");
            BatteryStats.formatTimeMs(sb, this.mUptimeStart / 1000);
            sb.append("mUnpluggedUptime=");
            BatteryStats.formatTimeMs(sb, this.mUnpluggedUptime / 1000);
            printWriter.println(sb.toString());
            sb.setLength(0);
            sb.append(str);
            sb.append("mPastRealtime=");
            BatteryStats.formatTimeMs(sb, this.mPastRealtime / 1000);
            sb.append("mRealtimeStart=");
            BatteryStats.formatTimeMs(sb, this.mRealtimeStart / 1000);
            sb.append("mUnpluggedRealtime=");
            BatteryStats.formatTimeMs(sb, this.mUnpluggedRealtime / 1000);
            printWriter.println(sb.toString());
        }

        public long getRealtime(long j2) {
            long j3 = this.mPastRealtime;
            return this.mRunning ? j3 + (j2 - this.mRealtimeStart) : j3;
        }

        public long getRealtimeStart() {
            return this.mRealtimeStart;
        }

        public long getUptime(long j2) {
            long j3 = this.mPastUptime;
            return this.mRunning ? j3 + (j2 - this.mUptimeStart) : j3;
        }

        public long getUptimeStart() {
            return this.mUptimeStart;
        }

        public boolean hasObserver(TimeBaseObs timeBaseObs) {
            return this.mObservers.contains(timeBaseObs);
        }

        public void init(long j2, long j3) {
            this.mRealtime = 0L;
            this.mUptime = 0L;
            this.mPastUptime = 0L;
            this.mPastRealtime = 0L;
            this.mUptimeStart = j2;
            this.mRealtimeStart = j3;
            this.mUnpluggedUptime = getUptime(j2);
            this.mUnpluggedRealtime = getRealtime(this.mRealtimeStart);
        }

        public boolean isRunning() {
            return this.mRunning;
        }

        public void readFromParcel(Parcel parcel) {
            this.mRunning = false;
            this.mUptime = parcel.readLong();
            this.mPastUptime = parcel.readLong();
            this.mUptimeStart = parcel.readLong();
            this.mRealtime = parcel.readLong();
            this.mPastRealtime = parcel.readLong();
            this.mRealtimeStart = parcel.readLong();
            this.mUnpluggedUptime = parcel.readLong();
            this.mUnpluggedRealtime = parcel.readLong();
        }

        public void readSummaryFromParcel(Parcel parcel) {
            this.mUptime = parcel.readLong();
            this.mRealtime = parcel.readLong();
        }

        public void remove(TimeBaseObs timeBaseObs) {
            if (this.mObservers.remove(timeBaseObs)) {
                return;
            }
            Slog.wtf(BatteryStatsImpl.TAG, "Removed unknown observer: " + timeBaseObs);
        }

        public void reset(long j2, long j3) {
            if (!this.mRunning) {
                this.mPastUptime = 0L;
                this.mPastRealtime = 0L;
            } else {
                this.mUptimeStart = j2;
                this.mRealtimeStart = j3;
                this.mUnpluggedUptime = getUptime(j2);
                this.mUnpluggedRealtime = getRealtime(j3);
            }
        }

        public boolean setRunning(boolean z2, long j2, long j3) {
            if (this.mRunning == z2) {
                return false;
            }
            this.mRunning = z2;
            if (z2) {
                this.mUptimeStart = j2;
                this.mRealtimeStart = j3;
                long uptime = getUptime(j2);
                this.mUnpluggedUptime = uptime;
                long realtime = getRealtime(j3);
                this.mUnpluggedRealtime = realtime;
                for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                    this.mObservers.get(size).onTimeStarted(j3, uptime, realtime);
                }
            } else {
                this.mPastUptime = (j2 - this.mUptimeStart) + this.mPastUptime;
                this.mPastRealtime = (j3 - this.mRealtimeStart) + this.mPastRealtime;
                long uptime2 = getUptime(j2);
                long realtime2 = getRealtime(j3);
                for (int size2 = this.mObservers.size() - 1; size2 >= 0; size2--) {
                    this.mObservers.get(size2).onTimeStopped(j3, uptime2, realtime2);
                }
            }
            return true;
        }

        public void writeSummaryToParcel(Parcel parcel, long j2, long j3) {
            parcel.writeLong(computeUptime(j2, 0));
            parcel.writeLong(computeRealtime(j3, 0));
        }

        public void writeToParcel(Parcel parcel, long j2, long j3) {
            long uptime = getUptime(j2);
            long realtime = getRealtime(j3);
            parcel.writeLong(this.mUptime);
            parcel.writeLong(uptime);
            parcel.writeLong(this.mUptimeStart);
            parcel.writeLong(this.mRealtime);
            parcel.writeLong(realtime);
            parcel.writeLong(this.mRealtimeStart);
            parcel.writeLong(this.mUnpluggedUptime);
            parcel.writeLong(this.mUnpluggedRealtime);
        }
    }

    public interface TimeBaseObs {
        void onTimeStarted(long j2, long j3, long j4);

        void onTimeStopped(long j2, long j3, long j4);
    }

    public static class Uid extends BatteryStats.Uid {
        static final int NO_BATCHED_SCAN_STARTED = -1;
        DualTimer mAggregatedPartialWakelockTimer;
        StopwatchTimer mAudioTurnedOnTimer;
        private ControllerActivityCounterImpl mBluetoothControllerActivity;
        Counter mBluetoothScanResultBgCounter;
        Counter mBluetoothScanResultCounter;
        DualTimer mBluetoothScanTimer;
        DualTimer mBluetoothUnoptimizedScanTimer;
        protected BatteryStatsImpl mBsi;
        StopwatchTimer mCameraTurnedOnTimer;
        LongSamplingCounter[][] mCpuClusterSpeedTimesUs;
        LongSamplingCounterArray mCpuFreqTimeMs;
        long mCurStepSystemTime;
        long mCurStepUserTime;
        StopwatchTimer mFlashlightTurnedOnTimer;
        StopwatchTimer mForegroundActivityTimer;
        StopwatchTimer mForegroundServiceTimer;
        boolean mFullWifiLockOut;
        StopwatchTimer mFullWifiLockTimer;
        final OverflowArrayMap<DualTimer> mJobStats;
        long mLastStepSystemTime;
        long mLastStepUserTime;
        LongSamplingCounter mMobileRadioActiveCount;
        LongSamplingCounter mMobileRadioActiveTime;
        private LongSamplingCounter mMobileRadioApWakeupCount;
        private ControllerActivityCounterImpl mModemControllerActivity;
        LongSamplingCounter[] mNetworkByteActivityCounters;
        LongSamplingCounter[] mNetworkPacketActivityCounters;
        public final TimeBase mOnBatteryBackgroundTimeBase;
        public final TimeBase mOnBatteryScreenOffBackgroundTimeBase;
        StopwatchTimer[] mProcessStateTimer;
        LongSamplingCounterArray mScreenOffCpuFreqTimeMs;
        final OverflowArrayMap<DualTimer> mSyncStats;
        LongSamplingCounter mSystemCpuTime;
        final int mUid;
        Counter[] mUserActivityCounters;
        LongSamplingCounter mUserCpuTime;
        BatchTimer mVibratorOnTimer;
        StopwatchTimer mVideoTurnedOnTimer;
        final OverflowArrayMap<Wakelock> mWakelockStats;
        StopwatchTimer[] mWifiBatchedScanTimer;
        private ControllerActivityCounterImpl mWifiControllerActivity;
        boolean mWifiMulticastEnabled;
        StopwatchTimer mWifiMulticastTimer;
        private LongSamplingCounter mWifiRadioApWakeupCount;
        boolean mWifiRunning;
        StopwatchTimer mWifiRunningTimer;
        boolean mWifiScanStarted;
        DualTimer mWifiScanTimer;
        int mWifiBatchedScanBinStarted = -1;
        int mProcessState = 18;
        boolean mInForegroundService = false;
        final ArrayMap<String, SparseIntArray> mJobCompletions = new ArrayMap<>();
        final SparseArray<Sensor> mSensorStats = new SparseArray<>();
        final ArrayMap<String, Proc> mProcessStats = new ArrayMap<>();
        final ArrayMap<String, Pkg> mPackageStats = new ArrayMap<>();
        final SparseArray<BatteryStats.Uid.Pid> mPids = new SparseArray<>();

        public static class Pkg extends BatteryStats.Uid.Pkg implements TimeBaseObs {
            protected BatteryStatsImpl mBsi;
            ArrayMap<String, Counter> mWakeupAlarms = new ArrayMap<>();
            final ArrayMap<String, Serv> mServiceStats = new ArrayMap<>();

            public static class Serv extends BatteryStats.Uid.Pkg.Serv implements TimeBaseObs {
                protected BatteryStatsImpl mBsi;
                protected int mLastLaunches;
                protected long mLastStartTime;
                protected int mLastStarts;
                protected boolean mLaunched;
                protected long mLaunchedSince;
                protected long mLaunchedTime;
                protected int mLaunches;
                protected int mLoadedLaunches;
                protected long mLoadedStartTime;
                protected int mLoadedStarts;
                protected Pkg mPkg;
                protected boolean mRunning;
                protected long mRunningSince;
                protected long mStartTime;
                protected int mStarts;
                protected int mUnpluggedLaunches;
                protected long mUnpluggedStartTime;
                protected int mUnpluggedStarts;

                public Serv(BatteryStatsImpl batteryStatsImpl) {
                    this.mBsi = batteryStatsImpl;
                    batteryStatsImpl.mOnBatteryTimeBase.add(this);
                }

                public void detach() {
                    this.mBsi.mOnBatteryTimeBase.remove(this);
                }

                public BatteryStatsImpl getBatteryStats() {
                    return this.mBsi;
                }

                public long getLaunchTimeToNowLocked(long j2) {
                    return !this.mLaunched ? this.mLaunchedTime : (this.mLaunchedTime + j2) - this.mLaunchedSince;
                }

                @Override // android.os.BatteryStats.Uid.Pkg.Serv
                public int getLaunches(int i2) {
                    int i3;
                    int i4 = this.mLaunches;
                    if (i2 == 1) {
                        i3 = this.mLoadedLaunches;
                    } else {
                        if (i2 != 2) {
                            return i4;
                        }
                        i3 = this.mUnpluggedLaunches;
                    }
                    return i4 - i3;
                }

                @Override // android.os.BatteryStats.Uid.Pkg.Serv
                public long getStartTime(long j2, int i2) {
                    long j3;
                    long startTimeToNowLocked = getStartTimeToNowLocked(j2);
                    if (i2 == 1) {
                        j3 = this.mLoadedStartTime;
                    } else {
                        if (i2 != 2) {
                            return startTimeToNowLocked;
                        }
                        j3 = this.mUnpluggedStartTime;
                    }
                    return startTimeToNowLocked - j3;
                }

                public long getStartTimeToNowLocked(long j2) {
                    return !this.mRunning ? this.mStartTime : (this.mStartTime + j2) - this.mRunningSince;
                }

                @Override // android.os.BatteryStats.Uid.Pkg.Serv
                public int getStarts(int i2) {
                    int i3;
                    int i4 = this.mStarts;
                    if (i2 == 1) {
                        i3 = this.mLoadedStarts;
                    } else {
                        if (i2 != 2) {
                            return i4;
                        }
                        i3 = this.mUnpluggedStarts;
                    }
                    return i4 - i3;
                }

                @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
                public void onTimeStarted(long j2, long j3, long j4) {
                    this.mUnpluggedStartTime = getStartTimeToNowLocked(j3);
                    this.mUnpluggedStarts = this.mStarts;
                    this.mUnpluggedLaunches = this.mLaunches;
                }

                @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
                public void onTimeStopped(long j2, long j3, long j4) {
                }

                public void readFromParcelLocked(Parcel parcel) {
                    this.mStartTime = parcel.readLong();
                    this.mRunningSince = parcel.readLong();
                    this.mRunning = parcel.readInt() != 0;
                    this.mStarts = parcel.readInt();
                    this.mLaunchedTime = parcel.readLong();
                    this.mLaunchedSince = parcel.readLong();
                    this.mLaunched = parcel.readInt() != 0;
                    this.mLaunches = parcel.readInt();
                    this.mLoadedStartTime = parcel.readLong();
                    this.mLoadedStarts = parcel.readInt();
                    this.mLoadedLaunches = parcel.readInt();
                    this.mLastStartTime = 0L;
                    this.mLastStarts = 0;
                    this.mLastLaunches = 0;
                    this.mUnpluggedStartTime = parcel.readLong();
                    this.mUnpluggedStarts = parcel.readInt();
                    this.mUnpluggedLaunches = parcel.readInt();
                }

                public void startLaunchedLocked() {
                    if (this.mLaunched) {
                        return;
                    }
                    this.mLaunches++;
                    this.mLaunchedSince = this.mBsi.getBatteryUptimeLocked();
                    this.mLaunched = true;
                }

                public void startRunningLocked() {
                    if (this.mRunning) {
                        return;
                    }
                    this.mStarts++;
                    this.mRunningSince = this.mBsi.getBatteryUptimeLocked();
                    this.mRunning = true;
                }

                public void stopLaunchedLocked() {
                    if (this.mLaunched) {
                        long batteryUptimeLocked = this.mBsi.getBatteryUptimeLocked() - this.mLaunchedSince;
                        if (batteryUptimeLocked > 0) {
                            this.mLaunchedTime += batteryUptimeLocked;
                        } else {
                            this.mLaunches--;
                        }
                        this.mLaunched = false;
                    }
                }

                public void stopRunningLocked() {
                    if (this.mRunning) {
                        long batteryUptimeLocked = this.mBsi.getBatteryUptimeLocked() - this.mRunningSince;
                        if (batteryUptimeLocked > 0) {
                            this.mStartTime += batteryUptimeLocked;
                        } else {
                            this.mStarts--;
                        }
                        this.mRunning = false;
                    }
                }

                public void writeToParcelLocked(Parcel parcel) {
                    parcel.writeLong(this.mStartTime);
                    parcel.writeLong(this.mRunningSince);
                    parcel.writeInt(this.mRunning ? 1 : 0);
                    parcel.writeInt(this.mStarts);
                    parcel.writeLong(this.mLaunchedTime);
                    parcel.writeLong(this.mLaunchedSince);
                    parcel.writeInt(this.mLaunched ? 1 : 0);
                    parcel.writeInt(this.mLaunches);
                    parcel.writeLong(this.mLoadedStartTime);
                    parcel.writeInt(this.mLoadedStarts);
                    parcel.writeInt(this.mLoadedLaunches);
                    parcel.writeLong(this.mUnpluggedStartTime);
                    parcel.writeInt(this.mUnpluggedStarts);
                    parcel.writeInt(this.mUnpluggedLaunches);
                }
            }

            public Pkg(BatteryStatsImpl batteryStatsImpl) {
                this.mBsi = batteryStatsImpl;
                batteryStatsImpl.mOnBatteryScreenOffTimeBase.add(this);
            }

            public void detach() {
                this.mBsi.mOnBatteryScreenOffTimeBase.remove(this);
            }

            @Override // android.os.BatteryStats.Uid.Pkg
            public ArrayMap<String, ? extends BatteryStats.Uid.Pkg.Serv> getServiceStats() {
                return this.mServiceStats;
            }

            @Override // android.os.BatteryStats.Uid.Pkg
            public ArrayMap<String, ? extends BatteryStats.Counter> getWakeupAlarmStats() {
                return this.mWakeupAlarms;
            }

            public final Serv newServiceStatsLocked() {
                return new Serv(this.mBsi);
            }

            public void noteWakeupAlarmLocked(String str) {
                Counter counter = this.mWakeupAlarms.get(str);
                if (counter == null) {
                    counter = new Counter(this.mBsi.mOnBatteryScreenOffTimeBase);
                    this.mWakeupAlarms.put(str, counter);
                }
                counter.stepAtomic();
            }

            @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
            public void onTimeStarted(long j2, long j3, long j4) {
            }

            @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
            public void onTimeStopped(long j2, long j3, long j4) {
            }

            public void readFromParcelLocked(Parcel parcel) {
                int i2 = parcel.readInt();
                this.mWakeupAlarms.clear();
                for (int i3 = 0; i3 < i2; i3++) {
                    this.mWakeupAlarms.put(parcel.readString(), new Counter(this.mBsi.mOnBatteryScreenOffTimeBase, parcel));
                }
                int i4 = parcel.readInt();
                this.mServiceStats.clear();
                for (int i5 = 0; i5 < i4; i5++) {
                    String string = parcel.readString();
                    Serv serv = new Serv(this.mBsi);
                    this.mServiceStats.put(string, serv);
                    serv.readFromParcelLocked(parcel);
                }
            }

            public void writeToParcelLocked(Parcel parcel) {
                int size = this.mWakeupAlarms.size();
                parcel.writeInt(size);
                for (int i2 = 0; i2 < size; i2++) {
                    parcel.writeString(this.mWakeupAlarms.keyAt(i2));
                    this.mWakeupAlarms.valueAt(i2).writeToParcel(parcel);
                }
                int size2 = this.mServiceStats.size();
                parcel.writeInt(size2);
                for (int i3 = 0; i3 < size2; i3++) {
                    parcel.writeString(this.mServiceStats.keyAt(i3));
                    this.mServiceStats.valueAt(i3).writeToParcelLocked(parcel);
                }
            }
        }

        public static class Proc extends BatteryStats.Uid.Proc implements TimeBaseObs {
            boolean mActive = true;
            protected BatteryStatsImpl mBsi;
            ArrayList<BatteryStats.Uid.Proc.ExcessivePower> mExcessivePower;
            long mForegroundTime;
            long mLoadedForegroundTime;
            int mLoadedNumAnrs;
            int mLoadedNumCrashes;
            int mLoadedStarts;
            long mLoadedSystemTime;
            long mLoadedUserTime;
            final String mName;
            int mNumAnrs;
            int mNumCrashes;
            int mStarts;
            long mSystemTime;
            long mUnpluggedForegroundTime;
            int mUnpluggedNumAnrs;
            int mUnpluggedNumCrashes;
            int mUnpluggedStarts;
            long mUnpluggedSystemTime;
            long mUnpluggedUserTime;
            long mUserTime;

            public Proc(BatteryStatsImpl batteryStatsImpl, String str) {
                this.mBsi = batteryStatsImpl;
                this.mName = str;
                batteryStatsImpl.mOnBatteryTimeBase.add(this);
            }

            public void addCpuTimeLocked(int i2, int i3) {
                this.mUserTime += (long) i2;
                this.mSystemTime += (long) i3;
            }

            public void addExcessiveCpu(long j2, long j3) {
                if (this.mExcessivePower == null) {
                    this.mExcessivePower = new ArrayList<>();
                }
                BatteryStats.Uid.Proc.ExcessivePower excessivePower = new BatteryStats.Uid.Proc.ExcessivePower();
                excessivePower.type = 2;
                excessivePower.overTime = j2;
                excessivePower.usedTime = j3;
                this.mExcessivePower.add(excessivePower);
            }

            public void addForegroundTimeLocked(long j2) {
                this.mForegroundTime += j2;
            }

            @Override // android.os.BatteryStats.Uid.Proc
            public int countExcessivePowers() {
                ArrayList<BatteryStats.Uid.Proc.ExcessivePower> arrayList = this.mExcessivePower;
                if (arrayList != null) {
                    return arrayList.size();
                }
                return 0;
            }

            public void detach() {
                this.mActive = false;
                this.mBsi.mOnBatteryTimeBase.remove(this);
            }

            @Override // android.os.BatteryStats.Uid.Proc
            public BatteryStats.Uid.Proc.ExcessivePower getExcessivePower(int i2) {
                ArrayList<BatteryStats.Uid.Proc.ExcessivePower> arrayList = this.mExcessivePower;
                if (arrayList != null) {
                    return arrayList.get(i2);
                }
                return null;
            }

            @Override // android.os.BatteryStats.Uid.Proc
            public long getForegroundTime(int i2) {
                long j2;
                long j3 = this.mForegroundTime;
                if (i2 == 1) {
                    j2 = this.mLoadedForegroundTime;
                } else {
                    if (i2 != 2) {
                        return j3;
                    }
                    j2 = this.mUnpluggedForegroundTime;
                }
                return j3 - j2;
            }

            @Override // android.os.BatteryStats.Uid.Proc
            public int getNumAnrs(int i2) {
                int i3;
                int i4 = this.mNumAnrs;
                if (i2 == 1) {
                    i3 = this.mLoadedNumAnrs;
                } else {
                    if (i2 != 2) {
                        return i4;
                    }
                    i3 = this.mUnpluggedNumAnrs;
                }
                return i4 - i3;
            }

            @Override // android.os.BatteryStats.Uid.Proc
            public int getNumCrashes(int i2) {
                int i3;
                int i4 = this.mNumCrashes;
                if (i2 == 1) {
                    i3 = this.mLoadedNumCrashes;
                } else {
                    if (i2 != 2) {
                        return i4;
                    }
                    i3 = this.mUnpluggedNumCrashes;
                }
                return i4 - i3;
            }

            @Override // android.os.BatteryStats.Uid.Proc
            public int getStarts(int i2) {
                int i3;
                int i4 = this.mStarts;
                if (i2 == 1) {
                    i3 = this.mLoadedStarts;
                } else {
                    if (i2 != 2) {
                        return i4;
                    }
                    i3 = this.mUnpluggedStarts;
                }
                return i4 - i3;
            }

            @Override // android.os.BatteryStats.Uid.Proc
            public long getSystemTime(int i2) {
                long j2;
                long j3 = this.mSystemTime;
                if (i2 == 1) {
                    j2 = this.mLoadedSystemTime;
                } else {
                    if (i2 != 2) {
                        return j3;
                    }
                    j2 = this.mUnpluggedSystemTime;
                }
                return j3 - j2;
            }

            @Override // android.os.BatteryStats.Uid.Proc
            public long getUserTime(int i2) {
                long j2;
                long j3 = this.mUserTime;
                if (i2 == 1) {
                    j2 = this.mLoadedUserTime;
                } else {
                    if (i2 != 2) {
                        return j3;
                    }
                    j2 = this.mUnpluggedUserTime;
                }
                return j3 - j2;
            }

            public void incNumAnrsLocked() {
                this.mNumAnrs++;
            }

            public void incNumCrashesLocked() {
                this.mNumCrashes++;
            }

            public void incStartsLocked() {
                this.mStarts++;
            }

            @Override // android.os.BatteryStats.Uid.Proc
            public boolean isActive() {
                return this.mActive;
            }

            @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
            public void onTimeStarted(long j2, long j3, long j4) {
                this.mUnpluggedUserTime = this.mUserTime;
                this.mUnpluggedSystemTime = this.mSystemTime;
                this.mUnpluggedForegroundTime = this.mForegroundTime;
                this.mUnpluggedStarts = this.mStarts;
                this.mUnpluggedNumCrashes = this.mNumCrashes;
                this.mUnpluggedNumAnrs = this.mNumAnrs;
            }

            @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
            public void onTimeStopped(long j2, long j3, long j4) {
            }

            public void readExcessivePowerFromParcelLocked(Parcel parcel) {
                int i2 = parcel.readInt();
                if (i2 == 0) {
                    this.mExcessivePower = null;
                    return;
                }
                if (i2 > 10000) {
                    throw new ParcelFormatException(c.d("File corrupt: too many excessive power entries ", i2));
                }
                this.mExcessivePower = new ArrayList<>();
                for (int i3 = 0; i3 < i2; i3++) {
                    BatteryStats.Uid.Proc.ExcessivePower excessivePower = new BatteryStats.Uid.Proc.ExcessivePower();
                    excessivePower.type = parcel.readInt();
                    excessivePower.overTime = parcel.readLong();
                    excessivePower.usedTime = parcel.readLong();
                    this.mExcessivePower.add(excessivePower);
                }
            }

            public void readFromParcelLocked(Parcel parcel) {
                this.mUserTime = parcel.readLong();
                this.mSystemTime = parcel.readLong();
                this.mForegroundTime = parcel.readLong();
                this.mStarts = parcel.readInt();
                this.mNumCrashes = parcel.readInt();
                this.mNumAnrs = parcel.readInt();
                this.mLoadedUserTime = parcel.readLong();
                this.mLoadedSystemTime = parcel.readLong();
                this.mLoadedForegroundTime = parcel.readLong();
                this.mLoadedStarts = parcel.readInt();
                this.mLoadedNumCrashes = parcel.readInt();
                this.mLoadedNumAnrs = parcel.readInt();
                this.mUnpluggedUserTime = parcel.readLong();
                this.mUnpluggedSystemTime = parcel.readLong();
                this.mUnpluggedForegroundTime = parcel.readLong();
                this.mUnpluggedStarts = parcel.readInt();
                this.mUnpluggedNumCrashes = parcel.readInt();
                this.mUnpluggedNumAnrs = parcel.readInt();
                readExcessivePowerFromParcelLocked(parcel);
            }

            public void writeExcessivePowerToParcelLocked(Parcel parcel) {
                ArrayList<BatteryStats.Uid.Proc.ExcessivePower> arrayList = this.mExcessivePower;
                if (arrayList == null) {
                    parcel.writeInt(0);
                    return;
                }
                int size = arrayList.size();
                parcel.writeInt(size);
                for (int i2 = 0; i2 < size; i2++) {
                    BatteryStats.Uid.Proc.ExcessivePower excessivePower = this.mExcessivePower.get(i2);
                    parcel.writeInt(excessivePower.type);
                    parcel.writeLong(excessivePower.overTime);
                    parcel.writeLong(excessivePower.usedTime);
                }
            }

            public void writeToParcelLocked(Parcel parcel) {
                parcel.writeLong(this.mUserTime);
                parcel.writeLong(this.mSystemTime);
                parcel.writeLong(this.mForegroundTime);
                parcel.writeInt(this.mStarts);
                parcel.writeInt(this.mNumCrashes);
                parcel.writeInt(this.mNumAnrs);
                parcel.writeLong(this.mLoadedUserTime);
                parcel.writeLong(this.mLoadedSystemTime);
                parcel.writeLong(this.mLoadedForegroundTime);
                parcel.writeInt(this.mLoadedStarts);
                parcel.writeInt(this.mLoadedNumCrashes);
                parcel.writeInt(this.mLoadedNumAnrs);
                parcel.writeLong(this.mUnpluggedUserTime);
                parcel.writeLong(this.mUnpluggedSystemTime);
                parcel.writeLong(this.mUnpluggedForegroundTime);
                parcel.writeInt(this.mUnpluggedStarts);
                parcel.writeInt(this.mUnpluggedNumCrashes);
                parcel.writeInt(this.mUnpluggedNumAnrs);
                writeExcessivePowerToParcelLocked(parcel);
            }
        }

        public static class Sensor extends BatteryStats.Uid.Sensor {
            protected BatteryStatsImpl mBsi;
            final int mHandle;
            DualTimer mTimer;
            protected Uid mUid;

            public Sensor(BatteryStatsImpl batteryStatsImpl, Uid uid, int i2) {
                this.mBsi = batteryStatsImpl;
                this.mUid = uid;
                this.mHandle = i2;
            }

            private DualTimer readTimersFromParcel(TimeBase timeBase, TimeBase timeBase2, Parcel parcel) {
                if (parcel.readInt() == 0) {
                    return null;
                }
                ArrayList<StopwatchTimer> arrayList = this.mBsi.mSensorTimers.get(this.mHandle);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.mBsi.mSensorTimers.put(this.mHandle, arrayList);
                }
                return new DualTimer(this.mBsi.mClocks, this.mUid, 0, arrayList, timeBase, timeBase2, parcel);
            }

            @Override // android.os.BatteryStats.Uid.Sensor
            public int getHandle() {
                return this.mHandle;
            }

            public void readFromParcelLocked(TimeBase timeBase, TimeBase timeBase2, Parcel parcel) {
                this.mTimer = readTimersFromParcel(timeBase, timeBase2, parcel);
            }

            public boolean reset() {
                if (!this.mTimer.reset(true)) {
                    return false;
                }
                this.mTimer = null;
                return true;
            }

            public void writeToParcelLocked(Parcel parcel, long j2) {
                Timer.writeTimerToParcel(parcel, this.mTimer, j2);
            }

            @Override // android.os.BatteryStats.Uid.Sensor
            public Timer getSensorBackgroundTime() {
                DualTimer dualTimer = this.mTimer;
                if (dualTimer == null) {
                    return null;
                }
                return dualTimer.getSubTimer();
            }

            @Override // android.os.BatteryStats.Uid.Sensor
            public Timer getSensorTime() {
                return this.mTimer;
            }
        }

        public static class Wakelock extends BatteryStats.Uid.Wakelock {
            protected BatteryStatsImpl mBsi;
            StopwatchTimer mTimerDraw;
            StopwatchTimer mTimerFull;
            DualTimer mTimerPartial;
            StopwatchTimer mTimerWindow;
            protected Uid mUid;

            public Wakelock(BatteryStatsImpl batteryStatsImpl, Uid uid) {
                this.mBsi = batteryStatsImpl;
                this.mUid = uid;
            }

            private DualTimer readDualTimerFromParcel(int i2, ArrayList<StopwatchTimer> arrayList, TimeBase timeBase, TimeBase timeBase2, Parcel parcel) {
                if (parcel.readInt() == 0) {
                    return null;
                }
                return new DualTimer(this.mBsi.mClocks, this.mUid, i2, arrayList, timeBase, timeBase2, parcel);
            }

            private StopwatchTimer readStopwatchTimerFromParcel(int i2, ArrayList<StopwatchTimer> arrayList, TimeBase timeBase, Parcel parcel) {
                if (parcel.readInt() == 0) {
                    return null;
                }
                return new StopwatchTimer(this.mBsi.mClocks, this.mUid, i2, arrayList, timeBase, parcel);
            }

            public void readFromParcelLocked(TimeBase timeBase, TimeBase timeBase2, TimeBase timeBase3, Parcel parcel) {
                this.mTimerPartial = readDualTimerFromParcel(0, this.mBsi.mPartialTimers, timeBase2, timeBase3, parcel);
                this.mTimerFull = readStopwatchTimerFromParcel(1, this.mBsi.mFullTimers, timeBase, parcel);
                this.mTimerWindow = readStopwatchTimerFromParcel(2, this.mBsi.mWindowTimers, timeBase, parcel);
                this.mTimerDraw = readStopwatchTimerFromParcel(18, this.mBsi.mDrawTimers, timeBase, parcel);
            }

            public boolean reset() {
                StopwatchTimer stopwatchTimer = this.mTimerFull;
                boolean z2 = stopwatchTimer != null ? (!stopwatchTimer.reset(false)) | false : false;
                DualTimer dualTimer = this.mTimerPartial;
                if (dualTimer != null) {
                    z2 |= !dualTimer.reset(false);
                }
                StopwatchTimer stopwatchTimer2 = this.mTimerWindow;
                if (stopwatchTimer2 != null) {
                    z2 |= !stopwatchTimer2.reset(false);
                }
                StopwatchTimer stopwatchTimer3 = this.mTimerDraw;
                if (stopwatchTimer3 != null) {
                    z2 |= !stopwatchTimer3.reset(false);
                }
                if (!z2) {
                    StopwatchTimer stopwatchTimer4 = this.mTimerFull;
                    if (stopwatchTimer4 != null) {
                        stopwatchTimer4.detach();
                        this.mTimerFull = null;
                    }
                    DualTimer dualTimer2 = this.mTimerPartial;
                    if (dualTimer2 != null) {
                        dualTimer2.detach();
                        this.mTimerPartial = null;
                    }
                    StopwatchTimer stopwatchTimer5 = this.mTimerWindow;
                    if (stopwatchTimer5 != null) {
                        stopwatchTimer5.detach();
                        this.mTimerWindow = null;
                    }
                    StopwatchTimer stopwatchTimer6 = this.mTimerDraw;
                    if (stopwatchTimer6 != null) {
                        stopwatchTimer6.detach();
                        this.mTimerDraw = null;
                    }
                }
                return !z2;
            }

            public void writeToParcelLocked(Parcel parcel, long j2) {
                Timer.writeTimerToParcel(parcel, this.mTimerPartial, j2);
                Timer.writeTimerToParcel(parcel, this.mTimerFull, j2);
                Timer.writeTimerToParcel(parcel, this.mTimerWindow, j2);
                Timer.writeTimerToParcel(parcel, this.mTimerDraw, j2);
            }

            @Override // android.os.BatteryStats.Uid.Wakelock
            public Timer getWakeTime(int i2) {
                if (i2 == 0) {
                    return this.mTimerPartial;
                }
                if (i2 == 1) {
                    return this.mTimerFull;
                }
                if (i2 == 2) {
                    return this.mTimerWindow;
                }
                if (i2 == 18) {
                    return this.mTimerDraw;
                }
                throw new IllegalArgumentException(c.d("type = ", i2));
            }
        }

        public Uid(BatteryStatsImpl batteryStatsImpl, int i2) {
            this.mBsi = batteryStatsImpl;
            this.mUid = i2;
            TimeBase timeBase = new TimeBase();
            this.mOnBatteryBackgroundTimeBase = timeBase;
            timeBase.init(this.mBsi.mClocks.uptimeMillis() * 1000, this.mBsi.mClocks.elapsedRealtime() * 1000);
            TimeBase timeBase2 = new TimeBase();
            this.mOnBatteryScreenOffBackgroundTimeBase = timeBase2;
            timeBase2.init(this.mBsi.mClocks.uptimeMillis() * 1000, this.mBsi.mClocks.elapsedRealtime() * 1000);
            this.mUserCpuTime = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase);
            this.mSystemCpuTime = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase);
            BatteryStatsImpl batteryStatsImpl2 = this.mBsi;
            batteryStatsImpl2.getClass();
            this.mWakelockStats = new OverflowArrayMap<Wakelock>(batteryStatsImpl2, i2) { // from class: com.android.internal.os.BatteryStatsImpl.Uid.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(i2);
                    batteryStatsImpl2.getClass();
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.internal.os.BatteryStatsImpl.OverflowArrayMap
                public Wakelock instantiateObject() {
                    Uid uid = Uid.this;
                    return new Wakelock(uid.mBsi, uid);
                }
            };
            BatteryStatsImpl batteryStatsImpl3 = this.mBsi;
            batteryStatsImpl3.getClass();
            this.mSyncStats = new OverflowArrayMap<DualTimer>(batteryStatsImpl3, i2) { // from class: com.android.internal.os.BatteryStatsImpl.Uid.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(i2);
                    batteryStatsImpl3.getClass();
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.internal.os.BatteryStatsImpl.OverflowArrayMap
                public DualTimer instantiateObject() {
                    Uid uid = Uid.this;
                    BatteryStatsImpl batteryStatsImpl4 = uid.mBsi;
                    return new DualTimer(batteryStatsImpl4.mClocks, uid, 13, null, batteryStatsImpl4.mOnBatteryTimeBase, uid.mOnBatteryBackgroundTimeBase);
                }
            };
            BatteryStatsImpl batteryStatsImpl4 = this.mBsi;
            batteryStatsImpl4.getClass();
            this.mJobStats = new OverflowArrayMap<DualTimer>(batteryStatsImpl4, i2) { // from class: com.android.internal.os.BatteryStatsImpl.Uid.3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(i2);
                    batteryStatsImpl4.getClass();
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.internal.os.BatteryStatsImpl.OverflowArrayMap
                public DualTimer instantiateObject() {
                    Uid uid = Uid.this;
                    BatteryStatsImpl batteryStatsImpl5 = uid.mBsi;
                    return new DualTimer(batteryStatsImpl5.mClocks, uid, 14, null, batteryStatsImpl5.mOnBatteryTimeBase, uid.mOnBatteryBackgroundTimeBase);
                }
            };
            BatteryStatsImpl batteryStatsImpl5 = this.mBsi;
            this.mWifiRunningTimer = new StopwatchTimer(batteryStatsImpl5.mClocks, this, 4, batteryStatsImpl5.mWifiRunningTimers, batteryStatsImpl5.mOnBatteryTimeBase);
            BatteryStatsImpl batteryStatsImpl6 = this.mBsi;
            this.mFullWifiLockTimer = new StopwatchTimer(batteryStatsImpl6.mClocks, this, 5, batteryStatsImpl6.mFullWifiLockTimers, batteryStatsImpl6.mOnBatteryTimeBase);
            BatteryStatsImpl batteryStatsImpl7 = this.mBsi;
            this.mWifiScanTimer = new DualTimer(batteryStatsImpl7.mClocks, this, 6, batteryStatsImpl7.mWifiScanTimers, batteryStatsImpl7.mOnBatteryTimeBase, timeBase);
            this.mWifiBatchedScanTimer = new StopwatchTimer[5];
            BatteryStatsImpl batteryStatsImpl8 = this.mBsi;
            this.mWifiMulticastTimer = new StopwatchTimer(batteryStatsImpl8.mClocks, this, 7, batteryStatsImpl8.mWifiMulticastTimers, batteryStatsImpl8.mOnBatteryTimeBase);
            this.mProcessStateTimer = new StopwatchTimer[6];
        }

        public DualTimer createAggregatedPartialWakelockTimerLocked() {
            if (this.mAggregatedPartialWakelockTimer == null) {
                BatteryStatsImpl batteryStatsImpl = this.mBsi;
                this.mAggregatedPartialWakelockTimer = new DualTimer(batteryStatsImpl.mClocks, this, 20, null, batteryStatsImpl.mOnBatteryScreenOffTimeBase, this.mOnBatteryScreenOffBackgroundTimeBase);
            }
            return this.mAggregatedPartialWakelockTimer;
        }

        public StopwatchTimer createAudioTurnedOnTimerLocked() {
            if (this.mAudioTurnedOnTimer == null) {
                BatteryStatsImpl batteryStatsImpl = this.mBsi;
                this.mAudioTurnedOnTimer = new StopwatchTimer(batteryStatsImpl.mClocks, this, 15, batteryStatsImpl.mAudioTurnedOnTimers, batteryStatsImpl.mOnBatteryTimeBase);
            }
            return this.mAudioTurnedOnTimer;
        }

        public Counter createBluetoothScanResultBgCounterLocked() {
            if (this.mBluetoothScanResultBgCounter == null) {
                this.mBluetoothScanResultBgCounter = new Counter(this.mOnBatteryBackgroundTimeBase);
            }
            return this.mBluetoothScanResultBgCounter;
        }

        public Counter createBluetoothScanResultCounterLocked() {
            if (this.mBluetoothScanResultCounter == null) {
                this.mBluetoothScanResultCounter = new Counter(this.mBsi.mOnBatteryTimeBase);
            }
            return this.mBluetoothScanResultCounter;
        }

        public DualTimer createBluetoothScanTimerLocked() {
            if (this.mBluetoothScanTimer == null) {
                BatteryStatsImpl batteryStatsImpl = this.mBsi;
                this.mBluetoothScanTimer = new DualTimer(batteryStatsImpl.mClocks, this, 19, batteryStatsImpl.mBluetoothScanOnTimers, batteryStatsImpl.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase);
            }
            return this.mBluetoothScanTimer;
        }

        public DualTimer createBluetoothUnoptimizedScanTimerLocked() {
            if (this.mBluetoothUnoptimizedScanTimer == null) {
                BatteryStatsImpl batteryStatsImpl = this.mBsi;
                this.mBluetoothUnoptimizedScanTimer = new DualTimer(batteryStatsImpl.mClocks, this, 21, null, batteryStatsImpl.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase);
            }
            return this.mBluetoothUnoptimizedScanTimer;
        }

        public StopwatchTimer createCameraTurnedOnTimerLocked() {
            if (this.mCameraTurnedOnTimer == null) {
                BatteryStatsImpl batteryStatsImpl = this.mBsi;
                this.mCameraTurnedOnTimer = new StopwatchTimer(batteryStatsImpl.mClocks, this, 17, batteryStatsImpl.mCameraTurnedOnTimers, batteryStatsImpl.mOnBatteryTimeBase);
            }
            return this.mCameraTurnedOnTimer;
        }

        public StopwatchTimer createFlashlightTurnedOnTimerLocked() {
            if (this.mFlashlightTurnedOnTimer == null) {
                BatteryStatsImpl batteryStatsImpl = this.mBsi;
                this.mFlashlightTurnedOnTimer = new StopwatchTimer(batteryStatsImpl.mClocks, this, 16, batteryStatsImpl.mFlashlightTurnedOnTimers, batteryStatsImpl.mOnBatteryTimeBase);
            }
            return this.mFlashlightTurnedOnTimer;
        }

        public StopwatchTimer createForegroundActivityTimerLocked() {
            if (this.mForegroundActivityTimer == null) {
                BatteryStatsImpl batteryStatsImpl = this.mBsi;
                this.mForegroundActivityTimer = new StopwatchTimer(batteryStatsImpl.mClocks, this, 10, null, batteryStatsImpl.mOnBatteryTimeBase);
            }
            return this.mForegroundActivityTimer;
        }

        public StopwatchTimer createForegroundServiceTimerLocked() {
            if (this.mForegroundServiceTimer == null) {
                BatteryStatsImpl batteryStatsImpl = this.mBsi;
                this.mForegroundServiceTimer = new StopwatchTimer(batteryStatsImpl.mClocks, this, 22, null, batteryStatsImpl.mOnBatteryTimeBase);
            }
            return this.mForegroundServiceTimer;
        }

        public BatchTimer createVibratorOnTimerLocked() {
            if (this.mVibratorOnTimer == null) {
                BatteryStatsImpl batteryStatsImpl = this.mBsi;
                this.mVibratorOnTimer = new BatchTimer(batteryStatsImpl.mClocks, this, 9, batteryStatsImpl.mOnBatteryTimeBase);
            }
            return this.mVibratorOnTimer;
        }

        public StopwatchTimer createVideoTurnedOnTimerLocked() {
            if (this.mVideoTurnedOnTimer == null) {
                BatteryStatsImpl batteryStatsImpl = this.mBsi;
                this.mVideoTurnedOnTimer = new StopwatchTimer(batteryStatsImpl.mClocks, this, 8, batteryStatsImpl.mVideoTurnedOnTimers, batteryStatsImpl.mOnBatteryTimeBase);
            }
            return this.mVideoTurnedOnTimer;
        }

        public BatteryStatsImpl getBatteryStats() {
            return this.mBsi;
        }

        @Override // android.os.BatteryStats.Uid
        public BatteryStats.ControllerActivityCounter getBluetoothControllerActivity() {
            return this.mBluetoothControllerActivity;
        }

        @Override // android.os.BatteryStats.Uid
        public long[] getCpuFreqTimes(int i2) {
            long[] countsLocked;
            LongSamplingCounterArray longSamplingCounterArray = this.mCpuFreqTimeMs;
            if (longSamplingCounterArray == null || (countsLocked = longSamplingCounterArray.getCountsLocked(i2)) == null) {
                return null;
            }
            for (long j2 : countsLocked) {
                if (j2 != 0) {
                    return countsLocked;
                }
            }
            return null;
        }

        @Override // android.os.BatteryStats.Uid
        public long getFullWifiLockTime(long j2, int i2) {
            StopwatchTimer stopwatchTimer = this.mFullWifiLockTimer;
            if (stopwatchTimer == null) {
                return 0L;
            }
            return stopwatchTimer.getTotalTimeLocked(j2, i2);
        }

        @Override // android.os.BatteryStats.Uid
        public ArrayMap<String, SparseIntArray> getJobCompletionStats() {
            return this.mJobCompletions;
        }

        @Override // android.os.BatteryStats.Uid
        public ArrayMap<String, ? extends BatteryStats.Timer> getJobStats() {
            return this.mJobStats.getMap();
        }

        @Override // android.os.BatteryStats.Uid
        public int getMobileRadioActiveCount(int i2) {
            LongSamplingCounter longSamplingCounter = this.mMobileRadioActiveCount;
            if (longSamplingCounter != null) {
                return (int) longSamplingCounter.getCountLocked(i2);
            }
            return 0;
        }

        @Override // android.os.BatteryStats.Uid
        public long getMobileRadioActiveTime(int i2) {
            LongSamplingCounter longSamplingCounter = this.mMobileRadioActiveTime;
            if (longSamplingCounter != null) {
                return longSamplingCounter.getCountLocked(i2);
            }
            return 0L;
        }

        @Override // android.os.BatteryStats.Uid
        public long getMobileRadioApWakeupCount(int i2) {
            LongSamplingCounter longSamplingCounter = this.mMobileRadioApWakeupCount;
            if (longSamplingCounter != null) {
                return longSamplingCounter.getCountLocked(i2);
            }
            return 0L;
        }

        @Override // android.os.BatteryStats.Uid
        public BatteryStats.ControllerActivityCounter getModemControllerActivity() {
            return this.mModemControllerActivity;
        }

        @Override // android.os.BatteryStats.Uid
        public long getNetworkActivityBytes(int i2, int i3) {
            LongSamplingCounter[] longSamplingCounterArr = this.mNetworkByteActivityCounters;
            if (longSamplingCounterArr == null || i2 < 0 || i2 >= longSamplingCounterArr.length) {
                return 0L;
            }
            return longSamplingCounterArr[i2].getCountLocked(i3);
        }

        @Override // android.os.BatteryStats.Uid
        public long getNetworkActivityPackets(int i2, int i3) {
            LongSamplingCounter[] longSamplingCounterArr = this.mNetworkPacketActivityCounters;
            if (longSamplingCounterArr == null || i2 < 0 || i2 >= longSamplingCounterArr.length) {
                return 0L;
            }
            return longSamplingCounterArr[i2].getCountLocked(i3);
        }

        public ControllerActivityCounterImpl getOrCreateBluetoothControllerActivityLocked() {
            if (this.mBluetoothControllerActivity == null) {
                this.mBluetoothControllerActivity = new ControllerActivityCounterImpl(this.mBsi.mOnBatteryTimeBase, 1);
            }
            return this.mBluetoothControllerActivity;
        }

        public ControllerActivityCounterImpl getOrCreateModemControllerActivityLocked() {
            if (this.mModemControllerActivity == null) {
                this.mModemControllerActivity = new ControllerActivityCounterImpl(this.mBsi.mOnBatteryTimeBase, 5);
            }
            return this.mModemControllerActivity;
        }

        public ControllerActivityCounterImpl getOrCreateWifiControllerActivityLocked() {
            if (this.mWifiControllerActivity == null) {
                this.mWifiControllerActivity = new ControllerActivityCounterImpl(this.mBsi.mOnBatteryTimeBase, 1);
            }
            return this.mWifiControllerActivity;
        }

        @Override // android.os.BatteryStats.Uid
        public ArrayMap<String, ? extends BatteryStats.Uid.Pkg> getPackageStats() {
            return this.mPackageStats;
        }

        public Pkg getPackageStatsLocked(String str) {
            Pkg pkg = this.mPackageStats.get(str);
            if (pkg != null) {
                return pkg;
            }
            Pkg pkg2 = new Pkg(this.mBsi);
            this.mPackageStats.put(str, pkg2);
            return pkg2;
        }

        @Override // android.os.BatteryStats.Uid
        public SparseArray<? extends BatteryStats.Uid.Pid> getPidStats() {
            return this.mPids;
        }

        public BatteryStats.Uid.Pid getPidStatsLocked(int i2) {
            BatteryStats.Uid.Pid pid = this.mPids.get(i2);
            if (pid != null) {
                return pid;
            }
            BatteryStats.Uid.Pid pid2 = new BatteryStats.Uid.Pid();
            this.mPids.put(i2, pid2);
            return pid2;
        }

        @Override // android.os.BatteryStats.Uid
        public long getProcessStateTime(int i2, long j2, int i3) {
            StopwatchTimer stopwatchTimer;
            if (i2 < 0 || i2 >= 6 || (stopwatchTimer = this.mProcessStateTimer[i2]) == null) {
                return 0L;
            }
            return stopwatchTimer.getTotalTimeLocked(j2, i3);
        }

        @Override // android.os.BatteryStats.Uid
        public ArrayMap<String, ? extends BatteryStats.Uid.Proc> getProcessStats() {
            return this.mProcessStats;
        }

        public Proc getProcessStatsLocked(String str) {
            Proc proc = this.mProcessStats.get(str);
            if (proc != null) {
                return proc;
            }
            Proc proc2 = new Proc(this.mBsi, str);
            this.mProcessStats.put(str, proc2);
            return proc2;
        }

        @Override // android.os.BatteryStats.Uid
        public long[] getScreenOffCpuFreqTimes(int i2) {
            long[] countsLocked;
            LongSamplingCounterArray longSamplingCounterArray = this.mScreenOffCpuFreqTimeMs;
            if (longSamplingCounterArray == null || (countsLocked = longSamplingCounterArray.getCountsLocked(i2)) == null) {
                return null;
            }
            for (long j2 : countsLocked) {
                if (j2 != 0) {
                    return countsLocked;
                }
            }
            return null;
        }

        @Override // android.os.BatteryStats.Uid
        public SparseArray<? extends BatteryStats.Uid.Sensor> getSensorStats() {
            return this.mSensorStats;
        }

        public DualTimer getSensorTimerLocked(int i2, boolean z2) {
            Sensor sensor = this.mSensorStats.get(i2);
            if (sensor == null) {
                if (!z2) {
                    return null;
                }
                sensor = new Sensor(this.mBsi, this, i2);
                this.mSensorStats.put(i2, sensor);
            }
            DualTimer dualTimer = sensor.mTimer;
            if (dualTimer != null) {
                return dualTimer;
            }
            ArrayList<StopwatchTimer> arrayList = this.mBsi.mSensorTimers.get(i2);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.mBsi.mSensorTimers.put(i2, arrayList);
            }
            ArrayList<StopwatchTimer> arrayList2 = arrayList;
            BatteryStatsImpl batteryStatsImpl = this.mBsi;
            DualTimer dualTimer2 = new DualTimer(batteryStatsImpl.mClocks, this, 3, arrayList2, batteryStatsImpl.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase);
            sensor.mTimer = dualTimer2;
            return dualTimer2;
        }

        public Pkg.Serv getServiceStatsLocked(String str, String str2) {
            Pkg packageStatsLocked = getPackageStatsLocked(str);
            Pkg.Serv serv = packageStatsLocked.mServiceStats.get(str2);
            if (serv != null) {
                return serv;
            }
            Pkg.Serv servNewServiceStatsLocked = packageStatsLocked.newServiceStatsLocked();
            packageStatsLocked.mServiceStats.put(str2, servNewServiceStatsLocked);
            return servNewServiceStatsLocked;
        }

        @Override // android.os.BatteryStats.Uid
        public ArrayMap<String, ? extends BatteryStats.Timer> getSyncStats() {
            return this.mSyncStats.getMap();
        }

        @Override // android.os.BatteryStats.Uid
        public long getSystemCpuTimeUs(int i2) {
            return this.mSystemCpuTime.getCountLocked(i2);
        }

        @Override // android.os.BatteryStats.Uid
        public long getTimeAtCpuSpeed(int i2, int i3, int i4) {
            LongSamplingCounter[] longSamplingCounterArr;
            LongSamplingCounter longSamplingCounter;
            LongSamplingCounter[][] longSamplingCounterArr2 = this.mCpuClusterSpeedTimesUs;
            if (longSamplingCounterArr2 == null || i2 < 0 || i2 >= longSamplingCounterArr2.length || (longSamplingCounterArr = longSamplingCounterArr2[i2]) == null || i3 < 0 || i3 >= longSamplingCounterArr.length || (longSamplingCounter = longSamplingCounterArr[i3]) == null) {
                return 0L;
            }
            return longSamplingCounter.getCountLocked(i4);
        }

        @Override // android.os.BatteryStats.Uid
        public int getUid() {
            return this.mUid;
        }

        @Override // android.os.BatteryStats.Uid
        public int getUserActivityCount(int i2, int i3) {
            Counter[] counterArr = this.mUserActivityCounters;
            if (counterArr == null) {
                return 0;
            }
            return counterArr[i2].getCountLocked(i3);
        }

        @Override // android.os.BatteryStats.Uid
        public long getUserCpuTimeUs(int i2) {
            return this.mUserCpuTime.getCountLocked(i2);
        }

        @Override // android.os.BatteryStats.Uid
        public ArrayMap<String, ? extends BatteryStats.Uid.Wakelock> getWakelockStats() {
            return this.mWakelockStats.getMap();
        }

        public StopwatchTimer getWakelockTimerLocked(Wakelock wakelock, int i2) {
            if (wakelock == null) {
                return null;
            }
            if (i2 == 0) {
                DualTimer dualTimer = wakelock.mTimerPartial;
                if (dualTimer != null) {
                    return dualTimer;
                }
                BatteryStatsImpl batteryStatsImpl = this.mBsi;
                DualTimer dualTimer2 = new DualTimer(batteryStatsImpl.mClocks, this, 0, batteryStatsImpl.mPartialTimers, batteryStatsImpl.mOnBatteryScreenOffTimeBase, this.mOnBatteryScreenOffBackgroundTimeBase);
                wakelock.mTimerPartial = dualTimer2;
                return dualTimer2;
            }
            if (i2 == 1) {
                StopwatchTimer stopwatchTimer = wakelock.mTimerFull;
                if (stopwatchTimer != null) {
                    return stopwatchTimer;
                }
                BatteryStatsImpl batteryStatsImpl2 = this.mBsi;
                StopwatchTimer stopwatchTimer2 = new StopwatchTimer(batteryStatsImpl2.mClocks, this, 1, batteryStatsImpl2.mFullTimers, batteryStatsImpl2.mOnBatteryTimeBase);
                wakelock.mTimerFull = stopwatchTimer2;
                return stopwatchTimer2;
            }
            if (i2 == 2) {
                StopwatchTimer stopwatchTimer3 = wakelock.mTimerWindow;
                if (stopwatchTimer3 != null) {
                    return stopwatchTimer3;
                }
                BatteryStatsImpl batteryStatsImpl3 = this.mBsi;
                StopwatchTimer stopwatchTimer4 = new StopwatchTimer(batteryStatsImpl3.mClocks, this, 2, batteryStatsImpl3.mWindowTimers, batteryStatsImpl3.mOnBatteryTimeBase);
                wakelock.mTimerWindow = stopwatchTimer4;
                return stopwatchTimer4;
            }
            if (i2 != 18) {
                throw new IllegalArgumentException(c.d("type=", i2));
            }
            StopwatchTimer stopwatchTimer5 = wakelock.mTimerDraw;
            if (stopwatchTimer5 != null) {
                return stopwatchTimer5;
            }
            BatteryStatsImpl batteryStatsImpl4 = this.mBsi;
            StopwatchTimer stopwatchTimer6 = new StopwatchTimer(batteryStatsImpl4.mClocks, this, 18, batteryStatsImpl4.mDrawTimers, batteryStatsImpl4.mOnBatteryTimeBase);
            wakelock.mTimerDraw = stopwatchTimer6;
            return stopwatchTimer6;
        }

        @Override // android.os.BatteryStats.Uid
        public int getWifiBatchedScanCount(int i2, int i3) {
            StopwatchTimer stopwatchTimer;
            if (i2 < 0 || i2 >= 5 || (stopwatchTimer = this.mWifiBatchedScanTimer[i2]) == null) {
                return 0;
            }
            return stopwatchTimer.getCountLocked(i3);
        }

        @Override // android.os.BatteryStats.Uid
        public long getWifiBatchedScanTime(int i2, long j2, int i3) {
            StopwatchTimer stopwatchTimer;
            if (i2 < 0 || i2 >= 5 || (stopwatchTimer = this.mWifiBatchedScanTimer[i2]) == null) {
                return 0L;
            }
            return stopwatchTimer.getTotalTimeLocked(j2, i3);
        }

        @Override // android.os.BatteryStats.Uid
        public BatteryStats.ControllerActivityCounter getWifiControllerActivity() {
            return this.mWifiControllerActivity;
        }

        @Override // android.os.BatteryStats.Uid
        public long getWifiMulticastTime(long j2, int i2) {
            StopwatchTimer stopwatchTimer = this.mWifiMulticastTimer;
            if (stopwatchTimer == null) {
                return 0L;
            }
            return stopwatchTimer.getTotalTimeLocked(j2, i2);
        }

        @Override // android.os.BatteryStats.Uid
        public long getWifiRadioApWakeupCount(int i2) {
            LongSamplingCounter longSamplingCounter = this.mWifiRadioApWakeupCount;
            if (longSamplingCounter != null) {
                return longSamplingCounter.getCountLocked(i2);
            }
            return 0L;
        }

        @Override // android.os.BatteryStats.Uid
        public long getWifiRunningTime(long j2, int i2) {
            StopwatchTimer stopwatchTimer = this.mWifiRunningTimer;
            if (stopwatchTimer == null) {
                return 0L;
            }
            return stopwatchTimer.getTotalTimeLocked(j2, i2);
        }

        @Override // android.os.BatteryStats.Uid
        public long getWifiScanActualTime(long j2) {
            DualTimer dualTimer = this.mWifiScanTimer;
            if (dualTimer == null) {
                return 0L;
            }
            return dualTimer.getTotalDurationMsLocked((j2 + 500) / 1000) * 1000;
        }

        @Override // android.os.BatteryStats.Uid
        public int getWifiScanBackgroundCount(int i2) {
            DualTimer dualTimer = this.mWifiScanTimer;
            if (dualTimer == null || dualTimer.getSubTimer() == null) {
                return 0;
            }
            return this.mWifiScanTimer.getSubTimer().getCountLocked(i2);
        }

        @Override // android.os.BatteryStats.Uid
        public long getWifiScanBackgroundTime(long j2) {
            DualTimer dualTimer = this.mWifiScanTimer;
            if (dualTimer == null || dualTimer.getSubTimer() == null) {
                return 0L;
            }
            return this.mWifiScanTimer.getSubTimer().getTotalDurationMsLocked((j2 + 500) / 1000) * 1000;
        }

        @Override // android.os.BatteryStats.Uid
        public int getWifiScanCount(int i2) {
            DualTimer dualTimer = this.mWifiScanTimer;
            if (dualTimer == null) {
                return 0;
            }
            return dualTimer.getCountLocked(i2);
        }

        @Override // android.os.BatteryStats.Uid
        public long getWifiScanTime(long j2, int i2) {
            DualTimer dualTimer = this.mWifiScanTimer;
            if (dualTimer == null) {
                return 0L;
            }
            return dualTimer.getTotalTimeLocked(j2, i2);
        }

        @Override // android.os.BatteryStats.Uid
        public boolean hasNetworkActivity() {
            return this.mNetworkByteActivityCounters != null;
        }

        @Override // android.os.BatteryStats.Uid
        public boolean hasUserActivity() {
            return this.mUserActivityCounters != null;
        }

        public void initNetworkActivityLocked() {
            this.mNetworkByteActivityCounters = new LongSamplingCounter[10];
            this.mNetworkPacketActivityCounters = new LongSamplingCounter[10];
            for (int i2 = 0; i2 < 10; i2++) {
                this.mNetworkByteActivityCounters[i2] = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase);
                this.mNetworkPacketActivityCounters[i2] = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase);
            }
            this.mMobileRadioActiveTime = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase);
            this.mMobileRadioActiveCount = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase);
        }

        public void initUserActivityLocked() {
            this.mUserActivityCounters = new Counter[4];
            for (int i2 = 0; i2 < 4; i2++) {
                this.mUserActivityCounters[i2] = new Counter(this.mBsi.mOnBatteryTimeBase);
            }
        }

        public boolean isInBackground() {
            return this.mProcessState >= 4;
        }

        public void makeProcessState(int i2, Parcel parcel) {
            if (i2 < 0 || i2 >= 6) {
                return;
            }
            if (parcel == null) {
                StopwatchTimer[] stopwatchTimerArr = this.mProcessStateTimer;
                BatteryStatsImpl batteryStatsImpl = this.mBsi;
                stopwatchTimerArr[i2] = new StopwatchTimer(batteryStatsImpl.mClocks, this, 12, null, batteryStatsImpl.mOnBatteryTimeBase);
            } else {
                StopwatchTimer[] stopwatchTimerArr2 = this.mProcessStateTimer;
                BatteryStatsImpl batteryStatsImpl2 = this.mBsi;
                stopwatchTimerArr2[i2] = new StopwatchTimer(batteryStatsImpl2.mClocks, this, 12, null, batteryStatsImpl2.mOnBatteryTimeBase, parcel);
            }
        }

        public void makeWifiBatchedScanBin(int i2, Parcel parcel) {
            if (i2 < 0 || i2 >= 5) {
                return;
            }
            ArrayList<StopwatchTimer> arrayList = this.mBsi.mWifiBatchedScanTimers.get(i2);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.mBsi.mWifiBatchedScanTimers.put(i2, arrayList);
            }
            ArrayList<StopwatchTimer> arrayList2 = arrayList;
            if (parcel == null) {
                StopwatchTimer[] stopwatchTimerArr = this.mWifiBatchedScanTimer;
                BatteryStatsImpl batteryStatsImpl = this.mBsi;
                stopwatchTimerArr[i2] = new StopwatchTimer(batteryStatsImpl.mClocks, this, 11, arrayList2, batteryStatsImpl.mOnBatteryTimeBase);
            } else {
                StopwatchTimer[] stopwatchTimerArr2 = this.mWifiBatchedScanTimer;
                BatteryStatsImpl batteryStatsImpl2 = this.mBsi;
                stopwatchTimerArr2[i2] = new StopwatchTimer(batteryStatsImpl2.mClocks, this, 11, arrayList2, batteryStatsImpl2.mOnBatteryTimeBase, parcel);
            }
        }

        @Override // android.os.BatteryStats.Uid
        public void noteActivityPausedLocked(long j2) {
            StopwatchTimer stopwatchTimer = this.mForegroundActivityTimer;
            if (stopwatchTimer != null) {
                stopwatchTimer.stopRunningLocked(j2);
            }
        }

        @Override // android.os.BatteryStats.Uid
        public void noteActivityResumedLocked(long j2) {
            createForegroundActivityTimerLocked().startRunningLocked(j2);
        }

        public void noteAudioTurnedOffLocked(long j2) {
            StopwatchTimer stopwatchTimer = this.mAudioTurnedOnTimer;
            if (stopwatchTimer != null) {
                stopwatchTimer.stopRunningLocked(j2);
            }
        }

        public void noteAudioTurnedOnLocked(long j2) {
            createAudioTurnedOnTimerLocked().startRunningLocked(j2);
        }

        public void noteBluetoothScanResultsLocked(int i2) {
            createBluetoothScanResultCounterLocked().addAtomic(i2);
            createBluetoothScanResultBgCounterLocked().addAtomic(i2);
        }

        public void noteBluetoothScanStartedLocked(long j2, boolean z2) {
            createBluetoothScanTimerLocked().startRunningLocked(j2);
            if (z2) {
                createBluetoothUnoptimizedScanTimerLocked().startRunningLocked(j2);
            }
        }

        public void noteBluetoothScanStoppedLocked(long j2, boolean z2) {
            DualTimer dualTimer;
            DualTimer dualTimer2 = this.mBluetoothScanTimer;
            if (dualTimer2 != null) {
                dualTimer2.stopRunningLocked(j2);
            }
            if (!z2 || (dualTimer = this.mBluetoothUnoptimizedScanTimer) == null) {
                return;
            }
            dualTimer.stopRunningLocked(j2);
        }

        public void noteCameraTurnedOffLocked(long j2) {
            StopwatchTimer stopwatchTimer = this.mCameraTurnedOnTimer;
            if (stopwatchTimer != null) {
                stopwatchTimer.stopRunningLocked(j2);
            }
        }

        public void noteCameraTurnedOnLocked(long j2) {
            createCameraTurnedOnTimerLocked().startRunningLocked(j2);
        }

        public void noteFlashlightTurnedOffLocked(long j2) {
            StopwatchTimer stopwatchTimer = this.mFlashlightTurnedOnTimer;
            if (stopwatchTimer != null) {
                stopwatchTimer.stopRunningLocked(j2);
            }
        }

        public void noteFlashlightTurnedOnLocked(long j2) {
            createFlashlightTurnedOnTimerLocked().startRunningLocked(j2);
        }

        public void noteForegroundServicePausedLocked(long j2) {
            StopwatchTimer stopwatchTimer = this.mForegroundServiceTimer;
            if (stopwatchTimer != null) {
                stopwatchTimer.stopRunningLocked(j2);
            }
        }

        public void noteForegroundServiceResumedLocked(long j2) {
            createForegroundServiceTimerLocked().startRunningLocked(j2);
        }

        @Override // android.os.BatteryStats.Uid
        public void noteFullWifiLockAcquiredLocked(long j2) {
            if (this.mFullWifiLockOut) {
                return;
            }
            this.mFullWifiLockOut = true;
            if (this.mFullWifiLockTimer == null) {
                BatteryStatsImpl batteryStatsImpl = this.mBsi;
                this.mFullWifiLockTimer = new StopwatchTimer(batteryStatsImpl.mClocks, this, 5, batteryStatsImpl.mFullWifiLockTimers, batteryStatsImpl.mOnBatteryTimeBase);
            }
            this.mFullWifiLockTimer.startRunningLocked(j2);
        }

        @Override // android.os.BatteryStats.Uid
        public void noteFullWifiLockReleasedLocked(long j2) {
            if (this.mFullWifiLockOut) {
                this.mFullWifiLockOut = false;
                this.mFullWifiLockTimer.stopRunningLocked(j2);
            }
        }

        public void noteMobileRadioActiveTimeLocked(long j2) {
            if (this.mNetworkByteActivityCounters == null) {
                initNetworkActivityLocked();
            }
            this.mMobileRadioActiveTime.addCountLocked(j2);
            this.mMobileRadioActiveCount.addCountLocked(1L);
        }

        public void noteMobileRadioApWakeupLocked() {
            if (this.mMobileRadioApWakeupCount == null) {
                this.mMobileRadioApWakeupCount = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase);
            }
            this.mMobileRadioApWakeupCount.addCountLocked(1L);
        }

        public void noteNetworkActivityLocked(int i2, long j2, long j3) {
            if (this.mNetworkByteActivityCounters == null) {
                initNetworkActivityLocked();
            }
            if (i2 < 0 || i2 >= 10) {
                Slog.w(BatteryStatsImpl.TAG, c.e("Unknown network activity type ", i2, " was specified."), new Throwable());
            } else {
                this.mNetworkByteActivityCounters[i2].addCountLocked(j2);
                this.mNetworkPacketActivityCounters[i2].addCountLocked(j3);
            }
        }

        public void noteResetAudioLocked(long j2) {
            StopwatchTimer stopwatchTimer = this.mAudioTurnedOnTimer;
            if (stopwatchTimer != null) {
                stopwatchTimer.stopAllRunningLocked(j2);
            }
        }

        public void noteResetBluetoothScanLocked(long j2) {
            DualTimer dualTimer = this.mBluetoothScanTimer;
            if (dualTimer != null) {
                dualTimer.stopAllRunningLocked(j2);
            }
            DualTimer dualTimer2 = this.mBluetoothUnoptimizedScanTimer;
            if (dualTimer2 != null) {
                dualTimer2.stopAllRunningLocked(j2);
            }
        }

        public void noteResetCameraLocked(long j2) {
            StopwatchTimer stopwatchTimer = this.mCameraTurnedOnTimer;
            if (stopwatchTimer != null) {
                stopwatchTimer.stopAllRunningLocked(j2);
            }
        }

        public void noteResetFlashlightLocked(long j2) {
            StopwatchTimer stopwatchTimer = this.mFlashlightTurnedOnTimer;
            if (stopwatchTimer != null) {
                stopwatchTimer.stopAllRunningLocked(j2);
            }
        }

        public void noteResetVideoLocked(long j2) {
            StopwatchTimer stopwatchTimer = this.mVideoTurnedOnTimer;
            if (stopwatchTimer != null) {
                stopwatchTimer.stopAllRunningLocked(j2);
            }
        }

        public void noteStartGps(long j2) {
            noteStartSensor(-10000, j2);
        }

        public void noteStartJobLocked(String str, long j2) {
            DualTimer dualTimerStartObject = this.mJobStats.startObject(str);
            if (dualTimerStartObject != null) {
                dualTimerStartObject.startRunningLocked(j2);
            }
        }

        public void noteStartSensor(int i2, long j2) {
            getSensorTimerLocked(i2, true).startRunningLocked(j2);
        }

        public void noteStartSyncLocked(String str, long j2) {
            DualTimer dualTimerStartObject = this.mSyncStats.startObject(str);
            if (dualTimerStartObject != null) {
                dualTimerStartObject.startRunningLocked(j2);
            }
        }

        public void noteStartWakeLocked(int i2, String str, int i3, long j2) {
            Wakelock wakelockStartObject = this.mWakelockStats.startObject(str);
            if (wakelockStartObject != null) {
                getWakelockTimerLocked(wakelockStartObject, i3).startRunningLocked(j2);
            }
            if (i3 == 0) {
                createAggregatedPartialWakelockTimerLocked().startRunningLocked(j2);
                if (i2 >= 0) {
                    BatteryStats.Uid.Pid pidStatsLocked = getPidStatsLocked(i2);
                    int i4 = pidStatsLocked.mWakeNesting;
                    pidStatsLocked.mWakeNesting = i4 + 1;
                    if (i4 == 0) {
                        pidStatsLocked.mWakeStartMs = j2;
                    }
                }
            }
        }

        public void noteStopGps(long j2) {
            noteStopSensor(-10000, j2);
        }

        public void noteStopJobLocked(String str, long j2, int i2) {
            DualTimer dualTimerStopObject = this.mJobStats.stopObject(str);
            if (dualTimerStopObject != null) {
                dualTimerStopObject.stopRunningLocked(j2);
            }
            if (this.mBsi.mOnBatteryTimeBase.isRunning()) {
                SparseIntArray sparseIntArray = this.mJobCompletions.get(str);
                if (sparseIntArray == null) {
                    sparseIntArray = new SparseIntArray();
                    this.mJobCompletions.put(str, sparseIntArray);
                }
                sparseIntArray.put(i2, sparseIntArray.get(i2, 0) + 1);
            }
        }

        public void noteStopSensor(int i2, long j2) {
            DualTimer sensorTimerLocked = getSensorTimerLocked(i2, false);
            if (sensorTimerLocked != null) {
                sensorTimerLocked.stopRunningLocked(j2);
            }
        }

        public void noteStopSyncLocked(String str, long j2) {
            DualTimer dualTimerStopObject = this.mSyncStats.stopObject(str);
            if (dualTimerStopObject != null) {
                dualTimerStopObject.stopRunningLocked(j2);
            }
        }

        public void noteStopWakeLocked(int i2, String str, int i3, long j2) {
            BatteryStats.Uid.Pid pid;
            int i4;
            Wakelock wakelockStopObject = this.mWakelockStats.stopObject(str);
            if (wakelockStopObject != null) {
                getWakelockTimerLocked(wakelockStopObject, i3).stopRunningLocked(j2);
            }
            if (i3 == 0) {
                DualTimer dualTimer = this.mAggregatedPartialWakelockTimer;
                if (dualTimer != null) {
                    dualTimer.stopRunningLocked(j2);
                }
                if (i2 < 0 || (pid = this.mPids.get(i2)) == null || (i4 = pid.mWakeNesting) <= 0) {
                    return;
                }
                pid.mWakeNesting = i4 - 1;
                if (i4 == 1) {
                    pid.mWakeSumMs = (j2 - pid.mWakeStartMs) + pid.mWakeSumMs;
                    pid.mWakeStartMs = 0L;
                }
            }
        }

        @Override // android.os.BatteryStats.Uid
        public void noteUserActivityLocked(int i2) {
            if (this.mUserActivityCounters == null) {
                initUserActivityLocked();
            }
            if (i2 < 0 || i2 >= 4) {
                Slog.w(BatteryStatsImpl.TAG, c.e("Unknown user activity type ", i2, " was specified."), new Throwable());
            } else {
                this.mUserActivityCounters[i2].stepAtomic();
            }
        }

        public void noteVibratorOffLocked() {
            BatchTimer batchTimer = this.mVibratorOnTimer;
            if (batchTimer != null) {
                batchTimer.abortLastDuration(this.mBsi);
            }
        }

        public void noteVibratorOnLocked(long j2) {
            createVibratorOnTimerLocked().addDuration(this.mBsi, j2);
        }

        public void noteVideoTurnedOffLocked(long j2) {
            StopwatchTimer stopwatchTimer = this.mVideoTurnedOnTimer;
            if (stopwatchTimer != null) {
                stopwatchTimer.stopRunningLocked(j2);
            }
        }

        public void noteVideoTurnedOnLocked(long j2) {
            createVideoTurnedOnTimerLocked().startRunningLocked(j2);
        }

        @Override // android.os.BatteryStats.Uid
        public void noteWifiBatchedScanStartedLocked(int i2, long j2) {
            int i3 = 0;
            while (i2 > 8 && i3 < 4) {
                i2 >>= 3;
                i3++;
            }
            int i4 = this.mWifiBatchedScanBinStarted;
            if (i4 == i3) {
                return;
            }
            if (i4 != -1) {
                this.mWifiBatchedScanTimer[i4].stopRunningLocked(j2);
            }
            this.mWifiBatchedScanBinStarted = i3;
            if (this.mWifiBatchedScanTimer[i3] == null) {
                makeWifiBatchedScanBin(i3, null);
            }
            this.mWifiBatchedScanTimer[i3].startRunningLocked(j2);
        }

        @Override // android.os.BatteryStats.Uid
        public void noteWifiBatchedScanStoppedLocked(long j2) {
            int i2 = this.mWifiBatchedScanBinStarted;
            if (i2 != -1) {
                this.mWifiBatchedScanTimer[i2].stopRunningLocked(j2);
                this.mWifiBatchedScanBinStarted = -1;
            }
        }

        @Override // android.os.BatteryStats.Uid
        public void noteWifiMulticastDisabledLocked(long j2) {
            if (this.mWifiMulticastEnabled) {
                this.mWifiMulticastEnabled = false;
                this.mWifiMulticastTimer.stopRunningLocked(j2);
            }
        }

        @Override // android.os.BatteryStats.Uid
        public void noteWifiMulticastEnabledLocked(long j2) {
            if (this.mWifiMulticastEnabled) {
                return;
            }
            this.mWifiMulticastEnabled = true;
            if (this.mWifiMulticastTimer == null) {
                BatteryStatsImpl batteryStatsImpl = this.mBsi;
                this.mWifiMulticastTimer = new StopwatchTimer(batteryStatsImpl.mClocks, this, 7, batteryStatsImpl.mWifiMulticastTimers, batteryStatsImpl.mOnBatteryTimeBase);
            }
            this.mWifiMulticastTimer.startRunningLocked(j2);
        }

        public void noteWifiRadioApWakeupLocked() {
            if (this.mWifiRadioApWakeupCount == null) {
                this.mWifiRadioApWakeupCount = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase);
            }
            this.mWifiRadioApWakeupCount.addCountLocked(1L);
        }

        @Override // android.os.BatteryStats.Uid
        public void noteWifiRunningLocked(long j2) {
            if (this.mWifiRunning) {
                return;
            }
            this.mWifiRunning = true;
            if (this.mWifiRunningTimer == null) {
                BatteryStatsImpl batteryStatsImpl = this.mBsi;
                this.mWifiRunningTimer = new StopwatchTimer(batteryStatsImpl.mClocks, this, 4, batteryStatsImpl.mWifiRunningTimers, batteryStatsImpl.mOnBatteryTimeBase);
            }
            this.mWifiRunningTimer.startRunningLocked(j2);
        }

        @Override // android.os.BatteryStats.Uid
        public void noteWifiScanStartedLocked(long j2) {
            if (this.mWifiScanStarted) {
                return;
            }
            this.mWifiScanStarted = true;
            if (this.mWifiScanTimer == null) {
                BatteryStatsImpl batteryStatsImpl = this.mBsi;
                this.mWifiScanTimer = new DualTimer(batteryStatsImpl.mClocks, this, 6, batteryStatsImpl.mWifiScanTimers, batteryStatsImpl.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase);
            }
            this.mWifiScanTimer.startRunningLocked(j2);
        }

        @Override // android.os.BatteryStats.Uid
        public void noteWifiScanStoppedLocked(long j2) {
            if (this.mWifiScanStarted) {
                this.mWifiScanStarted = false;
                this.mWifiScanTimer.stopRunningLocked(j2);
            }
        }

        @Override // android.os.BatteryStats.Uid
        public void noteWifiStoppedLocked(long j2) {
            if (this.mWifiRunning) {
                this.mWifiRunning = false;
                this.mWifiRunningTimer.stopRunningLocked(j2);
            }
        }

        public void readFromParcelLocked(TimeBase timeBase, TimeBase timeBase2, Parcel parcel) {
            this.mOnBatteryBackgroundTimeBase.readFromParcel(parcel);
            this.mOnBatteryScreenOffBackgroundTimeBase.readFromParcel(parcel);
            int i2 = parcel.readInt();
            this.mWakelockStats.clear();
            for (int i3 = 0; i3 < i2; i3++) {
                String string = parcel.readString();
                Wakelock wakelock = new Wakelock(this.mBsi, this);
                wakelock.readFromParcelLocked(timeBase, timeBase2, this.mOnBatteryScreenOffBackgroundTimeBase, parcel);
                this.mWakelockStats.add(string, wakelock);
            }
            int i4 = parcel.readInt();
            this.mSyncStats.clear();
            for (int i5 = 0; i5 < i4; i5++) {
                String string2 = parcel.readString();
                if (parcel.readInt() != 0) {
                    OverflowArrayMap<DualTimer> overflowArrayMap = this.mSyncStats;
                    BatteryStatsImpl batteryStatsImpl = this.mBsi;
                    overflowArrayMap.add(string2, new DualTimer(batteryStatsImpl.mClocks, this, 13, null, batteryStatsImpl.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase, parcel));
                }
            }
            int i6 = parcel.readInt();
            this.mJobStats.clear();
            for (int i7 = 0; i7 < i6; i7++) {
                String string3 = parcel.readString();
                if (parcel.readInt() != 0) {
                    OverflowArrayMap<DualTimer> overflowArrayMap2 = this.mJobStats;
                    BatteryStatsImpl batteryStatsImpl2 = this.mBsi;
                    overflowArrayMap2.add(string3, new DualTimer(batteryStatsImpl2.mClocks, this, 14, null, batteryStatsImpl2.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase, parcel));
                }
            }
            readJobCompletionsFromParcelLocked(parcel);
            int i8 = parcel.readInt();
            this.mSensorStats.clear();
            for (int i9 = 0; i9 < i8; i9++) {
                int i10 = parcel.readInt();
                Sensor sensor = new Sensor(this.mBsi, this, i10);
                sensor.readFromParcelLocked(this.mBsi.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase, parcel);
                this.mSensorStats.put(i10, sensor);
            }
            int i11 = parcel.readInt();
            this.mProcessStats.clear();
            for (int i12 = 0; i12 < i11; i12++) {
                String string4 = parcel.readString();
                Proc proc = new Proc(this.mBsi, string4);
                proc.readFromParcelLocked(parcel);
                this.mProcessStats.put(string4, proc);
            }
            int i13 = parcel.readInt();
            this.mPackageStats.clear();
            for (int i14 = 0; i14 < i13; i14++) {
                String string5 = parcel.readString();
                Pkg pkg = new Pkg(this.mBsi);
                pkg.readFromParcelLocked(parcel);
                this.mPackageStats.put(string5, pkg);
            }
            this.mWifiRunning = false;
            if (parcel.readInt() != 0) {
                BatteryStatsImpl batteryStatsImpl3 = this.mBsi;
                this.mWifiRunningTimer = new StopwatchTimer(batteryStatsImpl3.mClocks, this, 4, batteryStatsImpl3.mWifiRunningTimers, batteryStatsImpl3.mOnBatteryTimeBase, parcel);
            } else {
                this.mWifiRunningTimer = null;
            }
            this.mFullWifiLockOut = false;
            if (parcel.readInt() != 0) {
                BatteryStatsImpl batteryStatsImpl4 = this.mBsi;
                this.mFullWifiLockTimer = new StopwatchTimer(batteryStatsImpl4.mClocks, this, 5, batteryStatsImpl4.mFullWifiLockTimers, batteryStatsImpl4.mOnBatteryTimeBase, parcel);
            } else {
                this.mFullWifiLockTimer = null;
            }
            this.mWifiScanStarted = false;
            if (parcel.readInt() != 0) {
                BatteryStatsImpl batteryStatsImpl5 = this.mBsi;
                this.mWifiScanTimer = new DualTimer(batteryStatsImpl5.mClocks, this, 6, batteryStatsImpl5.mWifiScanTimers, batteryStatsImpl5.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase, parcel);
            } else {
                this.mWifiScanTimer = null;
            }
            this.mWifiBatchedScanBinStarted = -1;
            for (int i15 = 0; i15 < 5; i15++) {
                if (parcel.readInt() != 0) {
                    makeWifiBatchedScanBin(i15, parcel);
                } else {
                    this.mWifiBatchedScanTimer[i15] = null;
                }
            }
            this.mWifiMulticastEnabled = false;
            if (parcel.readInt() != 0) {
                BatteryStatsImpl batteryStatsImpl6 = this.mBsi;
                this.mWifiMulticastTimer = new StopwatchTimer(batteryStatsImpl6.mClocks, this, 7, batteryStatsImpl6.mWifiMulticastTimers, batteryStatsImpl6.mOnBatteryTimeBase, parcel);
            } else {
                this.mWifiMulticastTimer = null;
            }
            if (parcel.readInt() != 0) {
                BatteryStatsImpl batteryStatsImpl7 = this.mBsi;
                this.mAudioTurnedOnTimer = new StopwatchTimer(batteryStatsImpl7.mClocks, this, 15, batteryStatsImpl7.mAudioTurnedOnTimers, batteryStatsImpl7.mOnBatteryTimeBase, parcel);
            } else {
                this.mAudioTurnedOnTimer = null;
            }
            if (parcel.readInt() != 0) {
                BatteryStatsImpl batteryStatsImpl8 = this.mBsi;
                this.mVideoTurnedOnTimer = new StopwatchTimer(batteryStatsImpl8.mClocks, this, 8, batteryStatsImpl8.mVideoTurnedOnTimers, batteryStatsImpl8.mOnBatteryTimeBase, parcel);
            } else {
                this.mVideoTurnedOnTimer = null;
            }
            if (parcel.readInt() != 0) {
                BatteryStatsImpl batteryStatsImpl9 = this.mBsi;
                this.mFlashlightTurnedOnTimer = new StopwatchTimer(batteryStatsImpl9.mClocks, this, 16, batteryStatsImpl9.mFlashlightTurnedOnTimers, batteryStatsImpl9.mOnBatteryTimeBase, parcel);
            } else {
                this.mFlashlightTurnedOnTimer = null;
            }
            if (parcel.readInt() != 0) {
                BatteryStatsImpl batteryStatsImpl10 = this.mBsi;
                this.mCameraTurnedOnTimer = new StopwatchTimer(batteryStatsImpl10.mClocks, this, 17, batteryStatsImpl10.mCameraTurnedOnTimers, batteryStatsImpl10.mOnBatteryTimeBase, parcel);
            } else {
                this.mCameraTurnedOnTimer = null;
            }
            if (parcel.readInt() != 0) {
                BatteryStatsImpl batteryStatsImpl11 = this.mBsi;
                this.mForegroundActivityTimer = new StopwatchTimer(batteryStatsImpl11.mClocks, this, 10, null, batteryStatsImpl11.mOnBatteryTimeBase, parcel);
            } else {
                this.mForegroundActivityTimer = null;
            }
            if (parcel.readInt() != 0) {
                BatteryStatsImpl batteryStatsImpl12 = this.mBsi;
                this.mForegroundServiceTimer = new StopwatchTimer(batteryStatsImpl12.mClocks, this, 22, null, batteryStatsImpl12.mOnBatteryTimeBase, parcel);
            } else {
                this.mForegroundServiceTimer = null;
            }
            if (parcel.readInt() != 0) {
                BatteryStatsImpl batteryStatsImpl13 = this.mBsi;
                this.mAggregatedPartialWakelockTimer = new DualTimer(batteryStatsImpl13.mClocks, this, 20, null, batteryStatsImpl13.mOnBatteryScreenOffTimeBase, this.mOnBatteryScreenOffBackgroundTimeBase, parcel);
            } else {
                this.mAggregatedPartialWakelockTimer = null;
            }
            if (parcel.readInt() != 0) {
                BatteryStatsImpl batteryStatsImpl14 = this.mBsi;
                this.mBluetoothScanTimer = new DualTimer(batteryStatsImpl14.mClocks, this, 19, batteryStatsImpl14.mBluetoothScanOnTimers, batteryStatsImpl14.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase, parcel);
            } else {
                this.mBluetoothScanTimer = null;
            }
            if (parcel.readInt() != 0) {
                BatteryStatsImpl batteryStatsImpl15 = this.mBsi;
                this.mBluetoothUnoptimizedScanTimer = new DualTimer(batteryStatsImpl15.mClocks, this, 21, null, batteryStatsImpl15.mOnBatteryTimeBase, this.mOnBatteryBackgroundTimeBase, parcel);
            } else {
                this.mBluetoothUnoptimizedScanTimer = null;
            }
            if (parcel.readInt() != 0) {
                this.mBluetoothScanResultCounter = new Counter(this.mBsi.mOnBatteryTimeBase, parcel);
            } else {
                this.mBluetoothScanResultCounter = null;
            }
            if (parcel.readInt() != 0) {
                this.mBluetoothScanResultBgCounter = new Counter(this.mOnBatteryBackgroundTimeBase, parcel);
            } else {
                this.mBluetoothScanResultBgCounter = null;
            }
            this.mProcessState = 18;
            for (int i16 = 0; i16 < 6; i16++) {
                if (parcel.readInt() != 0) {
                    makeProcessState(i16, parcel);
                } else {
                    this.mProcessStateTimer[i16] = null;
                }
            }
            if (parcel.readInt() != 0) {
                BatteryStatsImpl batteryStatsImpl16 = this.mBsi;
                this.mVibratorOnTimer = new BatchTimer(batteryStatsImpl16.mClocks, this, 9, batteryStatsImpl16.mOnBatteryTimeBase, parcel);
            } else {
                this.mVibratorOnTimer = null;
            }
            if (parcel.readInt() != 0) {
                this.mUserActivityCounters = new Counter[4];
                for (int i17 = 0; i17 < 4; i17++) {
                    this.mUserActivityCounters[i17] = new Counter(this.mBsi.mOnBatteryTimeBase, parcel);
                }
            } else {
                this.mUserActivityCounters = null;
            }
            if (parcel.readInt() != 0) {
                this.mNetworkByteActivityCounters = new LongSamplingCounter[10];
                this.mNetworkPacketActivityCounters = new LongSamplingCounter[10];
                for (int i18 = 0; i18 < 10; i18++) {
                    this.mNetworkByteActivityCounters[i18] = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
                    this.mNetworkPacketActivityCounters[i18] = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
                }
                this.mMobileRadioActiveTime = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
                this.mMobileRadioActiveCount = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
            } else {
                this.mNetworkByteActivityCounters = null;
                this.mNetworkPacketActivityCounters = null;
            }
            if (parcel.readInt() != 0) {
                this.mWifiControllerActivity = new ControllerActivityCounterImpl(this.mBsi.mOnBatteryTimeBase, 1, parcel);
            } else {
                this.mWifiControllerActivity = null;
            }
            if (parcel.readInt() != 0) {
                this.mBluetoothControllerActivity = new ControllerActivityCounterImpl(this.mBsi.mOnBatteryTimeBase, 1, parcel);
            } else {
                this.mBluetoothControllerActivity = null;
            }
            if (parcel.readInt() != 0) {
                this.mModemControllerActivity = new ControllerActivityCounterImpl(this.mBsi.mOnBatteryTimeBase, 5, parcel);
            } else {
                this.mModemControllerActivity = null;
            }
            this.mUserCpuTime = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
            this.mSystemCpuTime = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
            if (parcel.readInt() != 0) {
                int i19 = parcel.readInt();
                if (this.mBsi.mPowerProfile != null && this.mBsi.mPowerProfile.getNumCpuClusters() != i19) {
                    throw new ParcelFormatException("Incompatible number of cpu clusters");
                }
                this.mCpuClusterSpeedTimesUs = new LongSamplingCounter[i19][];
                for (int i20 = 0; i20 < i19; i20++) {
                    if (parcel.readInt() != 0) {
                        int i21 = parcel.readInt();
                        if (this.mBsi.mPowerProfile != null && this.mBsi.mPowerProfile.getNumSpeedStepsInCpuCluster(i20) != i21) {
                            throw new ParcelFormatException("Incompatible number of cpu speeds");
                        }
                        LongSamplingCounter[] longSamplingCounterArr = new LongSamplingCounter[i21];
                        this.mCpuClusterSpeedTimesUs[i20] = longSamplingCounterArr;
                        for (int i22 = 0; i22 < i21; i22++) {
                            if (parcel.readInt() != 0) {
                                longSamplingCounterArr[i22] = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
                            }
                        }
                    } else {
                        this.mCpuClusterSpeedTimesUs[i20] = null;
                    }
                }
            } else {
                this.mCpuClusterSpeedTimesUs = null;
            }
            this.mCpuFreqTimeMs = LongSamplingCounterArray.readFromParcel(parcel, this.mBsi.mOnBatteryTimeBase);
            this.mScreenOffCpuFreqTimeMs = LongSamplingCounterArray.readFromParcel(parcel, this.mBsi.mOnBatteryScreenOffTimeBase);
            if (parcel.readInt() != 0) {
                this.mMobileRadioApWakeupCount = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
            } else {
                this.mMobileRadioApWakeupCount = null;
            }
            if (parcel.readInt() != 0) {
                this.mWifiRadioApWakeupCount = new LongSamplingCounter(this.mBsi.mOnBatteryTimeBase, parcel);
            } else {
                this.mWifiRadioApWakeupCount = null;
            }
        }

        public void readJobCompletionsFromParcelLocked(Parcel parcel) {
            int i2 = parcel.readInt();
            this.mJobCompletions.clear();
            for (int i3 = 0; i3 < i2; i3++) {
                String string = parcel.readString();
                int i4 = parcel.readInt();
                if (i4 > 0) {
                    SparseIntArray sparseIntArray = new SparseIntArray();
                    for (int i5 = 0; i5 < i4; i5++) {
                        sparseIntArray.put(parcel.readInt(), parcel.readInt());
                    }
                    this.mJobCompletions.put(string, sparseIntArray);
                }
            }
        }

        public void readJobSummaryFromParcelLocked(String str, Parcel parcel) {
            DualTimer dualTimerInstantiateObject = this.mJobStats.instantiateObject();
            dualTimerInstantiateObject.readSummaryFromParcelLocked(parcel);
            this.mJobStats.add(str, dualTimerInstantiateObject);
        }

        public void readSyncSummaryFromParcelLocked(String str, Parcel parcel) {
            DualTimer dualTimerInstantiateObject = this.mSyncStats.instantiateObject();
            dualTimerInstantiateObject.readSummaryFromParcelLocked(parcel);
            this.mSyncStats.add(str, dualTimerInstantiateObject);
        }

        public void readWakeSummaryFromParcelLocked(String str, Parcel parcel) {
            Wakelock wakelock = new Wakelock(this.mBsi, this);
            this.mWakelockStats.add(str, wakelock);
            if (parcel.readInt() != 0) {
                getWakelockTimerLocked(wakelock, 1).readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                getWakelockTimerLocked(wakelock, 0).readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                getWakelockTimerLocked(wakelock, 2).readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                getWakelockTimerLocked(wakelock, 18).readSummaryFromParcelLocked(parcel);
            }
        }

        public void reportExcessiveCpuLocked(String str, long j2, long j3) {
            Proc processStatsLocked = getProcessStatsLocked(str);
            if (processStatsLocked != null) {
                processStatsLocked.addExcessiveCpu(j2, j3);
            }
        }

        public boolean reset(long j2, long j3) {
            this.mOnBatteryBackgroundTimeBase.init(j2, j3);
            this.mOnBatteryScreenOffBackgroundTimeBase.init(j2, j3);
            StopwatchTimer stopwatchTimer = this.mWifiRunningTimer;
            boolean z2 = stopwatchTimer != null ? (!stopwatchTimer.reset(false)) | false | this.mWifiRunning : false;
            StopwatchTimer stopwatchTimer2 = this.mFullWifiLockTimer;
            if (stopwatchTimer2 != null) {
                z2 = z2 | (!stopwatchTimer2.reset(false)) | this.mFullWifiLockOut;
            }
            DualTimer dualTimer = this.mWifiScanTimer;
            if (dualTimer != null) {
                z2 = z2 | (!dualTimer.reset(false)) | this.mWifiScanStarted;
            }
            if (this.mWifiBatchedScanTimer != null) {
                for (int i2 = 0; i2 < 5; i2++) {
                    StopwatchTimer stopwatchTimer3 = this.mWifiBatchedScanTimer[i2];
                    if (stopwatchTimer3 != null) {
                        z2 |= !stopwatchTimer3.reset(false);
                    }
                }
                z2 |= this.mWifiBatchedScanBinStarted != -1;
            }
            StopwatchTimer stopwatchTimer4 = this.mWifiMulticastTimer;
            if (stopwatchTimer4 != null) {
                z2 = z2 | (!stopwatchTimer4.reset(false)) | this.mWifiMulticastEnabled;
            }
            boolean z3 = z2 | (!BatteryStatsImpl.resetTimerIfNotNull((Timer) this.mAudioTurnedOnTimer, false)) | (!BatteryStatsImpl.resetTimerIfNotNull((Timer) this.mVideoTurnedOnTimer, false)) | (!BatteryStatsImpl.resetTimerIfNotNull((Timer) this.mFlashlightTurnedOnTimer, false)) | (!BatteryStatsImpl.resetTimerIfNotNull((Timer) this.mCameraTurnedOnTimer, false)) | (!BatteryStatsImpl.resetTimerIfNotNull((Timer) this.mForegroundActivityTimer, false)) | (!BatteryStatsImpl.resetTimerIfNotNull((Timer) this.mForegroundServiceTimer, false)) | (!BatteryStatsImpl.resetTimerIfNotNull(this.mAggregatedPartialWakelockTimer, false)) | (!BatteryStatsImpl.resetTimerIfNotNull(this.mBluetoothScanTimer, false)) | (!BatteryStatsImpl.resetTimerIfNotNull(this.mBluetoothUnoptimizedScanTimer, false));
            Counter counter = this.mBluetoothScanResultCounter;
            if (counter != null) {
                counter.reset(false);
            }
            Counter counter2 = this.mBluetoothScanResultBgCounter;
            if (counter2 != null) {
                counter2.reset(false);
            }
            if (this.mProcessStateTimer != null) {
                for (int i3 = 0; i3 < 6; i3++) {
                    StopwatchTimer stopwatchTimer5 = this.mProcessStateTimer[i3];
                    if (stopwatchTimer5 != null) {
                        z3 |= !stopwatchTimer5.reset(false);
                    }
                }
                z3 |= this.mProcessState != 18;
            }
            BatchTimer batchTimer = this.mVibratorOnTimer;
            if (batchTimer != null) {
                if (batchTimer.reset(false)) {
                    this.mVibratorOnTimer.detach();
                    this.mVibratorOnTimer = null;
                } else {
                    z3 = true;
                }
            }
            if (this.mUserActivityCounters != null) {
                for (int i4 = 0; i4 < 4; i4++) {
                    this.mUserActivityCounters[i4].reset(false);
                }
            }
            if (this.mNetworkByteActivityCounters != null) {
                for (int i5 = 0; i5 < 10; i5++) {
                    this.mNetworkByteActivityCounters[i5].reset(false);
                    this.mNetworkPacketActivityCounters[i5].reset(false);
                }
                this.mMobileRadioActiveTime.reset(false);
                this.mMobileRadioActiveCount.reset(false);
            }
            ControllerActivityCounterImpl controllerActivityCounterImpl = this.mWifiControllerActivity;
            if (controllerActivityCounterImpl != null) {
                controllerActivityCounterImpl.reset(false);
            }
            ControllerActivityCounterImpl controllerActivityCounterImpl2 = this.mBluetoothControllerActivity;
            if (controllerActivityCounterImpl2 != null) {
                controllerActivityCounterImpl2.reset(false);
            }
            ControllerActivityCounterImpl controllerActivityCounterImpl3 = this.mModemControllerActivity;
            if (controllerActivityCounterImpl3 != null) {
                controllerActivityCounterImpl3.reset(false);
            }
            this.mUserCpuTime.reset(false);
            this.mSystemCpuTime.reset(false);
            LongSamplingCounter[][] longSamplingCounterArr = this.mCpuClusterSpeedTimesUs;
            if (longSamplingCounterArr != null) {
                for (LongSamplingCounter[] longSamplingCounterArr2 : longSamplingCounterArr) {
                    if (longSamplingCounterArr2 != null) {
                        for (LongSamplingCounter longSamplingCounter : longSamplingCounterArr2) {
                            if (longSamplingCounter != null) {
                                longSamplingCounter.reset(false);
                            }
                        }
                    }
                }
            }
            LongSamplingCounterArray longSamplingCounterArray = this.mCpuFreqTimeMs;
            if (longSamplingCounterArray != null) {
                longSamplingCounterArray.reset(false);
            }
            LongSamplingCounterArray longSamplingCounterArray2 = this.mScreenOffCpuFreqTimeMs;
            if (longSamplingCounterArray2 != null) {
                longSamplingCounterArray2.reset(false);
            }
            BatteryStatsImpl.resetLongCounterIfNotNull(this.mMobileRadioApWakeupCount, false);
            BatteryStatsImpl.resetLongCounterIfNotNull(this.mWifiRadioApWakeupCount, false);
            ArrayMap<String, Wakelock> map = this.mWakelockStats.getMap();
            for (int size = map.size() - 1; size >= 0; size--) {
                if (map.valueAt(size).reset()) {
                    map.removeAt(size);
                } else {
                    z3 = true;
                }
            }
            this.mWakelockStats.cleanup();
            ArrayMap<String, DualTimer> map2 = this.mSyncStats.getMap();
            for (int size2 = map2.size() - 1; size2 >= 0; size2--) {
                DualTimer dualTimerValueAt = map2.valueAt(size2);
                if (dualTimerValueAt.reset(false)) {
                    map2.removeAt(size2);
                    dualTimerValueAt.detach();
                } else {
                    z3 = true;
                }
            }
            this.mSyncStats.cleanup();
            ArrayMap<String, DualTimer> map3 = this.mJobStats.getMap();
            for (int size3 = map3.size() - 1; size3 >= 0; size3--) {
                DualTimer dualTimerValueAt2 = map3.valueAt(size3);
                if (dualTimerValueAt2.reset(false)) {
                    map3.removeAt(size3);
                    dualTimerValueAt2.detach();
                } else {
                    z3 = true;
                }
            }
            this.mJobStats.cleanup();
            this.mJobCompletions.clear();
            for (int size4 = this.mSensorStats.size() - 1; size4 >= 0; size4--) {
                if (this.mSensorStats.valueAt(size4).reset()) {
                    this.mSensorStats.removeAt(size4);
                } else {
                    z3 = true;
                }
            }
            for (int size5 = this.mProcessStats.size() - 1; size5 >= 0; size5--) {
                this.mProcessStats.valueAt(size5).detach();
            }
            this.mProcessStats.clear();
            if (this.mPids.size() > 0) {
                for (int size6 = this.mPids.size() - 1; size6 >= 0; size6--) {
                    if (this.mPids.valueAt(size6).mWakeNesting > 0) {
                        z3 = true;
                    } else {
                        this.mPids.removeAt(size6);
                    }
                }
            }
            if (this.mPackageStats.size() > 0) {
                Iterator<Map.Entry<String, Pkg>> it = this.mPackageStats.entrySet().iterator();
                while (it.hasNext()) {
                    Pkg value = it.next().getValue();
                    value.detach();
                    if (value.mServiceStats.size() > 0) {
                        Iterator<Map.Entry<String, Pkg.Serv>> it2 = value.mServiceStats.entrySet().iterator();
                        while (it2.hasNext()) {
                            it2.next().getValue().detach();
                        }
                    }
                }
                this.mPackageStats.clear();
            }
            this.mLastStepSystemTime = 0L;
            this.mLastStepUserTime = 0L;
            this.mCurStepSystemTime = 0L;
            this.mCurStepUserTime = 0L;
            if (!z3) {
                StopwatchTimer stopwatchTimer6 = this.mWifiRunningTimer;
                if (stopwatchTimer6 != null) {
                    stopwatchTimer6.detach();
                }
                StopwatchTimer stopwatchTimer7 = this.mFullWifiLockTimer;
                if (stopwatchTimer7 != null) {
                    stopwatchTimer7.detach();
                }
                DualTimer dualTimer2 = this.mWifiScanTimer;
                if (dualTimer2 != null) {
                    dualTimer2.detach();
                }
                for (int i6 = 0; i6 < 5; i6++) {
                    StopwatchTimer stopwatchTimer8 = this.mWifiBatchedScanTimer[i6];
                    if (stopwatchTimer8 != null) {
                        stopwatchTimer8.detach();
                    }
                }
                StopwatchTimer stopwatchTimer9 = this.mWifiMulticastTimer;
                if (stopwatchTimer9 != null) {
                    stopwatchTimer9.detach();
                }
                StopwatchTimer stopwatchTimer10 = this.mAudioTurnedOnTimer;
                if (stopwatchTimer10 != null) {
                    stopwatchTimer10.detach();
                    this.mAudioTurnedOnTimer = null;
                }
                StopwatchTimer stopwatchTimer11 = this.mVideoTurnedOnTimer;
                if (stopwatchTimer11 != null) {
                    stopwatchTimer11.detach();
                    this.mVideoTurnedOnTimer = null;
                }
                StopwatchTimer stopwatchTimer12 = this.mFlashlightTurnedOnTimer;
                if (stopwatchTimer12 != null) {
                    stopwatchTimer12.detach();
                    this.mFlashlightTurnedOnTimer = null;
                }
                StopwatchTimer stopwatchTimer13 = this.mCameraTurnedOnTimer;
                if (stopwatchTimer13 != null) {
                    stopwatchTimer13.detach();
                    this.mCameraTurnedOnTimer = null;
                }
                StopwatchTimer stopwatchTimer14 = this.mForegroundActivityTimer;
                if (stopwatchTimer14 != null) {
                    stopwatchTimer14.detach();
                    this.mForegroundActivityTimer = null;
                }
                StopwatchTimer stopwatchTimer15 = this.mForegroundServiceTimer;
                if (stopwatchTimer15 != null) {
                    stopwatchTimer15.detach();
                    this.mForegroundServiceTimer = null;
                }
                DualTimer dualTimer3 = this.mAggregatedPartialWakelockTimer;
                if (dualTimer3 != null) {
                    dualTimer3.detach();
                    this.mAggregatedPartialWakelockTimer = null;
                }
                DualTimer dualTimer4 = this.mBluetoothScanTimer;
                if (dualTimer4 != null) {
                    dualTimer4.detach();
                    this.mBluetoothScanTimer = null;
                }
                DualTimer dualTimer5 = this.mBluetoothUnoptimizedScanTimer;
                if (dualTimer5 != null) {
                    dualTimer5.detach();
                    this.mBluetoothUnoptimizedScanTimer = null;
                }
                Counter counter3 = this.mBluetoothScanResultCounter;
                if (counter3 != null) {
                    counter3.detach();
                    this.mBluetoothScanResultCounter = null;
                }
                Counter counter4 = this.mBluetoothScanResultBgCounter;
                if (counter4 != null) {
                    counter4.detach();
                    this.mBluetoothScanResultBgCounter = null;
                }
                if (this.mUserActivityCounters != null) {
                    for (int i7 = 0; i7 < 4; i7++) {
                        this.mUserActivityCounters[i7].detach();
                    }
                }
                if (this.mNetworkByteActivityCounters != null) {
                    for (int i8 = 0; i8 < 10; i8++) {
                        this.mNetworkByteActivityCounters[i8].detach();
                        this.mNetworkPacketActivityCounters[i8].detach();
                    }
                }
                ControllerActivityCounterImpl controllerActivityCounterImpl4 = this.mWifiControllerActivity;
                if (controllerActivityCounterImpl4 != null) {
                    controllerActivityCounterImpl4.detach();
                }
                ControllerActivityCounterImpl controllerActivityCounterImpl5 = this.mBluetoothControllerActivity;
                if (controllerActivityCounterImpl5 != null) {
                    controllerActivityCounterImpl5.detach();
                }
                ControllerActivityCounterImpl controllerActivityCounterImpl6 = this.mModemControllerActivity;
                if (controllerActivityCounterImpl6 != null) {
                    controllerActivityCounterImpl6.detach();
                }
                this.mPids.clear();
                this.mUserCpuTime.detach();
                this.mSystemCpuTime.detach();
                LongSamplingCounter[][] longSamplingCounterArr3 = this.mCpuClusterSpeedTimesUs;
                if (longSamplingCounterArr3 != null) {
                    for (LongSamplingCounter[] longSamplingCounterArr4 : longSamplingCounterArr3) {
                        if (longSamplingCounterArr4 != null) {
                            for (LongSamplingCounter longSamplingCounter2 : longSamplingCounterArr4) {
                                if (longSamplingCounter2 != null) {
                                    longSamplingCounter2.detach();
                                }
                            }
                        }
                    }
                }
                LongSamplingCounterArray longSamplingCounterArray3 = this.mCpuFreqTimeMs;
                if (longSamplingCounterArray3 != null) {
                    longSamplingCounterArray3.detach();
                }
                LongSamplingCounterArray longSamplingCounterArray4 = this.mScreenOffCpuFreqTimeMs;
                if (longSamplingCounterArray4 != null) {
                    longSamplingCounterArray4.detach();
                }
                BatteryStatsImpl.detachLongCounterIfNotNull(this.mMobileRadioApWakeupCount);
                BatteryStatsImpl.detachLongCounterIfNotNull(this.mWifiRadioApWakeupCount);
            }
            return !z3;
        }

        public boolean updateOnBatteryBgTimeBase(long j2, long j3) {
            return this.mOnBatteryBackgroundTimeBase.setRunning(this.mBsi.mOnBatteryTimeBase.isRunning() && isInBackground(), j2, j3);
        }

        public boolean updateOnBatteryScreenOffBgTimeBase(long j2, long j3) {
            return this.mOnBatteryScreenOffBackgroundTimeBase.setRunning(this.mBsi.mOnBatteryScreenOffTimeBase.isRunning() && isInBackground(), j2, j3);
        }

        public void updateUidProcessStateLocked(int i2) {
            int i3 = 1;
            boolean z2 = i2 == 4;
            if (i2 == 18) {
                i3 = 18;
            } else if (i2 == 2) {
                i3 = 0;
            } else if (i2 > 4) {
                i3 = 5;
                if (i2 <= 5) {
                    i3 = 2;
                } else if (i2 <= 6) {
                    i3 = 3;
                } else if (i2 <= 12) {
                    i3 = 4;
                }
            }
            if (this.mProcessState == i3 && z2 == this.mInForegroundService) {
                return;
            }
            long jElapsedRealtime = this.mBsi.mClocks.elapsedRealtime();
            if (this.mProcessState != i3) {
                long jUptimeMillis = this.mBsi.mClocks.uptimeMillis();
                int i4 = this.mProcessState;
                if (i4 != 18) {
                    this.mProcessStateTimer[i4].stopRunningLocked(jElapsedRealtime);
                }
                this.mProcessState = i3;
                if (i3 != 18) {
                    if (this.mProcessStateTimer[i3] == null) {
                        makeProcessState(i3, null);
                    }
                    this.mProcessStateTimer[i3].startRunningLocked(jElapsedRealtime);
                }
                long j2 = jUptimeMillis * 1000;
                long j3 = 1000 * jElapsedRealtime;
                updateOnBatteryBgTimeBase(j2, j3);
                updateOnBatteryScreenOffBgTimeBase(j2, j3);
            }
            if (z2 != this.mInForegroundService) {
                if (z2) {
                    noteForegroundServiceResumedLocked(jElapsedRealtime);
                } else {
                    noteForegroundServicePausedLocked(jElapsedRealtime);
                }
                this.mInForegroundService = z2;
            }
        }

        public void writeJobCompletionsToParcelLocked(Parcel parcel) {
            int size = this.mJobCompletions.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                parcel.writeString(this.mJobCompletions.keyAt(i2));
                SparseIntArray sparseIntArrayValueAt = this.mJobCompletions.valueAt(i2);
                int size2 = sparseIntArrayValueAt.size();
                parcel.writeInt(size2);
                for (int i3 = 0; i3 < size2; i3++) {
                    parcel.writeInt(sparseIntArrayValueAt.keyAt(i3));
                    parcel.writeInt(sparseIntArrayValueAt.valueAt(i3));
                }
            }
        }

        public void writeToParcelLocked(Parcel parcel, long j2, long j3) {
            this.mOnBatteryBackgroundTimeBase.writeToParcel(parcel, j2, j3);
            this.mOnBatteryScreenOffBackgroundTimeBase.writeToParcel(parcel, j2, j3);
            ArrayMap<String, Wakelock> map = this.mWakelockStats.getMap();
            int size = map.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                parcel.writeString(map.keyAt(i2));
                map.valueAt(i2).writeToParcelLocked(parcel, j3);
            }
            ArrayMap<String, DualTimer> map2 = this.mSyncStats.getMap();
            int size2 = map2.size();
            parcel.writeInt(size2);
            for (int i3 = 0; i3 < size2; i3++) {
                parcel.writeString(map2.keyAt(i3));
                Timer.writeTimerToParcel(parcel, map2.valueAt(i3), j3);
            }
            ArrayMap<String, DualTimer> map3 = this.mJobStats.getMap();
            int size3 = map3.size();
            parcel.writeInt(size3);
            for (int i4 = 0; i4 < size3; i4++) {
                parcel.writeString(map3.keyAt(i4));
                Timer.writeTimerToParcel(parcel, map3.valueAt(i4), j3);
            }
            writeJobCompletionsToParcelLocked(parcel);
            int size4 = this.mSensorStats.size();
            parcel.writeInt(size4);
            for (int i5 = 0; i5 < size4; i5++) {
                parcel.writeInt(this.mSensorStats.keyAt(i5));
                this.mSensorStats.valueAt(i5).writeToParcelLocked(parcel, j3);
            }
            int size5 = this.mProcessStats.size();
            parcel.writeInt(size5);
            for (int i6 = 0; i6 < size5; i6++) {
                parcel.writeString(this.mProcessStats.keyAt(i6));
                this.mProcessStats.valueAt(i6).writeToParcelLocked(parcel);
            }
            parcel.writeInt(this.mPackageStats.size());
            for (Map.Entry<String, Pkg> entry : this.mPackageStats.entrySet()) {
                parcel.writeString(entry.getKey());
                entry.getValue().writeToParcelLocked(parcel);
            }
            if (this.mWifiRunningTimer != null) {
                parcel.writeInt(1);
                this.mWifiRunningTimer.writeToParcel(parcel, j3);
            } else {
                parcel.writeInt(0);
            }
            if (this.mFullWifiLockTimer != null) {
                parcel.writeInt(1);
                this.mFullWifiLockTimer.writeToParcel(parcel, j3);
            } else {
                parcel.writeInt(0);
            }
            if (this.mWifiScanTimer != null) {
                parcel.writeInt(1);
                this.mWifiScanTimer.writeToParcel(parcel, j3);
            } else {
                parcel.writeInt(0);
            }
            for (int i7 = 0; i7 < 5; i7++) {
                if (this.mWifiBatchedScanTimer[i7] != null) {
                    parcel.writeInt(1);
                    this.mWifiBatchedScanTimer[i7].writeToParcel(parcel, j3);
                } else {
                    parcel.writeInt(0);
                }
            }
            if (this.mWifiMulticastTimer != null) {
                parcel.writeInt(1);
                this.mWifiMulticastTimer.writeToParcel(parcel, j3);
            } else {
                parcel.writeInt(0);
            }
            if (this.mAudioTurnedOnTimer != null) {
                parcel.writeInt(1);
                this.mAudioTurnedOnTimer.writeToParcel(parcel, j3);
            } else {
                parcel.writeInt(0);
            }
            if (this.mVideoTurnedOnTimer != null) {
                parcel.writeInt(1);
                this.mVideoTurnedOnTimer.writeToParcel(parcel, j3);
            } else {
                parcel.writeInt(0);
            }
            if (this.mFlashlightTurnedOnTimer != null) {
                parcel.writeInt(1);
                this.mFlashlightTurnedOnTimer.writeToParcel(parcel, j3);
            } else {
                parcel.writeInt(0);
            }
            if (this.mCameraTurnedOnTimer != null) {
                parcel.writeInt(1);
                this.mCameraTurnedOnTimer.writeToParcel(parcel, j3);
            } else {
                parcel.writeInt(0);
            }
            if (this.mForegroundActivityTimer != null) {
                parcel.writeInt(1);
                this.mForegroundActivityTimer.writeToParcel(parcel, j3);
            } else {
                parcel.writeInt(0);
            }
            if (this.mForegroundServiceTimer != null) {
                parcel.writeInt(1);
                this.mForegroundServiceTimer.writeToParcel(parcel, j3);
            } else {
                parcel.writeInt(0);
            }
            if (this.mAggregatedPartialWakelockTimer != null) {
                parcel.writeInt(1);
                this.mAggregatedPartialWakelockTimer.writeToParcel(parcel, j3);
            } else {
                parcel.writeInt(0);
            }
            if (this.mBluetoothScanTimer != null) {
                parcel.writeInt(1);
                this.mBluetoothScanTimer.writeToParcel(parcel, j3);
            } else {
                parcel.writeInt(0);
            }
            if (this.mBluetoothUnoptimizedScanTimer != null) {
                parcel.writeInt(1);
                this.mBluetoothUnoptimizedScanTimer.writeToParcel(parcel, j3);
            } else {
                parcel.writeInt(0);
            }
            if (this.mBluetoothScanResultCounter != null) {
                parcel.writeInt(1);
                this.mBluetoothScanResultCounter.writeToParcel(parcel);
            } else {
                parcel.writeInt(0);
            }
            if (this.mBluetoothScanResultBgCounter != null) {
                parcel.writeInt(1);
                this.mBluetoothScanResultBgCounter.writeToParcel(parcel);
            } else {
                parcel.writeInt(0);
            }
            for (int i8 = 0; i8 < 6; i8++) {
                if (this.mProcessStateTimer[i8] != null) {
                    parcel.writeInt(1);
                    this.mProcessStateTimer[i8].writeToParcel(parcel, j3);
                } else {
                    parcel.writeInt(0);
                }
            }
            if (this.mVibratorOnTimer != null) {
                parcel.writeInt(1);
                this.mVibratorOnTimer.writeToParcel(parcel, j3);
            } else {
                parcel.writeInt(0);
            }
            if (this.mUserActivityCounters != null) {
                parcel.writeInt(1);
                for (int i9 = 0; i9 < 4; i9++) {
                    this.mUserActivityCounters[i9].writeToParcel(parcel);
                }
            } else {
                parcel.writeInt(0);
            }
            if (this.mNetworkByteActivityCounters != null) {
                parcel.writeInt(1);
                for (int i10 = 0; i10 < 10; i10++) {
                    this.mNetworkByteActivityCounters[i10].writeToParcel(parcel);
                    this.mNetworkPacketActivityCounters[i10].writeToParcel(parcel);
                }
                this.mMobileRadioActiveTime.writeToParcel(parcel);
                this.mMobileRadioActiveCount.writeToParcel(parcel);
            } else {
                parcel.writeInt(0);
            }
            if (this.mWifiControllerActivity != null) {
                parcel.writeInt(1);
                this.mWifiControllerActivity.writeToParcel(parcel, 0);
            } else {
                parcel.writeInt(0);
            }
            if (this.mBluetoothControllerActivity != null) {
                parcel.writeInt(1);
                this.mBluetoothControllerActivity.writeToParcel(parcel, 0);
            } else {
                parcel.writeInt(0);
            }
            if (this.mModemControllerActivity != null) {
                parcel.writeInt(1);
                this.mModemControllerActivity.writeToParcel(parcel, 0);
            } else {
                parcel.writeInt(0);
            }
            this.mUserCpuTime.writeToParcel(parcel);
            this.mSystemCpuTime.writeToParcel(parcel);
            if (this.mCpuClusterSpeedTimesUs != null) {
                parcel.writeInt(1);
                parcel.writeInt(this.mCpuClusterSpeedTimesUs.length);
                for (LongSamplingCounter[] longSamplingCounterArr : this.mCpuClusterSpeedTimesUs) {
                    if (longSamplingCounterArr != null) {
                        parcel.writeInt(1);
                        parcel.writeInt(longSamplingCounterArr.length);
                        for (LongSamplingCounter longSamplingCounter : longSamplingCounterArr) {
                            if (longSamplingCounter != null) {
                                parcel.writeInt(1);
                                longSamplingCounter.writeToParcel(parcel);
                            } else {
                                parcel.writeInt(0);
                            }
                        }
                    } else {
                        parcel.writeInt(0);
                    }
                }
            } else {
                parcel.writeInt(0);
            }
            LongSamplingCounterArray.writeToParcel(parcel, this.mCpuFreqTimeMs);
            LongSamplingCounterArray.writeToParcel(parcel, this.mScreenOffCpuFreqTimeMs);
            if (this.mMobileRadioApWakeupCount != null) {
                parcel.writeInt(1);
                this.mMobileRadioApWakeupCount.writeToParcel(parcel);
            } else {
                parcel.writeInt(0);
            }
            if (this.mWifiRadioApWakeupCount == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                this.mWifiRadioApWakeupCount.writeToParcel(parcel);
            }
        }

        @Override // android.os.BatteryStats.Uid
        public Timer getAggregatedPartialWakelockTimer() {
            return this.mAggregatedPartialWakelockTimer;
        }

        @Override // android.os.BatteryStats.Uid
        public Timer getAudioTurnedOnTimer() {
            return this.mAudioTurnedOnTimer;
        }

        @Override // android.os.BatteryStats.Uid
        public Timer getBluetoothScanBackgroundTimer() {
            DualTimer dualTimer = this.mBluetoothScanTimer;
            if (dualTimer == null) {
                return null;
            }
            return dualTimer.getSubTimer();
        }

        @Override // android.os.BatteryStats.Uid
        public Counter getBluetoothScanResultBgCounter() {
            return this.mBluetoothScanResultBgCounter;
        }

        @Override // android.os.BatteryStats.Uid
        public Counter getBluetoothScanResultCounter() {
            return this.mBluetoothScanResultCounter;
        }

        @Override // android.os.BatteryStats.Uid
        public Timer getBluetoothScanTimer() {
            return this.mBluetoothScanTimer;
        }

        @Override // android.os.BatteryStats.Uid
        public Timer getBluetoothUnoptimizedScanBackgroundTimer() {
            DualTimer dualTimer = this.mBluetoothUnoptimizedScanTimer;
            if (dualTimer == null) {
                return null;
            }
            return dualTimer.getSubTimer();
        }

        @Override // android.os.BatteryStats.Uid
        public Timer getBluetoothUnoptimizedScanTimer() {
            return this.mBluetoothUnoptimizedScanTimer;
        }

        @Override // android.os.BatteryStats.Uid
        public Timer getCameraTurnedOnTimer() {
            return this.mCameraTurnedOnTimer;
        }

        @Override // android.os.BatteryStats.Uid
        public Timer getFlashlightTurnedOnTimer() {
            return this.mFlashlightTurnedOnTimer;
        }

        @Override // android.os.BatteryStats.Uid
        public Timer getForegroundActivityTimer() {
            return this.mForegroundActivityTimer;
        }

        @Override // android.os.BatteryStats.Uid
        public Timer getForegroundServiceTimer() {
            return this.mForegroundServiceTimer;
        }

        @Override // android.os.BatteryStats.Uid
        public Timer getProcessStateTimer(int i2) {
            if (i2 < 0 || i2 >= 6) {
                return null;
            }
            return this.mProcessStateTimer[i2];
        }

        @Override // android.os.BatteryStats.Uid
        public Timer getVibratorOnTimer() {
            return this.mVibratorOnTimer;
        }

        @Override // android.os.BatteryStats.Uid
        public Timer getVideoTurnedOnTimer() {
            return this.mVideoTurnedOnTimer;
        }
    }

    public static abstract class UserInfoProvider {
        private int[] userIds;

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean exists(int i2) {
            int[] iArr = this.userIds;
            if (iArr != null) {
                return ArrayUtils.contains(iArr, i2);
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void refreshUserIds() {
            this.userIds = getUserIds();
        }

        public abstract int[] getUserIds();
    }

    static {
        if (ActivityManager.isLowRamDeviceStatic()) {
            MAX_HISTORY_ITEMS = 800;
            MAX_MAX_HISTORY_ITEMS = PreciseDisconnectCause.LOCAL_ILLEGAL_ARGUMENT;
            MAX_WAKELOCKS_PER_UID = 40;
            MAX_HISTORY_BUFFER = 98304;
            MAX_MAX_HISTORY_BUFFER = 131072;
        } else {
            MAX_HISTORY_ITEMS = 2000;
            MAX_MAX_HISTORY_ITEMS = PathInterpolatorCompat.MAX_NUM_POINTS;
            MAX_WAKELOCKS_PER_UID = 100;
            MAX_HISTORY_BUFFER = 262144;
            MAX_MAX_HISTORY_BUFFER = 327680;
        }
        CREATOR = new Parcelable.Creator<BatteryStatsImpl>() { // from class: com.android.internal.os.BatteryStatsImpl.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public BatteryStatsImpl createFromParcel(Parcel parcel) {
                return new BatteryStatsImpl(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public BatteryStatsImpl[] newArray(int i2) {
                return new BatteryStatsImpl[i2];
            }
        };
    }

    public BatteryStatsImpl() {
        this(new SystemClocks());
    }

    private void addPackageChange(BatteryStats.PackageChange packageChange) {
        if (this.mDailyPackageChanges == null) {
            this.mDailyPackageChanges = new ArrayList<>();
        }
        this.mDailyPackageChanges.add(packageChange);
    }

    private int buildBatteryLevelInt(BatteryStats.HistoryItem historyItem) {
        return ((historyItem.batteryVoltage << 1) & 32766) | ((historyItem.batteryLevel << Ascii.EM) & DELTA_STATE_MASK) | ((historyItem.batteryTemperature << 15) & 33521664);
    }

    private int buildStateInt(BatteryStats.HistoryItem historyItem) {
        int i2;
        byte b2 = historyItem.batteryPlugType;
        if ((b2 & 1) != 0) {
            i2 = 1;
        } else if ((b2 & 2) != 0) {
            i2 = 2;
        } else {
            i2 = (b2 & 4) != 0 ? 3 : 0;
        }
        return (historyItem.states & 16777215) | ((i2 & 3) << 24) | ((historyItem.batteryStatus & 7) << 29) | ((historyItem.batteryHealth & 7) << 26);
    }

    private void computeHistoryStepDetails(BatteryStats.HistoryStepDetails historyStepDetails, BatteryStats.HistoryStepDetails historyStepDetails2) {
        BatteryStats.HistoryStepDetails historyStepDetails3 = historyStepDetails2 != null ? this.mTmpHistoryStepDetails : historyStepDetails;
        requestImmediateCpuUpdate();
        int i2 = 0;
        if (historyStepDetails2 == null) {
            int size = this.mUidStats.size();
            while (i2 < size) {
                Uid uidValueAt = this.mUidStats.valueAt(i2);
                uidValueAt.mLastStepUserTime = uidValueAt.mCurStepUserTime;
                uidValueAt.mLastStepSystemTime = uidValueAt.mCurStepSystemTime;
                i2++;
            }
            this.mLastStepCpuUserTime = this.mCurStepCpuUserTime;
            this.mLastStepCpuSystemTime = this.mCurStepCpuSystemTime;
            this.mLastStepStatUserTime = this.mCurStepStatUserTime;
            this.mLastStepStatSystemTime = this.mCurStepStatSystemTime;
            this.mLastStepStatIOWaitTime = this.mCurStepStatIOWaitTime;
            this.mLastStepStatIrqTime = this.mCurStepStatIrqTime;
            this.mLastStepStatSoftIrqTime = this.mCurStepStatSoftIrqTime;
            this.mLastStepStatIdleTime = this.mCurStepStatIdleTime;
            historyStepDetails3.clear();
            return;
        }
        historyStepDetails.userTime = (int) (this.mCurStepCpuUserTime - this.mLastStepCpuUserTime);
        historyStepDetails.systemTime = (int) (this.mCurStepCpuSystemTime - this.mLastStepCpuSystemTime);
        historyStepDetails.statUserTime = (int) (this.mCurStepStatUserTime - this.mLastStepStatUserTime);
        historyStepDetails.statSystemTime = (int) (this.mCurStepStatSystemTime - this.mLastStepStatSystemTime);
        historyStepDetails.statIOWaitTime = (int) (this.mCurStepStatIOWaitTime - this.mLastStepStatIOWaitTime);
        historyStepDetails.statIrqTime = (int) (this.mCurStepStatIrqTime - this.mLastStepStatIrqTime);
        historyStepDetails.statSoftIrqTime = (int) (this.mCurStepStatSoftIrqTime - this.mLastStepStatSoftIrqTime);
        historyStepDetails.statIdlTime = (int) (this.mCurStepStatIdleTime - this.mLastStepStatIdleTime);
        historyStepDetails.appCpuUid3 = -1;
        historyStepDetails.appCpuUid2 = -1;
        historyStepDetails.appCpuUid1 = -1;
        historyStepDetails.appCpuUTime3 = 0;
        historyStepDetails.appCpuUTime2 = 0;
        historyStepDetails.appCpuUTime1 = 0;
        historyStepDetails.appCpuSTime3 = 0;
        historyStepDetails.appCpuSTime2 = 0;
        historyStepDetails.appCpuSTime1 = 0;
        int size2 = this.mUidStats.size();
        while (i2 < size2) {
            Uid uidValueAt2 = this.mUidStats.valueAt(i2);
            long j2 = uidValueAt2.mCurStepUserTime;
            int i3 = (int) (j2 - uidValueAt2.mLastStepUserTime);
            long j3 = uidValueAt2.mCurStepSystemTime;
            int i4 = (int) (j3 - uidValueAt2.mLastStepSystemTime);
            int i5 = i3 + i4;
            uidValueAt2.mLastStepUserTime = j2;
            uidValueAt2.mLastStepSystemTime = j3;
            if (i5 > historyStepDetails.appCpuUTime3 + historyStepDetails.appCpuSTime3) {
                int i6 = historyStepDetails.appCpuUTime2;
                int i7 = historyStepDetails.appCpuSTime2;
                if (i5 <= i6 + i7) {
                    historyStepDetails.appCpuUid3 = uidValueAt2.mUid;
                    historyStepDetails.appCpuUTime3 = i3;
                    historyStepDetails.appCpuSTime3 = i4;
                } else {
                    historyStepDetails.appCpuUid3 = historyStepDetails.appCpuUid2;
                    historyStepDetails.appCpuUTime3 = i6;
                    historyStepDetails.appCpuSTime3 = i7;
                    int i8 = historyStepDetails.appCpuUTime1;
                    int i9 = historyStepDetails.appCpuSTime1;
                    if (i5 <= i8 + i9) {
                        historyStepDetails.appCpuUid2 = uidValueAt2.mUid;
                        historyStepDetails.appCpuUTime2 = i3;
                        historyStepDetails.appCpuSTime2 = i4;
                    } else {
                        historyStepDetails.appCpuUid2 = historyStepDetails.appCpuUid1;
                        historyStepDetails.appCpuUTime2 = i8;
                        historyStepDetails.appCpuSTime2 = i9;
                        historyStepDetails.appCpuUid1 = uidValueAt2.mUid;
                        historyStepDetails.appCpuUTime1 = i3;
                        historyStepDetails.appCpuSTime1 = i4;
                    }
                }
            }
            i2++;
        }
        this.mLastStepCpuUserTime = this.mCurStepCpuUserTime;
        this.mLastStepCpuSystemTime = this.mCurStepCpuSystemTime;
        this.mLastStepStatUserTime = this.mCurStepStatUserTime;
        this.mLastStepStatSystemTime = this.mCurStepStatSystemTime;
        this.mLastStepStatIOWaitTime = this.mCurStepStatIOWaitTime;
        this.mLastStepStatIrqTime = this.mCurStepStatIrqTime;
        this.mLastStepStatSoftIrqTime = this.mCurStepStatSoftIrqTime;
        this.mLastStepStatIdleTime = this.mCurStepStatIdleTime;
    }

    private long computeTimePerLevel(long[] jArr, int i2) {
        if (i2 <= 0) {
            return -1L;
        }
        long j2 = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            j2 += jArr[i3] & BatteryStats.STEP_LEVEL_TIME_MASK;
        }
        return j2 / ((long) i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void detachLongCounterIfNotNull(LongSamplingCounter longSamplingCounter) {
        if (longSamplingCounter != null) {
            longSamplingCounter.detach();
        }
    }

    private static void detachTimerIfNotNull(Timer timer) {
        if (timer != null) {
            timer.detach();
        }
    }

    private static String[] excludeFromStringArray(String[] strArr, String str) {
        int iIndexOf = ArrayUtils.indexOf(strArr, str);
        if (iIndexOf < 0) {
            return strArr;
        }
        String[] strArr2 = new String[strArr.length - 1];
        if (iIndexOf > 0) {
            System.arraycopy(strArr, 0, strArr2, 0, iIndexOf);
        }
        if (iIndexOf < strArr.length - 1) {
            System.arraycopy(strArr, iIndexOf + 1, strArr2, iIndexOf, (strArr.length - iIndexOf) - 1);
        }
        return strArr2;
    }

    private int fixPhoneServiceState(int i2, int i3) {
        if (this.mPhoneSimStateRaw == 1 && i2 == 1 && i3 > 0) {
            return 0;
        }
        return i2;
    }

    private static String[] includeInStringArray(String[] strArr, String str) {
        if (ArrayUtils.indexOf(strArr, str) >= 0) {
            return strArr;
        }
        String[] strArr2 = new String[strArr.length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[strArr.length] = str;
        return strArr2;
    }

    private void init(Clocks clocks) {
        this.mClocks = clocks;
    }

    private void initActiveHistoryEventsLocked(long j2, long j3) {
        HashMap<String, SparseIntArray> stateForEvent;
        for (int i2 = 0; i2 < 22; i2++) {
            if ((this.mRecordAllHistory || i2 != 1) && (stateForEvent = this.mActiveEvents.getStateForEvent(i2)) != null) {
                for (Map.Entry<String, SparseIntArray> entry : stateForEvent.entrySet()) {
                    SparseIntArray value = entry.getValue();
                    for (int i3 = 0; i3 < value.size(); i3++) {
                        addHistoryEventLocked(j2, j3, i2, entry.getKey(), value.keyAt(i3));
                    }
                }
            }
        }
    }

    private void noteBluetoothScanStartedLocked(int i2, boolean z2) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        if (this.mBluetoothScanNesting == 0) {
            this.mHistoryCur.states2 |= 1048576;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            this.mBluetoothScanTimer.startRunningLocked(jElapsedRealtime);
        }
        this.mBluetoothScanNesting++;
        getUidStatsLocked(iMapUid).noteBluetoothScanStartedLocked(jElapsedRealtime, z2);
    }

    private void noteBluetoothScanStoppedLocked(int i2, boolean z2) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        int i3 = this.mBluetoothScanNesting - 1;
        this.mBluetoothScanNesting = i3;
        if (i3 == 0) {
            this.mHistoryCur.states2 &= -1048577;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            this.mBluetoothScanTimer.stopRunningLocked(jElapsedRealtime);
        }
        getUidStatsLocked(iMapUid).noteBluetoothScanStoppedLocked(jElapsedRealtime, z2);
    }

    private void noteMobileRadioApWakeupLocked(long j2, long j3, int i2) {
        int iMapUid = mapUid(i2);
        addHistoryEventLocked(j2, j3, 19, "", iMapUid);
        getUidStatsLocked(iMapUid).noteMobileRadioApWakeupLocked();
    }

    private void noteWifiRadioApWakeupLocked(long j2, long j3, int i2) {
        int iMapUid = mapUid(i2);
        addHistoryEventLocked(j2, j3, 19, "", iMapUid);
        getUidStatsLocked(iMapUid).noteWifiRadioApWakeupLocked();
    }

    private void readBatteryLevelInt(int i2, BatteryStats.HistoryItem historyItem) {
        historyItem.batteryLevel = (byte) ((DELTA_STATE_MASK & i2) >>> 25);
        historyItem.batteryTemperature = (short) ((33521664 & i2) >>> 15);
        historyItem.batteryVoltage = (char) ((i2 & 32766) >>> 1);
    }

    private void readDailyItemsLocked(XmlPullParser xmlPullParser) {
        int next;
        do {
            try {
                next = xmlPullParser.next();
                if (next == 2) {
                    break;
                }
            } catch (IOException e2) {
                Slog.w(TAG, "Failed parsing daily " + e2);
                return;
            } catch (IllegalStateException e3) {
                Slog.w(TAG, "Failed parsing daily " + e3);
                return;
            } catch (IndexOutOfBoundsException e4) {
                Slog.w(TAG, "Failed parsing daily " + e4);
                return;
            } catch (NullPointerException e5) {
                Slog.w(TAG, "Failed parsing daily " + e5);
                return;
            } catch (NumberFormatException e6) {
                Slog.w(TAG, "Failed parsing daily " + e6);
                return;
            } catch (XmlPullParserException e7) {
                Slog.w(TAG, "Failed parsing daily " + e7);
                return;
            }
        } while (next != 1);
        if (next != 2) {
            throw new IllegalStateException("no start tag found");
        }
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 == 1) {
                return;
            }
            if (next2 == 3 && xmlPullParser.getDepth() <= depth) {
                return;
            }
            if (next2 != 3 && next2 != 4) {
                if (xmlPullParser.getName().equals(ImsConfig.EXTRA_CHANGED_ITEM)) {
                    readDailyItemTagLocked(xmlPullParser);
                } else {
                    Slog.w(TAG, "Unknown element under <daily-items>: " + xmlPullParser.getName());
                    XmlUtils.skipCurrentTag(xmlPullParser);
                }
            }
        }
    }

    private void readHistoryTag(int i2, BatteryStats.HistoryTag historyTag) {
        historyTag.string = this.mReadHistoryStrings[i2];
        historyTag.uid = this.mReadHistoryUids[i2];
        historyTag.poolIdx = i2;
    }

    private NetworkStats readNetworkStatsLocked(String[] strArr) {
        try {
            if (ArrayUtils.isEmpty(strArr)) {
                return null;
            }
            return this.mNetworkStatsFactory.readNetworkStatsDetail(-1, strArr, 0, this.mNetworkStatsPool.acquire());
        } catch (IOException unused) {
            Slog.e(TAG, "failed to read network stats for ifaces: " + Arrays.toString(strArr));
            return null;
        }
    }

    private void recordCurrentTimeChangeLocked(long j2, long j3, long j4) {
        if (this.mRecordingHistory) {
            BatteryStats.HistoryItem historyItem = this.mHistoryCur;
            historyItem.currentTime = j2;
            addHistoryBufferLocked(j3, j4, (byte) 5, historyItem);
            this.mHistoryCur.currentTime = 0L;
        }
    }

    private void recordShutdownLocked(long j2, long j3) {
        if (this.mRecordingHistory) {
            this.mHistoryCur.currentTime = System.currentTimeMillis();
            addHistoryBufferLocked(j2, j3, (byte) 8, this.mHistoryCur);
            this.mHistoryCur.currentTime = 0L;
        }
    }

    private void requestImmediateCpuUpdate() {
        this.mHandler.removeMessages(1);
        this.mHandler.sendEmptyMessage(1);
    }

    private void requestWakelockCpuUpdate() {
        if (this.mHandler.hasMessages(1)) {
            return;
        }
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1), 5000L);
    }

    private void resetAllStatsLocked() {
        long jUptimeMillis = this.mClocks.uptimeMillis();
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        this.mStartCount = 0;
        long j2 = jUptimeMillis * 1000;
        long j3 = 1000 * jElapsedRealtime;
        initTimes(j2, j3);
        this.mScreenOnTimer.reset(false);
        this.mScreenDozeTimer.reset(false);
        for (int i2 = 0; i2 < 5; i2++) {
            this.mScreenBrightnessTimer[i2].reset(false);
        }
        PowerProfile powerProfile = this.mPowerProfile;
        if (powerProfile != null) {
            this.mEstimatedBatteryCapacity = (int) powerProfile.getBatteryCapacity();
        } else {
            this.mEstimatedBatteryCapacity = -1;
        }
        this.mMinLearnedBatteryCapacity = -1;
        this.mMaxLearnedBatteryCapacity = -1;
        this.mInteractiveTimer.reset(false);
        this.mPowerSaveModeEnabledTimer.reset(false);
        this.mLastIdleTimeStart = jElapsedRealtime;
        this.mLongestLightIdleTime = 0L;
        this.mLongestFullIdleTime = 0L;
        this.mDeviceIdleModeLightTimer.reset(false);
        this.mDeviceIdleModeFullTimer.reset(false);
        this.mDeviceLightIdlingTimer.reset(false);
        this.mDeviceIdlingTimer.reset(false);
        this.mPhoneOnTimer.reset(false);
        this.mAudioOnTimer.reset(false);
        this.mVideoOnTimer.reset(false);
        this.mFlashlightOnTimer.reset(false);
        this.mCameraOnTimer.reset(false);
        this.mBluetoothScanTimer.reset(false);
        for (int i3 = 0; i3 < 5; i3++) {
            this.mPhoneSignalStrengthsTimer[i3].reset(false);
        }
        this.mPhoneSignalScanningTimer.reset(false);
        for (int i4 = 0; i4 < 17; i4++) {
            this.mPhoneDataConnectionsTimer[i4].reset(false);
        }
        for (int i5 = 0; i5 < 10; i5++) {
            this.mNetworkByteActivityCounters[i5].reset(false);
            this.mNetworkPacketActivityCounters[i5].reset(false);
        }
        this.mMobileRadioActiveTimer.reset(false);
        this.mMobileRadioActivePerAppTimer.reset(false);
        this.mMobileRadioActiveAdjustedTime.reset(false);
        this.mMobileRadioActiveUnknownTime.reset(false);
        this.mMobileRadioActiveUnknownCount.reset(false);
        this.mWifiOnTimer.reset(false);
        this.mGlobalWifiRunningTimer.reset(false);
        for (int i6 = 0; i6 < 8; i6++) {
            this.mWifiStateTimer[i6].reset(false);
        }
        for (int i7 = 0; i7 < 13; i7++) {
            this.mWifiSupplStateTimer[i7].reset(false);
        }
        for (int i8 = 0; i8 < 5; i8++) {
            this.mWifiSignalStrengthsTimer[i8].reset(false);
        }
        this.mWifiActivity.reset(false);
        this.mBluetoothActivity.reset(false);
        this.mModemActivity.reset(false);
        this.mUnpluggedNumConnectivityChange = 0;
        this.mLoadedNumConnectivityChange = 0;
        this.mNumConnectivityChange = 0;
        int i9 = 0;
        while (i9 < this.mUidStats.size()) {
            if (this.mUidStats.valueAt(i9).reset(j2, j3)) {
                SparseArray<Uid> sparseArray = this.mUidStats;
                sparseArray.remove(sparseArray.keyAt(i9));
                i9--;
            }
            i9++;
        }
        if (this.mRpmStats.size() > 0) {
            Iterator<SamplingTimer> it = this.mRpmStats.values().iterator();
            while (it.hasNext()) {
                this.mOnBatteryTimeBase.remove(it.next());
            }
            this.mRpmStats.clear();
        }
        if (this.mScreenOffRpmStats.size() > 0) {
            Iterator<SamplingTimer> it2 = this.mScreenOffRpmStats.values().iterator();
            while (it2.hasNext()) {
                this.mOnBatteryScreenOffTimeBase.remove(it2.next());
            }
            this.mScreenOffRpmStats.clear();
        }
        if (this.mKernelWakelockStats.size() > 0) {
            Iterator<SamplingTimer> it3 = this.mKernelWakelockStats.values().iterator();
            while (it3.hasNext()) {
                this.mOnBatteryScreenOffTimeBase.remove(it3.next());
            }
            this.mKernelWakelockStats.clear();
        }
        if (this.mKernelMemoryStats.size() > 0) {
            for (int i10 = 0; i10 < this.mKernelMemoryStats.size(); i10++) {
                this.mOnBatteryTimeBase.remove(this.mKernelMemoryStats.valueAt(i10));
            }
            this.mKernelMemoryStats.clear();
        }
        if (this.mWakeupReasonStats.size() > 0) {
            Iterator<SamplingTimer> it4 = this.mWakeupReasonStats.values().iterator();
            while (it4.hasNext()) {
                this.mOnBatteryTimeBase.remove(it4.next());
            }
            this.mWakeupReasonStats.clear();
        }
        this.mLastHistoryStepDetails = null;
        this.mCurStepCpuUserTime = 0L;
        this.mLastStepCpuUserTime = 0L;
        this.mCurStepCpuSystemTime = 0L;
        this.mLastStepCpuSystemTime = 0L;
        this.mCurStepStatUserTime = 0L;
        this.mLastStepStatUserTime = 0L;
        this.mCurStepStatSystemTime = 0L;
        this.mLastStepStatSystemTime = 0L;
        this.mCurStepStatIOWaitTime = 0L;
        this.mLastStepStatIOWaitTime = 0L;
        this.mCurStepStatIrqTime = 0L;
        this.mLastStepStatIrqTime = 0L;
        this.mCurStepStatSoftIrqTime = 0L;
        this.mLastStepStatSoftIrqTime = 0L;
        this.mCurStepStatIdleTime = 0L;
        this.mLastStepStatIdleTime = 0L;
        initDischarge();
        clearHistoryLocked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void resetLongCounterIfNotNull(LongSamplingCounter longSamplingCounter, boolean z2) {
        if (longSamplingCounter != null) {
            longSamplingCounter.reset(z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean resetTimerIfNotNull(Timer timer, boolean z2) {
        if (timer != null) {
            return timer.reset(z2);
        }
        return true;
    }

    private void scheduleSyncExternalStatsLocked(String str, int i2) {
        ExternalStatsSync externalStatsSync = this.mExternalSync;
        if (externalStatsSync != null) {
            externalStatsSync.scheduleSync(str, i2);
        }
    }

    private void startRecordingHistory(long j2, long j3, boolean z2) {
        this.mRecordingHistory = true;
        this.mHistoryCur.currentTime = System.currentTimeMillis();
        addHistoryBufferLocked(j2, j3, z2 ? (byte) 7 : (byte) 5, this.mHistoryCur);
        this.mHistoryCur.currentTime = 0L;
        if (z2) {
            initActiveHistoryEventsLocked(j2, j3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0061  */
    /* JADX WARN: Code duplicated, block: B:27:0x0073 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x0075  */
    /* JADX WARN: Code duplicated, block: B:30:0x007e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0088  */
    /* JADX WARN: Code duplicated, block: B:34:0x009b  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:39:? A[RETURN, SYNTHETIC] */
    private void updateAllPhoneStateLocked(int i2, int i3, int i4) {
        boolean z2;
        int i5;
        this.mPhoneServiceStateRaw = i2;
        this.mPhoneSimStateRaw = i3;
        this.mPhoneSignalStrengthBinRaw = i4;
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        boolean z3 = false;
        boolean z4 = true;
        if (i3 == 1 && i2 == 1 && i4 > 0) {
            i2 = 0;
        }
        if (i2 != 3) {
            if (i2 != 0 && i2 == 1) {
                if (this.mPhoneSignalScanningTimer.isRunningLocked()) {
                    i4 = 0;
                    z2 = false;
                    z3 = true;
                } else {
                    this.mHistoryCur.states |= 2097152;
                    this.mPhoneSignalScanningTimer.startRunningLocked(jElapsedRealtime);
                    i4 = 0;
                    z3 = true;
                }
            }
            if (!z3 && this.mPhoneSignalScanningTimer.isRunningLocked()) {
                this.mHistoryCur.states &= -2097153;
                this.mPhoneSignalScanningTimer.stopRunningLocked(jElapsedRealtime);
                z2 = true;
            }
            if (this.mPhoneServiceState != i2) {
                BatteryStats.HistoryItem historyItem = this.mHistoryCur;
                historyItem.states = (historyItem.states & (-449)) | (i2 << 6);
                this.mPhoneServiceState = i2;
                z2 = true;
            }
            i5 = this.mPhoneSignalStrengthBin;
            if (i5 != i4) {
                if (i5 >= 0) {
                    this.mPhoneSignalStrengthsTimer[i5].stopRunningLocked(jElapsedRealtime);
                }
                if (i4 >= 0) {
                    if (!this.mPhoneSignalStrengthsTimer[i4].isRunningLocked()) {
                        this.mPhoneSignalStrengthsTimer[i4].startRunningLocked(jElapsedRealtime);
                    }
                    BatteryStats.HistoryItem historyItem2 = this.mHistoryCur;
                    historyItem2.states = (historyItem2.states & (-57)) | (i4 << 3);
                } else {
                    stopAllPhoneSignalStrengthTimersLocked(-1);
                    z4 = z2;
                }
                this.mPhoneSignalStrengthBin = i4;
                z2 = z4;
            }
            if (z2) {
                addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            }
        }
        i4 = -1;
        z2 = z3;
        if (!z3) {
            this.mHistoryCur.states &= -2097153;
            this.mPhoneSignalScanningTimer.stopRunningLocked(jElapsedRealtime);
            z2 = true;
        }
        if (this.mPhoneServiceState != i2) {
            BatteryStats.HistoryItem historyItem3 = this.mHistoryCur;
            historyItem3.states = (historyItem3.states & (-449)) | (i2 << 6);
            this.mPhoneServiceState = i2;
            z2 = true;
        }
        i5 = this.mPhoneSignalStrengthBin;
        if (i5 != i4) {
            if (i5 >= 0) {
                this.mPhoneSignalStrengthsTimer[i5].stopRunningLocked(jElapsedRealtime);
            }
            if (i4 >= 0) {
                if (!this.mPhoneSignalStrengthsTimer[i4].isRunningLocked()) {
                    this.mPhoneSignalStrengthsTimer[i4].startRunningLocked(jElapsedRealtime);
                }
                BatteryStats.HistoryItem historyItem4 = this.mHistoryCur;
                historyItem4.states = (historyItem4.states & (-57)) | (i4 << 3);
            } else {
                stopAllPhoneSignalStrengthTimersLocked(-1);
                z4 = z2;
            }
            this.mPhoneSignalStrengthBin = i4;
            z2 = z4;
        }
        if (z2) {
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
        }
    }

    private void updateBatteryPropertiesLocked() {
        try {
            IBatteryPropertiesRegistrar.Stub.asInterface(ServiceManager.getService("batteryproperties")).scheduleUpdate();
        } catch (RemoteException unused) {
        }
    }

    private void updateNewDischargeScreenLevelLocked(int i2) {
        if (isScreenOn(i2)) {
            this.mDischargeScreenOnUnplugLevel = this.mDischargeCurrentLevel;
            this.mDischargeScreenOffUnplugLevel = 0;
            this.mDischargeScreenDozeUnplugLevel = 0;
        } else if (isScreenDoze(i2)) {
            this.mDischargeScreenOnUnplugLevel = 0;
            this.mDischargeScreenDozeUnplugLevel = this.mDischargeCurrentLevel;
            this.mDischargeScreenOffUnplugLevel = 0;
        } else if (isScreenOff(i2)) {
            this.mDischargeScreenOnUnplugLevel = 0;
            this.mDischargeScreenDozeUnplugLevel = 0;
            this.mDischargeScreenOffUnplugLevel = this.mDischargeCurrentLevel;
        }
    }

    private void updateOldDischargeScreenLevelLocked(int i2) {
        int i3;
        if (isScreenOn(i2)) {
            int i4 = this.mDischargeScreenOnUnplugLevel - this.mDischargeCurrentLevel;
            if (i4 > 0) {
                this.mDischargeAmountScreenOn += i4;
                this.mDischargeAmountScreenOnSinceCharge += i4;
                return;
            }
            return;
        }
        if (isScreenDoze(i2)) {
            int i5 = this.mDischargeScreenDozeUnplugLevel - this.mDischargeCurrentLevel;
            if (i5 > 0) {
                this.mDischargeAmountScreenDoze += i5;
                this.mDischargeAmountScreenDozeSinceCharge += i5;
                return;
            }
            return;
        }
        if (!isScreenOff(i2) || (i3 = this.mDischargeScreenOffUnplugLevel - this.mDischargeCurrentLevel) <= 0) {
            return;
        }
        this.mDischargeAmountScreenOff += i3;
        this.mDischargeAmountScreenOffSinceCharge += i3;
    }

    private void writeDailyItemsLocked(XmlSerializer xmlSerializer) throws IOException {
        StringBuilder sb = new StringBuilder(64);
        xmlSerializer.startDocument(null, Boolean.TRUE);
        xmlSerializer.startTag(null, "daily-items");
        for (int i2 = 0; i2 < this.mDailyItems.size(); i2++) {
            BatteryStats.DailyItem dailyItem = this.mDailyItems.get(i2);
            xmlSerializer.startTag(null, ImsConfig.EXTRA_CHANGED_ITEM);
            xmlSerializer.attribute(null, Telephony.BaseMmsColumns.START, Long.toString(dailyItem.mStartTime));
            xmlSerializer.attribute(null, "end", Long.toString(dailyItem.mEndTime));
            writeDailyLevelSteps(xmlSerializer, "dis", dailyItem.mDischargeSteps, sb);
            writeDailyLevelSteps(xmlSerializer, "chg", dailyItem.mChargeSteps, sb);
            if (dailyItem.mPackageChanges != null) {
                for (int i3 = 0; i3 < dailyItem.mPackageChanges.size(); i3++) {
                    BatteryStats.PackageChange packageChange = dailyItem.mPackageChanges.get(i3);
                    if (packageChange.mUpdate) {
                        xmlSerializer.startTag(null, "upd");
                        xmlSerializer.attribute(null, "pkg", packageChange.mPackageName);
                        xmlSerializer.attribute(null, "ver", Integer.toString(packageChange.mVersionCode));
                        xmlSerializer.endTag(null, "upd");
                    } else {
                        xmlSerializer.startTag(null, "rem");
                        xmlSerializer.attribute(null, "pkg", packageChange.mPackageName);
                        xmlSerializer.endTag(null, "rem");
                    }
                }
            }
            xmlSerializer.endTag(null, ImsConfig.EXTRA_CHANGED_ITEM);
        }
        xmlSerializer.endTag(null, "daily-items");
        xmlSerializer.endDocument();
    }

    private void writeDailyLevelSteps(XmlSerializer xmlSerializer, String str, BatteryStats.LevelStepTracker levelStepTracker, StringBuilder sb) throws IOException {
        if (levelStepTracker != null) {
            xmlSerializer.startTag(null, str);
            xmlSerializer.attribute(null, "n", Integer.toString(levelStepTracker.mNumStepDurations));
            for (int i2 = 0; i2 < levelStepTracker.mNumStepDurations; i2++) {
                xmlSerializer.startTag(null, "s");
                sb.setLength(0);
                levelStepTracker.encodeEntryAt(i2, sb);
                xmlSerializer.attribute(null, Telephony.BaseMmsColumns.MMS_VERSION, sb.toString());
                xmlSerializer.endTag(null, "s");
            }
            xmlSerializer.endTag(null, str);
        }
    }

    private int writeHistoryTag(BatteryStats.HistoryTag historyTag) {
        Integer num = this.mHistoryTagPool.get(historyTag);
        if (num != null) {
            return num.intValue();
        }
        int i2 = this.mNextHistoryTagIdx;
        BatteryStats.HistoryTag historyTag2 = new BatteryStats.HistoryTag();
        historyTag2.setTo(historyTag);
        historyTag.poolIdx = i2;
        this.mHistoryTagPool.put(historyTag2, Integer.valueOf(i2));
        this.mNextHistoryTagIdx++;
        this.mNumHistoryTagChars = historyTag2.string.length() + 1 + this.mNumHistoryTagChars;
        return i2;
    }

    public void addHistoryBufferLocked(long j2, long j3, BatteryStats.HistoryItem historyItem) {
        long j4;
        boolean z2;
        if (this.mHaveBatteryLevel && this.mRecordingHistory) {
            long j5 = this.mHistoryBaseTime + j2;
            BatteryStats.HistoryItem historyItem2 = this.mHistoryLastWritten;
            long j6 = j5 - historyItem2.time;
            int i2 = historyItem2.states;
            int i3 = (historyItem.states & this.mActiveHistoryStates) ^ i2;
            int i4 = historyItem2.states2;
            int i5 = (historyItem.states2 & this.mActiveHistoryStates2) ^ i4;
            BatteryStats.HistoryItem historyItem3 = this.mHistoryLastLastWritten;
            int i6 = i2 ^ historyItem3.states;
            int i7 = i4 ^ historyItem3.states2;
            int i8 = this.mHistoryBufferLastPos;
            if (i8 >= 0 && historyItem2.cmd == 0 && j6 < 1000 && (i3 & i6) == 0 && (i5 & i7) == 0 && ((historyItem2.wakelockTag == null || historyItem.wakelockTag == null) && ((historyItem2.wakeReasonTag == null || historyItem.wakeReasonTag == null) && historyItem2.stepDetails == null && ((historyItem2.eventCode == 0 || historyItem.eventCode == 0) && historyItem2.batteryLevel == historyItem.batteryLevel && historyItem2.batteryStatus == historyItem.batteryStatus && historyItem2.batteryHealth == historyItem.batteryHealth && historyItem2.batteryPlugType == historyItem.batteryPlugType && historyItem2.batteryTemperature == historyItem.batteryTemperature && historyItem2.batteryVoltage == historyItem.batteryVoltage)))) {
                this.mHistoryBuffer.setDataSize(i8);
                this.mHistoryBuffer.setDataPosition(this.mHistoryBufferLastPos);
                this.mHistoryBufferLastPos = -1;
                BatteryStats.HistoryItem historyItem4 = this.mHistoryLastWritten;
                long j7 = historyItem4.time - this.mHistoryBaseTime;
                if (historyItem4.wakelockTag != null) {
                    BatteryStats.HistoryTag historyTag = historyItem.localWakelockTag;
                    historyItem.wakelockTag = historyTag;
                    historyTag.setTo(historyItem4.wakelockTag);
                }
                BatteryStats.HistoryItem historyItem5 = this.mHistoryLastWritten;
                if (historyItem5.wakeReasonTag != null) {
                    BatteryStats.HistoryTag historyTag2 = historyItem.localWakeReasonTag;
                    historyItem.wakeReasonTag = historyTag2;
                    historyTag2.setTo(historyItem5.wakeReasonTag);
                }
                BatteryStats.HistoryItem historyItem6 = this.mHistoryLastWritten;
                int i9 = historyItem6.eventCode;
                if (i9 != 0) {
                    historyItem.eventCode = i9;
                    BatteryStats.HistoryTag historyTag3 = historyItem.localEventTag;
                    historyItem.eventTag = historyTag3;
                    historyTag3.setTo(historyItem6.eventTag);
                }
                this.mHistoryLastWritten.setTo(this.mHistoryLastLastWritten);
                j4 = j7;
            } else {
                j4 = j2;
            }
            int iDataSize = this.mHistoryBuffer.dataSize();
            int i10 = MAX_MAX_HISTORY_BUFFER;
            boolean z3 = true;
            if (iDataSize >= i10 * 3) {
                resetAllStatsLocked();
            } else {
                if (iDataSize >= MAX_HISTORY_BUFFER) {
                    if (!this.mHistoryOverflow) {
                        this.mHistoryOverflow = true;
                        long j8 = j4;
                        addHistoryBufferLocked(j8, j3, (byte) 0, historyItem);
                        addHistoryBufferLocked(j8, j3, (byte) 6, historyItem);
                        return;
                    }
                    int i11 = historyItem.states;
                    int i12 = this.mActiveHistoryStates;
                    int i13 = (-1900544) & i11 & i12;
                    BatteryStats.HistoryItem historyItem7 = this.mHistoryLastWritten;
                    int i14 = historyItem7.states;
                    if (i14 != i13) {
                        int i15 = (i13 | 1900543) & i12;
                        this.mActiveHistoryStates = i15;
                        z2 = (i12 != i15) | false;
                    } else {
                        z2 = false;
                    }
                    int i16 = historyItem.states2;
                    int i17 = this.mActiveHistoryStates2;
                    int i18 = 1748959232 & i16 & i17;
                    int i19 = historyItem7.states2;
                    if (i19 != i18) {
                        int i20 = (i18 | (-1748959233)) & i17;
                        this.mActiveHistoryStates2 = i20;
                        z2 |= i17 != i20;
                    }
                    if (!z2 && historyItem7.batteryLevel == historyItem.batteryLevel && (iDataSize >= i10 || ((i14 ^ i11) & BatteryStats.HistoryItem.MOST_INTERESTING_STATES) == 0 || ((i19 ^ i16) & BatteryStats.HistoryItem.MOST_INTERESTING_STATES2) == 0)) {
                        return;
                    }
                    addHistoryBufferLocked(j4, j3, (byte) 0, historyItem);
                    return;
                }
                z3 = false;
            }
            if (iDataSize == 0 || z3) {
                historyItem.currentTime = System.currentTimeMillis();
                if (z3) {
                    addHistoryBufferLocked(j4, j3, (byte) 6, historyItem);
                }
                addHistoryBufferLocked(j4, j3, (byte) 7, historyItem);
            }
            addHistoryBufferLocked(j4, j3, (byte) 0, historyItem);
        }
    }

    public void addHistoryEventLocked(long j2, long j3, int i2, String str, int i3) {
        BatteryStats.HistoryItem historyItem = this.mHistoryCur;
        historyItem.eventCode = i2;
        BatteryStats.HistoryTag historyTag = historyItem.localEventTag;
        historyItem.eventTag = historyTag;
        historyTag.string = str;
        historyTag.uid = i3;
        addHistoryRecordLocked(j2, j3);
    }

    public void addHistoryRecordInnerLocked(long j2, long j3, BatteryStats.HistoryItem historyItem) {
        addHistoryBufferLocked(j2, j3, historyItem);
    }

    public void addHistoryRecordLocked(long j2, long j3) {
        long j4 = this.mTrackRunningHistoryElapsedRealtime;
        if (j4 != 0) {
            long j5 = j2 - j4;
            long j6 = j3 - this.mTrackRunningHistoryUptime;
            if (j6 < j5 - 20) {
                this.mHistoryAddTmp.setTo(this.mHistoryLastWritten);
                BatteryStats.HistoryItem historyItem = this.mHistoryAddTmp;
                historyItem.wakelockTag = null;
                historyItem.wakeReasonTag = null;
                historyItem.eventCode = 0;
                historyItem.states &= Integer.MAX_VALUE;
                addHistoryRecordInnerLocked(j2 - (j5 - j6), j3, historyItem);
            }
        }
        BatteryStats.HistoryItem historyItem2 = this.mHistoryCur;
        historyItem2.states |= Integer.MIN_VALUE;
        this.mTrackRunningHistoryElapsedRealtime = j2;
        this.mTrackRunningHistoryUptime = j3;
        addHistoryRecordInnerLocked(j2, j3, historyItem2);
    }

    public void addIsolatedUidLocked(int i2, int i3) {
        this.mIsolatedUids.put(i2, i3);
    }

    public void aggregateLastWakeupUptimeLocked(long j2) {
        String str = this.mLastWakeupReason;
        if (str != null) {
            getWakeupReasonTimerLocked(str).add((j2 - this.mLastWakeupUptimeMs) * 1000, 1);
            this.mLastWakeupReason = null;
        }
    }

    public void clearHistoryLocked() {
        this.mHistoryBaseTime = 0L;
        this.mLastHistoryElapsedRealtime = 0L;
        this.mTrackRunningHistoryElapsedRealtime = 0L;
        this.mTrackRunningHistoryUptime = 0L;
        this.mHistoryBuffer.setDataSize(0);
        this.mHistoryBuffer.setDataPosition(0);
        this.mHistoryBuffer.setDataCapacity(MAX_HISTORY_BUFFER / 2);
        this.mHistoryLastLastWritten.clear();
        this.mHistoryLastWritten.clear();
        this.mHistoryTagPool.clear();
        this.mNextHistoryTagIdx = 0;
        this.mNumHistoryTagChars = 0;
        this.mHistoryBufferLastPos = -1;
        this.mHistoryOverflow = false;
        this.mActiveHistoryStates = -1;
        this.mActiveHistoryStates2 = -1;
    }

    @Override // android.os.BatteryStats
    public void commitCurrentHistoryBatchLocked() {
        this.mHistoryLastWritten.cmd = (byte) -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.os.Parcel] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.concurrent.locks.ReentrantLock] */
    public void commitPendingDataToDisk() {
        synchronized (this) {
            Parcel parcel = this.mPendingWrite;
            this.mPendingWrite = null;
            if (parcel == 0) {
                return;
            }
            this.mWriteLock.lock();
            try {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(this.mFile.chooseForWrite());
                    fileOutputStream.write(parcel.marshall());
                    fileOutputStream.flush();
                    FileUtils.sync(fileOutputStream);
                    fileOutputStream.close();
                    this.mFile.commit();
                } catch (IOException e2) {
                    Slog.w("BatteryStats", "Error writing battery statistics", e2);
                    this.mFile.rollback();
                }
            } finally {
                parcel.recycle();
                this.mWriteLock.unlock();
            }
        }
    }

    @Override // android.os.BatteryStats
    public long computeBatteryRealtime(long j2, int i2) {
        return this.mOnBatteryTimeBase.computeRealtime(j2, i2);
    }

    @Override // android.os.BatteryStats
    public long computeBatteryScreenOffRealtime(long j2, int i2) {
        return this.mOnBatteryScreenOffTimeBase.computeRealtime(j2, i2);
    }

    @Override // android.os.BatteryStats
    public long computeBatteryScreenOffUptime(long j2, int i2) {
        return this.mOnBatteryScreenOffTimeBase.computeUptime(j2, i2);
    }

    @Override // android.os.BatteryStats
    public long computeBatteryTimeRemaining(long j2) {
        if (!this.mOnBattery) {
            return -1L;
        }
        BatteryStats.LevelStepTracker levelStepTracker = this.mDischargeStepTracker;
        if (levelStepTracker.mNumStepDurations < 1) {
            return -1L;
        }
        long jComputeTimePerLevel = levelStepTracker.computeTimePerLevel();
        if (jComputeTimePerLevel <= 0) {
            return -1L;
        }
        return this.mPowerControllerBatteryStatsHelper.computeTimePerLevel(jComputeTimePerLevel) * ((long) this.mCurrentBatteryLevel) * 1000;
    }

    @Override // android.os.BatteryStats
    public long computeBatteryUptime(long j2, int i2) {
        return this.mOnBatteryTimeBase.computeUptime(j2, i2);
    }

    @Override // android.os.BatteryStats
    public long computeChargeTimeRemaining(long j2) {
        if (this.mOnBattery) {
            return -1L;
        }
        BatteryStats.LevelStepTracker levelStepTracker = this.mChargeStepTracker;
        if (levelStepTracker.mNumStepDurations < 1) {
            return -1L;
        }
        long jComputeTimePerLevel = levelStepTracker.computeTimePerLevel();
        if (jComputeTimePerLevel <= 0) {
            return -1L;
        }
        return jComputeTimePerLevel * ((long) (100 - this.mCurrentBatteryLevel)) * 1000;
    }

    @Override // android.os.BatteryStats
    public long computeRealtime(long j2, int i2) {
        if (i2 == 0) {
            return (j2 - this.mRealtimeStart) + this.mRealtime;
        }
        if (i2 == 1) {
            return j2 - this.mRealtimeStart;
        }
        if (i2 != 2) {
            return 0L;
        }
        return j2 - this.mOnBatteryTimeBase.getRealtimeStart();
    }

    @Override // android.os.BatteryStats
    public long computeUptime(long j2, int i2) {
        if (i2 == 0) {
            return (j2 - this.mUptimeStart) + this.mUptime;
        }
        if (i2 == 1) {
            return j2 - this.mUptimeStart;
        }
        if (i2 != 2) {
            return 0L;
        }
        return j2 - this.mOnBatteryTimeBase.getUptimeStart();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.BatteryStats
    public void dumpLocked(Context context, PrintWriter printWriter, int i2, int i3, long j2) {
        super.dumpLocked(context, printWriter, i2, i3, j2);
    }

    public boolean ensureStartClockTime(long j2) {
        if (j2 <= 31536000000L || this.mStartClockTime >= j2 - 31536000000L) {
            return false;
        }
        this.mStartClockTime = j2 - (this.mClocks.elapsedRealtime() - (this.mRealtimeStart / 1000));
        return true;
    }

    public void finishAddingCpuLocked(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.mCurStepCpuUserTime += (long) i2;
        this.mCurStepCpuSystemTime += (long) i3;
        this.mCurStepStatUserTime += (long) i4;
        this.mCurStepStatSystemTime += (long) i5;
        this.mCurStepStatIOWaitTime += (long) i6;
        this.mCurStepStatIrqTime += (long) i7;
        this.mCurStepStatSoftIrqTime += (long) i8;
        this.mCurStepStatIdleTime += (long) i9;
    }

    @Override // android.os.BatteryStats
    public void finishIteratingHistoryLocked() {
        this.mIteratingHistory = false;
        Parcel parcel = this.mHistoryBuffer;
        parcel.setDataPosition(parcel.dataSize());
        this.mReadHistoryStrings = null;
    }

    @Override // android.os.BatteryStats
    public void finishIteratingOldHistoryLocked() {
        this.mIteratingHistory = false;
        Parcel parcel = this.mHistoryBuffer;
        parcel.setDataPosition(parcel.dataSize());
        this.mHistoryIterator = null;
    }

    public long getAwakeTimeBattery() {
        return computeBatteryUptime(getBatteryUptimeLocked(), 1);
    }

    public long getAwakeTimePlugged() {
        return (this.mClocks.uptimeMillis() * 1000) - getAwakeTimeBattery();
    }

    @Override // android.os.BatteryStats
    public long getBatteryRealtime(long j2) {
        return this.mOnBatteryTimeBase.getRealtime(j2);
    }

    @Override // android.os.BatteryStats
    public long getBatteryUptime(long j2) {
        return this.mOnBatteryTimeBase.getUptime(j2);
    }

    public long getBatteryUptimeLocked() {
        return this.mOnBatteryTimeBase.getUptime(this.mClocks.uptimeMillis() * 1000);
    }

    @Override // android.os.BatteryStats
    public BatteryStats.ControllerActivityCounter getBluetoothControllerActivity() {
        return this.mBluetoothActivity;
    }

    @Override // android.os.BatteryStats
    public long getBluetoothScanTime(long j2, int i2) {
        return this.mBluetoothScanTimer.getTotalTimeLocked(j2, i2);
    }

    @Override // android.os.BatteryStats
    public long getCameraOnTime(long j2, int i2) {
        return this.mCameraOnTimer.getTotalTimeLocked(j2, i2);
    }

    @Override // android.os.BatteryStats
    public BatteryStats.LevelStepTracker getChargeLevelStepTracker() {
        return this.mChargeStepTracker;
    }

    @Override // android.os.BatteryStats
    public long[] getCpuFreqs() {
        return this.mCpuFreqs;
    }

    @Override // android.os.BatteryStats
    public long getCurrentDailyStartTime() {
        return this.mDailyStartTime;
    }

    @Override // android.os.BatteryStats
    public BatteryStats.LevelStepTracker getDailyChargeLevelStepTracker() {
        return this.mDailyChargeStepTracker;
    }

    @Override // android.os.BatteryStats
    public BatteryStats.LevelStepTracker getDailyDischargeLevelStepTracker() {
        return this.mDailyDischargeStepTracker;
    }

    @Override // android.os.BatteryStats
    public BatteryStats.DailyItem getDailyItemLocked(int i2) {
        int size = (this.mDailyItems.size() - 1) - i2;
        if (size >= 0) {
            return this.mDailyItems.get(size);
        }
        return null;
    }

    @Override // android.os.BatteryStats
    public ArrayList<BatteryStats.PackageChange> getDailyPackageChanges() {
        return this.mDailyPackageChanges;
    }

    @Override // android.os.BatteryStats
    public int getDeviceIdleModeCount(int i2, int i3) {
        if (i2 == 1) {
            return this.mDeviceIdleModeLightTimer.getCountLocked(i3);
        }
        if (i2 != 2) {
            return 0;
        }
        return this.mDeviceIdleModeFullTimer.getCountLocked(i3);
    }

    @Override // android.os.BatteryStats
    public long getDeviceIdleModeTime(int i2, long j2, int i3) {
        if (i2 == 1) {
            return this.mDeviceIdleModeLightTimer.getTotalTimeLocked(j2, i3);
        }
        if (i2 != 2) {
            return 0L;
        }
        return this.mDeviceIdleModeFullTimer.getTotalTimeLocked(j2, i3);
    }

    @Override // android.os.BatteryStats
    public int getDeviceIdlingCount(int i2, int i3) {
        if (i2 == 1) {
            return this.mDeviceLightIdlingTimer.getCountLocked(i3);
        }
        if (i2 != 2) {
            return 0;
        }
        return this.mDeviceIdlingTimer.getCountLocked(i3);
    }

    @Override // android.os.BatteryStats
    public long getDeviceIdlingTime(int i2, long j2, int i3) {
        if (i2 == 1) {
            return this.mDeviceLightIdlingTimer.getTotalTimeLocked(j2, i3);
        }
        if (i2 != 2) {
            return 0L;
        }
        return this.mDeviceIdlingTimer.getTotalTimeLocked(j2, i3);
    }

    @Override // android.os.BatteryStats
    public int getDischargeAmount(int i2) {
        int highDischargeAmountSinceCharge = i2 == 0 ? getHighDischargeAmountSinceCharge() : getDischargeStartLevel() - getDischargeCurrentLevel();
        if (highDischargeAmountSinceCharge < 0) {
            return 0;
        }
        return highDischargeAmountSinceCharge;
    }

    @Override // android.os.BatteryStats
    public int getDischargeAmountScreenDoze() {
        int i2;
        int i3;
        int i4;
        synchronized (this) {
            i2 = this.mDischargeAmountScreenDoze;
            if (this.mOnBattery && isScreenDoze(this.mScreenState) && (i3 = this.mDischargeCurrentLevel) < (i4 = this.mDischargeScreenDozeUnplugLevel)) {
                i2 += i4 - i3;
            }
        }
        return i2;
    }

    @Override // android.os.BatteryStats
    public int getDischargeAmountScreenDozeSinceCharge() {
        int i2;
        int i3;
        int i4;
        synchronized (this) {
            i2 = this.mDischargeAmountScreenDozeSinceCharge;
            if (this.mOnBattery && isScreenDoze(this.mScreenState) && (i3 = this.mDischargeCurrentLevel) < (i4 = this.mDischargeScreenDozeUnplugLevel)) {
                i2 += i4 - i3;
            }
        }
        return i2;
    }

    @Override // android.os.BatteryStats
    public int getDischargeAmountScreenOff() {
        int dischargeAmountScreenDoze;
        int i2;
        int i3;
        synchronized (this) {
            int i4 = this.mDischargeAmountScreenOff;
            if (this.mOnBattery && isScreenOff(this.mScreenState) && (i2 = this.mDischargeCurrentLevel) < (i3 = this.mDischargeScreenOffUnplugLevel)) {
                i4 += i3 - i2;
            }
            dischargeAmountScreenDoze = i4 + getDischargeAmountScreenDoze();
        }
        return dischargeAmountScreenDoze;
    }

    @Override // android.os.BatteryStats
    public int getDischargeAmountScreenOffSinceCharge() {
        int dischargeAmountScreenDozeSinceCharge;
        int i2;
        int i3;
        synchronized (this) {
            int i4 = this.mDischargeAmountScreenOffSinceCharge;
            if (this.mOnBattery && isScreenOff(this.mScreenState) && (i2 = this.mDischargeCurrentLevel) < (i3 = this.mDischargeScreenOffUnplugLevel)) {
                i4 += i3 - i2;
            }
            dischargeAmountScreenDozeSinceCharge = i4 + getDischargeAmountScreenDozeSinceCharge();
        }
        return dischargeAmountScreenDozeSinceCharge;
    }

    @Override // android.os.BatteryStats
    public int getDischargeAmountScreenOn() {
        int i2;
        int i3;
        int i4;
        synchronized (this) {
            i2 = this.mDischargeAmountScreenOn;
            if (this.mOnBattery && isScreenOn(this.mScreenState) && (i3 = this.mDischargeCurrentLevel) < (i4 = this.mDischargeScreenOnUnplugLevel)) {
                i2 += i4 - i3;
            }
        }
        return i2;
    }

    @Override // android.os.BatteryStats
    public int getDischargeAmountScreenOnSinceCharge() {
        int i2;
        int i3;
        int i4;
        synchronized (this) {
            i2 = this.mDischargeAmountScreenOnSinceCharge;
            if (this.mOnBattery && isScreenOn(this.mScreenState) && (i3 = this.mDischargeCurrentLevel) < (i4 = this.mDischargeScreenOnUnplugLevel)) {
                i2 += i4 - i3;
            }
        }
        return i2;
    }

    @Override // android.os.BatteryStats
    public int getDischargeCurrentLevel() {
        int dischargeCurrentLevelLocked;
        synchronized (this) {
            dischargeCurrentLevelLocked = getDischargeCurrentLevelLocked();
        }
        return dischargeCurrentLevelLocked;
    }

    public int getDischargeCurrentLevelLocked() {
        return this.mDischargeCurrentLevel;
    }

    @Override // android.os.BatteryStats
    public BatteryStats.LevelStepTracker getDischargeLevelStepTracker() {
        return this.mDischargeStepTracker;
    }

    @Override // android.os.BatteryStats
    public int getDischargeStartLevel() {
        int dischargeStartLevelLocked;
        synchronized (this) {
            dischargeStartLevelLocked = getDischargeStartLevelLocked();
        }
        return dischargeStartLevelLocked;
    }

    public int getDischargeStartLevelLocked() {
        return this.mDischargeUnplugLevel;
    }

    @Override // android.os.BatteryStats
    public String getEndPlatformVersion() {
        return this.mEndPlatformVersion;
    }

    @Override // android.os.BatteryStats
    public int getEstimatedBatteryCapacity() {
        return this.mEstimatedBatteryCapacity;
    }

    @Override // android.os.BatteryStats
    public long getFlashlightOnCount(int i2) {
        return this.mFlashlightOnTimer.getCountLocked(i2);
    }

    @Override // android.os.BatteryStats
    public long getFlashlightOnTime(long j2, int i2) {
        return this.mFlashlightOnTimer.getTotalTimeLocked(j2, i2);
    }

    @Override // android.os.BatteryStats
    public long getGlobalWifiRunningTime(long j2, int i2) {
        return this.mGlobalWifiRunningTimer.getTotalTimeLocked(j2, i2);
    }

    @Override // android.os.BatteryStats
    public int getHighDischargeAmountSinceCharge() {
        int i2;
        int i3;
        int i4;
        synchronized (this) {
            i2 = this.mHighDischargeAmountSinceCharge;
            if (this.mOnBattery && (i3 = this.mDischargeCurrentLevel) < (i4 = this.mDischargeUnplugLevel)) {
                i2 += i4 - i3;
            }
        }
        return i2;
    }

    @Override // android.os.BatteryStats
    public long getHistoryBaseTime() {
        return this.mHistoryBaseTime;
    }

    @Override // android.os.BatteryStats
    public int getHistoryStringPoolBytes() {
        return (this.mReadHistoryChars * 2) + (this.mReadHistoryStrings.length * 12);
    }

    @Override // android.os.BatteryStats
    public int getHistoryStringPoolSize() {
        return this.mReadHistoryStrings.length;
    }

    @Override // android.os.BatteryStats
    public String getHistoryTagPoolString(int i2) {
        return this.mReadHistoryStrings[i2];
    }

    @Override // android.os.BatteryStats
    public int getHistoryTagPoolUid(int i2) {
        return this.mReadHistoryUids[i2];
    }

    @Override // android.os.BatteryStats
    public int getHistoryTotalSize() {
        return MAX_HISTORY_BUFFER;
    }

    @Override // android.os.BatteryStats
    public int getHistoryUsedSize() {
        return this.mHistoryBuffer.dataSize();
    }

    @Override // android.os.BatteryStats
    public long getInteractiveTime(long j2, int i2) {
        return this.mInteractiveTimer.getTotalTimeLocked(j2, i2);
    }

    @Override // android.os.BatteryStats
    public boolean getIsOnBattery() {
        return this.mOnBattery;
    }

    @Override // android.os.BatteryStats
    public LongSparseArray<SamplingTimer> getKernelMemoryStats() {
        return this.mKernelMemoryStats;
    }

    public SamplingTimer getKernelMemoryTimerLocked(long j2) {
        SamplingTimer samplingTimer = this.mKernelMemoryStats.get(j2);
        if (samplingTimer != null) {
            return samplingTimer;
        }
        SamplingTimer samplingTimer2 = new SamplingTimer(this.mClocks, this.mOnBatteryTimeBase);
        this.mKernelMemoryStats.put(j2, samplingTimer2);
        return samplingTimer2;
    }

    @Override // android.os.BatteryStats
    public Map<String, ? extends Timer> getKernelWakelockStats() {
        return this.mKernelWakelockStats;
    }

    public SamplingTimer getKernelWakelockTimerLocked(String str) {
        SamplingTimer samplingTimer = this.mKernelWakelockStats.get(str);
        if (samplingTimer != null) {
            return samplingTimer;
        }
        SamplingTimer samplingTimer2 = new SamplingTimer(this.mClocks, this.mOnBatteryScreenOffTimeBase);
        this.mKernelWakelockStats.put(str, samplingTimer2);
        return samplingTimer2;
    }

    @Override // android.os.BatteryStats
    public long getLongestDeviceIdleModeTime(int i2) {
        if (i2 == 1) {
            return this.mLongestLightIdleTime;
        }
        if (i2 != 2) {
            return 0L;
        }
        return this.mLongestFullIdleTime;
    }

    @Override // android.os.BatteryStats
    public int getLowDischargeAmountSinceCharge() {
        int i2;
        int i3;
        int i4;
        synchronized (this) {
            i2 = this.mLowDischargeAmountSinceCharge;
            if (this.mOnBattery && (i3 = this.mDischargeCurrentLevel) < (i4 = this.mDischargeUnplugLevel)) {
                i2 += (i4 - i3) - 1;
            }
        }
        return i2;
    }

    @Override // android.os.BatteryStats
    public long getMahDischarge(int i2) {
        return this.mDischargeCounter.getCountLocked(i2);
    }

    @Override // android.os.BatteryStats
    public long getMahDischargeScreenDoze(int i2) {
        return this.mDischargeScreenDozeCounter.getCountLocked(i2);
    }

    @Override // android.os.BatteryStats
    public long getMahDischargeScreenOff(int i2) {
        return this.mDischargeScreenOffCounter.getCountLocked(i2);
    }

    @Override // android.os.BatteryStats
    public int getMaxLearnedBatteryCapacity() {
        return this.mMaxLearnedBatteryCapacity;
    }

    @Override // android.os.BatteryStats
    public int getMinLearnedBatteryCapacity() {
        return this.mMinLearnedBatteryCapacity;
    }

    @Override // android.os.BatteryStats
    public long getMobileRadioActiveAdjustedTime(int i2) {
        return this.mMobileRadioActiveAdjustedTime.getCountLocked(i2);
    }

    @Override // android.os.BatteryStats
    public int getMobileRadioActiveCount(int i2) {
        return this.mMobileRadioActiveTimer.getCountLocked(i2);
    }

    @Override // android.os.BatteryStats
    public long getMobileRadioActiveTime(long j2, int i2) {
        return this.mMobileRadioActiveTimer.getTotalTimeLocked(j2, i2);
    }

    @Override // android.os.BatteryStats
    public int getMobileRadioActiveUnknownCount(int i2) {
        return (int) this.mMobileRadioActiveUnknownCount.getCountLocked(i2);
    }

    @Override // android.os.BatteryStats
    public long getMobileRadioActiveUnknownTime(int i2) {
        return this.mMobileRadioActiveUnknownTime.getCountLocked(i2);
    }

    @Override // android.os.BatteryStats
    public BatteryStats.ControllerActivityCounter getModemControllerActivity() {
        return this.mModemActivity;
    }

    @Override // android.os.BatteryStats
    public long getNetworkActivityBytes(int i2, int i3) {
        if (i2 < 0) {
            return 0L;
        }
        LongSamplingCounter[] longSamplingCounterArr = this.mNetworkByteActivityCounters;
        if (i2 < longSamplingCounterArr.length) {
            return longSamplingCounterArr[i2].getCountLocked(i3);
        }
        return 0L;
    }

    @Override // android.os.BatteryStats
    public long getNetworkActivityPackets(int i2, int i3) {
        if (i2 < 0) {
            return 0L;
        }
        LongSamplingCounter[] longSamplingCounterArr = this.mNetworkPacketActivityCounters;
        if (i2 < longSamplingCounterArr.length) {
            return longSamplingCounterArr[i2].getCountLocked(i3);
        }
        return 0L;
    }

    @Override // android.os.BatteryStats
    public boolean getNextHistoryLocked(BatteryStats.HistoryItem historyItem) {
        int iDataPosition = this.mHistoryBuffer.dataPosition();
        if (iDataPosition == 0) {
            historyItem.clear();
        }
        if (iDataPosition >= this.mHistoryBuffer.dataSize()) {
            return false;
        }
        long j2 = historyItem.time;
        long j3 = historyItem.currentTime;
        readHistoryDelta(this.mHistoryBuffer, historyItem);
        byte b2 = historyItem.cmd;
        if (b2 != 5 && b2 != 7 && j3 != 0) {
            historyItem.currentTime = (historyItem.time - j2) + j3;
        }
        return true;
    }

    @Override // android.os.BatteryStats
    public long getNextMaxDailyDeadline() {
        return this.mNextMaxDailyDeadline;
    }

    @Override // android.os.BatteryStats
    public long getNextMinDailyDeadline() {
        return this.mNextMinDailyDeadline;
    }

    @Override // android.os.BatteryStats
    public boolean getNextOldHistoryLocked(BatteryStats.HistoryItem historyItem) {
        boolean z2 = this.mHistoryBuffer.dataPosition() >= this.mHistoryBuffer.dataSize();
        if (!z2) {
            readHistoryDelta(this.mHistoryBuffer, this.mHistoryReadTmp);
            this.mReadOverflow |= this.mHistoryReadTmp.cmd == 6;
        }
        BatteryStats.HistoryItem historyItem2 = this.mHistoryIterator;
        if (historyItem2 == null) {
            if (!this.mReadOverflow && !z2) {
                Slog.w(TAG, "Old history ends before new history!");
            }
            return false;
        }
        historyItem.setTo(historyItem2);
        this.mHistoryIterator = historyItem2.next;
        if (!this.mReadOverflow) {
            if (z2) {
                Slog.w(TAG, "New history ends before old history!");
            } else if (!historyItem.same(this.mHistoryReadTmp)) {
                FastPrintWriter fastPrintWriter = new FastPrintWriter(new LogWriter(5, TAG));
                fastPrintWriter.println("Histories differ!");
                fastPrintWriter.println("Old history:");
                new BatteryStats.HistoryPrinter().printNextItem(fastPrintWriter, historyItem, 0L, false, true);
                fastPrintWriter.println("New history:");
                new BatteryStats.HistoryPrinter().printNextItem(fastPrintWriter, this.mHistoryReadTmp, 0L, false, true);
                fastPrintWriter.flush();
            }
        }
        return true;
    }

    @Override // android.os.BatteryStats
    public int getNumConnectivityChange(int i2) {
        int i3;
        int i4 = this.mNumConnectivityChange;
        if (i2 == 1) {
            i3 = this.mLoadedNumConnectivityChange;
        } else {
            if (i2 != 2) {
                return i4;
            }
            i3 = this.mUnpluggedNumConnectivityChange;
        }
        return i4 - i3;
    }

    public Uid.Pkg getPackageStatsLocked(int i2, String str) {
        return getUidStatsLocked(mapUid(i2)).getPackageStatsLocked(str);
    }

    @Override // android.os.BatteryStats
    public int getParcelVersion() {
        return 167;
    }

    @Override // android.os.BatteryStats
    public int getPhoneDataConnectionCount(int i2, int i3) {
        return this.mPhoneDataConnectionsTimer[i2].getCountLocked(i3);
    }

    @Override // android.os.BatteryStats
    public long getPhoneDataConnectionTime(int i2, long j2, int i3) {
        return this.mPhoneDataConnectionsTimer[i2].getTotalTimeLocked(j2, i3);
    }

    @Override // android.os.BatteryStats
    public int getPhoneOnCount(int i2) {
        return this.mPhoneOnTimer.getCountLocked(i2);
    }

    @Override // android.os.BatteryStats
    public long getPhoneOnTime(long j2, int i2) {
        return this.mPhoneOnTimer.getTotalTimeLocked(j2, i2);
    }

    @Override // android.os.BatteryStats
    public long getPhoneSignalScanningTime(long j2, int i2) {
        return this.mPhoneSignalScanningTimer.getTotalTimeLocked(j2, i2);
    }

    @Override // android.os.BatteryStats
    public int getPhoneSignalStrengthCount(int i2, int i3) {
        return this.mPhoneSignalStrengthsTimer[i2].getCountLocked(i3);
    }

    @Override // android.os.BatteryStats
    public long getPhoneSignalStrengthTime(int i2, long j2, int i3) {
        return this.mPhoneSignalStrengthsTimer[i2].getTotalTimeLocked(j2, i3);
    }

    @Override // android.os.BatteryStats
    public int getPowerSaveModeEnabledCount(int i2) {
        return this.mPowerSaveModeEnabledTimer.getCountLocked(i2);
    }

    @Override // android.os.BatteryStats
    public long getPowerSaveModeEnabledTime(long j2, int i2) {
        return this.mPowerSaveModeEnabledTimer.getTotalTimeLocked(j2, i2);
    }

    public Uid.Proc getProcessStatsLocked(int i2, String str) {
        return getUidStatsLocked(mapUid(i2)).getProcessStatsLocked(str);
    }

    public long getProcessWakeTime(int i2, int i3, long j2) {
        BatteryStats.Uid.Pid pid;
        Uid uid = this.mUidStats.get(mapUid(i2));
        if (uid == null || (pid = uid.mPids.get(i3)) == null) {
            return 0L;
        }
        return pid.mWakeSumMs + (pid.mWakeNesting > 0 ? j2 - pid.mWakeStartMs : 0L);
    }

    @Override // android.os.BatteryStats
    public Map<String, ? extends Timer> getRpmStats() {
        return this.mRpmStats;
    }

    public SamplingTimer getRpmTimerLocked(String str) {
        SamplingTimer samplingTimer = this.mRpmStats.get(str);
        if (samplingTimer != null) {
            return samplingTimer;
        }
        SamplingTimer samplingTimer2 = new SamplingTimer(this.mClocks, this.mOnBatteryTimeBase);
        this.mRpmStats.put(str, samplingTimer2);
        return samplingTimer2;
    }

    @Override // android.os.BatteryStats
    public long getScreenBrightnessTime(int i2, long j2, int i3) {
        return this.mScreenBrightnessTimer[i2].getTotalTimeLocked(j2, i3);
    }

    @Override // android.os.BatteryStats
    public int getScreenDozeCount(int i2) {
        return this.mScreenDozeTimer.getCountLocked(i2);
    }

    @Override // android.os.BatteryStats
    public long getScreenDozeTime(long j2, int i2) {
        return this.mScreenDozeTimer.getTotalTimeLocked(j2, i2);
    }

    @Override // android.os.BatteryStats
    public Map<String, ? extends Timer> getScreenOffRpmStats() {
        return this.mScreenOffRpmStats;
    }

    public SamplingTimer getScreenOffRpmTimerLocked(String str) {
        SamplingTimer samplingTimer = this.mScreenOffRpmStats.get(str);
        if (samplingTimer != null) {
            return samplingTimer;
        }
        SamplingTimer samplingTimer2 = new SamplingTimer(this.mClocks, this.mOnBatteryScreenOffTimeBase);
        this.mScreenOffRpmStats.put(str, samplingTimer2);
        return samplingTimer2;
    }

    @Override // android.os.BatteryStats
    public int getScreenOnCount(int i2) {
        return this.mScreenOnTimer.getCountLocked(i2);
    }

    @Override // android.os.BatteryStats
    public long getScreenOnTime(long j2, int i2) {
        return this.mScreenOnTimer.getTotalTimeLocked(j2, i2);
    }

    public Uid.Pkg.Serv getServiceStatsLocked(int i2, String str, String str2) {
        return getUidStatsLocked(mapUid(i2)).getServiceStatsLocked(str, str2);
    }

    @Override // android.os.BatteryStats
    public long getStartClockTime() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (ensureStartClockTime(jCurrentTimeMillis)) {
            recordCurrentTimeChangeLocked(jCurrentTimeMillis, this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis());
        }
        return this.mStartClockTime;
    }

    @Override // android.os.BatteryStats
    public int getStartCount() {
        return this.mStartCount;
    }

    @Override // android.os.BatteryStats
    public String getStartPlatformVersion() {
        return this.mStartPlatformVersion;
    }

    @Override // android.os.BatteryStats
    public SparseArray<? extends BatteryStats.Uid> getUidStats() {
        return this.mUidStats;
    }

    public Uid getUidStatsLocked(int i2) {
        Uid uid = this.mUidStats.get(i2);
        if (uid != null) {
            return uid;
        }
        Uid uid2 = new Uid(this, i2);
        this.mUidStats.put(i2, uid2);
        return uid2;
    }

    @Override // android.os.BatteryStats
    public Map<String, ? extends Timer> getWakeupReasonStats() {
        return this.mWakeupReasonStats;
    }

    public SamplingTimer getWakeupReasonTimerLocked(String str) {
        SamplingTimer samplingTimer = this.mWakeupReasonStats.get(str);
        if (samplingTimer != null) {
            return samplingTimer;
        }
        SamplingTimer samplingTimer2 = new SamplingTimer(this.mClocks, this.mOnBatteryTimeBase);
        this.mWakeupReasonStats.put(str, samplingTimer2);
        return samplingTimer2;
    }

    @Override // android.os.BatteryStats
    public BatteryStats.ControllerActivityCounter getWifiControllerActivity() {
        return this.mWifiActivity;
    }

    @Override // android.os.BatteryStats
    public long getWifiOnTime(long j2, int i2) {
        return this.mWifiOnTimer.getTotalTimeLocked(j2, i2);
    }

    @Override // android.os.BatteryStats
    public int getWifiSignalStrengthCount(int i2, int i3) {
        return this.mWifiSignalStrengthsTimer[i2].getCountLocked(i3);
    }

    @Override // android.os.BatteryStats
    public long getWifiSignalStrengthTime(int i2, long j2, int i3) {
        return this.mWifiSignalStrengthsTimer[i2].getTotalTimeLocked(j2, i3);
    }

    @Override // android.os.BatteryStats
    public int getWifiStateCount(int i2, int i3) {
        return this.mWifiStateTimer[i2].getCountLocked(i3);
    }

    @Override // android.os.BatteryStats
    public long getWifiStateTime(int i2, long j2, int i3) {
        return this.mWifiStateTimer[i2].getTotalTimeLocked(j2, i3);
    }

    @Override // android.os.BatteryStats
    public int getWifiSupplStateCount(int i2, int i3) {
        return this.mWifiSupplStateTimer[i2].getCountLocked(i3);
    }

    @Override // android.os.BatteryStats
    public long getWifiSupplStateTime(int i2, long j2, int i3) {
        return this.mWifiSupplStateTimer[i2].getTotalTimeLocked(j2, i3);
    }

    @Override // android.os.BatteryStats
    public boolean hasBluetoothActivityReporting() {
        return this.mHasBluetoothReporting;
    }

    @Override // android.os.BatteryStats
    public boolean hasModemActivityReporting() {
        return this.mHasModemReporting;
    }

    @Override // android.os.BatteryStats
    public boolean hasWifiActivityReporting() {
        return this.mHasWifiReporting;
    }

    public void initDischarge() {
        this.mLowDischargeAmountSinceCharge = 0;
        this.mHighDischargeAmountSinceCharge = 0;
        this.mDischargeAmountScreenOn = 0;
        this.mDischargeAmountScreenOnSinceCharge = 0;
        this.mDischargeAmountScreenOff = 0;
        this.mDischargeAmountScreenOffSinceCharge = 0;
        this.mDischargeAmountScreenDoze = 0;
        this.mDischargeAmountScreenDozeSinceCharge = 0;
        this.mDischargeStepTracker.init();
        this.mChargeStepTracker.init();
        this.mDischargeScreenOffCounter.reset(false);
        this.mDischargeScreenDozeCounter.reset(false);
        this.mDischargeCounter.reset(false);
        this.mPowerControllerBatteryStatsHelper.init();
    }

    public void initTimes(long j2, long j3) {
        this.mStartClockTime = System.currentTimeMillis();
        this.mOnBatteryTimeBase.init(j2, j3);
        this.mOnBatteryScreenOffTimeBase.init(j2, j3);
        this.mRealtime = 0L;
        this.mUptime = 0L;
        this.mRealtimeStart = j3;
        this.mUptimeStart = j2;
    }

    public boolean isCharging() {
        return this.mCharging;
    }

    public boolean isOnBattery() {
        return this.mOnBattery;
    }

    public boolean isScreenDoze(int i2) {
        return i2 == 3 || i2 == 4;
    }

    public boolean isScreenOff(int i2) {
        return i2 == 1;
    }

    public boolean isScreenOn(int i2) {
        return i2 == 2;
    }

    public int mapUid(int i2) {
        int i3 = this.mIsolatedUids.get(i2, -1);
        return i3 > 0 ? i3 : i2;
    }

    public void noteActivityPausedLocked(int i2) {
        getUidStatsLocked(mapUid(i2)).noteActivityPausedLocked(this.mClocks.elapsedRealtime());
    }

    public void noteActivityResumedLocked(int i2) {
        getUidStatsLocked(mapUid(i2)).noteActivityResumedLocked(this.mClocks.elapsedRealtime());
    }

    public void noteAlarmFinishLocked(String str, int i2) {
        if (this.mRecordAllHistory) {
            int iMapUid = mapUid(i2);
            long jElapsedRealtime = this.mClocks.elapsedRealtime();
            long jUptimeMillis = this.mClocks.uptimeMillis();
            if (this.mActiveEvents.updateState(16397, str, iMapUid, 0)) {
                addHistoryEventLocked(jElapsedRealtime, jUptimeMillis, 16397, str, iMapUid);
            }
        }
    }

    public void noteAlarmStartLocked(String str, int i2) {
        if (this.mRecordAllHistory) {
            int iMapUid = mapUid(i2);
            long jElapsedRealtime = this.mClocks.elapsedRealtime();
            long jUptimeMillis = this.mClocks.uptimeMillis();
            if (this.mActiveEvents.updateState(32781, str, iMapUid, 0)) {
                addHistoryEventLocked(jElapsedRealtime, jUptimeMillis, 32781, str, iMapUid);
            }
        }
    }

    public void noteAudioOffLocked(int i2) {
        if (this.mAudioOnNesting == 0) {
            return;
        }
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        int i3 = this.mAudioOnNesting - 1;
        this.mAudioOnNesting = i3;
        if (i3 == 0) {
            this.mHistoryCur.states &= -4194305;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            this.mAudioOnTimer.stopRunningLocked(jElapsedRealtime);
        }
        getUidStatsLocked(iMapUid).noteAudioTurnedOffLocked(jElapsedRealtime);
    }

    public void noteAudioOnLocked(int i2) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        if (this.mAudioOnNesting == 0) {
            this.mHistoryCur.states |= 4194304;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            this.mAudioOnTimer.startRunningLocked(jElapsedRealtime);
        }
        this.mAudioOnNesting++;
        getUidStatsLocked(iMapUid).noteAudioTurnedOnLocked(jElapsedRealtime);
    }

    public void noteBluetoothScanResultsFromSourceLocked(WorkSource workSource, int i2) {
        int size = workSource.size();
        for (int i3 = 0; i3 < size; i3++) {
            getUidStatsLocked(mapUid(workSource.get(i3))).noteBluetoothScanResultsLocked(i2);
        }
    }

    public void noteBluetoothScanStartedFromSourceLocked(WorkSource workSource, boolean z2) {
        int size = workSource.size();
        for (int i2 = 0; i2 < size; i2++) {
            noteBluetoothScanStartedLocked(workSource.get(i2), z2);
        }
    }

    public void noteBluetoothScanStoppedFromSourceLocked(WorkSource workSource, boolean z2) {
        int size = workSource.size();
        for (int i2 = 0; i2 < size; i2++) {
            noteBluetoothScanStoppedLocked(workSource.get(i2), z2);
        }
    }

    public void noteCameraOffLocked(int i2) {
        if (this.mCameraOnNesting == 0) {
            return;
        }
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        int i3 = this.mCameraOnNesting - 1;
        this.mCameraOnNesting = i3;
        if (i3 == 0) {
            this.mHistoryCur.states2 &= -2097153;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            this.mCameraOnTimer.stopRunningLocked(jElapsedRealtime);
        }
        getUidStatsLocked(iMapUid).noteCameraTurnedOffLocked(jElapsedRealtime);
    }

    public void noteCameraOnLocked(int i2) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        int i3 = this.mCameraOnNesting;
        this.mCameraOnNesting = i3 + 1;
        if (i3 == 0) {
            this.mHistoryCur.states2 |= 2097152;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            this.mCameraOnTimer.startRunningLocked(jElapsedRealtime);
        }
        getUidStatsLocked(iMapUid).noteCameraTurnedOnLocked(jElapsedRealtime);
    }

    public void noteChangeWakelockFromSourceLocked(WorkSource workSource, int i2, String str, String str2, int i3, WorkSource workSource2, int i4, String str3, String str4, int i5, boolean z2) {
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        int i6 = 0;
        for (int size = workSource2.size(); i6 < size; size = size) {
            noteStartWakeLocked(workSource2.get(i6), i4, str3, str4, i5, z2, jElapsedRealtime, jUptimeMillis);
            i6++;
        }
        int size2 = workSource.size();
        for (int i7 = 0; i7 < size2; i7++) {
            noteStopWakeLocked(workSource.get(i7), i2, str, str2, i3, jElapsedRealtime, jUptimeMillis);
        }
    }

    public void noteConnectivityChangedLocked(int i2, String str) {
        addHistoryEventLocked(this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis(), 9, str, i2);
        this.mNumConnectivityChange++;
    }

    public void noteCurrentTimeChangedLocked() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        recordCurrentTimeChangeLocked(jCurrentTimeMillis, this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis());
        ensureStartClockTime(jCurrentTimeMillis);
    }

    public void noteDeviceIdleModeLocked(int i2, String str, int i3) {
        int i4;
        int i5;
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        boolean z2 = i2 == 2;
        boolean z3 = this.mDeviceIdling;
        boolean z4 = (z3 && !z2 && str == null) ? true : z2;
        boolean z5 = i2 == 1;
        boolean z6 = this.mDeviceLightIdling;
        boolean z7 = (!z6 || z5 || z4 || str != null) ? z5 : true;
        if (str != null && (z3 || z6)) {
            addHistoryEventLocked(jElapsedRealtime, jUptimeMillis, 10, str, i3);
        }
        if (this.mDeviceIdling != z4) {
            this.mDeviceIdling = z4;
            int i6 = z4 != 0 ? 8 : 0;
            int i7 = this.mModStepMode;
            int i8 = this.mCurStepMode;
            this.mModStepMode = i7 | ((i8 & 8) ^ i6);
            this.mCurStepMode = i6 | (i8 & (-9));
            if (z4) {
                this.mDeviceIdlingTimer.startRunningLocked(jElapsedRealtime);
            } else {
                this.mDeviceIdlingTimer.stopRunningLocked(jElapsedRealtime);
            }
        }
        if (this.mDeviceLightIdling != z7) {
            this.mDeviceLightIdling = z7;
            if (z7) {
                this.mDeviceLightIdlingTimer.startRunningLocked(jElapsedRealtime);
            } else {
                this.mDeviceLightIdlingTimer.stopRunningLocked(jElapsedRealtime);
            }
        }
        if (this.mDeviceIdleMode != i2) {
            BatteryStats.HistoryItem historyItem = this.mHistoryCur;
            historyItem.states2 = (historyItem.states2 & (-100663297)) | (i2 << 25);
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            long j2 = jElapsedRealtime - this.mLastIdleTimeStart;
            this.mLastIdleTimeStart = jElapsedRealtime;
            int i9 = this.mDeviceIdleMode;
            if (i9 == 1) {
                if (j2 > this.mLongestLightIdleTime) {
                    this.mLongestLightIdleTime = j2;
                }
                this.mDeviceIdleModeLightTimer.stopRunningLocked(jElapsedRealtime);
                i5 = 1;
                i4 = 2;
            } else {
                i4 = 2;
                if (i9 == 2) {
                    if (j2 > this.mLongestFullIdleTime) {
                        this.mLongestFullIdleTime = j2;
                    }
                    this.mDeviceIdleModeFullTimer.stopRunningLocked(jElapsedRealtime);
                }
                i5 = 1;
            }
            if (i2 == i5) {
                this.mDeviceIdleModeLightTimer.startRunningLocked(jElapsedRealtime);
            } else if (i2 == i4) {
                this.mDeviceIdleModeFullTimer.startRunningLocked(jElapsedRealtime);
            }
            this.mDeviceIdleMode = i2;
        }
    }

    public void noteEventLocked(int i2, String str, int i3) {
        int iMapUid = mapUid(i3);
        if (this.mActiveEvents.updateState(i2, str, iMapUid, 0)) {
            addHistoryEventLocked(this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis(), i2, str, iMapUid);
        }
    }

    public void noteFlashlightOffLocked(int i2) {
        if (this.mFlashlightOnNesting == 0) {
            return;
        }
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        int i3 = this.mFlashlightOnNesting - 1;
        this.mFlashlightOnNesting = i3;
        if (i3 == 0) {
            this.mHistoryCur.states2 &= -134217729;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            this.mFlashlightOnTimer.stopRunningLocked(jElapsedRealtime);
        }
        getUidStatsLocked(iMapUid).noteFlashlightTurnedOffLocked(jElapsedRealtime);
    }

    public void noteFlashlightOnLocked(int i2) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        int i3 = this.mFlashlightOnNesting;
        this.mFlashlightOnNesting = i3 + 1;
        if (i3 == 0) {
            this.mHistoryCur.states2 |= 134217728;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            this.mFlashlightOnTimer.startRunningLocked(jElapsedRealtime);
        }
        getUidStatsLocked(iMapUid).noteFlashlightTurnedOnLocked(jElapsedRealtime);
    }

    public void noteFullWifiLockAcquiredFromSourceLocked(WorkSource workSource) {
        int size = workSource.size();
        for (int i2 = 0; i2 < size; i2++) {
            noteFullWifiLockAcquiredLocked(workSource.get(i2));
        }
    }

    public void noteFullWifiLockAcquiredLocked(int i2) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        if (this.mWifiFullLockNesting == 0) {
            this.mHistoryCur.states |= 268435456;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
        }
        this.mWifiFullLockNesting++;
        getUidStatsLocked(iMapUid).noteFullWifiLockAcquiredLocked(jElapsedRealtime);
    }

    public void noteFullWifiLockReleasedFromSourceLocked(WorkSource workSource) {
        int size = workSource.size();
        for (int i2 = 0; i2 < size; i2++) {
            noteFullWifiLockReleasedLocked(workSource.get(i2));
        }
    }

    public void noteFullWifiLockReleasedLocked(int i2) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        int i3 = this.mWifiFullLockNesting - 1;
        this.mWifiFullLockNesting = i3;
        if (i3 == 0) {
            this.mHistoryCur.states &= -268435457;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
        }
        getUidStatsLocked(iMapUid).noteFullWifiLockReleasedLocked(jElapsedRealtime);
    }

    public void noteInteractiveLocked(boolean z2) {
        if (this.mInteractive != z2) {
            long jElapsedRealtime = this.mClocks.elapsedRealtime();
            this.mInteractive = z2;
            if (z2) {
                this.mInteractiveTimer.startRunningLocked(jElapsedRealtime);
            } else {
                this.mInteractiveTimer.stopRunningLocked(jElapsedRealtime);
            }
        }
    }

    public void noteJobFinishLocked(String str, int i2, int i3) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        getUidStatsLocked(iMapUid).noteStopJobLocked(str, jElapsedRealtime, i3);
        if (this.mActiveEvents.updateState(16390, str, iMapUid, 0)) {
            addHistoryEventLocked(jElapsedRealtime, jUptimeMillis, 16390, str, iMapUid);
        }
    }

    public void noteJobStartLocked(String str, int i2) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        getUidStatsLocked(iMapUid).noteStartJobLocked(str, jElapsedRealtime);
        if (this.mActiveEvents.updateState(32774, str, iMapUid, 0)) {
            addHistoryEventLocked(jElapsedRealtime, jUptimeMillis, 32774, str, iMapUid);
        }
    }

    public void noteLongPartialWakelockFinish(String str, String str2, int i2) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        String str3 = str2 == null ? str : str2;
        if (this.mActiveEvents.updateState(BatteryStats.HistoryItem.EVENT_LONG_WAKE_LOCK_FINISH, str3, iMapUid, 0)) {
            addHistoryEventLocked(jElapsedRealtime, jUptimeMillis, BatteryStats.HistoryItem.EVENT_LONG_WAKE_LOCK_FINISH, str3, iMapUid);
        }
    }

    public void noteLongPartialWakelockStart(String str, String str2, int i2) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        String str3 = str2 == null ? str : str2;
        if (this.mActiveEvents.updateState(32788, str3, iMapUid, 0)) {
            addHistoryEventLocked(jElapsedRealtime, jUptimeMillis, 32788, str3, iMapUid);
        }
    }

    public boolean noteMobileRadioPowerStateLocked(int i2, long j2, int i3) {
        long j3;
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        if (this.mMobileRadioPowerState != i2) {
            boolean z2 = i2 == 2 || i2 == 3;
            if (z2) {
                if (i3 > 0) {
                    noteMobileRadioApWakeupLocked(jElapsedRealtime, jUptimeMillis, i3);
                }
                j3 = j2 / TimeUtils.NANOS_PER_MS;
                this.mMobileRadioActiveStartTime = j3;
                this.mHistoryCur.states |= 33554432;
            } else {
                j3 = j2 / TimeUtils.NANOS_PER_MS;
                long j4 = this.mMobileRadioActiveStartTime;
                if (j3 < j4) {
                    StringBuilder sbL = m.l("Data connection inactive timestamp ", j3, " is before start time ");
                    sbL.append(j4);
                    Slog.wtf(TAG, sbL.toString());
                    j3 = jElapsedRealtime;
                } else if (j3 < jElapsedRealtime) {
                    this.mMobileRadioActiveAdjustedTime.addCountLocked(jElapsedRealtime - j3);
                }
                this.mHistoryCur.states &= -33554433;
            }
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            this.mMobileRadioPowerState = i2;
            if (!z2) {
                this.mMobileRadioActiveTimer.stopRunningLocked(j3);
                this.mMobileRadioActivePerAppTimer.stopRunningLocked(j3);
                return true;
            }
            this.mMobileRadioActiveTimer.startRunningLocked(jElapsedRealtime);
            this.mMobileRadioActivePerAppTimer.startRunningLocked(jElapsedRealtime);
        }
        return false;
    }

    public void noteNetworkInterfaceTypeLocked(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.mModemNetworkLock) {
            if (ConnectivityManager.isNetworkTypeMobile(i2)) {
                this.mModemIfaces = includeInStringArray(this.mModemIfaces, str);
            } else {
                this.mModemIfaces = excludeFromStringArray(this.mModemIfaces, str);
            }
        }
        synchronized (this.mWifiNetworkLock) {
            if (ConnectivityManager.isNetworkTypeWifi(i2)) {
                this.mWifiIfaces = includeInStringArray(this.mWifiIfaces, str);
            } else {
                this.mWifiIfaces = excludeFromStringArray(this.mWifiIfaces, str);
            }
        }
    }

    public void notePackageInstalledLocked(String str, int i2) {
        addHistoryEventLocked(this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis(), 11, str, i2);
        BatteryStats.PackageChange packageChange = new BatteryStats.PackageChange();
        packageChange.mPackageName = str;
        packageChange.mUpdate = true;
        packageChange.mVersionCode = i2;
        addPackageChange(packageChange);
    }

    public void notePackageUninstalledLocked(String str) {
        addHistoryEventLocked(this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis(), 12, str, 0);
        BatteryStats.PackageChange packageChange = new BatteryStats.PackageChange();
        packageChange.mPackageName = str;
        packageChange.mUpdate = true;
        addPackageChange(packageChange);
    }

    public void notePhoneDataConnectionStateLocked(int i2, boolean z2) {
        int i3;
        if (z2) {
            switch (i2) {
                case 1:
                    i3 = 1;
                    break;
                case 2:
                    i3 = 2;
                    break;
                case 3:
                    i3 = 3;
                    break;
                case 4:
                    i3 = 4;
                    break;
                case 5:
                    i3 = 5;
                    break;
                case 6:
                    i3 = 6;
                    break;
                case 7:
                    i3 = 7;
                    break;
                case 8:
                    i3 = 8;
                    break;
                case 9:
                    i3 = 9;
                    break;
                case 10:
                    i3 = 10;
                    break;
                case 11:
                    i3 = 11;
                    break;
                case 12:
                    i3 = 12;
                    break;
                case 13:
                    i3 = 13;
                    break;
                case 14:
                    i3 = 14;
                    break;
                case 15:
                    i3 = 15;
                    break;
                default:
                    i3 = 16;
                    break;
            }
        } else {
            i3 = 0;
        }
        if (this.mPhoneDataConnectionType != i3) {
            long jElapsedRealtime = this.mClocks.elapsedRealtime();
            long jUptimeMillis = this.mClocks.uptimeMillis();
            BatteryStats.HistoryItem historyItem = this.mHistoryCur;
            historyItem.states = (historyItem.states & (-15873)) | (i3 << 9);
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            int i4 = this.mPhoneDataConnectionType;
            if (i4 >= 0) {
                this.mPhoneDataConnectionsTimer[i4].stopRunningLocked(jElapsedRealtime);
            }
            this.mPhoneDataConnectionType = i3;
            this.mPhoneDataConnectionsTimer[i3].startRunningLocked(jElapsedRealtime);
        }
    }

    public void notePhoneOffLocked() {
        if (this.mPhoneOn) {
            long jElapsedRealtime = this.mClocks.elapsedRealtime();
            long jUptimeMillis = this.mClocks.uptimeMillis();
            this.mHistoryCur.states2 &= -8388609;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            this.mPhoneOn = false;
            this.mPhoneOnTimer.stopRunningLocked(jElapsedRealtime);
        }
    }

    public void notePhoneOnLocked() {
        if (this.mPhoneOn) {
            return;
        }
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        this.mHistoryCur.states2 |= 8388608;
        addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
        this.mPhoneOn = true;
        this.mPhoneOnTimer.startRunningLocked(jElapsedRealtime);
    }

    public void notePhoneSignalStrengthLocked(SignalStrength signalStrength) {
        updateAllPhoneStateLocked(this.mPhoneServiceStateRaw, this.mPhoneSimStateRaw, signalStrength.getLevel());
    }

    public void notePhoneStateLocked(int i2, int i3) {
        updateAllPhoneStateLocked(i2, i3, this.mPhoneSignalStrengthBinRaw);
    }

    public void notePowerMode(int i2) {
        this.mPowerControllerBatteryStatsHelper.updatePowerMode(i2);
    }

    public void notePowerSaveModeLocked(boolean z2) {
        if (this.mPowerSaveModeEnabled != z2) {
            int i2 = z2 ? 4 : 0;
            int i3 = this.mModStepMode;
            int i4 = this.mCurStepMode;
            this.mModStepMode = i3 | ((i4 & 4) ^ i2);
            this.mCurStepMode = i2 | (i4 & (-5));
            long jElapsedRealtime = this.mClocks.elapsedRealtime();
            long jUptimeMillis = this.mClocks.uptimeMillis();
            this.mPowerSaveModeEnabled = z2;
            if (z2) {
                this.mHistoryCur.states2 |= Integer.MIN_VALUE;
                this.mPowerSaveModeEnabledTimer.startRunningLocked(jElapsedRealtime);
            } else {
                this.mHistoryCur.states2 &= Integer.MAX_VALUE;
                this.mPowerSaveModeEnabledTimer.stopRunningLocked(jElapsedRealtime);
            }
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
        }
    }

    public void noteProcessAnrLocked(String str, int i2) {
        int iMapUid = mapUid(i2);
        if (isOnBattery()) {
            getUidStatsLocked(iMapUid).getProcessStatsLocked(str).incNumAnrsLocked();
        }
    }

    public void noteProcessCrashLocked(String str, int i2) {
        int iMapUid = mapUid(i2);
        if (isOnBattery()) {
            getUidStatsLocked(iMapUid).getProcessStatsLocked(str).incNumCrashesLocked();
        }
    }

    public void noteProcessDiedLocked(int i2, int i3) {
        Uid uid = this.mUidStats.get(mapUid(i2));
        if (uid != null) {
            uid.mPids.remove(i3);
        }
    }

    public void noteProcessFinishLocked(String str, int i2) {
        int iMapUid = mapUid(i2);
        if (this.mActiveEvents.updateState(16385, str, iMapUid, 0) && this.mRecordAllHistory) {
            addHistoryEventLocked(this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis(), 16385, str, iMapUid);
        }
    }

    public void noteProcessStartLocked(String str, int i2) {
        int iMapUid = mapUid(i2);
        if (isOnBattery()) {
            getUidStatsLocked(iMapUid).getProcessStatsLocked(str).incStartsLocked();
        }
        if (this.mActiveEvents.updateState(32769, str, iMapUid, 0) && this.mRecordAllHistory) {
            addHistoryEventLocked(this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis(), 32769, str, iMapUid);
        }
    }

    public void noteResetAudioLocked() {
        if (this.mAudioOnNesting > 0) {
            long jElapsedRealtime = this.mClocks.elapsedRealtime();
            long jUptimeMillis = this.mClocks.uptimeMillis();
            this.mAudioOnNesting = 0;
            this.mHistoryCur.states &= -4194305;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            this.mAudioOnTimer.stopAllRunningLocked(jElapsedRealtime);
            for (int i2 = 0; i2 < this.mUidStats.size(); i2++) {
                this.mUidStats.valueAt(i2).noteResetAudioLocked(jElapsedRealtime);
            }
        }
    }

    public void noteResetBluetoothScanLocked() {
        if (this.mBluetoothScanNesting > 0) {
            long jElapsedRealtime = this.mClocks.elapsedRealtime();
            long jUptimeMillis = this.mClocks.uptimeMillis();
            this.mBluetoothScanNesting = 0;
            this.mHistoryCur.states2 &= -1048577;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            this.mBluetoothScanTimer.stopAllRunningLocked(jElapsedRealtime);
            for (int i2 = 0; i2 < this.mUidStats.size(); i2++) {
                this.mUidStats.valueAt(i2).noteResetBluetoothScanLocked(jElapsedRealtime);
            }
        }
    }

    public void noteResetCameraLocked() {
        if (this.mCameraOnNesting > 0) {
            long jElapsedRealtime = this.mClocks.elapsedRealtime();
            long jUptimeMillis = this.mClocks.uptimeMillis();
            this.mCameraOnNesting = 0;
            this.mHistoryCur.states2 &= -2097153;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            this.mCameraOnTimer.stopAllRunningLocked(jElapsedRealtime);
            for (int i2 = 0; i2 < this.mUidStats.size(); i2++) {
                this.mUidStats.valueAt(i2).noteResetCameraLocked(jElapsedRealtime);
            }
        }
    }

    public void noteResetFlashlightLocked() {
        if (this.mFlashlightOnNesting > 0) {
            long jElapsedRealtime = this.mClocks.elapsedRealtime();
            long jUptimeMillis = this.mClocks.uptimeMillis();
            this.mFlashlightOnNesting = 0;
            this.mHistoryCur.states2 &= -134217729;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            this.mFlashlightOnTimer.stopAllRunningLocked(jElapsedRealtime);
            for (int i2 = 0; i2 < this.mUidStats.size(); i2++) {
                this.mUidStats.valueAt(i2).noteResetFlashlightLocked(jElapsedRealtime);
            }
        }
    }

    public void noteResetVideoLocked() {
        if (this.mVideoOnNesting > 0) {
            long jElapsedRealtime = this.mClocks.elapsedRealtime();
            long jUptimeMillis = this.mClocks.uptimeMillis();
            this.mAudioOnNesting = 0;
            this.mHistoryCur.states2 &= -1073741825;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            this.mVideoOnTimer.stopAllRunningLocked(jElapsedRealtime);
            for (int i2 = 0; i2 < this.mUidStats.size(); i2++) {
                this.mUidStats.valueAt(i2).noteResetVideoLocked(jElapsedRealtime);
            }
        }
    }

    public void noteScreenBrightnessLocked(int i2) {
        int i3 = i2 / 51;
        if (i3 < 0) {
            i3 = 0;
        } else if (i3 >= 5) {
            i3 = 4;
        }
        if (this.mScreenBrightnessBin != i3) {
            long jElapsedRealtime = this.mClocks.elapsedRealtime();
            long jUptimeMillis = this.mClocks.uptimeMillis();
            BatteryStats.HistoryItem historyItem = this.mHistoryCur;
            historyItem.states = (historyItem.states & (-8)) | (i3 << 0);
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            if (this.mScreenState == 2) {
                int i4 = this.mScreenBrightnessBin;
                if (i4 >= 0) {
                    this.mScreenBrightnessTimer[i4].stopRunningLocked(jElapsedRealtime);
                }
                this.mScreenBrightnessTimer[i3].startRunningLocked(jElapsedRealtime);
            }
            this.mScreenBrightnessBin = i3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x009a  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:35:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:37:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:40:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:44:0x0105  */
    /* JADX WARN: Code duplicated, block: B:46:0x010b  */
    /* JADX WARN: Code duplicated, block: B:49:0x0133  */
    /* JADX WARN: Code duplicated, block: B:52:? A[RETURN, SYNTHETIC] */
    public void noteScreenStateLocked(int i2) {
        boolean z2;
        int i3;
        int i4;
        boolean z3 = true;
        int i5 = this.mPretendScreenOff ? 1 : i2;
        if (i5 > 4) {
            if (i5 != 5) {
                Slog.wtf(TAG, "Unknown screen state (not mapped): " + i5);
            } else {
                i5 = 2;
            }
        }
        int i6 = i5;
        if (this.mScreenState != i6) {
            recordDailyStatsIfNeededLocked(true);
            int i7 = this.mScreenState;
            this.mScreenState = i6;
            if (i6 != 0) {
                int i8 = i6 - 1;
                if ((i8 & 3) == i8) {
                    int i9 = this.mModStepMode;
                    int i10 = this.mCurStepMode;
                    this.mModStepMode = i9 | ((i10 & 3) ^ i8);
                    this.mCurStepMode = i8 | (i10 & (-4));
                } else {
                    Slog.wtf(TAG, "Unexpected screen state: " + i6);
                }
            }
            long jElapsedRealtime = this.mClocks.elapsedRealtime();
            long jUptimeMillis = this.mClocks.uptimeMillis();
            if (!isScreenDoze(i6)) {
                if (isScreenDoze(i7)) {
                    this.mHistoryCur.states &= -262145;
                    this.mScreenDozeTimer.stopRunningLocked(jElapsedRealtime);
                } else {
                    z2 = false;
                }
                if (isScreenOn(i6)) {
                    this.mHistoryCur.states |= 1048576;
                    this.mScreenOnTimer.startRunningLocked(jElapsedRealtime);
                    i4 = this.mScreenBrightnessBin;
                    if (i4 >= 0) {
                        this.mScreenBrightnessTimer[i4].startRunningLocked(jElapsedRealtime);
                    }
                } else if (isScreenOn(i7)) {
                    this.mHistoryCur.states &= -1048577;
                    this.mScreenOnTimer.stopRunningLocked(jElapsedRealtime);
                    i3 = this.mScreenBrightnessBin;
                    if (i3 >= 0) {
                        this.mScreenBrightnessTimer[i3].stopRunningLocked(jElapsedRealtime);
                    }
                } else {
                    z3 = z2;
                }
                if (z3) {
                    addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
                }
                if (isScreenOn(i6)) {
                    updateTimeBasesLocked(this.mOnBatteryTimeBase.isRunning(), i6, this.mClocks.uptimeMillis() * 1000, jElapsedRealtime * 1000);
                    noteStartWakeLocked(-1, -1, "screen", null, 0, false, jElapsedRealtime, jUptimeMillis);
                } else if (isScreenOn(i7)) {
                    noteStopWakeLocked(-1, -1, "screen", "screen", 0, jElapsedRealtime, jUptimeMillis);
                    updateTimeBasesLocked(this.mOnBatteryTimeBase.isRunning(), i6, this.mClocks.uptimeMillis() * 1000, jElapsedRealtime * 1000);
                }
                if (this.mOnBatteryInternal) {
                    updateDischargeScreenLevelsLocked(i7, i6);
                }
            }
            this.mHistoryCur.states |= 262144;
            this.mScreenDozeTimer.startRunningLocked(jElapsedRealtime);
            z2 = true;
            if (isScreenOn(i6)) {
                this.mHistoryCur.states |= 1048576;
                this.mScreenOnTimer.startRunningLocked(jElapsedRealtime);
                i4 = this.mScreenBrightnessBin;
                if (i4 >= 0) {
                    this.mScreenBrightnessTimer[i4].startRunningLocked(jElapsedRealtime);
                }
            } else if (isScreenOn(i7)) {
                this.mHistoryCur.states &= -1048577;
                this.mScreenOnTimer.stopRunningLocked(jElapsedRealtime);
                i3 = this.mScreenBrightnessBin;
                if (i3 >= 0) {
                    this.mScreenBrightnessTimer[i3].stopRunningLocked(jElapsedRealtime);
                }
            } else {
                z3 = z2;
            }
            if (z3) {
                addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            }
            if (isScreenOn(i6)) {
                updateTimeBasesLocked(this.mOnBatteryTimeBase.isRunning(), i6, this.mClocks.uptimeMillis() * 1000, jElapsedRealtime * 1000);
                noteStartWakeLocked(-1, -1, "screen", null, 0, false, jElapsedRealtime, jUptimeMillis);
            } else if (isScreenOn(i7)) {
                noteStopWakeLocked(-1, -1, "screen", "screen", 0, jElapsedRealtime, jUptimeMillis);
                updateTimeBasesLocked(this.mOnBatteryTimeBase.isRunning(), i6, this.mClocks.uptimeMillis() * 1000, jElapsedRealtime * 1000);
            }
            if (this.mOnBatteryInternal) {
                updateDischargeScreenLevelsLocked(i7, i6);
            }
        }
    }

    public void noteStartGpsLocked(int i2) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        if (this.mGpsNesting == 0) {
            this.mHistoryCur.states |= 536870912;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
        }
        this.mGpsNesting++;
        getUidStatsLocked(iMapUid).noteStartGps(jElapsedRealtime);
    }

    public void noteStartSensorLocked(int i2, int i3) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        if (this.mSensorNesting == 0) {
            this.mHistoryCur.states |= 8388608;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
        }
        this.mSensorNesting++;
        getUidStatsLocked(iMapUid).noteStartSensor(i3, jElapsedRealtime);
    }

    public void noteStartWakeFromSourceLocked(WorkSource workSource, int i2, String str, String str2, int i3, boolean z2) {
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        int i4 = 0;
        for (int size = workSource.size(); i4 < size; size = size) {
            noteStartWakeLocked(workSource.get(i4), i2, str, str2, i3, z2, jElapsedRealtime, jUptimeMillis);
            i4++;
        }
    }

    public void noteStartWakeLocked(int i2, int i3, String str, String str2, int i4, boolean z2, long j2, long j3) {
        int iMapUid = mapUid(i2);
        if (i4 == 0) {
            aggregateLastWakeupUptimeLocked(j3);
            String str3 = str2 == null ? str : str2;
            if (this.mRecordAllHistory && this.mActiveEvents.updateState(32773, str3, iMapUid, 0)) {
                addHistoryEventLocked(j2, j3, 32773, str3, iMapUid);
            }
            if (this.mWakeLockNesting == 0) {
                BatteryStats.HistoryItem historyItem = this.mHistoryCur;
                historyItem.states |= 1073741824;
                BatteryStats.HistoryTag historyTag = historyItem.localWakelockTag;
                historyItem.wakelockTag = historyTag;
                this.mInitialAcquireWakeName = str3;
                historyTag.string = str3;
                this.mInitialAcquireWakeUid = iMapUid;
                historyTag.uid = iMapUid;
                this.mWakeLockImportant = !z2;
                addHistoryRecordLocked(j2, j3);
            } else if (!this.mWakeLockImportant && !z2) {
                BatteryStats.HistoryItem historyItem2 = this.mHistoryLastWritten;
                if (historyItem2.cmd == 0) {
                    if (historyItem2.wakelockTag != null) {
                        historyItem2.wakelockTag = null;
                        BatteryStats.HistoryItem historyItem3 = this.mHistoryCur;
                        BatteryStats.HistoryTag historyTag2 = historyItem3.localWakelockTag;
                        historyItem3.wakelockTag = historyTag2;
                        this.mInitialAcquireWakeName = str3;
                        historyTag2.string = str3;
                        this.mInitialAcquireWakeUid = iMapUid;
                        historyTag2.uid = iMapUid;
                        addHistoryRecordLocked(j2, j3);
                    }
                    this.mWakeLockImportant = true;
                }
            }
            this.mWakeLockNesting++;
        }
        if (iMapUid >= 0) {
            if (this.mOnBatteryScreenOffTimeBase.isRunning()) {
                requestWakelockCpuUpdate();
            }
            getUidStatsLocked(iMapUid).noteStartWakeLocked(i3, str, i4, j2);
        }
    }

    public void noteStopGpsLocked(int i2) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        int i3 = this.mGpsNesting - 1;
        this.mGpsNesting = i3;
        if (i3 == 0) {
            this.mHistoryCur.states &= -536870913;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
        }
        getUidStatsLocked(iMapUid).noteStopGps(jElapsedRealtime);
    }

    public void noteStopSensorLocked(int i2, int i3) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        int i4 = this.mSensorNesting - 1;
        this.mSensorNesting = i4;
        if (i4 == 0) {
            this.mHistoryCur.states &= -8388609;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
        }
        getUidStatsLocked(iMapUid).noteStopSensor(i3, jElapsedRealtime);
    }

    public void noteStopWakeFromSourceLocked(WorkSource workSource, int i2, String str, String str2, int i3) {
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        int size = workSource.size();
        for (int i4 = 0; i4 < size; i4++) {
            noteStopWakeLocked(workSource.get(i4), i2, str, str2, i3, jElapsedRealtime, jUptimeMillis);
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0048  */
    public void noteStopWakeLocked(int i2, int i3, String str, String str2, int i4, long j2, long j3) {
        int iMapUid = mapUid(i2);
        if (i4 == 0) {
            this.mWakeLockNesting--;
            if (this.mRecordAllHistory) {
                String str3 = str2 == null ? str : str2;
                if (this.mActiveEvents.updateState(16389, str3, iMapUid, 0)) {
                    addHistoryEventLocked(j2, j3, 16389, str3, iMapUid);
                }
            }
            if (this.mWakeLockNesting == 0) {
                this.mHistoryCur.states &= -1073741825;
                this.mInitialAcquireWakeName = null;
                this.mInitialAcquireWakeUid = -1;
                addHistoryRecordLocked(j2, j3);
            }
        }
        if (iMapUid >= 0) {
            if (this.mOnBatteryScreenOffTimeBase.isRunning()) {
                requestWakelockCpuUpdate();
            }
            getUidStatsLocked(iMapUid).noteStopWakeLocked(i3, str, i4, j2);
        }
    }

    public void noteSyncFinishLocked(String str, int i2) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        getUidStatsLocked(iMapUid).noteStopSyncLocked(str, jElapsedRealtime);
        if (this.mActiveEvents.updateState(16388, str, iMapUid, 0)) {
            addHistoryEventLocked(jElapsedRealtime, jUptimeMillis, 16388, str, iMapUid);
        }
    }

    public void noteSyncStartLocked(String str, int i2) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        getUidStatsLocked(iMapUid).noteStartSyncLocked(str, jElapsedRealtime);
        if (this.mActiveEvents.updateState(32772, str, iMapUid, 0)) {
            addHistoryEventLocked(jElapsedRealtime, jUptimeMillis, 32772, str, iMapUid);
        }
    }

    public void noteUidProcessStateLocked(int i2, int i3) {
        if (i2 != mapUid(i2)) {
            return;
        }
        getUidStatsLocked(i2).updateUidProcessStateLocked(i3);
    }

    public void noteUserActivityLocked(int i2, int i3) {
        if (this.mOnBatteryInternal) {
            getUidStatsLocked(mapUid(i2)).noteUserActivityLocked(i3);
        }
    }

    public void noteVibratorOffLocked(int i2) {
        getUidStatsLocked(mapUid(i2)).noteVibratorOffLocked();
    }

    public void noteVibratorOnLocked(int i2, long j2) {
        getUidStatsLocked(mapUid(i2)).noteVibratorOnLocked(j2);
    }

    public void noteVideoOffLocked(int i2) {
        if (this.mVideoOnNesting == 0) {
            return;
        }
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        int i3 = this.mVideoOnNesting - 1;
        this.mVideoOnNesting = i3;
        if (i3 == 0) {
            this.mHistoryCur.states2 &= -1073741825;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            this.mVideoOnTimer.stopRunningLocked(jElapsedRealtime);
        }
        getUidStatsLocked(iMapUid).noteVideoTurnedOffLocked(jElapsedRealtime);
    }

    public void noteVideoOnLocked(int i2) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        if (this.mVideoOnNesting == 0) {
            this.mHistoryCur.states2 |= 1073741824;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            this.mVideoOnTimer.startRunningLocked(jElapsedRealtime);
        }
        this.mVideoOnNesting++;
        getUidStatsLocked(iMapUid).noteVideoTurnedOnLocked(jElapsedRealtime);
    }

    public void noteWakeUpLocked(String str, int i2) {
        addHistoryEventLocked(this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis(), 18, str, i2);
    }

    public void noteWakeupReasonLocked(String str) {
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        aggregateLastWakeupUptimeLocked(jUptimeMillis);
        BatteryStats.HistoryItem historyItem = this.mHistoryCur;
        BatteryStats.HistoryTag historyTag = historyItem.localWakeReasonTag;
        historyItem.wakeReasonTag = historyTag;
        historyTag.string = str;
        historyTag.uid = 0;
        this.mLastWakeupReason = str;
        this.mLastWakeupUptimeMs = jUptimeMillis;
        addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
    }

    public void noteWifiBatchedScanStartedFromSourceLocked(WorkSource workSource, int i2) {
        int size = workSource.size();
        for (int i3 = 0; i3 < size; i3++) {
            noteWifiBatchedScanStartedLocked(workSource.get(i3), i2);
        }
    }

    public void noteWifiBatchedScanStartedLocked(int i2, int i3) {
        int iMapUid = mapUid(i2);
        getUidStatsLocked(iMapUid).noteWifiBatchedScanStartedLocked(i3, this.mClocks.elapsedRealtime());
    }

    public void noteWifiBatchedScanStoppedFromSourceLocked(WorkSource workSource) {
        int size = workSource.size();
        for (int i2 = 0; i2 < size; i2++) {
            noteWifiBatchedScanStoppedLocked(workSource.get(i2));
        }
    }

    public void noteWifiBatchedScanStoppedLocked(int i2) {
        int iMapUid = mapUid(i2);
        getUidStatsLocked(iMapUid).noteWifiBatchedScanStoppedLocked(this.mClocks.elapsedRealtime());
    }

    public void noteWifiMulticastDisabledFromSourceLocked(WorkSource workSource) {
        int size = workSource.size();
        for (int i2 = 0; i2 < size; i2++) {
            noteWifiMulticastDisabledLocked(workSource.get(i2));
        }
    }

    public void noteWifiMulticastDisabledLocked(int i2) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        int i3 = this.mWifiMulticastNesting - 1;
        this.mWifiMulticastNesting = i3;
        if (i3 == 0) {
            this.mHistoryCur.states &= -65537;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
        }
        getUidStatsLocked(iMapUid).noteWifiMulticastDisabledLocked(jElapsedRealtime);
    }

    public void noteWifiMulticastEnabledFromSourceLocked(WorkSource workSource) {
        int size = workSource.size();
        for (int i2 = 0; i2 < size; i2++) {
            noteWifiMulticastEnabledLocked(workSource.get(i2));
        }
    }

    public void noteWifiMulticastEnabledLocked(int i2) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        if (this.mWifiMulticastNesting == 0) {
            this.mHistoryCur.states |= 65536;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
        }
        this.mWifiMulticastNesting++;
        getUidStatsLocked(iMapUid).noteWifiMulticastEnabledLocked(jElapsedRealtime);
    }

    public void noteWifiOffLocked() {
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        if (this.mWifiOn) {
            this.mHistoryCur.states2 &= -268435457;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            this.mWifiOn = false;
            this.mWifiOnTimer.stopRunningLocked(jElapsedRealtime);
            scheduleSyncExternalStatsLocked("wifi-on", 2);
        }
    }

    public void noteWifiOnLocked() {
        if (this.mWifiOn) {
            return;
        }
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        this.mHistoryCur.states2 |= 268435456;
        addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
        this.mWifiOn = true;
        this.mWifiOnTimer.startRunningLocked(jElapsedRealtime);
        scheduleSyncExternalStatsLocked("wifi-off", 2);
    }

    public void noteWifiRadioPowerState(int i2, long j2, int i3) {
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        if (this.mWifiRadioPowerState != i2) {
            if (i2 == 2 || i2 == 3) {
                if (i3 > 0) {
                    noteWifiRadioApWakeupLocked(jElapsedRealtime, jUptimeMillis, i3);
                }
                this.mHistoryCur.states |= 67108864;
            } else {
                this.mHistoryCur.states &= -67108865;
            }
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            this.mWifiRadioPowerState = i2;
        }
    }

    public void noteWifiRssiChangedLocked(int i2) {
        int iCalculateSignalLevel = WifiManager.calculateSignalLevel(i2, 5);
        if (this.mWifiSignalStrengthBin != iCalculateSignalLevel) {
            long jElapsedRealtime = this.mClocks.elapsedRealtime();
            long jUptimeMillis = this.mClocks.uptimeMillis();
            int i3 = this.mWifiSignalStrengthBin;
            if (i3 >= 0) {
                this.mWifiSignalStrengthsTimer[i3].stopRunningLocked(jElapsedRealtime);
            }
            if (iCalculateSignalLevel >= 0) {
                if (!this.mWifiSignalStrengthsTimer[iCalculateSignalLevel].isRunningLocked()) {
                    this.mWifiSignalStrengthsTimer[iCalculateSignalLevel].startRunningLocked(jElapsedRealtime);
                }
                BatteryStats.HistoryItem historyItem = this.mHistoryCur;
                historyItem.states2 = (historyItem.states2 & PackageManager.INSTALL_FAILED_NO_MATCHING_ABIS) | (iCalculateSignalLevel << 4);
                addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
            } else {
                stopAllWifiSignalStrengthTimersLocked(-1);
            }
            this.mWifiSignalStrengthBin = iCalculateSignalLevel;
        }
    }

    public void noteWifiRunningChangedLocked(WorkSource workSource, WorkSource workSource2) {
        if (!this.mGlobalWifiRunning) {
            Log.w(TAG, "noteWifiRunningChangedLocked -- called while WIFI not running");
            return;
        }
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        int size = workSource.size();
        for (int i2 = 0; i2 < size; i2++) {
            getUidStatsLocked(mapUid(workSource.get(i2))).noteWifiStoppedLocked(jElapsedRealtime);
        }
        int size2 = workSource2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            getUidStatsLocked(mapUid(workSource2.get(i3))).noteWifiRunningLocked(jElapsedRealtime);
        }
    }

    public void noteWifiRunningLocked(WorkSource workSource) {
        if (this.mGlobalWifiRunning) {
            Log.w(TAG, "noteWifiRunningLocked -- called while WIFI running");
            return;
        }
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        this.mHistoryCur.states2 |= 536870912;
        addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
        this.mGlobalWifiRunning = true;
        this.mGlobalWifiRunningTimer.startRunningLocked(jElapsedRealtime);
        int size = workSource.size();
        for (int i2 = 0; i2 < size; i2++) {
            getUidStatsLocked(mapUid(workSource.get(i2))).noteWifiRunningLocked(jElapsedRealtime);
        }
        scheduleSyncExternalStatsLocked("wifi-running", 2);
    }

    public void noteWifiScanStartedFromSourceLocked(WorkSource workSource) {
        int size = workSource.size();
        for (int i2 = 0; i2 < size; i2++) {
            noteWifiScanStartedLocked(workSource.get(i2));
        }
    }

    public void noteWifiScanStartedLocked(int i2) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        if (this.mWifiScanNesting == 0) {
            this.mHistoryCur.states |= 134217728;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
        }
        this.mWifiScanNesting++;
        getUidStatsLocked(iMapUid).noteWifiScanStartedLocked(jElapsedRealtime);
    }

    public void noteWifiScanStoppedFromSourceLocked(WorkSource workSource) {
        int size = workSource.size();
        for (int i2 = 0; i2 < size; i2++) {
            noteWifiScanStoppedLocked(workSource.get(i2));
        }
    }

    public void noteWifiScanStoppedLocked(int i2) {
        int iMapUid = mapUid(i2);
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        int i3 = this.mWifiScanNesting - 1;
        this.mWifiScanNesting = i3;
        if (i3 == 0) {
            this.mHistoryCur.states &= -134217729;
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
        }
        getUidStatsLocked(iMapUid).noteWifiScanStoppedLocked(jElapsedRealtime);
    }

    public void noteWifiStateLocked(int i2, String str) {
        if (this.mWifiState != i2) {
            long jElapsedRealtime = this.mClocks.elapsedRealtime();
            int i3 = this.mWifiState;
            if (i3 >= 0) {
                this.mWifiStateTimer[i3].stopRunningLocked(jElapsedRealtime);
            }
            this.mWifiState = i2;
            this.mWifiStateTimer[i2].startRunningLocked(jElapsedRealtime);
            scheduleSyncExternalStatsLocked("wifi-state", 2);
        }
    }

    public void noteWifiStoppedLocked(WorkSource workSource) {
        if (!this.mGlobalWifiRunning) {
            Log.w(TAG, "noteWifiStoppedLocked -- called while WIFI not running");
            return;
        }
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        this.mHistoryCur.states2 &= -536870913;
        addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
        this.mGlobalWifiRunning = false;
        this.mGlobalWifiRunningTimer.stopRunningLocked(jElapsedRealtime);
        int size = workSource.size();
        for (int i2 = 0; i2 < size; i2++) {
            getUidStatsLocked(mapUid(workSource.get(i2))).noteWifiStoppedLocked(jElapsedRealtime);
        }
        scheduleSyncExternalStatsLocked("wifi-stopped", 2);
    }

    public void noteWifiSupplicantStateChangedLocked(int i2, boolean z2) {
        if (this.mWifiSupplState != i2) {
            long jElapsedRealtime = this.mClocks.elapsedRealtime();
            long jUptimeMillis = this.mClocks.uptimeMillis();
            int i3 = this.mWifiSupplState;
            if (i3 >= 0) {
                this.mWifiSupplStateTimer[i3].stopRunningLocked(jElapsedRealtime);
            }
            this.mWifiSupplState = i2;
            this.mWifiSupplStateTimer[i2].startRunningLocked(jElapsedRealtime);
            BatteryStats.HistoryItem historyItem = this.mHistoryCur;
            historyItem.states2 = (i2 << 0) | (historyItem.states2 & (-16));
            addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
        }
    }

    public void onCleanupUserLocked(int i2) {
        int uid = UserHandle.getUid(i2, 0);
        int uid2 = UserHandle.getUid(i2, Process.LAST_ISOLATED_UID);
        this.mKernelUidCpuFreqTimeReader.removeUidsInRange(uid, uid2);
        this.mKernelUidCpuTimeReader.removeUidsInRange(uid, uid2);
    }

    public void onUserRemovedLocked(int i2) {
        int uid = UserHandle.getUid(i2, 0);
        int uid2 = UserHandle.getUid(i2, Process.LAST_ISOLATED_UID);
        this.mUidStats.put(uid, null);
        this.mUidStats.put(uid2, null);
        int iIndexOfKey = this.mUidStats.indexOfKey(uid);
        this.mUidStats.removeAtRange(iIndexOfKey, (this.mUidStats.indexOfKey(uid2) - iIndexOfKey) + 1);
    }

    @Override // android.os.BatteryStats
    public void prepareForDumpLocked() {
        pullPendingStateUpdatesLocked();
        getStartClockTime();
    }

    public void pullPendingStateUpdatesLocked() {
        if (this.mOnBatteryInternal) {
            int i2 = this.mScreenState;
            updateDischargeScreenLevelsLocked(i2, i2);
        }
    }

    public void readDailyItemTagDetailsLocked(XmlPullParser xmlPullParser, BatteryStats.DailyItem dailyItem, boolean z2, String str) throws XmlPullParserException, IOException {
        String attributeValue;
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "n");
        if (attributeValue2 == null) {
            Slog.w(TAG, "Missing 'n' attribute at " + xmlPullParser.getPositionDescription());
            XmlUtils.skipCurrentTag(xmlPullParser);
            return;
        }
        int i2 = Integer.parseInt(attributeValue2);
        BatteryStats.LevelStepTracker levelStepTracker = new BatteryStats.LevelStepTracker(i2);
        if (z2) {
            dailyItem.mChargeSteps = levelStepTracker;
        } else {
            dailyItem.mDischargeSteps = levelStepTracker;
        }
        int depth = xmlPullParser.getDepth();
        int i3 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                if (!"s".equals(xmlPullParser.getName())) {
                    StringBuilder sbV = c.v("Unknown element under <", str, ">: ");
                    sbV.append(xmlPullParser.getName());
                    Slog.w(TAG, sbV.toString());
                    XmlUtils.skipCurrentTag(xmlPullParser);
                } else if (i3 < i2 && (attributeValue = xmlPullParser.getAttributeValue(null, Telephony.BaseMmsColumns.MMS_VERSION)) != null) {
                    levelStepTracker.decodeEntryAt(i3, attributeValue);
                    i3++;
                }
            }
        }
        levelStepTracker.mNumStepDurations = i3;
    }

    public void readDailyItemTagLocked(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        BatteryStats.DailyItem dailyItem = new BatteryStats.DailyItem();
        String attributeValue = xmlPullParser.getAttributeValue(null, Telephony.BaseMmsColumns.START);
        if (attributeValue != null) {
            dailyItem.mStartTime = Long.parseLong(attributeValue);
        }
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "end");
        if (attributeValue2 != null) {
            dailyItem.mEndTime = Long.parseLong(attributeValue2);
        }
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                String name = xmlPullParser.getName();
                if (name.equals("dis")) {
                    readDailyItemTagDetailsLocked(xmlPullParser, dailyItem, false, "dis");
                } else if (name.equals("chg")) {
                    readDailyItemTagDetailsLocked(xmlPullParser, dailyItem, true, "chg");
                } else if (name.equals("upd")) {
                    if (dailyItem.mPackageChanges == null) {
                        dailyItem.mPackageChanges = new ArrayList<>();
                    }
                    BatteryStats.PackageChange packageChange = new BatteryStats.PackageChange();
                    packageChange.mUpdate = true;
                    packageChange.mPackageName = xmlPullParser.getAttributeValue(null, "pkg");
                    String attributeValue3 = xmlPullParser.getAttributeValue(null, "ver");
                    packageChange.mVersionCode = attributeValue3 != null ? Integer.parseInt(attributeValue3) : 0;
                    dailyItem.mPackageChanges.add(packageChange);
                    XmlUtils.skipCurrentTag(xmlPullParser);
                } else if (name.equals("rem")) {
                    if (dailyItem.mPackageChanges == null) {
                        dailyItem.mPackageChanges = new ArrayList<>();
                    }
                    BatteryStats.PackageChange packageChange2 = new BatteryStats.PackageChange();
                    packageChange2.mUpdate = false;
                    packageChange2.mPackageName = xmlPullParser.getAttributeValue(null, "pkg");
                    dailyItem.mPackageChanges.add(packageChange2);
                    XmlUtils.skipCurrentTag(xmlPullParser);
                } else {
                    Slog.w(TAG, "Unknown element under <item>: " + xmlPullParser.getName());
                    XmlUtils.skipCurrentTag(xmlPullParser);
                }
            }
        }
        this.mDailyItems.add(dailyItem);
    }

    public void readDailyStatsLocked() throws IOException {
        Slog.d(TAG, "Reading daily items from " + this.mDailyFile.getBaseFile());
        this.mDailyItems.clear();
        try {
            FileInputStream fileInputStreamOpenRead = this.mDailyFile.openRead();
            try {
                XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                xmlPullParserNewPullParser.setInput(fileInputStreamOpenRead, StandardCharsets.UTF_8.name());
                readDailyItemsLocked(xmlPullParserNewPullParser);
            } catch (XmlPullParserException unused) {
            } catch (Throwable th) {
                try {
                    fileInputStreamOpenRead.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
            fileInputStreamOpenRead.close();
        } catch (FileNotFoundException | IOException unused3) {
        }
    }

    public void readFromParcel(Parcel parcel) {
        readFromParcelLocked(parcel);
    }

    public void readFromParcelLocked(Parcel parcel) {
        int i2 = parcel.readInt();
        if (i2 != MAGIC) {
            throw new ParcelFormatException(m.d(i2, new StringBuilder("Bad magic number: #")));
        }
        readHistory(parcel, false);
        this.mStartCount = parcel.readInt();
        this.mStartClockTime = parcel.readLong();
        this.mStartPlatformVersion = parcel.readString();
        this.mEndPlatformVersion = parcel.readString();
        this.mUptime = parcel.readLong();
        this.mUptimeStart = parcel.readLong();
        this.mRealtime = parcel.readLong();
        this.mRealtimeStart = parcel.readLong();
        this.mOnBattery = parcel.readInt() != 0;
        this.mEstimatedBatteryCapacity = parcel.readInt();
        this.mMinLearnedBatteryCapacity = parcel.readInt();
        this.mMaxLearnedBatteryCapacity = parcel.readInt();
        this.mOnBatteryInternal = false;
        this.mOnBatteryTimeBase.readFromParcel(parcel);
        this.mOnBatteryScreenOffTimeBase.readFromParcel(parcel);
        this.mScreenState = 0;
        this.mScreenOnTimer = new StopwatchTimer(this.mClocks, null, -1, null, this.mOnBatteryTimeBase, parcel);
        this.mScreenDozeTimer = new StopwatchTimer(this.mClocks, null, -1, null, this.mOnBatteryTimeBase, parcel);
        for (int i3 = 0; i3 < 5; i3++) {
            this.mScreenBrightnessTimer[i3] = new StopwatchTimer(this.mClocks, null, (-100) - i3, null, this.mOnBatteryTimeBase, parcel);
        }
        this.mInteractive = false;
        this.mInteractiveTimer = new StopwatchTimer(this.mClocks, null, -10, null, this.mOnBatteryTimeBase, parcel);
        this.mPhoneOn = false;
        this.mPowerSaveModeEnabledTimer = new StopwatchTimer(this.mClocks, null, -2, null, this.mOnBatteryTimeBase, parcel);
        this.mLongestLightIdleTime = parcel.readLong();
        this.mLongestFullIdleTime = parcel.readLong();
        this.mDeviceIdleModeLightTimer = new StopwatchTimer(this.mClocks, null, -14, null, this.mOnBatteryTimeBase, parcel);
        this.mDeviceIdleModeFullTimer = new StopwatchTimer(this.mClocks, null, -11, null, this.mOnBatteryTimeBase, parcel);
        this.mDeviceLightIdlingTimer = new StopwatchTimer(this.mClocks, null, -15, null, this.mOnBatteryTimeBase, parcel);
        this.mDeviceIdlingTimer = new StopwatchTimer(this.mClocks, null, -12, null, this.mOnBatteryTimeBase, parcel);
        this.mPhoneOnTimer = new StopwatchTimer(this.mClocks, null, -3, null, this.mOnBatteryTimeBase, parcel);
        for (int i4 = 0; i4 < 5; i4++) {
            this.mPhoneSignalStrengthsTimer[i4] = new StopwatchTimer(this.mClocks, null, (-200) - i4, null, this.mOnBatteryTimeBase, parcel);
        }
        this.mPhoneSignalScanningTimer = new StopwatchTimer(this.mClocks, null, -199, null, this.mOnBatteryTimeBase, parcel);
        for (int i5 = 0; i5 < 17; i5++) {
            this.mPhoneDataConnectionsTimer[i5] = new StopwatchTimer(this.mClocks, null, (-300) - i5, null, this.mOnBatteryTimeBase, parcel);
        }
        for (int i6 = 0; i6 < 10; i6++) {
            this.mNetworkByteActivityCounters[i6] = new LongSamplingCounter(this.mOnBatteryTimeBase, parcel);
            this.mNetworkPacketActivityCounters[i6] = new LongSamplingCounter(this.mOnBatteryTimeBase, parcel);
        }
        this.mMobileRadioPowerState = 1;
        this.mMobileRadioActiveTimer = new StopwatchTimer(this.mClocks, null, -400, null, this.mOnBatteryTimeBase, parcel);
        this.mMobileRadioActivePerAppTimer = new StopwatchTimer(this.mClocks, null, -401, null, this.mOnBatteryTimeBase, parcel);
        this.mMobileRadioActiveAdjustedTime = new LongSamplingCounter(this.mOnBatteryTimeBase, parcel);
        this.mMobileRadioActiveUnknownTime = new LongSamplingCounter(this.mOnBatteryTimeBase, parcel);
        this.mMobileRadioActiveUnknownCount = new LongSamplingCounter(this.mOnBatteryTimeBase, parcel);
        this.mWifiRadioPowerState = 1;
        this.mWifiOn = false;
        this.mWifiOnTimer = new StopwatchTimer(this.mClocks, null, -4, null, this.mOnBatteryTimeBase, parcel);
        this.mGlobalWifiRunning = false;
        this.mGlobalWifiRunningTimer = new StopwatchTimer(this.mClocks, null, -5, null, this.mOnBatteryTimeBase, parcel);
        for (int i7 = 0; i7 < 8; i7++) {
            this.mWifiStateTimer[i7] = new StopwatchTimer(this.mClocks, null, (-600) - i7, null, this.mOnBatteryTimeBase, parcel);
        }
        for (int i8 = 0; i8 < 13; i8++) {
            this.mWifiSupplStateTimer[i8] = new StopwatchTimer(this.mClocks, null, (-700) - i8, null, this.mOnBatteryTimeBase, parcel);
        }
        for (int i9 = 0; i9 < 5; i9++) {
            this.mWifiSignalStrengthsTimer[i9] = new StopwatchTimer(this.mClocks, null, (-800) - i9, null, this.mOnBatteryTimeBase, parcel);
        }
        this.mWifiActivity = new ControllerActivityCounterImpl(this.mOnBatteryTimeBase, 1, parcel);
        this.mBluetoothActivity = new ControllerActivityCounterImpl(this.mOnBatteryTimeBase, 1, parcel);
        this.mModemActivity = new ControllerActivityCounterImpl(this.mOnBatteryTimeBase, 5, parcel);
        this.mHasWifiReporting = parcel.readInt() != 0;
        this.mHasBluetoothReporting = parcel.readInt() != 0;
        this.mHasModemReporting = parcel.readInt() != 0;
        this.mNumConnectivityChange = parcel.readInt();
        this.mLoadedNumConnectivityChange = parcel.readInt();
        this.mUnpluggedNumConnectivityChange = parcel.readInt();
        this.mAudioOnNesting = 0;
        this.mAudioOnTimer = new StopwatchTimer(this.mClocks, null, -7, null, this.mOnBatteryTimeBase);
        this.mVideoOnNesting = 0;
        this.mVideoOnTimer = new StopwatchTimer(this.mClocks, null, -8, null, this.mOnBatteryTimeBase);
        this.mFlashlightOnNesting = 0;
        this.mFlashlightOnTimer = new StopwatchTimer(this.mClocks, null, -9, null, this.mOnBatteryTimeBase, parcel);
        this.mCameraOnNesting = 0;
        this.mCameraOnTimer = new StopwatchTimer(this.mClocks, null, -13, null, this.mOnBatteryTimeBase, parcel);
        this.mBluetoothScanNesting = 0;
        this.mBluetoothScanTimer = new StopwatchTimer(this.mClocks, null, -14, null, this.mOnBatteryTimeBase, parcel);
        this.mDischargeUnplugLevel = parcel.readInt();
        this.mDischargePlugLevel = parcel.readInt();
        this.mDischargeCurrentLevel = parcel.readInt();
        this.mCurrentBatteryLevel = parcel.readInt();
        this.mLowDischargeAmountSinceCharge = parcel.readInt();
        this.mHighDischargeAmountSinceCharge = parcel.readInt();
        this.mDischargeAmountScreenOn = parcel.readInt();
        this.mDischargeAmountScreenOnSinceCharge = parcel.readInt();
        this.mDischargeAmountScreenOff = parcel.readInt();
        this.mDischargeAmountScreenOffSinceCharge = parcel.readInt();
        this.mDischargeAmountScreenDoze = parcel.readInt();
        this.mDischargeAmountScreenDozeSinceCharge = parcel.readInt();
        this.mDischargeStepTracker.readFromParcel(parcel);
        this.mChargeStepTracker.readFromParcel(parcel);
        this.mDischargeCounter = new LongSamplingCounter(this.mOnBatteryTimeBase, parcel);
        this.mDischargeScreenOffCounter = new LongSamplingCounter(this.mOnBatteryScreenOffTimeBase, parcel);
        this.mDischargeScreenDozeCounter = new LongSamplingCounter(this.mOnBatteryTimeBase, parcel);
        this.mLastWriteTime = parcel.readLong();
        this.mRpmStats.clear();
        int i10 = parcel.readInt();
        for (int i11 = 0; i11 < i10; i11++) {
            if (parcel.readInt() != 0) {
                this.mRpmStats.put(parcel.readString(), new SamplingTimer(this.mClocks, this.mOnBatteryTimeBase, parcel));
            }
        }
        this.mScreenOffRpmStats.clear();
        int i12 = parcel.readInt();
        for (int i13 = 0; i13 < i12; i13++) {
            if (parcel.readInt() != 0) {
                this.mScreenOffRpmStats.put(parcel.readString(), new SamplingTimer(this.mClocks, this.mOnBatteryScreenOffTimeBase, parcel));
            }
        }
        this.mKernelWakelockStats.clear();
        int i14 = parcel.readInt();
        for (int i15 = 0; i15 < i14; i15++) {
            if (parcel.readInt() != 0) {
                this.mKernelWakelockStats.put(parcel.readString(), new SamplingTimer(this.mClocks, this.mOnBatteryScreenOffTimeBase, parcel));
            }
        }
        this.mWakeupReasonStats.clear();
        int i16 = parcel.readInt();
        for (int i17 = 0; i17 < i16; i17++) {
            if (parcel.readInt() != 0) {
                this.mWakeupReasonStats.put(parcel.readString(), new SamplingTimer(this.mClocks, this.mOnBatteryTimeBase, parcel));
            }
        }
        this.mKernelMemoryStats.clear();
        int i18 = parcel.readInt();
        for (int i19 = 0; i19 < i18; i19++) {
            if (parcel.readInt() != 0) {
                this.mKernelMemoryStats.put(Long.valueOf(parcel.readLong()).longValue(), new SamplingTimer(this.mClocks, this.mOnBatteryTimeBase, parcel));
            }
        }
        this.mPartialTimers.clear();
        this.mFullTimers.clear();
        this.mWindowTimers.clear();
        this.mWifiRunningTimers.clear();
        this.mFullWifiLockTimers.clear();
        this.mWifiScanTimers.clear();
        this.mWifiBatchedScanTimers.clear();
        this.mWifiMulticastTimers.clear();
        this.mAudioTurnedOnTimers.clear();
        this.mVideoTurnedOnTimers.clear();
        this.mFlashlightTurnedOnTimers.clear();
        this.mCameraTurnedOnTimers.clear();
        this.mCpuFreqs = parcel.createLongArray();
        int i20 = parcel.readInt();
        this.mUidStats.clear();
        for (int i21 = 0; i21 < i20; i21++) {
            int i22 = parcel.readInt();
            Uid uid = new Uid(this, i22);
            uid.readFromParcelLocked(this.mOnBatteryTimeBase, this.mOnBatteryScreenOffTimeBase, parcel);
            this.mUidStats.append(i22, uid);
        }
        this.mPowerControllerBatteryStatsHelper.readFromParcel(parcel);
    }

    public void readHistory(Parcel parcel, boolean z2) {
        long j2 = parcel.readLong();
        this.mHistoryBuffer.setDataSize(0);
        this.mHistoryBuffer.setDataPosition(0);
        this.mHistoryTagPool.clear();
        this.mNextHistoryTagIdx = 0;
        this.mNumHistoryTagChars = 0;
        int i2 = parcel.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = parcel.readInt();
            String string = parcel.readString();
            if (string == null) {
                throw new ParcelFormatException("null history tag string");
            }
            int i5 = parcel.readInt();
            BatteryStats.HistoryTag historyTag = new BatteryStats.HistoryTag();
            historyTag.string = string;
            historyTag.uid = i5;
            historyTag.poolIdx = i4;
            this.mHistoryTagPool.put(historyTag, Integer.valueOf(i4));
            if (i4 >= this.mNextHistoryTagIdx) {
                this.mNextHistoryTagIdx = i4 + 1;
            }
            this.mNumHistoryTagChars = historyTag.string.length() + 1 + this.mNumHistoryTagChars;
        }
        int i6 = parcel.readInt();
        int iDataPosition = parcel.dataPosition();
        if (i6 >= MAX_MAX_HISTORY_BUFFER * 3) {
            throw new ParcelFormatException(c.d("File corrupt: history data buffer too large ", i6));
        }
        if ((i6 & (-4)) != i6) {
            throw new ParcelFormatException(c.d("File corrupt: history data buffer not aligned ", i6));
        }
        this.mHistoryBuffer.appendFrom(parcel, iDataPosition, i6);
        parcel.setDataPosition(iDataPosition + i6);
        if (z2) {
            readOldHistory(parcel);
        }
        this.mHistoryBaseTime = j2;
        if (j2 > 0) {
            this.mHistoryBaseTime = (this.mHistoryBaseTime - this.mClocks.elapsedRealtime()) + 1;
        }
    }

    public void readHistoryDelta(Parcel parcel, BatteryStats.HistoryItem historyItem) {
        int i2;
        int i3 = parcel.readInt();
        int i4 = 524287 & i3;
        historyItem.cmd = (byte) 0;
        historyItem.numReadInts = 1;
        if (i4 < DELTA_TIME_ABS) {
            historyItem.time += (long) i4;
        } else if (i4 == DELTA_TIME_ABS) {
            historyItem.time = parcel.readLong();
            historyItem.numReadInts += 2;
            historyItem.readFromParcel(parcel);
            return;
        } else if (i4 == DELTA_TIME_INT) {
            historyItem.time += (long) parcel.readInt();
            historyItem.numReadInts++;
        } else {
            historyItem.time += parcel.readLong();
            historyItem.numReadInts += 2;
        }
        if ((524288 & i3) != 0) {
            i2 = parcel.readInt();
            readBatteryLevelInt(i2, historyItem);
            historyItem.numReadInts++;
        } else {
            i2 = 0;
        }
        if ((1048576 & i3) != 0) {
            int i5 = parcel.readInt();
            historyItem.states = (16777215 & i5) | (DELTA_STATE_MASK & i3);
            historyItem.batteryStatus = (byte) ((i5 >> 29) & 7);
            historyItem.batteryHealth = (byte) ((i5 >> 26) & 7);
            byte b2 = (byte) ((i5 >> 24) & 3);
            historyItem.batteryPlugType = b2;
            if (b2 == 1) {
                historyItem.batteryPlugType = (byte) 1;
            } else if (b2 == 2) {
                historyItem.batteryPlugType = (byte) 2;
            } else if (b2 == 3) {
                historyItem.batteryPlugType = (byte) 4;
            }
            historyItem.numReadInts++;
        } else {
            historyItem.states = (i3 & DELTA_STATE_MASK) | (historyItem.states & 16777215);
        }
        if ((2097152 & i3) != 0) {
            historyItem.states2 = parcel.readInt();
        }
        if ((4194304 & i3) != 0) {
            int i6 = parcel.readInt();
            int i7 = i6 & 65535;
            int i8 = (i6 >> 16) & 65535;
            if (i7 != 65535) {
                BatteryStats.HistoryTag historyTag = historyItem.localWakelockTag;
                historyItem.wakelockTag = historyTag;
                readHistoryTag(i7, historyTag);
            } else {
                historyItem.wakelockTag = null;
            }
            if (i8 != 65535) {
                BatteryStats.HistoryTag historyTag2 = historyItem.localWakeReasonTag;
                historyItem.wakeReasonTag = historyTag2;
                readHistoryTag(i8, historyTag2);
            } else {
                historyItem.wakeReasonTag = null;
            }
            historyItem.numReadInts++;
        } else {
            historyItem.wakelockTag = null;
            historyItem.wakeReasonTag = null;
        }
        if ((8388608 & i3) != 0) {
            historyItem.eventTag = historyItem.localEventTag;
            int i9 = parcel.readInt();
            historyItem.eventCode = i9 & 65535;
            readHistoryTag((i9 >> 16) & 65535, historyItem.eventTag);
            historyItem.numReadInts++;
        } else {
            historyItem.eventCode = 0;
        }
        if ((i2 & 1) != 0) {
            BatteryStats.HistoryStepDetails historyStepDetails = this.mReadHistoryStepDetails;
            historyItem.stepDetails = historyStepDetails;
            historyStepDetails.readFromParcel(parcel);
        } else {
            historyItem.stepDetails = null;
        }
        if ((i3 & 16777216) != 0) {
            historyItem.batteryChargeUAh = parcel.readInt();
        }
    }

    public void readKernelUidCpuFreqTimesLocked() {
        this.mKernelUidCpuFreqTimeReader.readDelta(!this.mOnBatteryInternal ? null : new KernelUidCpuFreqTimeReader.Callback() { // from class: com.android.internal.os.BatteryStatsImpl.3
            @Override // com.android.internal.os.KernelUidCpuFreqTimeReader.Callback
            public void onCpuFreqs(long[] jArr) {
                BatteryStatsImpl.this.mCpuFreqs = jArr;
            }

            @Override // com.android.internal.os.KernelUidCpuFreqTimeReader.Callback
            public void onUidCpuFreqTime(int i2, long[] jArr) {
                int iMapUid = BatteryStatsImpl.this.mapUid(i2);
                if (Process.isIsolated(iMapUid)) {
                    BatteryStatsImpl.this.mKernelUidCpuFreqTimeReader.removeUid(iMapUid);
                    Slog.d(BatteryStatsImpl.TAG, "Got freq readings for an isolated uid with no mapping to owning uid: " + iMapUid);
                    return;
                }
                if (!BatteryStatsImpl.this.mUserInfoProvider.exists(UserHandle.getUserId(iMapUid))) {
                    Slog.d(BatteryStatsImpl.TAG, "Got readings for an invalid user's uid " + iMapUid);
                    BatteryStatsImpl.this.mKernelUidCpuFreqTimeReader.removeUid(iMapUid);
                    return;
                }
                Uid uidStatsLocked = BatteryStatsImpl.this.getUidStatsLocked(iMapUid);
                LongSamplingCounterArray longSamplingCounterArray = uidStatsLocked.mCpuFreqTimeMs;
                if (longSamplingCounterArray == null || longSamplingCounterArray.getSize() != jArr.length) {
                    uidStatsLocked.mCpuFreqTimeMs = new LongSamplingCounterArray(BatteryStatsImpl.this.mOnBatteryTimeBase);
                }
                uidStatsLocked.mCpuFreqTimeMs.addCountLocked(jArr);
                LongSamplingCounterArray longSamplingCounterArray2 = uidStatsLocked.mScreenOffCpuFreqTimeMs;
                if (longSamplingCounterArray2 == null || longSamplingCounterArray2.getSize() != jArr.length) {
                    uidStatsLocked.mScreenOffCpuFreqTimeMs = new LongSamplingCounterArray(BatteryStatsImpl.this.mOnBatteryScreenOffTimeBase);
                }
                uidStatsLocked.mScreenOffCpuFreqTimeMs.addCountLocked(jArr);
            }
        });
    }

    public void readLocked() throws IOException {
        if (this.mDailyFile != null) {
            readDailyStatsLocked();
        }
        if (this.mFile == null) {
            Slog.w("BatteryStats", "readLocked: no file associated with this instance");
            return;
        }
        this.mUidStats.clear();
        try {
            File fileChooseForRead = this.mFile.chooseForRead();
            if (!fileChooseForRead.exists()) {
                return;
            }
            FileInputStream fileInputStream = new FileInputStream(fileChooseForRead);
            byte[] fully = BatteryStatsHelper.readFully(fileInputStream);
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.unmarshall(fully, 0, fully.length);
            parcelObtain.setDataPosition(0);
            fileInputStream.close();
            readSummaryFromParcel(parcelObtain);
        } catch (Exception e2) {
            Slog.e("BatteryStats", "Error reading battery statistics", e2);
            resetAllStatsLocked();
        }
        this.mEndPlatformVersion = Build.ID;
        if (this.mHistoryBuffer.dataPosition() > 0) {
            this.mRecordingHistory = true;
            long jElapsedRealtime = this.mClocks.elapsedRealtime();
            long jUptimeMillis = this.mClocks.uptimeMillis();
            addHistoryBufferLocked(jElapsedRealtime, jUptimeMillis, (byte) 4, this.mHistoryCur);
            startRecordingHistory(jElapsedRealtime, jUptimeMillis, false);
        }
        recordDailyStatsIfNeededLocked(false);
    }

    public void readOldHistory(Parcel parcel) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v12, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r10v7, types: [com.android.internal.os.PowerProfile] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.os.Parcel, com.android.internal.os.BatteryStatsImpl$LongSamplingCounter, com.android.internal.os.BatteryStatsImpl$LongSamplingCounter[][]] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r4v32, types: [int] */
    /* JADX WARN: Type inference failed for: r4v38 */
    /* JADX WARN: Type inference failed for: r4v39 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v20, types: [int] */
    /* JADX WARN: Type inference failed for: r5v40 */
    /* JADX WARN: Type inference failed for: r5v41, types: [int] */
    /* JADX WARN: Type inference failed for: r5v46 */
    /* JADX WARN: Type inference failed for: r5v47, types: [int] */
    /* JADX WARN: Type inference failed for: r5v78 */
    /* JADX WARN: Type inference failed for: r5v79 */
    /* JADX WARN: Type inference failed for: r5v80 */
    /* JADX WARN: Type inference failed for: r7v27, types: [com.android.internal.os.BatteryStatsImpl$LongSamplingCounter[][]] */
    /* JADX WARN: Type inference failed for: r7v29, types: [int] */
    /* JADX WARN: Type inference failed for: r7v37 */
    /* JADX WARN: Type inference failed for: r7v38 */
    /* JADX WARN: Type inference failed for: r8v46 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8, types: [int] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.android.internal.os.BatteryStatsImpl$Uid, java.lang.Object] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void readSummaryFromParcel(Parcel parcel) {
        int i2 = parcel.readInt();
        if (i2 != 167) {
            Slog.w("BatteryStats", "readFromParcel: version got " + i2 + ", expected 167; erasing old stats");
            return;
        }
        ?? r0 = 1;
        readHistory(parcel, true);
        this.mStartCount = parcel.readInt();
        this.mUptime = parcel.readLong();
        this.mRealtime = parcel.readLong();
        this.mStartClockTime = parcel.readLong();
        this.mStartPlatformVersion = parcel.readString();
        this.mEndPlatformVersion = parcel.readString();
        this.mOnBatteryTimeBase.readSummaryFromParcel(parcel);
        this.mOnBatteryScreenOffTimeBase.readSummaryFromParcel(parcel);
        this.mDischargeUnplugLevel = parcel.readInt();
        this.mDischargePlugLevel = parcel.readInt();
        this.mDischargeCurrentLevel = parcel.readInt();
        this.mCurrentBatteryLevel = parcel.readInt();
        this.mEstimatedBatteryCapacity = parcel.readInt();
        this.mMinLearnedBatteryCapacity = parcel.readInt();
        this.mMaxLearnedBatteryCapacity = parcel.readInt();
        this.mLowDischargeAmountSinceCharge = parcel.readInt();
        this.mHighDischargeAmountSinceCharge = parcel.readInt();
        this.mDischargeAmountScreenOnSinceCharge = parcel.readInt();
        this.mDischargeAmountScreenOffSinceCharge = parcel.readInt();
        this.mDischargeAmountScreenDozeSinceCharge = parcel.readInt();
        this.mDischargeStepTracker.readFromParcel(parcel);
        this.mChargeStepTracker.readFromParcel(parcel);
        this.mDailyDischargeStepTracker.readFromParcel(parcel);
        this.mDailyChargeStepTracker.readFromParcel(parcel);
        this.mDischargeCounter.readSummaryFromParcelLocked(parcel);
        this.mDischargeScreenOffCounter.readSummaryFromParcelLocked(parcel);
        this.mDischargeScreenDozeCounter.readSummaryFromParcelLocked(parcel);
        int i3 = parcel.readInt();
        ?? r2 = 0;
        int i4 = 0;
        if (i3 > 0) {
            this.mDailyPackageChanges = new ArrayList<>(i3);
            while (i3 > 0) {
                i3--;
                BatteryStats.PackageChange packageChange = new BatteryStats.PackageChange();
                packageChange.mPackageName = parcel.readString();
                packageChange.mUpdate = parcel.readInt() != 0;
                packageChange.mVersionCode = parcel.readInt();
                this.mDailyPackageChanges.add(packageChange);
            }
        } else {
            this.mDailyPackageChanges = null;
        }
        this.mDailyStartTime = parcel.readLong();
        this.mNextMinDailyDeadline = parcel.readLong();
        this.mNextMaxDailyDeadline = parcel.readLong();
        this.mStartCount++;
        this.mScreenState = 0;
        this.mScreenOnTimer.readSummaryFromParcelLocked(parcel);
        this.mScreenDozeTimer.readSummaryFromParcelLocked(parcel);
        for (int i5 = 0; i5 < 5; i5++) {
            this.mScreenBrightnessTimer[i5].readSummaryFromParcelLocked(parcel);
        }
        this.mInteractive = false;
        this.mInteractiveTimer.readSummaryFromParcelLocked(parcel);
        this.mPhoneOn = false;
        this.mPowerSaveModeEnabledTimer.readSummaryFromParcelLocked(parcel);
        this.mLongestLightIdleTime = parcel.readLong();
        this.mLongestFullIdleTime = parcel.readLong();
        this.mDeviceIdleModeLightTimer.readSummaryFromParcelLocked(parcel);
        this.mDeviceIdleModeFullTimer.readSummaryFromParcelLocked(parcel);
        this.mDeviceLightIdlingTimer.readSummaryFromParcelLocked(parcel);
        this.mDeviceIdlingTimer.readSummaryFromParcelLocked(parcel);
        this.mPhoneOnTimer.readSummaryFromParcelLocked(parcel);
        for (int i6 = 0; i6 < 5; i6++) {
            this.mPhoneSignalStrengthsTimer[i6].readSummaryFromParcelLocked(parcel);
        }
        this.mPhoneSignalScanningTimer.readSummaryFromParcelLocked(parcel);
        for (int i7 = 0; i7 < 17; i7++) {
            this.mPhoneDataConnectionsTimer[i7].readSummaryFromParcelLocked(parcel);
        }
        for (int i8 = 0; i8 < 10; i8++) {
            this.mNetworkByteActivityCounters[i8].readSummaryFromParcelLocked(parcel);
            this.mNetworkPacketActivityCounters[i8].readSummaryFromParcelLocked(parcel);
        }
        this.mMobileRadioPowerState = 1;
        this.mMobileRadioActiveTimer.readSummaryFromParcelLocked(parcel);
        this.mMobileRadioActivePerAppTimer.readSummaryFromParcelLocked(parcel);
        this.mMobileRadioActiveAdjustedTime.readSummaryFromParcelLocked(parcel);
        this.mMobileRadioActiveUnknownTime.readSummaryFromParcelLocked(parcel);
        this.mMobileRadioActiveUnknownCount.readSummaryFromParcelLocked(parcel);
        this.mWifiRadioPowerState = 1;
        this.mWifiOn = false;
        this.mWifiOnTimer.readSummaryFromParcelLocked(parcel);
        this.mGlobalWifiRunning = false;
        this.mGlobalWifiRunningTimer.readSummaryFromParcelLocked(parcel);
        for (int i9 = 0; i9 < 8; i9++) {
            this.mWifiStateTimer[i9].readSummaryFromParcelLocked(parcel);
        }
        for (int i10 = 0; i10 < 13; i10++) {
            this.mWifiSupplStateTimer[i10].readSummaryFromParcelLocked(parcel);
        }
        for (int i11 = 0; i11 < 5; i11++) {
            this.mWifiSignalStrengthsTimer[i11].readSummaryFromParcelLocked(parcel);
        }
        this.mWifiActivity.readSummaryFromParcel(parcel);
        this.mBluetoothActivity.readSummaryFromParcel(parcel);
        this.mModemActivity.readSummaryFromParcel(parcel);
        this.mHasWifiReporting = parcel.readInt() != 0;
        this.mHasBluetoothReporting = parcel.readInt() != 0;
        this.mHasModemReporting = parcel.readInt() != 0;
        int i12 = parcel.readInt();
        this.mLoadedNumConnectivityChange = i12;
        this.mNumConnectivityChange = i12;
        this.mFlashlightOnNesting = 0;
        this.mFlashlightOnTimer.readSummaryFromParcelLocked(parcel);
        this.mCameraOnNesting = 0;
        this.mCameraOnTimer.readSummaryFromParcelLocked(parcel);
        this.mBluetoothScanNesting = 0;
        this.mBluetoothScanTimer.readSummaryFromParcelLocked(parcel);
        int i13 = parcel.readInt();
        if (i13 > 10000) {
            throw new ParcelFormatException(c.d("File corrupt: too many rpm stats ", i13));
        }
        for (int i14 = 0; i14 < i13; i14++) {
            if (parcel.readInt() != 0) {
                getRpmTimerLocked(parcel.readString()).readSummaryFromParcelLocked(parcel);
            }
        }
        int i15 = parcel.readInt();
        if (i15 > 10000) {
            throw new ParcelFormatException(c.d("File corrupt: too many screen-off rpm stats ", i15));
        }
        for (int i16 = 0; i16 < i15; i16++) {
            if (parcel.readInt() != 0) {
                getScreenOffRpmTimerLocked(parcel.readString()).readSummaryFromParcelLocked(parcel);
            }
        }
        int i17 = parcel.readInt();
        if (i17 > 10000) {
            throw new ParcelFormatException(c.d("File corrupt: too many kernel wake locks ", i17));
        }
        for (int i18 = 0; i18 < i17; i18++) {
            if (parcel.readInt() != 0) {
                getKernelWakelockTimerLocked(parcel.readString()).readSummaryFromParcelLocked(parcel);
            }
        }
        int i19 = parcel.readInt();
        if (i19 > 10000) {
            throw new ParcelFormatException(c.d("File corrupt: too many wakeup reasons ", i19));
        }
        for (int i20 = 0; i20 < i19; i20++) {
            if (parcel.readInt() != 0) {
                getWakeupReasonTimerLocked(parcel.readString()).readSummaryFromParcelLocked(parcel);
            }
        }
        int i21 = parcel.readInt();
        for (int i22 = 0; i22 < i21; i22++) {
            if (parcel.readInt() != 0) {
                getKernelMemoryTimerLocked(parcel.readLong()).readSummaryFromParcelLocked(parcel);
            }
        }
        this.mCpuFreqs = parcel.createLongArray();
        int i23 = parcel.readInt();
        if (i23 > 10000) {
            throw new ParcelFormatException(c.d("File corrupt: too many uids ", i23));
        }
        char c = '\n';
        char c2 = 5;
        boolean z2 = false;
        while (i4 < i23) {
            int i24 = parcel.readInt();
            ?? uid = new Uid(this, i24);
            this.mUidStats.put(i24, uid);
            uid.mOnBatteryBackgroundTimeBase.readSummaryFromParcel(parcel);
            uid.mOnBatteryScreenOffBackgroundTimeBase.readSummaryFromParcel(parcel);
            uid.mWifiRunning = z2;
            if (parcel.readInt() != 0) {
                uid.mWifiRunningTimer.readSummaryFromParcelLocked(parcel);
            }
            uid.mFullWifiLockOut = z2;
            if (parcel.readInt() != 0) {
                uid.mFullWifiLockTimer.readSummaryFromParcelLocked(parcel);
            }
            uid.mWifiScanStarted = z2;
            if (parcel.readInt() != 0) {
                uid.mWifiScanTimer.readSummaryFromParcelLocked(parcel);
            }
            uid.mWifiBatchedScanBinStarted = -1;
            for (?? r8 = z2; r8 < c2; r8++) {
                if (parcel.readInt() != 0) {
                    uid.makeWifiBatchedScanBin(r8, r2);
                    uid.mWifiBatchedScanTimer[r8].readSummaryFromParcelLocked(parcel);
                }
            }
            uid.mWifiMulticastEnabled = z2;
            if (parcel.readInt() != 0) {
                uid.mWifiMulticastTimer.readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createAudioTurnedOnTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createVideoTurnedOnTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createFlashlightTurnedOnTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createCameraTurnedOnTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createForegroundActivityTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createForegroundServiceTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createAggregatedPartialWakelockTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createBluetoothScanTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createBluetoothUnoptimizedScanTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createBluetoothScanResultCounterLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                uid.createBluetoothScanResultBgCounterLocked().readSummaryFromParcelLocked(parcel);
            }
            uid.mProcessState = 18;
            for (?? r5 = z2; r5 < 6; r5++) {
                if (parcel.readInt() != 0) {
                    uid.makeProcessState(r5, r2);
                    uid.mProcessStateTimer[r5].readSummaryFromParcelLocked(parcel);
                }
            }
            if (parcel.readInt() != 0) {
                uid.createVibratorOnTimerLocked().readSummaryFromParcelLocked(parcel);
            }
            if (parcel.readInt() != 0) {
                if (uid.mUserActivityCounters == null) {
                    uid.initUserActivityLocked();
                }
                for (?? r6 = z2; r6 < 4; r6++) {
                    uid.mUserActivityCounters[r6].readSummaryFromParcelLocked(parcel);
                }
            }
            if (parcel.readInt() != 0) {
                if (uid.mNetworkByteActivityCounters == null) {
                    uid.initNetworkActivityLocked();
                }
                for (?? r7 = z2; r7 < c; r7++) {
                    uid.mNetworkByteActivityCounters[r7].readSummaryFromParcelLocked(parcel);
                    uid.mNetworkPacketActivityCounters[r7].readSummaryFromParcelLocked(parcel);
                }
                uid.mMobileRadioActiveTime.readSummaryFromParcelLocked(parcel);
                uid.mMobileRadioActiveCount.readSummaryFromParcelLocked(parcel);
            }
            uid.mUserCpuTime.readSummaryFromParcelLocked(parcel);
            uid.mSystemCpuTime.readSummaryFromParcelLocked(parcel);
            if (parcel.readInt() != 0) {
                int i25 = parcel.readInt();
                PowerProfile powerProfile = this.mPowerProfile;
                if (powerProfile != null && powerProfile.getNumCpuClusters() != i25) {
                    throw new ParcelFormatException("Incompatible cpu cluster arrangement");
                }
                uid.mCpuClusterSpeedTimesUs = new LongSamplingCounter[i25][];
                boolean z3 = z2;
                for (?? r4 = z2; r4 < i25; r4++) {
                    if (parcel.readInt() != 0) {
                        int i26 = parcel.readInt();
                        ?? r10 = this.mPowerProfile;
                        if (r10 != 0 && r10.getNumSpeedStepsInCpuCluster(r4) != i26) {
                            throw new ParcelFormatException(c.d("File corrupt: too many speed bins ", i26));
                        }
                        uid.mCpuClusterSpeedTimesUs[r4] = new LongSamplingCounter[i26];
                        for (?? r9 = z3; r9 < i26; r9++) {
                            if (parcel.readInt() != 0) {
                                uid.mCpuClusterSpeedTimesUs[r4][r9] = new LongSamplingCounter(this.mOnBatteryTimeBase);
                                uid.mCpuClusterSpeedTimesUs[r4][r9].readSummaryFromParcelLocked(parcel);
                            }
                        }
                    } else {
                        uid.mCpuClusterSpeedTimesUs[r4] = r2;
                    }
                    z3 = false;
                }
            } else {
                uid.mCpuClusterSpeedTimesUs = r2;
            }
            uid.mCpuFreqTimeMs = LongSamplingCounterArray.readSummaryFromParcelLocked(parcel, this.mOnBatteryTimeBase);
            uid.mScreenOffCpuFreqTimeMs = LongSamplingCounterArray.readSummaryFromParcelLocked(parcel, this.mOnBatteryScreenOffTimeBase);
            if (parcel.readInt() != 0) {
                ((Uid) uid).mMobileRadioApWakeupCount = new LongSamplingCounter(this.mOnBatteryTimeBase);
                ((Uid) uid).mMobileRadioApWakeupCount.readSummaryFromParcelLocked(parcel);
            } else {
                ((Uid) uid).mMobileRadioApWakeupCount = r2;
            }
            if (parcel.readInt() != 0) {
                ((Uid) uid).mWifiRadioApWakeupCount = new LongSamplingCounter(this.mOnBatteryTimeBase);
                ((Uid) uid).mWifiRadioApWakeupCount.readSummaryFromParcelLocked(parcel);
            } else {
                ((Uid) uid).mWifiRadioApWakeupCount = r2;
            }
            int i27 = parcel.readInt();
            if (i27 > MAX_WAKELOCKS_PER_UID + r0) {
                throw new ParcelFormatException(c.d("File corrupt: too many wake locks ", i27));
            }
            for (int i28 = 0; i28 < i27; i28++) {
                uid.readWakeSummaryFromParcelLocked(parcel.readString(), parcel);
            }
            int i29 = parcel.readInt();
            if (i29 > MAX_WAKELOCKS_PER_UID + r0) {
                throw new ParcelFormatException(c.d("File corrupt: too many syncs ", i29));
            }
            for (int i30 = 0; i30 < i29; i30++) {
                uid.readSyncSummaryFromParcelLocked(parcel.readString(), parcel);
            }
            int i31 = parcel.readInt();
            if (i31 > MAX_WAKELOCKS_PER_UID + r0) {
                throw new ParcelFormatException(c.d("File corrupt: too many job timers ", i31));
            }
            for (int i32 = 0; i32 < i31; i32++) {
                uid.readJobSummaryFromParcelLocked(parcel.readString(), parcel);
            }
            uid.readJobCompletionsFromParcelLocked(parcel);
            int i33 = parcel.readInt();
            if (i33 > 1000) {
                throw new ParcelFormatException(c.d("File corrupt: too many sensors ", i33));
            }
            for (int i34 = 0; i34 < i33; i34++) {
                int i35 = parcel.readInt();
                if (parcel.readInt() != 0) {
                    uid.getSensorTimerLocked(i35, r0).readSummaryFromParcelLocked(parcel);
                }
            }
            int i36 = parcel.readInt();
            if (i36 > 1000) {
                throw new ParcelFormatException(c.d("File corrupt: too many processes ", i36));
            }
            for (int i37 = 0; i37 < i36; i37++) {
                Uid.Proc processStatsLocked = uid.getProcessStatsLocked(parcel.readString());
                long j2 = parcel.readLong();
                processStatsLocked.mLoadedUserTime = j2;
                processStatsLocked.mUserTime = j2;
                long j3 = parcel.readLong();
                processStatsLocked.mLoadedSystemTime = j3;
                processStatsLocked.mSystemTime = j3;
                long j4 = parcel.readLong();
                processStatsLocked.mLoadedForegroundTime = j4;
                processStatsLocked.mForegroundTime = j4;
                int i38 = parcel.readInt();
                processStatsLocked.mLoadedStarts = i38;
                processStatsLocked.mStarts = i38;
                int i39 = parcel.readInt();
                processStatsLocked.mLoadedNumCrashes = i39;
                processStatsLocked.mNumCrashes = i39;
                int i40 = parcel.readInt();
                processStatsLocked.mLoadedNumAnrs = i40;
                processStatsLocked.mNumAnrs = i40;
                processStatsLocked.readExcessivePowerFromParcelLocked(parcel);
            }
            int i41 = parcel.readInt();
            if (i41 > 10000) {
                throw new ParcelFormatException(c.d("File corrupt: too many packages ", i41));
            }
            for (int i42 = 0; i42 < i41; i42++) {
                String string = parcel.readString();
                Uid.Pkg packageStatsLocked = uid.getPackageStatsLocked(string);
                int i43 = parcel.readInt();
                if (i43 > 1000) {
                    throw new ParcelFormatException(c.d("File corrupt: too many wakeup alarms ", i43));
                }
                packageStatsLocked.mWakeupAlarms.clear();
                for (int i44 = 0; i44 < i43; i44++) {
                    String string2 = parcel.readString();
                    Counter counter = new Counter(this.mOnBatteryScreenOffTimeBase);
                    counter.readSummaryFromParcelLocked(parcel);
                    packageStatsLocked.mWakeupAlarms.put(string2, counter);
                }
                int i45 = parcel.readInt();
                if (i45 > 1000) {
                    throw new ParcelFormatException(c.d("File corrupt: too many services ", i45));
                }
                for (int i46 = 0; i46 < i45; i46++) {
                    Uid.Pkg.Serv serviceStatsLocked = uid.getServiceStatsLocked(string, parcel.readString());
                    long j5 = parcel.readLong();
                    serviceStatsLocked.mLoadedStartTime = j5;
                    serviceStatsLocked.mStartTime = j5;
                    int i47 = parcel.readInt();
                    serviceStatsLocked.mLoadedStarts = i47;
                    serviceStatsLocked.mStarts = i47;
                    int i48 = parcel.readInt();
                    serviceStatsLocked.mLoadedLaunches = i48;
                    serviceStatsLocked.mLaunches = i48;
                }
            }
            i4++;
            r0 = 1;
            r2 = 0;
            z2 = false;
            c2 = 5;
            c = '\n';
        }
        this.mPowerControllerBatteryStatsHelper.readFromParcel(parcel);
    }

    public void recordDailyStatsIfNeededLocked(boolean z2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis >= this.mNextMaxDailyDeadline) {
            recordDailyStatsLocked();
            return;
        }
        if (z2 && jCurrentTimeMillis >= this.mNextMinDailyDeadline) {
            recordDailyStatsLocked();
        } else if (jCurrentTimeMillis < this.mDailyStartTime - 86400000) {
            recordDailyStatsLocked();
        }
    }

    public void recordDailyStatsLocked() {
        boolean z2;
        BatteryStats.DailyItem dailyItem = new BatteryStats.DailyItem();
        dailyItem.mStartTime = this.mDailyStartTime;
        dailyItem.mEndTime = System.currentTimeMillis();
        BatteryStats.LevelStepTracker levelStepTracker = this.mDailyDischargeStepTracker;
        int i2 = levelStepTracker.mNumStepDurations;
        boolean z3 = true;
        if (i2 > 0) {
            dailyItem.mDischargeSteps = new BatteryStats.LevelStepTracker(i2, levelStepTracker.mStepDurations);
            z2 = true;
        } else {
            z2 = false;
        }
        BatteryStats.LevelStepTracker levelStepTracker2 = this.mDailyChargeStepTracker;
        int i3 = levelStepTracker2.mNumStepDurations;
        if (i3 > 0) {
            dailyItem.mChargeSteps = new BatteryStats.LevelStepTracker(i3, levelStepTracker2.mStepDurations);
            z2 = true;
        }
        ArrayList<BatteryStats.PackageChange> arrayList = this.mDailyPackageChanges;
        if (arrayList != null) {
            dailyItem.mPackageChanges = arrayList;
            this.mDailyPackageChanges = null;
        } else {
            z3 = z2;
        }
        this.mDailyDischargeStepTracker.init();
        this.mDailyChargeStepTracker.init();
        updateDailyDeadlineLocked();
        if (z3) {
            this.mDailyItems.add(dailyItem);
            while (this.mDailyItems.size() > 10) {
                this.mDailyItems.remove(0);
            }
            final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                XmlSerializer fastXmlSerializer = new FastXmlSerializer();
                fastXmlSerializer.setOutput(byteArrayOutputStream, StandardCharsets.UTF_8.name());
                writeDailyItemsLocked(fastXmlSerializer);
                BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.internal.os.BatteryStatsImpl.1
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (BatteryStatsImpl.this.mCheckinFile) {
                            FileOutputStream fileOutputStreamStartWrite = null;
                            try {
                                fileOutputStreamStartWrite = BatteryStatsImpl.this.mDailyFile.startWrite();
                                byteArrayOutputStream.writeTo(fileOutputStreamStartWrite);
                                fileOutputStreamStartWrite.flush();
                                FileUtils.sync(fileOutputStreamStartWrite);
                                fileOutputStreamStartWrite.close();
                                BatteryStatsImpl.this.mDailyFile.finishWrite(fileOutputStreamStartWrite);
                            } catch (IOException e2) {
                                Slog.w("BatteryStats", "Error writing battery daily items", e2);
                                BatteryStatsImpl.this.mDailyFile.failWrite(fileOutputStreamStartWrite);
                            }
                        }
                    }
                });
            } catch (IOException unused) {
            }
        }
    }

    public void removeIsolatedUidLocked(int i2) {
        this.mIsolatedUids.delete(i2);
        this.mKernelUidCpuTimeReader.removeUid(i2);
        this.mKernelUidCpuFreqTimeReader.removeUid(i2);
    }

    public void removeUidStatsLocked(int i2) {
        this.mKernelUidCpuTimeReader.removeUid(i2);
        this.mKernelUidCpuFreqTimeReader.removeUid(i2);
        this.mUidStats.remove(i2);
    }

    public void reportExcessiveCpuLocked(int i2, String str, long j2, long j3) {
        Uid uid = this.mUidStats.get(mapUid(i2));
        if (uid != null) {
            uid.reportExcessiveCpuLocked(str, j2, j3);
        }
    }

    public void resetAllStatsCmdLocked() {
        resetAllStatsLocked();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        long j2 = jUptimeMillis * 1000;
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long j3 = 1000 * jElapsedRealtime;
        this.mDischargeStartLevel = this.mHistoryCur.batteryLevel;
        pullPendingStateUpdatesLocked();
        addHistoryRecordLocked(jElapsedRealtime, jUptimeMillis);
        byte b2 = this.mHistoryCur.batteryLevel;
        this.mCurrentBatteryLevel = b2;
        this.mDischargePlugLevel = b2;
        this.mDischargeUnplugLevel = b2;
        this.mDischargeCurrentLevel = b2;
        this.mOnBatteryTimeBase.reset(j2, j3);
        this.mOnBatteryScreenOffTimeBase.reset(j2, j3);
        if ((this.mHistoryCur.states & 524288) == 0) {
            if (isScreenOn(this.mScreenState)) {
                this.mDischargeScreenOnUnplugLevel = this.mHistoryCur.batteryLevel;
                this.mDischargeScreenDozeUnplugLevel = 0;
                this.mDischargeScreenOffUnplugLevel = 0;
            } else if (isScreenDoze(this.mScreenState)) {
                this.mDischargeScreenOnUnplugLevel = 0;
                this.mDischargeScreenDozeUnplugLevel = this.mHistoryCur.batteryLevel;
                this.mDischargeScreenOffUnplugLevel = 0;
            } else {
                this.mDischargeScreenOnUnplugLevel = 0;
                this.mDischargeScreenDozeUnplugLevel = 0;
                this.mDischargeScreenOffUnplugLevel = this.mHistoryCur.batteryLevel;
            }
            this.mDischargeAmountScreenOn = 0;
            this.mDischargeAmountScreenOff = 0;
            this.mDischargeAmountScreenDoze = 0;
        }
        initActiveHistoryEventsLocked(jElapsedRealtime, jUptimeMillis);
    }

    public void scheduleRemoveIsolatedUidLocked(int i2, int i3) {
        ExternalStatsSync externalStatsSync;
        if (this.mIsolatedUids.get(i2, -1) != i3 || (externalStatsSync = this.mExternalSync) == null) {
            return;
        }
        externalStatsSync.scheduleCpuSyncDueToRemovedUid(i2);
    }

    /* JADX WARN: Code duplicated, block: B:96:0x0209  */
    public void setBatteryStateLocked(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        long j2;
        boolean z2;
        byte b2;
        boolean z3;
        boolean chargingLocked;
        boolean chargingLocked2;
        int i10;
        int iMax = Math.max(0, i6);
        boolean z4 = i4 == 0;
        long jUptimeMillis = this.mClocks.uptimeMillis();
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        if (!this.mHaveBatteryLevel) {
            this.mHaveBatteryLevel = true;
            if (z4 == this.mOnBattery) {
                if (z4) {
                    this.mHistoryCur.states &= -524289;
                } else {
                    this.mHistoryCur.states |= 524288;
                }
            }
            BatteryStats.HistoryItem historyItem = this.mHistoryCur;
            historyItem.states2 |= 16777216;
            historyItem.batteryStatus = (byte) i2;
            historyItem.batteryLevel = (byte) i5;
            historyItem.batteryChargeUAh = i8;
            this.mLastDischargeStepLevel = i5;
            this.mLastChargeStepLevel = i5;
            this.mMinDischargeStepLevel = i5;
            this.mMaxChargeStepLevel = i5;
            this.mLastChargingStateLevel = i5;
        } else if (this.mCurrentBatteryLevel != i5 || this.mOnBattery != z4) {
            recordDailyStatsIfNeededLocked(i5 >= 100 && z4);
        }
        byte b3 = this.mHistoryCur.batteryStatus;
        if (z4) {
            this.mDischargeCurrentLevel = i5;
            if (this.mRecordingHistory) {
                j2 = jUptimeMillis;
                z2 = z4;
                b2 = b3;
                z3 = true;
            } else {
                this.mRecordingHistory = true;
                j2 = jUptimeMillis;
                z2 = z4;
                b2 = b3;
                z3 = true;
                startRecordingHistory(jElapsedRealtime, j2, true);
            }
        } else {
            j2 = jUptimeMillis;
            z2 = z4;
            b2 = b3;
            z3 = true;
            if (i5 < 96 && !this.mRecordingHistory) {
                this.mRecordingHistory = true;
                startRecordingHistory(jElapsedRealtime, j2, true);
            }
        }
        this.mCurrentBatteryLevel = i5;
        if (this.mDischargePlugLevel < 0) {
            this.mDischargePlugLevel = i5;
        }
        if (z2 != this.mOnBattery) {
            BatteryStats.HistoryItem historyItem2 = this.mHistoryCur;
            historyItem2.batteryLevel = (byte) i5;
            historyItem2.batteryStatus = (byte) i2;
            historyItem2.batteryHealth = (byte) i3;
            historyItem2.batteryPlugType = (byte) i4;
            historyItem2.batteryTemperature = (short) iMax;
            historyItem2.batteryVoltage = (char) i7;
            int i11 = historyItem2.batteryChargeUAh;
            if (i8 < i11) {
                long j3 = i11 - i8;
                this.mDischargeCounter.addCountLocked(j3);
                this.mDischargeScreenOffCounter.addCountLocked(j3);
                if (isScreenDoze(this.mScreenState)) {
                    this.mDischargeScreenDozeCounter.addCountLocked(j3);
                }
            }
            this.mHistoryCur.batteryChargeUAh = i8;
            setOnBatteryLocked(jElapsedRealtime, j2, z2, b2, i5, i8);
        } else {
            boolean z5 = z3;
            BatteryStats.HistoryItem historyItem3 = this.mHistoryCur;
            if (historyItem3.batteryLevel != i5) {
                historyItem3.batteryLevel = (byte) i5;
                scheduleSyncExternalStatsLocked("battery-level", 31);
                chargingLocked = z5;
            } else {
                chargingLocked = false;
            }
            BatteryStats.HistoryItem historyItem4 = this.mHistoryCur;
            if (historyItem4.batteryStatus != i2) {
                historyItem4.batteryStatus = (byte) i2;
                chargingLocked = z5;
            }
            if (historyItem4.batteryHealth != i3) {
                historyItem4.batteryHealth = (byte) i3;
                chargingLocked = z5;
            }
            if (historyItem4.batteryPlugType != i4) {
                historyItem4.batteryPlugType = (byte) i4;
                chargingLocked = z5;
            }
            short s2 = historyItem4.batteryTemperature;
            if (iMax >= s2 + 10 || iMax <= s2 - 10) {
                historyItem4.batteryTemperature = (short) iMax;
                chargingLocked = z5;
            }
            char c = historyItem4.batteryVoltage;
            if (i7 > c + 20 || i7 < c - 20) {
                historyItem4.batteryVoltage = (char) i7;
                chargingLocked = z5;
            }
            int i12 = historyItem4.batteryChargeUAh;
            if (i8 >= i12 + 10 || i8 <= i12 - 10) {
                if (i8 < i12) {
                    long j4 = i12 - i8;
                    this.mDischargeCounter.addCountLocked(j4);
                    this.mDischargeScreenOffCounter.addCountLocked(j4);
                    if (isScreenDoze(this.mScreenState)) {
                        this.mDischargeScreenDozeCounter.addCountLocked(j4);
                    }
                }
                this.mHistoryCur.batteryChargeUAh = i8;
                chargingLocked = z5;
            }
            long j5 = (((long) this.mInitStepMode) << 48) | (((long) this.mModStepMode) << 56) | (((long) (i5 & 255)) << 40);
            if (z2) {
                chargingLocked2 = setChargingLocked(false) | chargingLocked;
                int i13 = this.mLastDischargeStepLevel;
                if (i13 != i5 && this.mMinDischargeStepLevel > i5) {
                    this.mDischargeStepTracker.addLevelSteps(i13 - i5, j5, jElapsedRealtime);
                    this.mDailyDischargeStepTracker.addLevelSteps(this.mLastDischargeStepLevel - i5, j5, jElapsedRealtime);
                    this.mPowerControllerBatteryStatsHelper.addLevelSteps(this.mLastDischargeStepLevel - i5, j5, jElapsedRealtime);
                    this.mLastDischargeStepLevel = i5;
                    this.mMinDischargeStepLevel = i5;
                    this.mInitStepMode = this.mCurStepMode;
                    this.mModStepMode = 0;
                }
            } else {
                if (i5 >= 90) {
                    chargingLocked |= setChargingLocked(z5);
                    this.mLastChargeStepLevel = i5;
                }
                if (this.mCharging) {
                    if (this.mLastChargeStepLevel > i5) {
                        chargingLocked2 = chargingLocked | setChargingLocked(false);
                        this.mLastChargeStepLevel = i5;
                    } else {
                        chargingLocked2 = chargingLocked;
                    }
                } else if (this.mLastChargeStepLevel < i5) {
                    chargingLocked2 = setChargingLocked(z5) | chargingLocked;
                    this.mLastChargeStepLevel = i5;
                } else {
                    chargingLocked2 = chargingLocked;
                }
                int i14 = this.mLastChargeStepLevel;
                if (i14 != i5 && this.mMaxChargeStepLevel < i5) {
                    this.mChargeStepTracker.addLevelSteps(i5 - i14, j5, jElapsedRealtime);
                    this.mDailyChargeStepTracker.addLevelSteps(i5 - this.mLastChargeStepLevel, j5, jElapsedRealtime);
                    this.mLastChargeStepLevel = i5;
                    this.mMaxChargeStepLevel = i5;
                    this.mInitStepMode = this.mCurStepMode;
                    this.mModStepMode = 0;
                }
            }
            if (chargingLocked2) {
                addHistoryRecordLocked(jElapsedRealtime, j2);
            }
        }
        if (!z2 && i2 == 5) {
            this.mRecordingHistory = false;
        }
        int i15 = this.mMinLearnedBatteryCapacity;
        if (i15 == -1) {
            i10 = i9;
            this.mMinLearnedBatteryCapacity = i10;
        } else {
            i10 = i9;
            Math.min(i15, i10);
        }
        this.mMaxLearnedBatteryCapacity = Math.max(this.mMaxLearnedBatteryCapacity, i10);
    }

    public void setCallback(BatteryCallback batteryCallback) {
        this.mCallback = batteryCallback;
    }

    public boolean setChargingLocked(boolean z2) {
        if (this.mCharging == z2) {
            return false;
        }
        this.mCharging = z2;
        if (z2) {
            this.mHistoryCur.states2 |= 16777216;
        } else {
            this.mHistoryCur.states2 &= -16777217;
        }
        this.mHandler.sendEmptyMessage(3);
        return true;
    }

    public void setExternalStatsSyncLocked(ExternalStatsSync externalStatsSync) {
        this.mExternalSync = externalStatsSync;
    }

    public void setNoAutoReset(boolean z2) {
        this.mNoAutoReset = z2;
    }

    public void setOnBatteryLocked(long j2, long j3, boolean z2, int i2, int i3, int i4) {
        boolean z3;
        Message messageObtainMessage = this.mHandler.obtainMessage(2);
        messageObtainMessage.arg1 = z2 ? 1 : 0;
        this.mHandler.sendMessage(messageObtainMessage);
        long j4 = j3 * 1000;
        long j5 = j2 * 1000;
        int i5 = this.mScreenState;
        boolean z4 = false;
        if (z2) {
            if (this.mNoAutoReset || (i2 != 5 && i3 < 90 && ((this.mDischargeCurrentLevel >= 20 || i3 < 80) && (getHighDischargeAmountSinceCharge() < 200 || this.mHistoryBuffer.dataSize() < MAX_HISTORY_BUFFER)))) {
                z3 = false;
            } else {
                StringBuilder sbT = c.t("Resetting battery stats: level=", i3, " status=", i2, " dischargeLevel=");
                sbT.append(this.mDischargeCurrentLevel);
                sbT.append(" lowAmount=");
                sbT.append(getLowDischargeAmountSinceCharge());
                sbT.append(" highAmount=");
                sbT.append(getHighDischargeAmountSinceCharge());
                Slog.i(TAG, sbT.toString());
                if (getLowDischargeAmountSinceCharge() >= 20) {
                    final Parcel parcelObtain = Parcel.obtain();
                    writeSummaryToParcel(parcelObtain, true);
                    BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.internal.os.BatteryStatsImpl.4
                        @Override // java.lang.Runnable
                        public void run() {
                            Parcel parcel;
                            synchronized (BatteryStatsImpl.this.mCheckinFile) {
                                FileOutputStream fileOutputStreamStartWrite = null;
                                try {
                                    try {
                                        fileOutputStreamStartWrite = BatteryStatsImpl.this.mCheckinFile.startWrite();
                                        fileOutputStreamStartWrite.write(parcelObtain.marshall());
                                        fileOutputStreamStartWrite.flush();
                                        FileUtils.sync(fileOutputStreamStartWrite);
                                        fileOutputStreamStartWrite.close();
                                        BatteryStatsImpl.this.mCheckinFile.finishWrite(fileOutputStreamStartWrite);
                                        parcel = parcelObtain;
                                    } catch (IOException e2) {
                                        Slog.w("BatteryStats", "Error writing checkin battery statistics", e2);
                                        BatteryStatsImpl.this.mCheckinFile.failWrite(fileOutputStreamStartWrite);
                                        parcel = parcelObtain;
                                    }
                                    parcel.recycle();
                                } catch (Throwable th) {
                                    parcelObtain.recycle();
                                    throw th;
                                }
                            }
                        }
                    });
                }
                resetAllStatsLocked();
                if (i4 > 0 && i3 > 0) {
                    this.mEstimatedBatteryCapacity = (int) (((double) (i4 / 1000)) / (((double) i3) / 100.0d));
                }
                this.mDischargeStartLevel = i3;
                this.mDischargeStepTracker.init();
                this.mPowerControllerBatteryStatsHelper.init();
                z3 = true;
            }
            if (this.mCharging) {
                setChargingLocked(false);
            }
            this.mPowerControllerBatteryStatsHelper.clearTime();
            this.mLastChargingStateLevel = i3;
            this.mOnBatteryInternal = true;
            this.mOnBattery = true;
            this.mLastDischargeStepLevel = i3;
            this.mMinDischargeStepLevel = i3;
            this.mDischargeStepTracker.clearTime();
            this.mDailyDischargeStepTracker.clearTime();
            this.mInitStepMode = this.mCurStepMode;
            this.mModStepMode = 0;
            pullPendingStateUpdatesLocked();
            BatteryStats.HistoryItem historyItem = this.mHistoryCur;
            historyItem.batteryLevel = (byte) i3;
            historyItem.states &= -524289;
            if (z3) {
                this.mRecordingHistory = true;
                startRecordingHistory(j2, j3, z3);
            }
            addHistoryRecordLocked(j2, j3);
            this.mDischargeUnplugLevel = i3;
            this.mDischargeCurrentLevel = i3;
            if (isScreenOn(i5)) {
                this.mDischargeScreenOnUnplugLevel = i3;
                this.mDischargeScreenDozeUnplugLevel = 0;
                this.mDischargeScreenOffUnplugLevel = 0;
            } else if (isScreenDoze(i5)) {
                this.mDischargeScreenOnUnplugLevel = 0;
                this.mDischargeScreenDozeUnplugLevel = i3;
                this.mDischargeScreenOffUnplugLevel = 0;
            } else {
                this.mDischargeScreenOnUnplugLevel = 0;
                this.mDischargeScreenDozeUnplugLevel = 0;
                this.mDischargeScreenOffUnplugLevel = i3;
            }
            this.mDischargeAmountScreenOn = 0;
            this.mDischargeAmountScreenDoze = 0;
            this.mDischargeAmountScreenOff = 0;
            updateTimeBasesLocked(true, i5, j4, j5);
            z4 = z3;
        } else {
            this.mLastChargingStateLevel = i3;
            this.mOnBatteryInternal = false;
            this.mOnBattery = false;
            pullPendingStateUpdatesLocked();
            BatteryStats.HistoryItem historyItem2 = this.mHistoryCur;
            historyItem2.batteryLevel = (byte) i3;
            historyItem2.states |= 524288;
            addHistoryRecordLocked(j2, j3);
            this.mDischargePlugLevel = i3;
            this.mDischargeCurrentLevel = i3;
            int i6 = this.mDischargeUnplugLevel;
            if (i3 < i6) {
                this.mLowDischargeAmountSinceCharge = ((i6 - i3) - 1) + this.mLowDischargeAmountSinceCharge;
                this.mHighDischargeAmountSinceCharge = (i6 - i3) + this.mHighDischargeAmountSinceCharge;
            }
            updateDischargeScreenLevelsLocked(i5, i5);
            updateTimeBasesLocked(false, i5, j4, j5);
            this.mChargeStepTracker.init();
            this.mLastChargeStepLevel = i3;
            this.mMaxChargeStepLevel = i3;
            this.mInitStepMode = this.mCurStepMode;
            this.mModStepMode = 0;
        }
        if ((z4 || this.mLastWriteTime + 60000 < j2) && this.mFile != null) {
            writeAsyncLocked();
        }
    }

    public void setPowerProfileLocked(PowerProfile powerProfile) {
        this.mPowerProfile = powerProfile;
        int numCpuClusters = powerProfile.getNumCpuClusters();
        this.mKernelCpuSpeedReaders = new KernelCpuSpeedReader[numCpuClusters];
        int numCoresInCpuCluster = 0;
        for (int i2 = 0; i2 < numCpuClusters; i2++) {
            this.mKernelCpuSpeedReaders[i2] = new KernelCpuSpeedReader(numCoresInCpuCluster, this.mPowerProfile.getNumSpeedStepsInCpuCluster(i2));
            numCoresInCpuCluster += this.mPowerProfile.getNumCoresInCpuCluster(i2);
        }
        if (this.mEstimatedBatteryCapacity == -1) {
            this.mEstimatedBatteryCapacity = (int) this.mPowerProfile.getBatteryCapacity();
        }
    }

    public void setPretendScreenOff(boolean z2) {
        if (this.mPretendScreenOff != z2) {
            this.mPretendScreenOff = z2;
            noteScreenStateLocked(z2 ? 1 : 2);
        }
    }

    public void setRadioScanningTimeoutLocked(long j2) {
        StopwatchTimer stopwatchTimer = this.mPhoneSignalScanningTimer;
        if (stopwatchTimer != null) {
            stopwatchTimer.setTimeout(j2);
        }
    }

    public void setRecordAllHistoryLocked(boolean z2) {
        this.mRecordAllHistory = z2;
        if (z2) {
            HashMap<String, SparseIntArray> stateForEvent = this.mActiveEvents.getStateForEvent(1);
            if (stateForEvent != null) {
                long jElapsedRealtime = this.mClocks.elapsedRealtime();
                long jUptimeMillis = this.mClocks.uptimeMillis();
                for (Map.Entry<String, SparseIntArray> entry : stateForEvent.entrySet()) {
                    int i2 = 0;
                    for (SparseIntArray value = entry.getValue(); i2 < value.size(); value = value) {
                        addHistoryEventLocked(jElapsedRealtime, jUptimeMillis, 32769, entry.getKey(), value.keyAt(i2));
                        i2++;
                    }
                }
                return;
            }
            return;
        }
        this.mActiveEvents.removeEvents(5);
        this.mActiveEvents.removeEvents(13);
        HashMap<String, SparseIntArray> stateForEvent2 = this.mActiveEvents.getStateForEvent(1);
        if (stateForEvent2 != null) {
            long jElapsedRealtime2 = this.mClocks.elapsedRealtime();
            long jUptimeMillis2 = this.mClocks.uptimeMillis();
            for (Map.Entry<String, SparseIntArray> entry2 : stateForEvent2.entrySet()) {
                int i3 = 0;
                for (SparseIntArray value2 = entry2.getValue(); i3 < value2.size(); value2 = value2) {
                    addHistoryEventLocked(jElapsedRealtime2, jUptimeMillis2, 16385, entry2.getKey(), value2.keyAt(i3));
                    i3++;
                }
            }
        }
    }

    public void shutdownLocked() {
        recordShutdownLocked(this.mClocks.elapsedRealtime(), this.mClocks.uptimeMillis());
        writeSyncLocked();
        this.mShuttingDown = true;
    }

    public boolean startAddingCpuLocked() {
        this.mHandler.removeMessages(1);
        return this.mOnBatteryInternal;
    }

    @Override // android.os.BatteryStats
    public boolean startIteratingHistoryLocked() {
        if (this.mHistoryBuffer.dataSize() <= 0) {
            return false;
        }
        this.mHistoryBuffer.setDataPosition(0);
        this.mReadOverflow = false;
        this.mIteratingHistory = true;
        this.mReadHistoryStrings = new String[this.mHistoryTagPool.size()];
        this.mReadHistoryUids = new int[this.mHistoryTagPool.size()];
        this.mReadHistoryChars = 0;
        for (Map.Entry<BatteryStats.HistoryTag, Integer> entry : this.mHistoryTagPool.entrySet()) {
            BatteryStats.HistoryTag key = entry.getKey();
            int iIntValue = entry.getValue().intValue();
            String[] strArr = this.mReadHistoryStrings;
            String str = key.string;
            strArr[iIntValue] = str;
            this.mReadHistoryUids[iIntValue] = key.uid;
            this.mReadHistoryChars = str.length() + 1 + this.mReadHistoryChars;
        }
        return true;
    }

    @Override // android.os.BatteryStats
    public boolean startIteratingOldHistoryLocked() {
        BatteryStats.HistoryItem historyItem = this.mHistory;
        this.mHistoryIterator = historyItem;
        if (historyItem == null) {
            return false;
        }
        this.mHistoryBuffer.setDataPosition(0);
        this.mHistoryReadTmp.clear();
        this.mReadOverflow = false;
        this.mIteratingHistory = true;
        return true;
    }

    public void stopAllPhoneSignalStrengthTimersLocked(int i2) {
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        for (int i3 = 0; i3 < 5; i3++) {
            if (i3 != i2) {
                while (this.mPhoneSignalStrengthsTimer[i3].isRunningLocked()) {
                    this.mPhoneSignalStrengthsTimer[i3].stopRunningLocked(jElapsedRealtime);
                }
            }
        }
    }

    public void stopAllWifiSignalStrengthTimersLocked(int i2) {
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        for (int i3 = 0; i3 < 5; i3++) {
            if (i3 != i2) {
                while (this.mWifiSignalStrengthsTimer[i3].isRunningLocked()) {
                    this.mWifiSignalStrengthsTimer[i3].stopRunningLocked(jElapsedRealtime);
                }
            }
        }
    }

    public void updateBluetoothStateLocked(BluetoothActivityEnergyInfo bluetoothActivityEnergyInfo) {
        int i2;
        int i3;
        long j2;
        long j3;
        if (bluetoothActivityEnergyInfo == null || !this.mOnBatteryInternal) {
            return;
        }
        this.mHasBluetoothReporting = true;
        long jElapsedRealtime = this.mClocks.elapsedRealtime();
        long controllerRxTimeMillis = bluetoothActivityEnergyInfo.getControllerRxTimeMillis();
        long controllerTxTimeMillis = bluetoothActivityEnergyInfo.getControllerTxTimeMillis();
        int size = this.mUidStats.size();
        long timeSinceMarkLocked = 0;
        for (int i4 = 0; i4 < size; i4++) {
            DualTimer dualTimer = this.mUidStats.valueAt(i4).mBluetoothScanTimer;
            if (dualTimer != null) {
                timeSinceMarkLocked += dualTimer.getTimeSinceMarkLocked(jElapsedRealtime * 1000) / 1000;
            }
        }
        boolean z2 = timeSinceMarkLocked > controllerRxTimeMillis;
        boolean z3 = timeSinceMarkLocked > controllerTxTimeMillis;
        long j4 = controllerRxTimeMillis;
        long j5 = controllerTxTimeMillis;
        int i5 = 0;
        while (i5 < size) {
            Uid uidValueAt = this.mUidStats.valueAt(i5);
            DualTimer dualTimer2 = uidValueAt.mBluetoothScanTimer;
            if (dualTimer2 == null) {
                i2 = size;
                i3 = i5;
                j2 = 1000;
            } else {
                i2 = size;
                i3 = i5;
                j2 = 1000;
                long timeSinceMarkLocked2 = dualTimer2.getTimeSinceMarkLocked(jElapsedRealtime * 1000) / 1000;
                if (timeSinceMarkLocked2 > 0) {
                    uidValueAt.mBluetoothScanTimer.setMark(jElapsedRealtime);
                    if (z2) {
                        j3 = (controllerRxTimeMillis * timeSinceMarkLocked2) / timeSinceMarkLocked;
                        jElapsedRealtime = jElapsedRealtime;
                    } else {
                        jElapsedRealtime = jElapsedRealtime;
                        j3 = timeSinceMarkLocked2;
                    }
                    if (z3) {
                        timeSinceMarkLocked2 = (timeSinceMarkLocked2 * controllerTxTimeMillis) / timeSinceMarkLocked;
                    }
                    ControllerActivityCounterImpl orCreateBluetoothControllerActivityLocked = uidValueAt.getOrCreateBluetoothControllerActivityLocked();
                    orCreateBluetoothControllerActivityLocked.getRxTimeCounter().addCountLocked(j3);
                    orCreateBluetoothControllerActivityLocked.getTxTimeCounters()[0].addCountLocked(timeSinceMarkLocked2);
                    j4 -= j3;
                    j5 -= timeSinceMarkLocked2;
                }
                i5 = i3 + 1;
                z2 = z2;
                size = i2;
                jElapsedRealtime = jElapsedRealtime;
            }
            z2 = z2;
            i5 = i3 + 1;
            z2 = z2;
            size = i2;
            jElapsedRealtime = jElapsedRealtime;
        }
        UidTraffic[] uidTraffic = bluetoothActivityEnergyInfo.getUidTraffic();
        int length = uidTraffic != null ? uidTraffic.length : 0;
        long txBytes = 0;
        long rxBytes = 0;
        for (int i6 = 0; i6 < length; i6++) {
            UidTraffic uidTraffic2 = uidTraffic[i6];
            this.mNetworkByteActivityCounters[4].addCountLocked(uidTraffic2.getRxBytes());
            this.mNetworkByteActivityCounters[5].addCountLocked(uidTraffic2.getTxBytes());
            Uid uidStatsLocked = getUidStatsLocked(mapUid(uidTraffic2.getUid()));
            uidStatsLocked.noteNetworkActivityLocked(4, uidTraffic2.getRxBytes(), 0L);
            uidStatsLocked.noteNetworkActivityLocked(5, uidTraffic2.getTxBytes(), 0L);
            txBytes += uidTraffic2.getTxBytes();
            rxBytes += uidTraffic2.getRxBytes();
        }
        if ((txBytes != 0 || rxBytes != 0) && (j4 != 0 || j5 != 0)) {
            for (int i7 = 0; i7 < length; i7++) {
                UidTraffic uidTraffic3 = uidTraffic[i7];
                ControllerActivityCounterImpl orCreateBluetoothControllerActivityLocked2 = getUidStatsLocked(mapUid(uidTraffic3.getUid())).getOrCreateBluetoothControllerActivityLocked();
                if (rxBytes > 0 && uidTraffic3.getRxBytes() > 0) {
                    long rxBytes2 = (uidTraffic3.getRxBytes() * j4) / rxBytes;
                    orCreateBluetoothControllerActivityLocked2.getRxTimeCounter().addCountLocked(rxBytes2);
                    j4 -= rxBytes2;
                }
                if (txBytes > 0 && uidTraffic3.getTxBytes() > 0) {
                    long txBytes2 = (uidTraffic3.getTxBytes() * j5) / txBytes;
                    orCreateBluetoothControllerActivityLocked2.getTxTimeCounters()[0].addCountLocked(txBytes2);
                    j5 -= txBytes2;
                }
            }
        }
        this.mBluetoothActivity.getRxTimeCounter().addCountLocked(bluetoothActivityEnergyInfo.getControllerRxTimeMillis());
        this.mBluetoothActivity.getTxTimeCounters()[0].addCountLocked(bluetoothActivityEnergyInfo.getControllerTxTimeMillis());
        this.mBluetoothActivity.getIdleTimeCounter().addCountLocked(bluetoothActivityEnergyInfo.getControllerIdleTimeMillis());
        double averagePower = this.mPowerProfile.getAveragePower(PowerProfile.POWER_BLUETOOTH_CONTROLLER_OPERATING_VOLTAGE) / 1000.0d;
        if (averagePower != 0.0d) {
            this.mBluetoothActivity.getPowerCounter().addCountLocked((long) (bluetoothActivityEnergyInfo.getControllerEnergyUsed() / averagePower));
        }
    }

    public void updateCpuTimeLocked(boolean z2) {
        final int i2;
        Uid uid;
        Uid uid2;
        if (this.mPowerProfile == null) {
            return;
        }
        int size = this.mPartialTimers.size();
        if (this.mOnBatteryScreenOffTimeBase.isRunning()) {
            i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                StopwatchTimer stopwatchTimer = this.mPartialTimers.get(i3);
                if (stopwatchTimer.mInList && (uid2 = stopwatchTimer.mUid) != null && uid2.mUid != 1000) {
                    i2++;
                }
            }
        } else {
            i2 = 0;
        }
        long j2 = 0;
        this.mTempTotalCpuUserTimeUs = 0L;
        this.mTempTotalCpuSystemTimeUs = 0L;
        final SparseLongArray sparseLongArray = new SparseLongArray();
        long jUptimeMillis = this.mClocks.uptimeMillis();
        this.mUserInfoProvider.refreshUserIds();
        this.mKernelUidCpuTimeReader.readDelta(!this.mOnBatteryInternal ? null : new KernelUidCpuTimeReader.Callback() { // from class: com.android.internal.os.BatteryStatsImpl.2
            @Override // com.android.internal.os.KernelUidCpuTimeReader.Callback
            public void onUidCpuTime(int i4, long j3, long j4) {
                int iMapUid = BatteryStatsImpl.this.mapUid(i4);
                if (Process.isIsolated(iMapUid)) {
                    BatteryStatsImpl.this.mKernelUidCpuTimeReader.removeUid(iMapUid);
                    Slog.d(BatteryStatsImpl.TAG, "Got readings for an isolated uid with no mapping to owning uid: " + iMapUid);
                    return;
                }
                if (!BatteryStatsImpl.this.mUserInfoProvider.exists(UserHandle.getUserId(iMapUid))) {
                    Slog.d(BatteryStatsImpl.TAG, "Got readings for an invalid user's uid " + iMapUid);
                    BatteryStatsImpl.this.mKernelUidCpuTimeReader.removeUid(iMapUid);
                    return;
                }
                Uid uidStatsLocked = BatteryStatsImpl.this.getUidStatsLocked(iMapUid);
                BatteryStatsImpl batteryStatsImpl = BatteryStatsImpl.this;
                batteryStatsImpl.mTempTotalCpuUserTimeUs += j3;
                batteryStatsImpl.mTempTotalCpuSystemTimeUs += j4;
                if (i2 > 0) {
                    j3 = (j3 * 50) / 100;
                    j4 = (j4 * 50) / 100;
                }
                uidStatsLocked.mUserCpuTime.addCountLocked(j3);
                uidStatsLocked.mSystemCpuTime.addCountLocked(j4);
                sparseLongArray.put(uidStatsLocked.getUid(), j3 + j4);
            }
        });
        if (z2) {
            readKernelUidCpuFreqTimesLocked();
        }
        long jUptimeMillis2 = this.mClocks.uptimeMillis() - jUptimeMillis;
        if (jUptimeMillis2 >= 100) {
            Slog.d(TAG, "Reading cpu stats took " + jUptimeMillis2 + " ms");
        }
        if (this.mOnBatteryInternal && i2 > 0) {
            this.mTempTotalCpuUserTimeUs = (this.mTempTotalCpuUserTimeUs * 50) / 100;
            this.mTempTotalCpuSystemTimeUs = (this.mTempTotalCpuSystemTimeUs * 50) / 100;
            int i4 = 0;
            while (i4 < size) {
                StopwatchTimer stopwatchTimer2 = this.mPartialTimers.get(i4);
                if (!stopwatchTimer2.mInList || (uid = stopwatchTimer2.mUid) == null || uid.mUid == 1000) {
                    i2 = i2;
                } else {
                    long j3 = i2;
                    int i5 = (int) (this.mTempTotalCpuUserTimeUs / j3);
                    int i6 = i2;
                    int i7 = (int) (this.mTempTotalCpuSystemTimeUs / j3);
                    long j4 = i5;
                    uid.mUserCpuTime.addCountLocked(j4);
                    long j5 = i7;
                    stopwatchTimer2.mUid.mSystemCpuTime.addCountLocked(j5);
                    int uid3 = stopwatchTimer2.mUid.getUid();
                    sparseLongArray.put(uid3, sparseLongArray.get(uid3, j2) + j4 + j5);
                    stopwatchTimer2.mUid.getProcessStatsLocked("*wakelock*").addCpuTimeLocked(i5 / 1000, i7 / 1000);
                    this.mTempTotalCpuUserTimeUs -= j4;
                    this.mTempTotalCpuSystemTimeUs -= j5;
                    i2 = i6 - 1;
                }
                i4++;
                j2 = 0;
            }
            if (this.mTempTotalCpuUserTimeUs > 0 || this.mTempTotalCpuSystemTimeUs > 0) {
                Uid uidStatsLocked = getUidStatsLocked(1000);
                uidStatsLocked.mUserCpuTime.addCountLocked(this.mTempTotalCpuUserTimeUs);
                uidStatsLocked.mSystemCpuTime.addCountLocked(this.mTempTotalCpuSystemTimeUs);
                sparseLongArray.put(1000, sparseLongArray.get(1000, 0L) + this.mTempTotalCpuUserTimeUs + this.mTempTotalCpuSystemTimeUs);
                uidStatsLocked.getProcessStatsLocked("*lost*").addCpuTimeLocked(((int) this.mTempTotalCpuUserTimeUs) / 1000, ((int) this.mTempTotalCpuSystemTimeUs) / 1000);
            }
        }
        int length = this.mKernelCpuSpeedReaders.length;
        long[][] jArr = new long[length][];
        int i8 = 0;
        long j6 = 0;
        while (true) {
            KernelCpuSpeedReader[] kernelCpuSpeedReaderArr = this.mKernelCpuSpeedReaders;
            if (i8 >= kernelCpuSpeedReaderArr.length) {
                break;
            }
            long[] delta = kernelCpuSpeedReaderArr[i8].readDelta();
            jArr[i8] = delta;
            if (delta != null) {
                for (int length2 = delta.length - 1; length2 >= 0; length2--) {
                    j6 += jArr[i8][length2];
                }
            }
            i8++;
        }
        if (j6 != 0) {
            int size2 = sparseLongArray.size();
            for (int i9 = 0; i9 < size2; i9++) {
                Uid uidStatsLocked2 = getUidStatsLocked(sparseLongArray.keyAt(i9));
                long jValueAt = sparseLongArray.valueAt(i9);
                int numCpuClusters = this.mPowerProfile.getNumCpuClusters();
                LongSamplingCounter[][] longSamplingCounterArr = uidStatsLocked2.mCpuClusterSpeedTimesUs;
                if (longSamplingCounterArr == null || longSamplingCounterArr.length != numCpuClusters) {
                    uidStatsLocked2.mCpuClusterSpeedTimesUs = new LongSamplingCounter[numCpuClusters][];
                }
                for (int i10 = 0; i10 < length; i10++) {
                    int length3 = jArr[i10].length;
                    LongSamplingCounter[][] longSamplingCounterArr2 = uidStatsLocked2.mCpuClusterSpeedTimesUs;
                    LongSamplingCounter[] longSamplingCounterArr3 = longSamplingCounterArr2[i10];
                    if (longSamplingCounterArr3 == null || length3 != longSamplingCounterArr3.length) {
                        longSamplingCounterArr2[i10] = new LongSamplingCounter[length3];
                    }
                    LongSamplingCounter[] longSamplingCounterArr4 = longSamplingCounterArr2[i10];
                    int i11 = 0;
                    while (i11 < length3) {
                        if (longSamplingCounterArr4[i11] == null) {
                            longSamplingCounterArr4[i11] = new LongSamplingCounter(this.mOnBatteryTimeBase);
                        }
                        longSamplingCounterArr4[i11].addCountLocked((jArr[i10][i11] * jValueAt) / j6);
                        i11++;
                        sparseLongArray = sparseLongArray;
                        length = length;
                        jArr = jArr;
                    }
                }
            }
        }
        if (ArrayUtils.referenceEquals(this.mPartialTimers, this.mLastPartialTimers)) {
            for (int i12 = 0; i12 < size; i12++) {
                this.mPartialTimers.get(i12).mInList = true;
            }
            return;
        }
        int size3 = this.mLastPartialTimers.size();
        for (int i13 = 0; i13 < size3; i13++) {
            this.mLastPartialTimers.get(i13).mInList = false;
        }
        this.mLastPartialTimers.clear();
        for (int i14 = 0; i14 < size; i14++) {
            StopwatchTimer stopwatchTimer3 = this.mPartialTimers.get(i14);
            stopwatchTimer3.mInList = true;
            this.mLastPartialTimers.add(stopwatchTimer3);
        }
    }

    public void updateDailyDeadlineLocked() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.mDailyStartTime = jCurrentTimeMillis;
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(jCurrentTimeMillis);
        calendar.set(6, calendar.get(6) + 1);
        calendar.set(14, 0);
        calendar.set(13, 0);
        calendar.set(12, 0);
        calendar.set(11, 1);
        this.mNextMinDailyDeadline = calendar.getTimeInMillis();
        calendar.set(11, 3);
        this.mNextMaxDailyDeadline = calendar.getTimeInMillis();
    }

    public void updateDischargeScreenLevelsLocked(int i2, int i3) {
        updateOldDischargeScreenLevelLocked(i2);
        updateNewDischargeScreenLevelLocked(i3);
    }

    public void updateKernelMemoryBandwidthLocked() {
        SamplingTimer samplingTimer;
        this.mKernelMemoryBandwidthStats.updateStats();
        LongSparseLongArray bandwidthEntries = this.mKernelMemoryBandwidthStats.getBandwidthEntries();
        int size = bandwidthEntries.size();
        for (int i2 = 0; i2 < size; i2++) {
            int iIndexOfKey = this.mKernelMemoryStats.indexOfKey(bandwidthEntries.keyAt(i2));
            if (iIndexOfKey >= 0) {
                samplingTimer = this.mKernelMemoryStats.valueAt(iIndexOfKey);
            } else {
                samplingTimer = new SamplingTimer(this.mClocks, this.mOnBatteryTimeBase);
                this.mKernelMemoryStats.put(bandwidthEntries.keyAt(i2), samplingTimer);
            }
            samplingTimer.update(bandwidthEntries.valueAt(i2), 1);
        }
    }

    public void updateKernelWakelocksLocked() {
        KernelWakelockStats kernelWakelockStats = this.mKernelWakelockReader.readKernelWakelockStats(this.mTmpWakelockStats);
        if (kernelWakelockStats == null) {
            Slog.w(TAG, "Couldn't get kernel wake lock stats");
            return;
        }
        for (Map.Entry<String, KernelWakelockStats.Entry> entry : kernelWakelockStats.entrySet()) {
            String key = entry.getKey();
            KernelWakelockStats.Entry value = entry.getValue();
            SamplingTimer samplingTimer = this.mKernelWakelockStats.get(key);
            if (samplingTimer == null) {
                samplingTimer = new SamplingTimer(this.mClocks, this.mOnBatteryScreenOffTimeBase);
                this.mKernelWakelockStats.put(key, samplingTimer);
            }
            samplingTimer.update(value.mTotalTime, value.mCount);
            samplingTimer.setUpdateVersion(value.mVersion);
        }
        Iterator<Map.Entry<String, SamplingTimer>> it = this.mKernelWakelockStats.entrySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            SamplingTimer value2 = it.next().getValue();
            if (value2.getUpdateVersion() != kernelWakelockStats.kernelWakelockVersion) {
                value2.endSample();
                i2++;
            }
        }
        if (kernelWakelockStats.isEmpty()) {
            Slog.wtf(TAG, "All kernel wakelocks had time of zero");
        }
        if (i2 == this.mKernelWakelockStats.size()) {
            Slog.wtf(TAG, "All kernel wakelocks were set stale. new version=" + kernelWakelockStats.kernelWakelockVersion);
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0077 A[Catch: all -> 0x0072, TRY_LEAVE, TryCatch #0 {all -> 0x0072, blocks: (B:22:0x0067, B:27:0x0077), top: B:80:0x0067 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00a9 A[Catch: all -> 0x0208, TryCatch #1 {all -> 0x0208, blocks: (B:9:0x0027, B:12:0x002d, B:13:0x0032, B:15:0x0034, B:17:0x004b, B:19:0x005b, B:33:0x00ed, B:29:0x007f, B:31:0x00a9, B:32:0x00c7, B:75:0x0209, B:34:0x00f5, B:38:0x0103, B:40:0x0111, B:60:0x0183, B:43:0x011c, B:45:0x0137, B:47:0x0141, B:49:0x0147, B:53:0x015c, B:58:0x0166, B:63:0x0195, B:64:0x01a1, B:66:0x01aa, B:68:0x01cd, B:69:0x01e2, B:71:0x01f6, B:72:0x0206), top: B:82:0x0027 }] */
    public void updateMobileRadioState(ModemActivityInfo modemActivityInfo) throws Throwable {
        NetworkStats networkStatsSubtract;
        long j2;
        NetworkStats.Entry entry;
        Uid uidStatsLocked;
        BatteryStatsImpl batteryStatsImpl = this;
        synchronized (batteryStatsImpl.mModemNetworkLock) {
            NetworkStats networkStatsLocked = batteryStatsImpl.readNetworkStatsLocked(batteryStatsImpl.mModemIfaces);
            networkStatsSubtract = null;
            if (networkStatsLocked != null) {
                networkStatsSubtract = NetworkStats.subtract(networkStatsLocked, batteryStatsImpl.mLastModemNetworkStats, null, null, batteryStatsImpl.mNetworkStatsPool.acquire());
                batteryStatsImpl.mNetworkStatsPool.release(batteryStatsImpl.mLastModemNetworkStats);
                batteryStatsImpl.mLastModemNetworkStats = networkStatsLocked;
            }
        }
        synchronized (this) {
            try {
                if (!batteryStatsImpl.mOnBatteryInternal) {
                    if (networkStatsSubtract != null) {
                        batteryStatsImpl.mNetworkStatsPool.release(networkStatsSubtract);
                    }
                    return;
                }
                long jElapsedRealtime = batteryStatsImpl.mClocks.elapsedRealtime();
                long timeSinceMarkLocked = batteryStatsImpl.mMobileRadioActivePerAppTimer.getTimeSinceMarkLocked(1000 * jElapsedRealtime);
                batteryStatsImpl.mMobileRadioActivePerAppTimer.setMark(jElapsedRealtime);
                if (networkStatsSubtract != null) {
                    NetworkStats.Entry entry2 = new NetworkStats.Entry();
                    int size = networkStatsSubtract.size();
                    long j3 = 0;
                    long j4 = 0;
                    long j5 = 0;
                    int i2 = 0;
                    while (i2 < size) {
                        entry2 = networkStatsSubtract.getValues(i2, entry2);
                        NetworkStats networkStats = networkStatsSubtract;
                        long j6 = entry2.rxPackets;
                        if (j6 == j3) {
                            try {
                                if (entry2.txPackets == j3) {
                                    batteryStatsImpl = this;
                                } else {
                                    j4 += j6;
                                    j5 += entry2.txPackets;
                                    batteryStatsImpl = this;
                                    uidStatsLocked = batteryStatsImpl.getUidStatsLocked(batteryStatsImpl.mapUid(entry2.uid));
                                    uidStatsLocked.noteNetworkActivityLocked(0, entry2.rxBytes, entry2.rxPackets);
                                    uidStatsLocked.noteNetworkActivityLocked(1, entry2.txBytes, entry2.txPackets);
                                    if (entry2.set == 0) {
                                        uidStatsLocked.noteNetworkActivityLocked(6, entry2.rxBytes, entry2.rxPackets);
                                        uidStatsLocked.noteNetworkActivityLocked(7, entry2.txBytes, entry2.txPackets);
                                    }
                                    batteryStatsImpl.mNetworkByteActivityCounters[0].addCountLocked(entry2.rxBytes);
                                    batteryStatsImpl.mNetworkByteActivityCounters[1].addCountLocked(entry2.txBytes);
                                    batteryStatsImpl.mNetworkPacketActivityCounters[0].addCountLocked(entry2.rxPackets);
                                    batteryStatsImpl.mNetworkPacketActivityCounters[1].addCountLocked(entry2.txPackets);
                                }
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        } else {
                            j4 += j6;
                            j5 += entry2.txPackets;
                            batteryStatsImpl = this;
                            uidStatsLocked = batteryStatsImpl.getUidStatsLocked(batteryStatsImpl.mapUid(entry2.uid));
                            uidStatsLocked.noteNetworkActivityLocked(0, entry2.rxBytes, entry2.rxPackets);
                            uidStatsLocked.noteNetworkActivityLocked(1, entry2.txBytes, entry2.txPackets);
                            if (entry2.set == 0) {
                                uidStatsLocked.noteNetworkActivityLocked(6, entry2.rxBytes, entry2.rxPackets);
                                uidStatsLocked.noteNetworkActivityLocked(7, entry2.txBytes, entry2.txPackets);
                            }
                            batteryStatsImpl.mNetworkByteActivityCounters[0].addCountLocked(entry2.rxBytes);
                            batteryStatsImpl.mNetworkByteActivityCounters[1].addCountLocked(entry2.txBytes);
                            batteryStatsImpl.mNetworkPacketActivityCounters[0].addCountLocked(entry2.rxPackets);
                            batteryStatsImpl.mNetworkPacketActivityCounters[1].addCountLocked(entry2.txPackets);
                        }
                        i2++;
                        networkStatsSubtract = networkStats;
                        j3 = 0;
                    }
                    NetworkStats networkStats2 = networkStatsSubtract;
                    long j7 = j4 + j5;
                    long j8 = 0;
                    if (j7 > 0) {
                        int i3 = 0;
                        while (i3 < size) {
                            NetworkStats networkStats3 = networkStats2;
                            NetworkStats.Entry values = networkStats3.getValues(i3, entry2);
                            networkStats2 = networkStats3;
                            if (values.rxPackets == j8 && values.txPackets == j8) {
                                entry = values;
                                j2 = j4;
                            } else {
                                Uid uidStatsLocked2 = batteryStatsImpl.getUidStatsLocked(batteryStatsImpl.mapUid(values.uid));
                                j2 = j4;
                                long j9 = values.rxPackets + values.txPackets;
                                long j10 = (timeSinceMarkLocked * j9) / j7;
                                uidStatsLocked2.noteMobileRadioActiveTimeLocked(j10);
                                timeSinceMarkLocked -= j10;
                                j7 -= j9;
                                if (modemActivityInfo != null) {
                                    ControllerActivityCounterImpl orCreateModemControllerActivityLocked = uidStatsLocked2.getOrCreateModemControllerActivityLocked();
                                    long j11 = 0;
                                    if (j2 > 0) {
                                        long j12 = values.rxPackets;
                                        if (j12 > 0) {
                                            orCreateModemControllerActivityLocked.getRxTimeCounter().addCountLocked((j12 * ((long) modemActivityInfo.getRxTimeMillis())) / j2);
                                        }
                                        j11 = 0;
                                    }
                                    if (j5 > j11 && values.txPackets > j11) {
                                        int i4 = 0;
                                        while (i4 < 5) {
                                            orCreateModemControllerActivityLocked.getTxTimeCounters()[i4].addCountLocked((values.txPackets * ((long) modemActivityInfo.getTxTimeMillis()[i4])) / j5);
                                            i4++;
                                            values = values;
                                        }
                                    }
                                }
                                entry = values;
                            }
                            i3++;
                            j4 = j2;
                            entry2 = entry;
                            j8 = 0;
                        }
                    }
                    if (timeSinceMarkLocked > j8) {
                        batteryStatsImpl.mMobileRadioActiveUnknownTime.addCountLocked(timeSinceMarkLocked);
                        batteryStatsImpl.mMobileRadioActiveUnknownCount.addCountLocked(1L);
                    }
                    batteryStatsImpl.mNetworkStatsPool.release(networkStats2);
                }
                if (modemActivityInfo != null) {
                    batteryStatsImpl.mHasModemReporting = true;
                    batteryStatsImpl.mModemActivity.getIdleTimeCounter().addCountLocked(modemActivityInfo.getIdleTimeMillis());
                    batteryStatsImpl.mModemActivity.getRxTimeCounter().addCountLocked(modemActivityInfo.getRxTimeMillis());
                    for (int i5 = 0; i5 < 5; i5++) {
                        batteryStatsImpl.mModemActivity.getTxTimeCounters()[i5].addCountLocked(modemActivityInfo.getTxTimeMillis()[i5]);
                    }
                    double averagePower = batteryStatsImpl.mPowerProfile.getAveragePower(PowerProfile.POWER_MODEM_CONTROLLER_OPERATING_VOLTAGE) / 1000.0d;
                    if (averagePower != 0.0d) {
                        batteryStatsImpl.mModemActivity.getPowerCounter().addCountLocked((long) (((double) modemActivityInfo.getEnergyUsed()) / averagePower));
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public void updateRpmStatsLocked() {
        if (this.mPlatformIdleStateCallback == null) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.mLastRpmStatsUpdateTimeMs >= 1000) {
            this.mPlatformIdleStateCallback.fillLowPowerStats(this.mTmpRpmStats);
            this.mLastRpmStatsUpdateTimeMs = jElapsedRealtime;
        }
        for (Map.Entry<String, RpmStats.PowerStatePlatformSleepState> entry : this.mTmpRpmStats.mPlatformLowPowerStats.entrySet()) {
            String key = entry.getKey();
            getRpmTimerLocked(key).update(entry.getValue().mTimeMs * 1000, entry.getValue().mCount);
            for (Map.Entry<String, RpmStats.PowerStateElement> entry2 : entry.getValue().mVoters.entrySet()) {
                StringBuilder sbU = c.u(key, ".");
                sbU.append(entry2.getKey());
                String string = sbU.toString();
                getRpmTimerLocked(string).update(entry2.getValue().mTimeMs * 1000, entry2.getValue().mCount);
            }
        }
        for (Map.Entry<String, RpmStats.PowerStateSubsystem> entry3 : this.mTmpRpmStats.mSubsystemLowPowerStats.entrySet()) {
            String key2 = entry3.getKey();
            for (Map.Entry<String, RpmStats.PowerStateElement> entry4 : entry3.getValue().mStates.entrySet()) {
                StringBuilder sbU2 = c.u(key2, ".");
                sbU2.append(entry4.getKey());
                String string2 = sbU2.toString();
                getRpmTimerLocked(string2).update(entry4.getValue().mTimeMs * 1000, entry4.getValue().mCount);
            }
        }
    }

    public void updateTimeBasesLocked(boolean z2, int i2, long j2, long j3) {
        boolean z3 = isScreenOff(i2) || isScreenDoze(i2);
        boolean z4 = z2 != this.mOnBatteryTimeBase.isRunning();
        boolean z5 = (z2 && z3) != this.mOnBatteryScreenOffTimeBase.isRunning();
        if (z5 || z4) {
            if (z5) {
                updateKernelWakelocksLocked();
                updateBatteryPropertiesLocked();
            }
            if (z4) {
                updateRpmStatsLocked();
            }
            updateCpuTimeLocked(true);
            this.mOnBatteryTimeBase.setRunning(z2, j2, j3);
            if (z4) {
                for (int size = this.mUidStats.size() - 1; size >= 0; size--) {
                    this.mUidStats.valueAt(size).updateOnBatteryBgTimeBase(j2, j3);
                }
            }
            if (z5) {
                this.mOnBatteryScreenOffTimeBase.setRunning(z2 && z3, j2, j3);
                for (int size2 = this.mUidStats.size() - 1; size2 >= 0; size2--) {
                    this.mUidStats.valueAt(size2).updateOnBatteryScreenOffBgTimeBase(j2, j3);
                }
            }
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x02ca */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateWifiState(android.net.wifi.WifiActivityEnergyInfo r41) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 716
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.os.BatteryStatsImpl.updateWifiState(android.net.wifi.WifiActivityEnergyInfo):void");
    }

    public void writeAsyncLocked() {
        writeLocked(false);
    }

    public void writeHistory(Parcel parcel, boolean z2, boolean z3) {
        parcel.writeLong(this.mHistoryBaseTime + this.mLastHistoryElapsedRealtime);
        if (!z2) {
            parcel.writeInt(0);
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(this.mHistoryTagPool.size());
        for (Map.Entry<BatteryStats.HistoryTag, Integer> entry : this.mHistoryTagPool.entrySet()) {
            BatteryStats.HistoryTag key = entry.getKey();
            parcel.writeInt(entry.getValue().intValue());
            parcel.writeString(key.string);
            parcel.writeInt(key.uid);
        }
        parcel.writeInt(this.mHistoryBuffer.dataSize());
        Parcel parcel2 = this.mHistoryBuffer;
        parcel.appendFrom(parcel2, 0, parcel2.dataSize());
        if (z3) {
            writeOldHistory(parcel);
        }
    }

    public void writeHistoryDelta(Parcel parcel, BatteryStats.HistoryItem historyItem, BatteryStats.HistoryItem historyItem2) {
        int i2;
        if (historyItem2 == null || historyItem.cmd != 0) {
            parcel.writeInt(DELTA_TIME_ABS);
            historyItem.writeToParcel(parcel, 0);
            return;
        }
        long j2 = historyItem.time - historyItem2.time;
        int iBuildBatteryLevelInt = buildBatteryLevelInt(historyItem2);
        int iBuildStateInt = buildStateInt(historyItem2);
        if (j2 < 0 || j2 > 2147483647L) {
            i2 = EventLogTags.SYSUI_VIEW_VISIBILITY;
        } else {
            i2 = j2 >= 524285 ? DELTA_TIME_INT : (int) j2;
        }
        int i3 = (historyItem.states & DELTA_STATE_MASK) | i2;
        int i4 = this.mLastHistoryStepLevel > historyItem.batteryLevel ? 1 : 0;
        boolean z2 = i4 != 0 || this.mLastHistoryStepDetails == null;
        int iBuildBatteryLevelInt2 = buildBatteryLevelInt(historyItem) | i4;
        boolean z3 = iBuildBatteryLevelInt2 != iBuildBatteryLevelInt;
        if (z3) {
            i3 |= 524288;
        }
        int iBuildStateInt2 = buildStateInt(historyItem);
        boolean z4 = iBuildStateInt2 != iBuildStateInt;
        if (z4) {
            i3 |= 1048576;
        }
        boolean z5 = historyItem.states2 != historyItem2.states2;
        if (z5) {
            i3 |= 2097152;
        }
        if (historyItem.wakelockTag != null || historyItem.wakeReasonTag != null) {
            i3 |= 4194304;
        }
        if (historyItem.eventCode != 0) {
            i3 |= 8388608;
        }
        boolean z6 = historyItem.batteryChargeUAh != historyItem2.batteryChargeUAh;
        if (z6) {
            i3 |= 16777216;
        }
        parcel.writeInt(i3);
        if (i2 >= DELTA_TIME_INT) {
            if (i2 == DELTA_TIME_INT) {
                parcel.writeInt((int) j2);
            } else {
                parcel.writeLong(j2);
            }
        }
        if (z3) {
            parcel.writeInt(iBuildBatteryLevelInt2);
        }
        if (z4) {
            parcel.writeInt(iBuildStateInt2);
        }
        if (z5) {
            parcel.writeInt(historyItem.states2);
        }
        BatteryStats.HistoryTag historyTag = historyItem.wakelockTag;
        if (historyTag != null || historyItem.wakeReasonTag != null) {
            int iWriteHistoryTag = historyTag != null ? writeHistoryTag(historyTag) : 65535;
            BatteryStats.HistoryTag historyTag2 = historyItem.wakeReasonTag;
            parcel.writeInt(iWriteHistoryTag | ((historyTag2 != null ? writeHistoryTag(historyTag2) : 65535) << 16));
        }
        if (historyItem.eventCode != 0) {
            parcel.writeInt((writeHistoryTag(historyItem.eventTag) << 16) | (65535 & historyItem.eventCode));
        }
        if (z2) {
            PlatformIdleStateCallback platformIdleStateCallback = this.mPlatformIdleStateCallback;
            if (platformIdleStateCallback != null) {
                this.mCurHistoryStepDetails.statPlatformIdleState = platformIdleStateCallback.getPlatformLowPowerStats();
                this.mCurHistoryStepDetails.statSubsystemPowerState = this.mPlatformIdleStateCallback.getSubsystemLowPowerStats();
            }
            computeHistoryStepDetails(this.mCurHistoryStepDetails, this.mLastHistoryStepDetails);
            if (i4 != 0) {
                this.mCurHistoryStepDetails.writeToParcel(parcel);
            }
            BatteryStats.HistoryStepDetails historyStepDetails = this.mCurHistoryStepDetails;
            historyItem.stepDetails = historyStepDetails;
            this.mLastHistoryStepDetails = historyStepDetails;
        } else {
            historyItem.stepDetails = null;
        }
        byte b2 = this.mLastHistoryStepLevel;
        byte b3 = historyItem.batteryLevel;
        if (b2 < b3) {
            this.mLastHistoryStepDetails = null;
        }
        this.mLastHistoryStepLevel = b3;
        if (z6) {
            parcel.writeInt(historyItem.batteryChargeUAh);
        }
    }

    public void writeLocked(boolean z2) {
        if (this.mFile == null) {
            Slog.w("BatteryStats", "writeLocked: no file associated with this instance");
            return;
        }
        if (this.mShuttingDown) {
            return;
        }
        Parcel parcelObtain = Parcel.obtain();
        writeSummaryToParcel(parcelObtain, true);
        this.mLastWriteTime = this.mClocks.elapsedRealtime();
        Parcel parcel = this.mPendingWrite;
        if (parcel != null) {
            parcel.recycle();
        }
        this.mPendingWrite = parcelObtain;
        if (z2) {
            commitPendingDataToDisk();
        } else {
            BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.internal.os.BatteryStatsImpl.5
                @Override // java.lang.Runnable
                public void run() {
                    BatteryStatsImpl.this.commitPendingDataToDisk();
                }
            });
        }
    }

    public void writeOldHistory(Parcel parcel) {
    }

    public void writeSummaryToParcel(Parcel parcel, boolean z2) {
        int i2;
        pullPendingStateUpdatesLocked();
        long startClockTime = getStartClockTime();
        long jUptimeMillis = this.mClocks.uptimeMillis() * 1000;
        long jElapsedRealtime = this.mClocks.elapsedRealtime() * 1000;
        parcel.writeInt(167);
        writeHistory(parcel, z2, true);
        parcel.writeInt(this.mStartCount);
        parcel.writeLong(computeUptime(jUptimeMillis, 0));
        parcel.writeLong(computeRealtime(jElapsedRealtime, 0));
        parcel.writeLong(startClockTime);
        parcel.writeString(this.mStartPlatformVersion);
        parcel.writeString(this.mEndPlatformVersion);
        this.mOnBatteryTimeBase.writeSummaryToParcel(parcel, jUptimeMillis, jElapsedRealtime);
        this.mOnBatteryScreenOffTimeBase.writeSummaryToParcel(parcel, jUptimeMillis, jElapsedRealtime);
        parcel.writeInt(this.mDischargeUnplugLevel);
        parcel.writeInt(this.mDischargePlugLevel);
        parcel.writeInt(this.mDischargeCurrentLevel);
        parcel.writeInt(this.mCurrentBatteryLevel);
        parcel.writeInt(this.mEstimatedBatteryCapacity);
        parcel.writeInt(this.mMinLearnedBatteryCapacity);
        parcel.writeInt(this.mMaxLearnedBatteryCapacity);
        parcel.writeInt(getLowDischargeAmountSinceCharge());
        parcel.writeInt(getHighDischargeAmountSinceCharge());
        parcel.writeInt(getDischargeAmountScreenOnSinceCharge());
        parcel.writeInt(getDischargeAmountScreenOffSinceCharge());
        parcel.writeInt(getDischargeAmountScreenDozeSinceCharge());
        this.mDischargeStepTracker.writeToParcel(parcel);
        this.mChargeStepTracker.writeToParcel(parcel);
        this.mDailyDischargeStepTracker.writeToParcel(parcel);
        this.mDailyChargeStepTracker.writeToParcel(parcel);
        this.mDischargeCounter.writeSummaryFromParcelLocked(parcel);
        this.mDischargeScreenOffCounter.writeSummaryFromParcelLocked(parcel);
        this.mDischargeScreenDozeCounter.writeSummaryFromParcelLocked(parcel);
        ArrayList<BatteryStats.PackageChange> arrayList = this.mDailyPackageChanges;
        if (arrayList != null) {
            int size = arrayList.size();
            parcel.writeInt(size);
            for (int i3 = 0; i3 < size; i3++) {
                BatteryStats.PackageChange packageChange = this.mDailyPackageChanges.get(i3);
                parcel.writeString(packageChange.mPackageName);
                parcel.writeInt(packageChange.mUpdate ? 1 : 0);
                parcel.writeInt(packageChange.mVersionCode);
            }
        } else {
            parcel.writeInt(0);
        }
        parcel.writeLong(this.mDailyStartTime);
        parcel.writeLong(this.mNextMinDailyDeadline);
        parcel.writeLong(this.mNextMaxDailyDeadline);
        this.mScreenOnTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        this.mScreenDozeTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        int i4 = 0;
        while (true) {
            i2 = 5;
            if (i4 >= 5) {
                break;
            }
            this.mScreenBrightnessTimer[i4].writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            i4++;
        }
        this.mInteractiveTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        this.mPowerSaveModeEnabledTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        parcel.writeLong(this.mLongestLightIdleTime);
        parcel.writeLong(this.mLongestFullIdleTime);
        this.mDeviceIdleModeLightTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        this.mDeviceIdleModeFullTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        this.mDeviceLightIdlingTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        this.mDeviceIdlingTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        this.mPhoneOnTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        for (int i5 = 0; i5 < 5; i5++) {
            this.mPhoneSignalStrengthsTimer[i5].writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        }
        this.mPhoneSignalScanningTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        for (int i6 = 0; i6 < 17; i6++) {
            this.mPhoneDataConnectionsTimer[i6].writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        }
        for (int i7 = 0; i7 < 10; i7++) {
            this.mNetworkByteActivityCounters[i7].writeSummaryFromParcelLocked(parcel);
            this.mNetworkPacketActivityCounters[i7].writeSummaryFromParcelLocked(parcel);
        }
        this.mMobileRadioActiveTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        this.mMobileRadioActivePerAppTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        this.mMobileRadioActiveAdjustedTime.writeSummaryFromParcelLocked(parcel);
        this.mMobileRadioActiveUnknownTime.writeSummaryFromParcelLocked(parcel);
        this.mMobileRadioActiveUnknownCount.writeSummaryFromParcelLocked(parcel);
        this.mWifiOnTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        this.mGlobalWifiRunningTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        for (int i8 = 0; i8 < 8; i8++) {
            this.mWifiStateTimer[i8].writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        }
        for (int i9 = 0; i9 < 13; i9++) {
            this.mWifiSupplStateTimer[i9].writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        }
        for (int i10 = 0; i10 < 5; i10++) {
            this.mWifiSignalStrengthsTimer[i10].writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        }
        this.mWifiActivity.writeSummaryToParcel(parcel);
        this.mBluetoothActivity.writeSummaryToParcel(parcel);
        this.mModemActivity.writeSummaryToParcel(parcel);
        parcel.writeInt(this.mHasWifiReporting ? 1 : 0);
        parcel.writeInt(this.mHasBluetoothReporting ? 1 : 0);
        parcel.writeInt(this.mHasModemReporting ? 1 : 0);
        parcel.writeInt(this.mNumConnectivityChange);
        this.mFlashlightOnTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        this.mCameraOnTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        this.mBluetoothScanTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
        parcel.writeInt(this.mRpmStats.size());
        for (Map.Entry<String, SamplingTimer> entry : this.mRpmStats.entrySet()) {
            SamplingTimer value = entry.getValue();
            if (value != null) {
                parcel.writeInt(1);
                parcel.writeString(entry.getKey());
                value.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.mScreenOffRpmStats.size());
        for (Map.Entry<String, SamplingTimer> entry2 : this.mScreenOffRpmStats.entrySet()) {
            SamplingTimer value2 = entry2.getValue();
            if (value2 != null) {
                parcel.writeInt(1);
                parcel.writeString(entry2.getKey());
                value2.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.mKernelWakelockStats.size());
        for (Map.Entry<String, SamplingTimer> entry3 : this.mKernelWakelockStats.entrySet()) {
            SamplingTimer value3 = entry3.getValue();
            if (value3 != null) {
                parcel.writeInt(1);
                parcel.writeString(entry3.getKey());
                value3.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.mWakeupReasonStats.size());
        for (Map.Entry<String, SamplingTimer> entry4 : this.mWakeupReasonStats.entrySet()) {
            SamplingTimer value4 = entry4.getValue();
            if (value4 != null) {
                parcel.writeInt(1);
                parcel.writeString(entry4.getKey());
                value4.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.mKernelMemoryStats.size());
        for (int i11 = 0; i11 < this.mKernelMemoryStats.size(); i11++) {
            SamplingTimer samplingTimerValueAt = this.mKernelMemoryStats.valueAt(i11);
            if (samplingTimerValueAt != null) {
                parcel.writeInt(1);
                parcel.writeLong(this.mKernelMemoryStats.keyAt(i11));
                samplingTimerValueAt.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeLongArray(this.mCpuFreqs);
        int size2 = this.mUidStats.size();
        parcel.writeInt(size2);
        int i12 = 0;
        while (i12 < size2) {
            parcel.writeInt(this.mUidStats.keyAt(i12));
            Uid uidValueAt = this.mUidStats.valueAt(i12);
            int i13 = size2;
            int i14 = i12;
            uidValueAt.mOnBatteryBackgroundTimeBase.writeSummaryToParcel(parcel, jUptimeMillis, jElapsedRealtime);
            uidValueAt.mOnBatteryScreenOffBackgroundTimeBase.writeSummaryToParcel(parcel, jUptimeMillis, jElapsedRealtime);
            if (uidValueAt.mWifiRunningTimer != null) {
                parcel.writeInt(1);
                uidValueAt.mWifiRunningTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (uidValueAt.mFullWifiLockTimer != null) {
                parcel.writeInt(1);
                uidValueAt.mFullWifiLockTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (uidValueAt.mWifiScanTimer != null) {
                parcel.writeInt(1);
                uidValueAt.mWifiScanTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            for (int i15 = 0; i15 < i2; i15++) {
                if (uidValueAt.mWifiBatchedScanTimer[i15] != null) {
                    parcel.writeInt(1);
                    uidValueAt.mWifiBatchedScanTimer[i15].writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
                } else {
                    parcel.writeInt(0);
                }
            }
            if (uidValueAt.mWifiMulticastTimer != null) {
                parcel.writeInt(1);
                uidValueAt.mWifiMulticastTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (uidValueAt.mAudioTurnedOnTimer != null) {
                parcel.writeInt(1);
                uidValueAt.mAudioTurnedOnTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (uidValueAt.mVideoTurnedOnTimer != null) {
                parcel.writeInt(1);
                uidValueAt.mVideoTurnedOnTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (uidValueAt.mFlashlightTurnedOnTimer != null) {
                parcel.writeInt(1);
                uidValueAt.mFlashlightTurnedOnTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (uidValueAt.mCameraTurnedOnTimer != null) {
                parcel.writeInt(1);
                uidValueAt.mCameraTurnedOnTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (uidValueAt.mForegroundActivityTimer != null) {
                parcel.writeInt(1);
                uidValueAt.mForegroundActivityTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (uidValueAt.mForegroundServiceTimer != null) {
                parcel.writeInt(1);
                uidValueAt.mForegroundServiceTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (uidValueAt.mAggregatedPartialWakelockTimer != null) {
                parcel.writeInt(1);
                uidValueAt.mAggregatedPartialWakelockTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (uidValueAt.mBluetoothScanTimer != null) {
                parcel.writeInt(1);
                uidValueAt.mBluetoothScanTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (uidValueAt.mBluetoothUnoptimizedScanTimer != null) {
                parcel.writeInt(1);
                uidValueAt.mBluetoothUnoptimizedScanTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (uidValueAt.mBluetoothScanResultCounter != null) {
                parcel.writeInt(1);
                uidValueAt.mBluetoothScanResultCounter.writeSummaryFromParcelLocked(parcel);
            } else {
                parcel.writeInt(0);
            }
            if (uidValueAt.mBluetoothScanResultBgCounter != null) {
                parcel.writeInt(1);
                uidValueAt.mBluetoothScanResultBgCounter.writeSummaryFromParcelLocked(parcel);
            } else {
                parcel.writeInt(0);
            }
            for (int i16 = 0; i16 < 6; i16++) {
                if (uidValueAt.mProcessStateTimer[i16] != null) {
                    parcel.writeInt(1);
                    uidValueAt.mProcessStateTimer[i16].writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
                } else {
                    parcel.writeInt(0);
                }
            }
            if (uidValueAt.mVibratorOnTimer != null) {
                parcel.writeInt(1);
                uidValueAt.mVibratorOnTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
            if (uidValueAt.mUserActivityCounters == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                for (int i17 = 0; i17 < 4; i17++) {
                    uidValueAt.mUserActivityCounters[i17].writeSummaryFromParcelLocked(parcel);
                }
            }
            if (uidValueAt.mNetworkByteActivityCounters == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                for (int i18 = 0; i18 < 10; i18++) {
                    uidValueAt.mNetworkByteActivityCounters[i18].writeSummaryFromParcelLocked(parcel);
                    uidValueAt.mNetworkPacketActivityCounters[i18].writeSummaryFromParcelLocked(parcel);
                }
                uidValueAt.mMobileRadioActiveTime.writeSummaryFromParcelLocked(parcel);
                uidValueAt.mMobileRadioActiveCount.writeSummaryFromParcelLocked(parcel);
            }
            uidValueAt.mUserCpuTime.writeSummaryFromParcelLocked(parcel);
            uidValueAt.mSystemCpuTime.writeSummaryFromParcelLocked(parcel);
            if (uidValueAt.mCpuClusterSpeedTimesUs != null) {
                parcel.writeInt(1);
                parcel.writeInt(uidValueAt.mCpuClusterSpeedTimesUs.length);
                for (LongSamplingCounter[] longSamplingCounterArr : uidValueAt.mCpuClusterSpeedTimesUs) {
                    if (longSamplingCounterArr != null) {
                        parcel.writeInt(1);
                        parcel.writeInt(longSamplingCounterArr.length);
                        for (LongSamplingCounter longSamplingCounter : longSamplingCounterArr) {
                            if (longSamplingCounter != null) {
                                parcel.writeInt(1);
                                longSamplingCounter.writeSummaryFromParcelLocked(parcel);
                            } else {
                                parcel.writeInt(0);
                            }
                        }
                    } else {
                        parcel.writeInt(0);
                    }
                }
            } else {
                parcel.writeInt(0);
            }
            LongSamplingCounterArray.writeSummaryToParcelLocked(parcel, uidValueAt.mCpuFreqTimeMs);
            LongSamplingCounterArray.writeSummaryToParcelLocked(parcel, uidValueAt.mScreenOffCpuFreqTimeMs);
            if (uidValueAt.mMobileRadioApWakeupCount != null) {
                parcel.writeInt(1);
                uidValueAt.mMobileRadioApWakeupCount.writeSummaryFromParcelLocked(parcel);
            } else {
                parcel.writeInt(0);
            }
            if (uidValueAt.mWifiRadioApWakeupCount != null) {
                parcel.writeInt(1);
                uidValueAt.mWifiRadioApWakeupCount.writeSummaryFromParcelLocked(parcel);
            } else {
                parcel.writeInt(0);
            }
            ArrayMap<String, Uid.Wakelock> map = uidValueAt.mWakelockStats.getMap();
            int size3 = map.size();
            parcel.writeInt(size3);
            for (int i19 = 0; i19 < size3; i19++) {
                parcel.writeString(map.keyAt(i19));
                Uid.Wakelock wakelockValueAt = map.valueAt(i19);
                if (wakelockValueAt.mTimerFull != null) {
                    parcel.writeInt(1);
                    wakelockValueAt.mTimerFull.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
                } else {
                    parcel.writeInt(0);
                }
                if (wakelockValueAt.mTimerPartial != null) {
                    parcel.writeInt(1);
                    wakelockValueAt.mTimerPartial.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
                } else {
                    parcel.writeInt(0);
                }
                if (wakelockValueAt.mTimerWindow != null) {
                    parcel.writeInt(1);
                    wakelockValueAt.mTimerWindow.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
                } else {
                    parcel.writeInt(0);
                }
                if (wakelockValueAt.mTimerDraw != null) {
                    parcel.writeInt(1);
                    wakelockValueAt.mTimerDraw.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
                } else {
                    parcel.writeInt(0);
                }
            }
            ArrayMap<String, DualTimer> map2 = uidValueAt.mSyncStats.getMap();
            int size4 = map2.size();
            parcel.writeInt(size4);
            for (int i20 = 0; i20 < size4; i20++) {
                parcel.writeString(map2.keyAt(i20));
                map2.valueAt(i20).writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            }
            ArrayMap<String, DualTimer> map3 = uidValueAt.mJobStats.getMap();
            int size5 = map3.size();
            parcel.writeInt(size5);
            for (int i21 = 0; i21 < size5; i21++) {
                parcel.writeString(map3.keyAt(i21));
                map3.valueAt(i21).writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
            }
            uidValueAt.writeJobCompletionsToParcelLocked(parcel);
            int size6 = uidValueAt.mSensorStats.size();
            parcel.writeInt(size6);
            for (int i22 = 0; i22 < size6; i22++) {
                parcel.writeInt(uidValueAt.mSensorStats.keyAt(i22));
                Uid.Sensor sensorValueAt = uidValueAt.mSensorStats.valueAt(i22);
                if (sensorValueAt.mTimer != null) {
                    parcel.writeInt(1);
                    sensorValueAt.mTimer.writeSummaryFromParcelLocked(parcel, jElapsedRealtime);
                } else {
                    parcel.writeInt(0);
                }
            }
            int size7 = uidValueAt.mProcessStats.size();
            parcel.writeInt(size7);
            for (int i23 = 0; i23 < size7; i23++) {
                parcel.writeString(uidValueAt.mProcessStats.keyAt(i23));
                Uid.Proc procValueAt = uidValueAt.mProcessStats.valueAt(i23);
                parcel.writeLong(procValueAt.mUserTime);
                parcel.writeLong(procValueAt.mSystemTime);
                parcel.writeLong(procValueAt.mForegroundTime);
                parcel.writeInt(procValueAt.mStarts);
                parcel.writeInt(procValueAt.mNumCrashes);
                parcel.writeInt(procValueAt.mNumAnrs);
                procValueAt.writeExcessivePowerToParcelLocked(parcel);
            }
            int size8 = uidValueAt.mPackageStats.size();
            parcel.writeInt(size8);
            if (size8 > 0) {
                for (Map.Entry<String, Uid.Pkg> entry5 : uidValueAt.mPackageStats.entrySet()) {
                    parcel.writeString(entry5.getKey());
                    Uid.Pkg value5 = entry5.getValue();
                    int size9 = value5.mWakeupAlarms.size();
                    parcel.writeInt(size9);
                    for (int i24 = 0; i24 < size9; i24++) {
                        parcel.writeString(value5.mWakeupAlarms.keyAt(i24));
                        value5.mWakeupAlarms.valueAt(i24).writeSummaryFromParcelLocked(parcel);
                    }
                    int size10 = value5.mServiceStats.size();
                    parcel.writeInt(size10);
                    for (int i25 = 0; i25 < size10; i25++) {
                        parcel.writeString(value5.mServiceStats.keyAt(i25));
                        Uid.Pkg.Serv servValueAt = value5.mServiceStats.valueAt(i25);
                        parcel.writeLong(servValueAt.getStartTimeToNowLocked(this.mOnBatteryTimeBase.getUptime(jUptimeMillis)));
                        parcel.writeInt(servValueAt.mStarts);
                        parcel.writeInt(servValueAt.mLaunches);
                    }
                }
            }
            i12 = i14 + 1;
            size2 = i13;
            i2 = 5;
        }
        this.mPowerControllerBatteryStatsHelper.writeToParcel(parcel);
    }

    public void writeSyncLocked() {
        writeLocked(true);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        writeToParcelLocked(parcel, true, i2);
    }

    public void writeToParcelLocked(Parcel parcel, boolean z2, int i2) {
        pullPendingStateUpdatesLocked();
        long startClockTime = getStartClockTime();
        long jUptimeMillis = this.mClocks.uptimeMillis() * 1000;
        long jElapsedRealtime = this.mClocks.elapsedRealtime() * 1000;
        this.mOnBatteryTimeBase.getRealtime(jElapsedRealtime);
        this.mOnBatteryScreenOffTimeBase.getRealtime(jElapsedRealtime);
        parcel.writeInt(MAGIC);
        writeHistory(parcel, true, false);
        parcel.writeInt(this.mStartCount);
        parcel.writeLong(startClockTime);
        parcel.writeString(this.mStartPlatformVersion);
        parcel.writeString(this.mEndPlatformVersion);
        parcel.writeLong(this.mUptime);
        parcel.writeLong(this.mUptimeStart);
        parcel.writeLong(this.mRealtime);
        parcel.writeLong(this.mRealtimeStart);
        parcel.writeInt(this.mOnBattery ? 1 : 0);
        parcel.writeInt(this.mEstimatedBatteryCapacity);
        parcel.writeInt(this.mMinLearnedBatteryCapacity);
        parcel.writeInt(this.mMaxLearnedBatteryCapacity);
        this.mOnBatteryTimeBase.writeToParcel(parcel, jUptimeMillis, jElapsedRealtime);
        this.mOnBatteryScreenOffTimeBase.writeToParcel(parcel, jUptimeMillis, jElapsedRealtime);
        this.mScreenOnTimer.writeToParcel(parcel, jElapsedRealtime);
        this.mScreenDozeTimer.writeToParcel(parcel, jElapsedRealtime);
        for (int i3 = 0; i3 < 5; i3++) {
            this.mScreenBrightnessTimer[i3].writeToParcel(parcel, jElapsedRealtime);
        }
        this.mInteractiveTimer.writeToParcel(parcel, jElapsedRealtime);
        this.mPowerSaveModeEnabledTimer.writeToParcel(parcel, jElapsedRealtime);
        parcel.writeLong(this.mLongestLightIdleTime);
        parcel.writeLong(this.mLongestFullIdleTime);
        this.mDeviceIdleModeLightTimer.writeToParcel(parcel, jElapsedRealtime);
        this.mDeviceIdleModeFullTimer.writeToParcel(parcel, jElapsedRealtime);
        this.mDeviceLightIdlingTimer.writeToParcel(parcel, jElapsedRealtime);
        this.mDeviceIdlingTimer.writeToParcel(parcel, jElapsedRealtime);
        this.mPhoneOnTimer.writeToParcel(parcel, jElapsedRealtime);
        for (int i4 = 0; i4 < 5; i4++) {
            this.mPhoneSignalStrengthsTimer[i4].writeToParcel(parcel, jElapsedRealtime);
        }
        this.mPhoneSignalScanningTimer.writeToParcel(parcel, jElapsedRealtime);
        for (int i5 = 0; i5 < 17; i5++) {
            this.mPhoneDataConnectionsTimer[i5].writeToParcel(parcel, jElapsedRealtime);
        }
        for (int i6 = 0; i6 < 10; i6++) {
            this.mNetworkByteActivityCounters[i6].writeToParcel(parcel);
            this.mNetworkPacketActivityCounters[i6].writeToParcel(parcel);
        }
        this.mMobileRadioActiveTimer.writeToParcel(parcel, jElapsedRealtime);
        this.mMobileRadioActivePerAppTimer.writeToParcel(parcel, jElapsedRealtime);
        this.mMobileRadioActiveAdjustedTime.writeToParcel(parcel);
        this.mMobileRadioActiveUnknownTime.writeToParcel(parcel);
        this.mMobileRadioActiveUnknownCount.writeToParcel(parcel);
        this.mWifiOnTimer.writeToParcel(parcel, jElapsedRealtime);
        this.mGlobalWifiRunningTimer.writeToParcel(parcel, jElapsedRealtime);
        for (int i7 = 0; i7 < 8; i7++) {
            this.mWifiStateTimer[i7].writeToParcel(parcel, jElapsedRealtime);
        }
        for (int i8 = 0; i8 < 13; i8++) {
            this.mWifiSupplStateTimer[i8].writeToParcel(parcel, jElapsedRealtime);
        }
        for (int i9 = 0; i9 < 5; i9++) {
            this.mWifiSignalStrengthsTimer[i9].writeToParcel(parcel, jElapsedRealtime);
        }
        this.mWifiActivity.writeToParcel(parcel, 0);
        this.mBluetoothActivity.writeToParcel(parcel, 0);
        this.mModemActivity.writeToParcel(parcel, 0);
        parcel.writeInt(this.mHasWifiReporting ? 1 : 0);
        parcel.writeInt(this.mHasBluetoothReporting ? 1 : 0);
        parcel.writeInt(this.mHasModemReporting ? 1 : 0);
        parcel.writeInt(this.mNumConnectivityChange);
        parcel.writeInt(this.mLoadedNumConnectivityChange);
        parcel.writeInt(this.mUnpluggedNumConnectivityChange);
        this.mFlashlightOnTimer.writeToParcel(parcel, jElapsedRealtime);
        this.mCameraOnTimer.writeToParcel(parcel, jElapsedRealtime);
        this.mBluetoothScanTimer.writeToParcel(parcel, jElapsedRealtime);
        parcel.writeInt(this.mDischargeUnplugLevel);
        parcel.writeInt(this.mDischargePlugLevel);
        parcel.writeInt(this.mDischargeCurrentLevel);
        parcel.writeInt(this.mCurrentBatteryLevel);
        parcel.writeInt(this.mLowDischargeAmountSinceCharge);
        parcel.writeInt(this.mHighDischargeAmountSinceCharge);
        parcel.writeInt(this.mDischargeAmountScreenOn);
        parcel.writeInt(this.mDischargeAmountScreenOnSinceCharge);
        parcel.writeInt(this.mDischargeAmountScreenOff);
        parcel.writeInt(this.mDischargeAmountScreenOffSinceCharge);
        parcel.writeInt(this.mDischargeAmountScreenDoze);
        parcel.writeInt(this.mDischargeAmountScreenDozeSinceCharge);
        this.mDischargeStepTracker.writeToParcel(parcel);
        this.mChargeStepTracker.writeToParcel(parcel);
        this.mDischargeCounter.writeToParcel(parcel);
        this.mDischargeScreenOffCounter.writeToParcel(parcel);
        this.mDischargeScreenDozeCounter.writeToParcel(parcel);
        parcel.writeLong(this.mLastWriteTime);
        parcel.writeInt(this.mRpmStats.size());
        for (Map.Entry<String, SamplingTimer> entry : this.mRpmStats.entrySet()) {
            SamplingTimer value = entry.getValue();
            if (value != null) {
                parcel.writeInt(1);
                parcel.writeString(entry.getKey());
                value.writeToParcel(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.mScreenOffRpmStats.size());
        for (Map.Entry<String, SamplingTimer> entry2 : this.mScreenOffRpmStats.entrySet()) {
            SamplingTimer value2 = entry2.getValue();
            if (value2 != null) {
                parcel.writeInt(1);
                parcel.writeString(entry2.getKey());
                value2.writeToParcel(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
        }
        if (z2) {
            parcel.writeInt(this.mKernelWakelockStats.size());
            for (Map.Entry<String, SamplingTimer> entry3 : this.mKernelWakelockStats.entrySet()) {
                SamplingTimer value3 = entry3.getValue();
                if (value3 != null) {
                    parcel.writeInt(1);
                    parcel.writeString(entry3.getKey());
                    value3.writeToParcel(parcel, jElapsedRealtime);
                } else {
                    parcel.writeInt(0);
                }
            }
            parcel.writeInt(this.mWakeupReasonStats.size());
            for (Map.Entry<String, SamplingTimer> entry4 : this.mWakeupReasonStats.entrySet()) {
                SamplingTimer value4 = entry4.getValue();
                if (value4 != null) {
                    parcel.writeInt(1);
                    parcel.writeString(entry4.getKey());
                    value4.writeToParcel(parcel, jElapsedRealtime);
                } else {
                    parcel.writeInt(0);
                }
            }
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.mKernelMemoryStats.size());
        for (int i10 = 0; i10 < this.mKernelMemoryStats.size(); i10++) {
            SamplingTimer samplingTimerValueAt = this.mKernelMemoryStats.valueAt(i10);
            if (samplingTimerValueAt != null) {
                parcel.writeInt(1);
                parcel.writeLong(this.mKernelMemoryStats.keyAt(i10));
                samplingTimerValueAt.writeToParcel(parcel, jElapsedRealtime);
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeLongArray(this.mCpuFreqs);
        if (z2) {
            int size = this.mUidStats.size();
            parcel.writeInt(size);
            for (int i11 = 0; i11 < size; i11++) {
                parcel.writeInt(this.mUidStats.keyAt(i11));
                this.mUidStats.valueAt(i11).writeToParcelLocked(parcel, jUptimeMillis, jElapsedRealtime);
            }
        } else {
            parcel.writeInt(0);
        }
        this.mPowerControllerBatteryStatsHelper.writeToParcel(parcel);
    }

    @Override // android.os.BatteryStats
    public void writeToParcelWithoutUids(Parcel parcel, int i2) {
        writeToParcelLocked(parcel, false, i2);
    }

    public BatteryStatsImpl(Clocks clocks) {
        this.mKernelWakelockReader = new KernelWakelockReader();
        this.mTmpWakelockStats = new KernelWakelockStats();
        this.mKernelUidCpuTimeReader = new KernelUidCpuTimeReader();
        this.mKernelUidCpuFreqTimeReader = new KernelUidCpuFreqTimeReader();
        this.mKernelMemoryBandwidthStats = new KernelMemoryBandwidthStats();
        this.mKernelMemoryStats = new LongSparseArray<>();
        this.mTmpRpmStats = new RpmStats();
        this.mLastRpmStatsUpdateTimeMs = -1000L;
        this.mExternalSync = null;
        this.mUserInfoProvider = null;
        this.mIsolatedUids = new SparseIntArray();
        this.mUidStats = new SparseArray<>();
        this.mPartialTimers = new ArrayList<>();
        this.mFullTimers = new ArrayList<>();
        this.mWindowTimers = new ArrayList<>();
        this.mDrawTimers = new ArrayList<>();
        this.mSensorTimers = new SparseArray<>();
        this.mWifiRunningTimers = new ArrayList<>();
        this.mFullWifiLockTimers = new ArrayList<>();
        this.mWifiMulticastTimers = new ArrayList<>();
        this.mWifiScanTimers = new ArrayList<>();
        this.mWifiBatchedScanTimers = new SparseArray<>();
        this.mAudioTurnedOnTimers = new ArrayList<>();
        this.mVideoTurnedOnTimers = new ArrayList<>();
        this.mFlashlightTurnedOnTimers = new ArrayList<>();
        this.mCameraTurnedOnTimers = new ArrayList<>();
        this.mBluetoothScanOnTimers = new ArrayList<>();
        this.mLastPartialTimers = new ArrayList<>();
        this.mOnBatteryTimeBase = new TimeBase();
        this.mOnBatteryScreenOffTimeBase = new TimeBase();
        this.mActiveEvents = new BatteryStats.HistoryEventTracker();
        this.mHaveBatteryLevel = false;
        this.mRecordingHistory = false;
        this.mHistoryBuffer = Parcel.obtain();
        this.mHistoryLastWritten = new BatteryStats.HistoryItem();
        this.mHistoryLastLastWritten = new BatteryStats.HistoryItem();
        this.mHistoryReadTmp = new BatteryStats.HistoryItem();
        this.mHistoryAddTmp = new BatteryStats.HistoryItem();
        this.mHistoryTagPool = new HashMap<>();
        this.mNextHistoryTagIdx = 0;
        this.mNumHistoryTagChars = 0;
        this.mHistoryBufferLastPos = -1;
        this.mHistoryOverflow = false;
        this.mActiveHistoryStates = -1;
        this.mActiveHistoryStates2 = -1;
        this.mLastHistoryElapsedRealtime = 0L;
        this.mTrackRunningHistoryElapsedRealtime = 0L;
        this.mTrackRunningHistoryUptime = 0L;
        this.mHistoryCur = new BatteryStats.HistoryItem();
        this.mLastHistoryStepDetails = null;
        this.mLastHistoryStepLevel = (byte) 0;
        this.mCurHistoryStepDetails = new BatteryStats.HistoryStepDetails();
        this.mReadHistoryStepDetails = new BatteryStats.HistoryStepDetails();
        this.mTmpHistoryStepDetails = new BatteryStats.HistoryStepDetails();
        this.mScreenState = 0;
        this.mScreenBrightnessBin = -1;
        this.mScreenBrightnessTimer = new StopwatchTimer[5];
        this.mPhoneSignalStrengthBin = -1;
        this.mPhoneSignalStrengthBinRaw = -1;
        this.mPhoneSignalStrengthsTimer = new StopwatchTimer[5];
        this.mPhoneDataConnectionType = -1;
        this.mPhoneDataConnectionsTimer = new StopwatchTimer[17];
        this.mNetworkByteActivityCounters = new LongSamplingCounter[10];
        this.mNetworkPacketActivityCounters = new LongSamplingCounter[10];
        this.mHasWifiReporting = false;
        this.mHasBluetoothReporting = false;
        this.mHasModemReporting = false;
        this.mWifiState = -1;
        this.mWifiStateTimer = new StopwatchTimer[8];
        this.mWifiSupplState = -1;
        this.mWifiSupplStateTimer = new StopwatchTimer[13];
        this.mWifiSignalStrengthBin = -1;
        this.mWifiSignalStrengthsTimer = new StopwatchTimer[5];
        this.mMobileRadioPowerState = 1;
        this.mWifiRadioPowerState = 1;
        this.mCharging = true;
        this.mInitStepMode = 0;
        this.mCurStepMode = 0;
        this.mModStepMode = 0;
        this.mDischargeStepTracker = new BatteryStats.LevelStepTracker(200);
        this.mDailyDischargeStepTracker = new BatteryStats.LevelStepTracker(400);
        this.mPowerControllerBatteryStatsHelper = new PowerControllerBatteryStatsHelper();
        this.mChargeStepTracker = new BatteryStats.LevelStepTracker(200);
        this.mDailyChargeStepTracker = new BatteryStats.LevelStepTracker(400);
        this.mDailyStartTime = 0L;
        this.mNextMinDailyDeadline = 0L;
        this.mNextMaxDailyDeadline = 0L;
        this.mDailyItems = new ArrayList<>();
        this.mLastWriteTime = 0L;
        this.mPhoneServiceState = -1;
        this.mPhoneServiceStateRaw = -1;
        this.mPhoneSimStateRaw = -1;
        this.mEstimatedBatteryCapacity = -1;
        this.mMinLearnedBatteryCapacity = -1;
        this.mMaxLearnedBatteryCapacity = -1;
        this.mRpmStats = new HashMap<>();
        this.mScreenOffRpmStats = new HashMap<>();
        this.mKernelWakelockStats = new HashMap<>();
        this.mLastWakeupReason = null;
        this.mLastWakeupUptimeMs = 0L;
        this.mWakeupReasonStats = new HashMap<>();
        this.mChangedStates = 0;
        this.mChangedStates2 = 0;
        this.mInitialAcquireWakeUid = -1;
        this.mWifiFullLockNesting = 0;
        this.mWifiScanNesting = 0;
        this.mWifiMulticastNesting = 0;
        this.mNetworkStatsFactory = new NetworkStatsFactory();
        this.mNetworkStatsPool = new Pools.SynchronizedPool(6);
        this.mWifiNetworkLock = new Object();
        this.mWifiIfaces = EmptyArray.STRING;
        this.mLastWifiNetworkStats = new NetworkStats(0L, -1);
        this.mModemNetworkLock = new Object();
        this.mModemIfaces = EmptyArray.STRING;
        this.mLastModemNetworkStats = new NetworkStats(0L, -1);
        this.mPendingWrite = null;
        this.mWriteLock = new ReentrantLock();
        init(clocks);
        this.mFile = null;
        this.mCheckinFile = null;
        this.mDailyFile = null;
        this.mHandler = null;
        this.mPlatformIdleStateCallback = null;
        this.mUserInfoProvider = null;
        clearHistoryLocked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean resetTimerIfNotNull(DualTimer dualTimer, boolean z2) {
        if (dualTimer != null) {
            return dualTimer.reset(z2);
        }
        return true;
    }

    public static class BatchTimer extends Timer {
        boolean mInDischarge;
        long mLastAddedDuration;
        long mLastAddedTime;
        final Uid mUid;

        public BatchTimer(Clocks clocks, Uid uid, int i2, TimeBase timeBase, Parcel parcel) {
            super(clocks, i2, timeBase, parcel);
            this.mUid = uid;
            this.mLastAddedTime = parcel.readLong();
            this.mLastAddedDuration = parcel.readLong();
            this.mInDischarge = timeBase.isRunning();
        }

        private long computeOverage(long j2) {
            if (this.mLastAddedTime > 0) {
                return (this.mLastTime + this.mLastAddedDuration) - j2;
            }
            return 0L;
        }

        private void recomputeLastDuration(long j2, boolean z2) {
            long jComputeOverage = computeOverage(j2);
            if (jComputeOverage > 0) {
                if (this.mInDischarge) {
                    this.mTotalTime -= jComputeOverage;
                }
                if (z2) {
                    this.mLastAddedTime = 0L;
                } else {
                    this.mLastAddedTime = j2;
                    this.mLastAddedDuration -= jComputeOverage;
                }
            }
        }

        public void abortLastDuration(BatteryStatsImpl batteryStatsImpl) {
            recomputeLastDuration(this.mClocks.elapsedRealtime() * 1000, true);
        }

        public void addDuration(BatteryStatsImpl batteryStatsImpl, long j2) {
            long jElapsedRealtime = this.mClocks.elapsedRealtime() * 1000;
            recomputeLastDuration(jElapsedRealtime, true);
            this.mLastAddedTime = jElapsedRealtime;
            long j3 = j2 * 1000;
            this.mLastAddedDuration = j3;
            if (this.mInDischarge) {
                this.mTotalTime += j3;
                this.mCount++;
            }
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public int computeCurrentCountLocked() {
            return this.mCount;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public long computeRunTimeLocked(long j2) {
            long jComputeOverage = computeOverage(this.mClocks.elapsedRealtime() * 1000);
            if (jComputeOverage <= 0) {
                return this.mTotalTime;
            }
            this.mTotalTime = jComputeOverage;
            return jComputeOverage;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer, android.os.BatteryStats.Timer
        public void logState(Printer printer, String str) {
            super.logState(printer, str);
            StringBuilder sbU = c.u(str, "mLastAddedTime=");
            sbU.append(this.mLastAddedTime);
            sbU.append(" mLastAddedDuration=");
            sbU.append(this.mLastAddedDuration);
            printer.println(sbU.toString());
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer, com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStarted(long j2, long j3, long j4) {
            recomputeLastDuration(j2, false);
            this.mInDischarge = true;
            if (this.mLastAddedTime == j2) {
                this.mTotalTime += this.mLastAddedDuration;
            }
            super.onTimeStarted(j2, j3, j4);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer, com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStopped(long j2, long j3, long j4) {
            recomputeLastDuration(this.mClocks.elapsedRealtime() * 1000, false);
            this.mInDischarge = false;
            super.onTimeStopped(j2, j3, j4);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public boolean reset(boolean z2) {
            long jElapsedRealtime = this.mClocks.elapsedRealtime() * 1000;
            recomputeLastDuration(jElapsedRealtime, true);
            boolean z3 = false;
            boolean z4 = this.mLastAddedTime == jElapsedRealtime;
            if (!z4 && z2) {
                z3 = true;
            }
            super.reset(z3);
            return !z4;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public void writeToParcel(Parcel parcel, long j2) {
            super.writeToParcel(parcel, j2);
            parcel.writeLong(this.mLastAddedTime);
            parcel.writeLong(this.mLastAddedDuration);
        }

        public BatchTimer(Clocks clocks, Uid uid, int i2, TimeBase timeBase) {
            super(clocks, i2, timeBase);
            this.mUid = uid;
            this.mInDischarge = timeBase.isRunning();
        }
    }

    public static class DurationTimer extends StopwatchTimer {
        long mCurrentDurationMs;
        long mMaxDurationMs;
        long mStartTimeMs;
        long mTotalDurationMs;

        public DurationTimer(Clocks clocks, Uid uid, int i2, ArrayList<StopwatchTimer> arrayList, TimeBase timeBase, Parcel parcel) {
            super(clocks, uid, i2, arrayList, timeBase, parcel);
            this.mStartTimeMs = -1L;
            this.mMaxDurationMs = parcel.readLong();
            this.mTotalDurationMs = parcel.readLong();
            this.mCurrentDurationMs = parcel.readLong();
        }

        @Override // android.os.BatteryStats.Timer
        public long getCurrentDurationMsLocked(long j2) {
            long j3 = this.mCurrentDurationMs;
            return (this.mNesting <= 0 || !this.mTimeBase.isRunning()) ? j3 : j3 + ((this.mTimeBase.getRealtime(j2 * 1000) / 1000) - this.mStartTimeMs);
        }

        @Override // android.os.BatteryStats.Timer
        public long getMaxDurationMsLocked(long j2) {
            if (this.mNesting > 0) {
                long currentDurationMsLocked = getCurrentDurationMsLocked(j2);
                if (currentDurationMsLocked > this.mMaxDurationMs) {
                    return currentDurationMsLocked;
                }
            }
            return this.mMaxDurationMs;
        }

        @Override // android.os.BatteryStats.Timer
        public long getTotalDurationMsLocked(long j2) {
            return getCurrentDurationMsLocked(j2) + this.mTotalDurationMs;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.StopwatchTimer, com.android.internal.os.BatteryStatsImpl.Timer, android.os.BatteryStats.Timer
        public void logState(Printer printer, String str) {
            super.logState(printer, str);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer, com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStarted(long j2, long j3, long j4) {
            super.onTimeStarted(j2, j3, j4);
            if (this.mNesting > 0) {
                this.mStartTimeMs = j4 / 1000;
            }
        }

        @Override // com.android.internal.os.BatteryStatsImpl.StopwatchTimer, com.android.internal.os.BatteryStatsImpl.Timer, com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStopped(long j2, long j3, long j4) {
            super.onTimeStopped(j2, j3, j4);
            if (this.mNesting > 0) {
                this.mCurrentDurationMs = ((j4 / 1000) - this.mStartTimeMs) + this.mCurrentDurationMs;
            }
            this.mStartTimeMs = -1L;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.StopwatchTimer, com.android.internal.os.BatteryStatsImpl.Timer
        public void readSummaryFromParcelLocked(Parcel parcel) {
            super.readSummaryFromParcelLocked(parcel);
            this.mMaxDurationMs = parcel.readLong();
            this.mTotalDurationMs = parcel.readLong();
            this.mStartTimeMs = -1L;
            this.mCurrentDurationMs = 0L;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.StopwatchTimer, com.android.internal.os.BatteryStatsImpl.Timer
        public boolean reset(boolean z2) {
            boolean zReset = super.reset(z2);
            this.mMaxDurationMs = 0L;
            this.mTotalDurationMs = 0L;
            this.mCurrentDurationMs = 0L;
            if (this.mNesting > 0) {
                this.mStartTimeMs = this.mTimeBase.getRealtime(this.mClocks.elapsedRealtime() * 1000) / 1000;
            } else {
                this.mStartTimeMs = -1L;
            }
            return zReset;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.StopwatchTimer
        public void startRunningLocked(long j2) {
            super.startRunningLocked(j2);
            if (this.mNesting == 1 && this.mTimeBase.isRunning()) {
                this.mStartTimeMs = this.mTimeBase.getRealtime(j2 * 1000) / 1000;
            }
        }

        @Override // com.android.internal.os.BatteryStatsImpl.StopwatchTimer
        public void stopRunningLocked(long j2) {
            if (this.mNesting == 1) {
                long currentDurationMsLocked = getCurrentDurationMsLocked(j2);
                this.mTotalDurationMs += currentDurationMsLocked;
                if (currentDurationMsLocked > this.mMaxDurationMs) {
                    this.mMaxDurationMs = currentDurationMsLocked;
                }
                this.mStartTimeMs = -1L;
                this.mCurrentDurationMs = 0L;
            }
            super.stopRunningLocked(j2);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public void writeSummaryFromParcelLocked(Parcel parcel, long j2) {
            super.writeSummaryFromParcelLocked(parcel, j2);
            long j3 = j2 / 1000;
            parcel.writeLong(getMaxDurationMsLocked(j3));
            parcel.writeLong(getTotalDurationMsLocked(j3));
        }

        @Override // com.android.internal.os.BatteryStatsImpl.StopwatchTimer, com.android.internal.os.BatteryStatsImpl.Timer
        public void writeToParcel(Parcel parcel, long j2) {
            super.writeToParcel(parcel, j2);
            long j3 = j2 / 1000;
            parcel.writeLong(getMaxDurationMsLocked(j3));
            parcel.writeLong(this.mTotalDurationMs);
            parcel.writeLong(getCurrentDurationMsLocked(j3));
        }

        public DurationTimer(Clocks clocks, Uid uid, int i2, ArrayList<StopwatchTimer> arrayList, TimeBase timeBase) {
            super(clocks, uid, i2, arrayList, timeBase);
            this.mStartTimeMs = -1L;
        }
    }

    public static class StopwatchTimer extends Timer {
        long mAcquireTime;
        boolean mInList;
        int mNesting;
        long mTimeout;
        final ArrayList<StopwatchTimer> mTimerPool;
        final Uid mUid;
        long mUpdateTime;

        public StopwatchTimer(Clocks clocks, Uid uid, int i2, ArrayList<StopwatchTimer> arrayList, TimeBase timeBase, Parcel parcel) {
            super(clocks, i2, timeBase, parcel);
            this.mAcquireTime = -1L;
            this.mUid = uid;
            this.mTimerPool = arrayList;
            this.mUpdateTime = parcel.readLong();
        }

        private static long refreshTimersLocked(long j2, ArrayList<StopwatchTimer> arrayList, StopwatchTimer stopwatchTimer) {
            int size = arrayList.size();
            long j3 = 0;
            for (int i2 = size - 1; i2 >= 0; i2--) {
                StopwatchTimer stopwatchTimer2 = arrayList.get(i2);
                long j4 = j2 - stopwatchTimer2.mUpdateTime;
                if (j4 > 0) {
                    long j5 = j4 / ((long) size);
                    if (stopwatchTimer2 == stopwatchTimer) {
                        j3 = j5;
                    }
                    stopwatchTimer2.mTotalTime += j5;
                }
                stopwatchTimer2.mUpdateTime = j2;
            }
            return j3;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public int computeCurrentCountLocked() {
            return this.mCount;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public long computeRunTimeLocked(long j2) {
            long j3 = this.mTimeout;
            long size = 0;
            if (j3 > 0) {
                long j4 = this.mUpdateTime;
                if (j2 > j4 + j3) {
                    j2 = j4 + j3;
                }
            }
            long j5 = this.mTotalTime;
            if (this.mNesting > 0) {
                long j6 = j2 - this.mUpdateTime;
                ArrayList<StopwatchTimer> arrayList = this.mTimerPool;
                size = j6 / ((long) (arrayList != null ? arrayList.size() : 1));
            }
            return j5 + size;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public void detach() {
            super.detach();
            ArrayList<StopwatchTimer> arrayList = this.mTimerPool;
            if (arrayList != null) {
                arrayList.remove(this);
            }
        }

        @Override // android.os.BatteryStats.Timer
        public boolean isRunningLocked() {
            return this.mNesting > 0;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer, android.os.BatteryStats.Timer
        public void logState(Printer printer, String str) {
            super.logState(printer, str);
            StringBuilder sbU = c.u(str, "mNesting=");
            sbU.append(this.mNesting);
            sbU.append(" mUpdateTime=");
            sbU.append(this.mUpdateTime);
            sbU.append(" mAcquireTime=");
            sbU.append(this.mAcquireTime);
            printer.println(sbU.toString());
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer, com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStopped(long j2, long j3, long j4) {
            if (this.mNesting > 0) {
                super.onTimeStopped(j2, j3, j4);
                this.mUpdateTime = j4;
            }
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public void readSummaryFromParcelLocked(Parcel parcel) {
            super.readSummaryFromParcelLocked(parcel);
            this.mNesting = 0;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public boolean reset(boolean z2) {
            boolean z3 = this.mNesting <= 0;
            super.reset(z3 && z2);
            if (this.mNesting > 0) {
                this.mUpdateTime = this.mTimeBase.getRealtime(this.mClocks.elapsedRealtime() * 1000);
            }
            this.mAcquireTime = -1L;
            return z3;
        }

        public void setMark(long j2) {
            long realtime = this.mTimeBase.getRealtime(j2 * 1000);
            if (this.mNesting > 0) {
                ArrayList<StopwatchTimer> arrayList = this.mTimerPool;
                if (arrayList != null) {
                    refreshTimersLocked(realtime, arrayList, this);
                } else {
                    this.mTotalTime = (realtime - this.mUpdateTime) + this.mTotalTime;
                    this.mUpdateTime = realtime;
                }
            }
            this.mTimeBeforeMark = this.mTotalTime;
        }

        public void setTimeout(long j2) {
            this.mTimeout = j2;
        }

        public void startRunningLocked(long j2) {
            int i2 = this.mNesting;
            this.mNesting = i2 + 1;
            if (i2 == 0) {
                long realtime = this.mTimeBase.getRealtime(j2 * 1000);
                this.mUpdateTime = realtime;
                ArrayList<StopwatchTimer> arrayList = this.mTimerPool;
                if (arrayList != null) {
                    refreshTimersLocked(realtime, arrayList, null);
                    this.mTimerPool.add(this);
                }
                if (!this.mTimeBase.isRunning()) {
                    this.mAcquireTime = -1L;
                } else {
                    this.mCount++;
                    this.mAcquireTime = this.mTotalTime;
                }
            }
        }

        public void stopAllRunningLocked(long j2) {
            if (this.mNesting > 0) {
                this.mNesting = 1;
                stopRunningLocked(j2);
            }
        }

        public void stopRunningLocked(long j2) {
            int i2 = this.mNesting;
            if (i2 == 0) {
                return;
            }
            int i3 = i2 - 1;
            this.mNesting = i3;
            if (i3 == 0) {
                long realtime = this.mTimeBase.getRealtime(j2 * 1000);
                ArrayList<StopwatchTimer> arrayList = this.mTimerPool;
                if (arrayList != null) {
                    refreshTimersLocked(realtime, arrayList, null);
                    this.mTimerPool.remove(this);
                } else {
                    this.mNesting = 1;
                    this.mTotalTime = computeRunTimeLocked(realtime);
                    this.mNesting = 0;
                }
                long j3 = this.mAcquireTime;
                if (j3 < 0 || this.mTotalTime != j3) {
                    return;
                }
                this.mCount--;
            }
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public void writeToParcel(Parcel parcel, long j2) {
            super.writeToParcel(parcel, j2);
            parcel.writeLong(this.mUpdateTime);
        }

        public StopwatchTimer(Clocks clocks, Uid uid, int i2, ArrayList<StopwatchTimer> arrayList, TimeBase timeBase) {
            super(clocks, i2, timeBase);
            this.mAcquireTime = -1L;
            this.mUid = uid;
            this.mTimerPool = arrayList;
        }
    }

    public static class LongSamplingCounter extends BatteryStats.LongCounter implements TimeBaseObs {
        long mCount;
        long mLoadedCount;
        long mPluggedCount;
        final TimeBase mTimeBase;
        long mUnpluggedCount;

        public LongSamplingCounter(TimeBase timeBase, Parcel parcel) {
            this.mTimeBase = timeBase;
            long j2 = parcel.readLong();
            this.mPluggedCount = j2;
            this.mCount = j2;
            this.mLoadedCount = parcel.readLong();
            this.mUnpluggedCount = parcel.readLong();
            timeBase.add(this);
        }

        public void addCountLocked(long j2) {
            if (this.mTimeBase.isRunning()) {
                this.mCount += j2;
            }
        }

        public void detach() {
            this.mTimeBase.remove(this);
        }

        @Override // android.os.BatteryStats.LongCounter
        public long getCountLocked(int i2) {
            long j2;
            long j3 = this.mTimeBase.isRunning() ? this.mCount : this.mPluggedCount;
            if (i2 == 2) {
                j2 = this.mUnpluggedCount;
            } else {
                if (i2 == 0) {
                    return j3;
                }
                j2 = this.mLoadedCount;
            }
            return j3 - j2;
        }

        @Override // android.os.BatteryStats.LongCounter
        public void logState(Printer printer, String str) {
            StringBuilder sbU = c.u(str, "mCount=");
            sbU.append(this.mCount);
            sbU.append(" mLoadedCount=");
            sbU.append(this.mLoadedCount);
            sbU.append(" mUnpluggedCount=");
            sbU.append(this.mUnpluggedCount);
            sbU.append(" mPluggedCount=");
            sbU.append(this.mPluggedCount);
            printer.println(sbU.toString());
        }

        @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStarted(long j2, long j3, long j4) {
            this.mUnpluggedCount = this.mPluggedCount;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStopped(long j2, long j3, long j4) {
            this.mPluggedCount = this.mCount;
        }

        public void readSummaryFromParcelLocked(Parcel parcel) {
            long j2 = parcel.readLong();
            this.mLoadedCount = j2;
            this.mCount = j2;
            this.mPluggedCount = j2;
            this.mUnpluggedCount = j2;
        }

        public void reset(boolean z2) {
            this.mCount = 0L;
            this.mUnpluggedCount = 0L;
            this.mPluggedCount = 0L;
            this.mLoadedCount = 0L;
            if (z2) {
                detach();
            }
        }

        public void writeSummaryFromParcelLocked(Parcel parcel) {
            parcel.writeLong(this.mCount);
        }

        public void writeToParcel(Parcel parcel) {
            parcel.writeLong(this.mCount);
            parcel.writeLong(this.mLoadedCount);
            parcel.writeLong(this.mUnpluggedCount);
        }

        public LongSamplingCounter(TimeBase timeBase) {
            this.mTimeBase = timeBase;
            timeBase.add(this);
        }
    }

    public static class SamplingTimer extends Timer {
        int mCurrentReportedCount;
        long mCurrentReportedTotalTime;
        boolean mTimeBaseRunning;
        boolean mTrackingReportedValues;
        int mUnpluggedReportedCount;
        long mUnpluggedReportedTotalTime;
        int mUpdateVersion;

        public SamplingTimer(Clocks clocks, TimeBase timeBase, Parcel parcel) {
            super(clocks, 0, timeBase, parcel);
            this.mCurrentReportedCount = parcel.readInt();
            this.mUnpluggedReportedCount = parcel.readInt();
            this.mCurrentReportedTotalTime = parcel.readLong();
            this.mUnpluggedReportedTotalTime = parcel.readLong();
            this.mTrackingReportedValues = parcel.readInt() == 1;
            this.mTimeBaseRunning = timeBase.isRunning();
        }

        public void add(long j2, int i2) {
            update(this.mCurrentReportedTotalTime + j2, this.mCurrentReportedCount + i2);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public int computeCurrentCountLocked() {
            return this.mCount + ((this.mTimeBaseRunning && this.mTrackingReportedValues) ? this.mCurrentReportedCount - this.mUnpluggedReportedCount : 0);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public long computeRunTimeLocked(long j2) {
            return this.mTotalTime + ((this.mTimeBaseRunning && this.mTrackingReportedValues) ? this.mCurrentReportedTotalTime - this.mUnpluggedReportedTotalTime : 0L);
        }

        public void endSample() {
            this.mTotalTime = computeRunTimeLocked(0L);
            this.mCount = computeCurrentCountLocked();
            this.mCurrentReportedTotalTime = 0L;
            this.mUnpluggedReportedTotalTime = 0L;
            this.mCurrentReportedCount = 0;
            this.mUnpluggedReportedCount = 0;
        }

        public int getUpdateVersion() {
            return this.mUpdateVersion;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer, android.os.BatteryStats.Timer
        public void logState(Printer printer, String str) {
            super.logState(printer, str);
            StringBuilder sbU = c.u(str, "mCurrentReportedCount=");
            sbU.append(this.mCurrentReportedCount);
            sbU.append(" mUnpluggedReportedCount=");
            sbU.append(this.mUnpluggedReportedCount);
            sbU.append(" mCurrentReportedTotalTime=");
            sbU.append(this.mCurrentReportedTotalTime);
            sbU.append(" mUnpluggedReportedTotalTime=");
            sbU.append(this.mUnpluggedReportedTotalTime);
            printer.println(sbU.toString());
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer, com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStarted(long j2, long j3, long j4) {
            super.onTimeStarted(j2, j3, j4);
            if (this.mTrackingReportedValues) {
                this.mUnpluggedReportedTotalTime = this.mCurrentReportedTotalTime;
                this.mUnpluggedReportedCount = this.mCurrentReportedCount;
            }
            this.mTimeBaseRunning = true;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer, com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStopped(long j2, long j3, long j4) {
            super.onTimeStopped(j2, j3, j4);
            this.mTimeBaseRunning = false;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public boolean reset(boolean z2) {
            super.reset(z2);
            this.mTrackingReportedValues = false;
            this.mUnpluggedReportedTotalTime = 0L;
            this.mUnpluggedReportedCount = 0;
            return true;
        }

        public void setUpdateVersion(int i2) {
            this.mUpdateVersion = i2;
        }

        public void update(long j2, int i2) {
            if (this.mTimeBaseRunning && !this.mTrackingReportedValues) {
                this.mUnpluggedReportedTotalTime = j2;
                this.mUnpluggedReportedCount = i2;
            }
            this.mTrackingReportedValues = true;
            if (j2 < this.mCurrentReportedTotalTime || i2 < this.mCurrentReportedCount) {
                endSample();
            }
            this.mCurrentReportedTotalTime = j2;
            this.mCurrentReportedCount = i2;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.Timer
        public void writeToParcel(Parcel parcel, long j2) {
            super.writeToParcel(parcel, j2);
            parcel.writeInt(this.mCurrentReportedCount);
            parcel.writeInt(this.mUnpluggedReportedCount);
            parcel.writeLong(this.mCurrentReportedTotalTime);
            parcel.writeLong(this.mUnpluggedReportedTotalTime);
            parcel.writeInt(this.mTrackingReportedValues ? 1 : 0);
        }

        public SamplingTimer(Clocks clocks, TimeBase timeBase) {
            super(clocks, 0, timeBase);
            this.mTrackingReportedValues = false;
            this.mTimeBaseRunning = timeBase.isRunning();
        }
    }

    public static class Counter extends BatteryStats.Counter implements TimeBaseObs {
        final AtomicInteger mCount;
        int mLoadedCount;
        int mPluggedCount;
        final TimeBase mTimeBase;
        int mUnpluggedCount;

        public Counter(TimeBase timeBase, Parcel parcel) {
            AtomicInteger atomicInteger = new AtomicInteger();
            this.mCount = atomicInteger;
            this.mTimeBase = timeBase;
            int i2 = parcel.readInt();
            this.mPluggedCount = i2;
            atomicInteger.set(i2);
            this.mLoadedCount = parcel.readInt();
            this.mUnpluggedCount = parcel.readInt();
            timeBase.add(this);
        }

        public static void writeCounterToParcel(Parcel parcel, Counter counter) {
            if (counter == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                counter.writeToParcel(parcel);
            }
        }

        public void addAtomic(int i2) {
            if (this.mTimeBase.isRunning()) {
                this.mCount.addAndGet(i2);
            }
        }

        public void detach() {
            this.mTimeBase.remove(this);
        }

        @Override // android.os.BatteryStats.Counter
        public int getCountLocked(int i2) {
            int i3;
            int i4 = this.mCount.get();
            if (i2 == 2) {
                i3 = this.mUnpluggedCount;
            } else {
                if (i2 == 0) {
                    return i4;
                }
                i3 = this.mLoadedCount;
            }
            return i4 - i3;
        }

        @Override // android.os.BatteryStats.Counter
        public void logState(Printer printer, String str) {
            StringBuilder sbU = c.u(str, "mCount=");
            sbU.append(this.mCount.get());
            sbU.append(" mLoadedCount=");
            sbU.append(this.mLoadedCount);
            sbU.append(" mUnpluggedCount=");
            sbU.append(this.mUnpluggedCount);
            sbU.append(" mPluggedCount=");
            sbU.append(this.mPluggedCount);
            printer.println(sbU.toString());
        }

        @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStarted(long j2, long j3, long j4) {
            this.mUnpluggedCount = this.mPluggedCount;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.TimeBaseObs
        public void onTimeStopped(long j2, long j3, long j4) {
            this.mPluggedCount = this.mCount.get();
        }

        public void readSummaryFromParcelLocked(Parcel parcel) {
            int i2 = parcel.readInt();
            this.mLoadedCount = i2;
            this.mCount.set(i2);
            int i3 = this.mLoadedCount;
            this.mPluggedCount = i3;
            this.mUnpluggedCount = i3;
        }

        public void reset(boolean z2) {
            this.mCount.set(0);
            this.mUnpluggedCount = 0;
            this.mPluggedCount = 0;
            this.mLoadedCount = 0;
            if (z2) {
                detach();
            }
        }

        public void stepAtomic() {
            if (this.mTimeBase.isRunning()) {
                this.mCount.incrementAndGet();
            }
        }

        public void writeSummaryFromParcelLocked(Parcel parcel) {
            parcel.writeInt(this.mCount.get());
        }

        public void writeToParcel(Parcel parcel) {
            parcel.writeInt(this.mCount.get());
            parcel.writeInt(this.mLoadedCount);
            parcel.writeInt(this.mUnpluggedCount);
        }

        public Counter(TimeBase timeBase) {
            this.mCount = new AtomicInteger();
            this.mTimeBase = timeBase;
            timeBase.add(this);
        }
    }

    public void addHistoryRecordLocked(long j2, long j3, byte b2, BatteryStats.HistoryItem historyItem) {
        BatteryStats.HistoryItem historyItem2 = this.mHistoryCache;
        if (historyItem2 != null) {
            this.mHistoryCache = historyItem2.next;
        } else {
            historyItem2 = new BatteryStats.HistoryItem();
        }
        historyItem2.setTo(this.mHistoryBaseTime + j2, b2, historyItem);
        addHistoryRecordLocked(historyItem2);
    }

    public static abstract class Timer extends BatteryStats.Timer implements TimeBaseObs {
        protected final Clocks mClocks;
        protected int mCount;
        protected int mLastCount;
        protected long mLastTime;
        protected int mLoadedCount;
        protected long mLoadedTime;
        protected final TimeBase mTimeBase;
        protected long mTimeBeforeMark;
        protected long mTotalTime;
        protected final int mType;
        protected int mUnpluggedCount;
        protected long mUnpluggedTime;

        public Timer(Clocks clocks, int i2, TimeBase timeBase, Parcel parcel) {
            this.mClocks = clocks;
            this.mType = i2;
            this.mTimeBase = timeBase;
            this.mCount = parcel.readInt();
            this.mLoadedCount = parcel.readInt();
            this.mLastCount = 0;
            this.mUnpluggedCount = parcel.readInt();
            this.mTotalTime = parcel.readLong();
            this.mLoadedTime = parcel.readLong();
            this.mLastTime = 0L;
            this.mUnpluggedTime = parcel.readLong();
            this.mTimeBeforeMark = parcel.readLong();
            timeBase.add(this);
        }

        public static void writeTimerToParcel(Parcel parcel, Timer timer, long j2) {
            if (timer == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                timer.writeToParcel(parcel, j2);
            }
        }

        public abstract int computeCurrentCountLocked();

        public abstract long computeRunTimeLocked(long j2);

        public void detach() {
            this.mTimeBase.remove(this);
        }

        @Override // android.os.BatteryStats.Timer
        public int getCountLocked(int i2) {
            int i3;
            int iComputeCurrentCountLocked = computeCurrentCountLocked();
            if (i2 == 2) {
                i3 = this.mUnpluggedCount;
            } else {
                if (i2 == 0) {
                    return iComputeCurrentCountLocked;
                }
                i3 = this.mLoadedCount;
            }
            return iComputeCurrentCountLocked - i3;
        }

        @Override // android.os.BatteryStats.Timer
        public long getTimeSinceMarkLocked(long j2) {
            return computeRunTimeLocked(this.mTimeBase.getRealtime(j2)) - this.mTimeBeforeMark;
        }

        @Override // android.os.BatteryStats.Timer
        public long getTotalTimeLocked(long j2, int i2) {
            long j3;
            long jComputeRunTimeLocked = computeRunTimeLocked(this.mTimeBase.getRealtime(j2));
            if (i2 == 2) {
                j3 = this.mUnpluggedTime;
            } else {
                if (i2 == 0) {
                    return jComputeRunTimeLocked;
                }
                j3 = this.mLoadedTime;
            }
            return jComputeRunTimeLocked - j3;
        }

        @Override // android.os.BatteryStats.Timer
        public void logState(Printer printer, String str) {
            StringBuilder sbU = c.u(str, "mCount=");
            sbU.append(this.mCount);
            sbU.append(" mLoadedCount=");
            sbU.append(this.mLoadedCount);
            sbU.append(" mLastCount=");
            sbU.append(this.mLastCount);
            sbU.append(" mUnpluggedCount=");
            sbU.append(this.mUnpluggedCount);
            printer.println(sbU.toString());
            printer.println(str + "mTotalTime=" + this.mTotalTime + " mLoadedTime=" + this.mLoadedTime);
            printer.println(str + "mLastTime=" + this.mLastTime + " mUnpluggedTime=" + this.mUnpluggedTime);
        }

        public void onTimeStarted(long j2, long j3, long j4) {
            this.mUnpluggedTime = computeRunTimeLocked(j4);
            this.mUnpluggedCount = computeCurrentCountLocked();
        }

        public void onTimeStopped(long j2, long j3, long j4) {
            this.mTotalTime = computeRunTimeLocked(j4);
            this.mCount = computeCurrentCountLocked();
        }

        public void readSummaryFromParcelLocked(Parcel parcel) {
            long j2 = parcel.readLong();
            this.mLoadedTime = j2;
            this.mTotalTime = j2;
            this.mLastTime = 0L;
            this.mUnpluggedTime = j2;
            int i2 = parcel.readInt();
            this.mLoadedCount = i2;
            this.mCount = i2;
            this.mLastCount = 0;
            this.mUnpluggedCount = i2;
            this.mTimeBeforeMark = this.mTotalTime;
        }

        public boolean reset(boolean z2) {
            this.mTimeBeforeMark = 0L;
            this.mLastTime = 0L;
            this.mLoadedTime = 0L;
            this.mTotalTime = 0L;
            this.mLastCount = 0;
            this.mLoadedCount = 0;
            this.mCount = 0;
            if (!z2) {
                return true;
            }
            detach();
            return true;
        }

        public void writeSummaryFromParcelLocked(Parcel parcel, long j2) {
            parcel.writeLong(computeRunTimeLocked(this.mTimeBase.getRealtime(j2)));
            parcel.writeInt(computeCurrentCountLocked());
        }

        public void writeToParcel(Parcel parcel, long j2) {
            parcel.writeInt(computeCurrentCountLocked());
            parcel.writeInt(this.mLoadedCount);
            parcel.writeInt(this.mUnpluggedCount);
            parcel.writeLong(computeRunTimeLocked(this.mTimeBase.getRealtime(j2)));
            parcel.writeLong(this.mLoadedTime);
            parcel.writeLong(this.mUnpluggedTime);
            parcel.writeLong(this.mTimeBeforeMark);
        }

        public Timer(Clocks clocks, int i2, TimeBase timeBase) {
            this.mClocks = clocks;
            this.mType = i2;
            this.mTimeBase = timeBase;
            timeBase.add(this);
        }
    }

    public void addHistoryRecordLocked(BatteryStats.HistoryItem historyItem) {
        this.mNumHistoryItems++;
        historyItem.next = null;
        BatteryStats.HistoryItem historyItem2 = this.mHistoryEnd;
        this.mHistoryLastEnd = historyItem2;
        if (historyItem2 != null) {
            historyItem2.next = historyItem;
            this.mHistoryEnd = historyItem;
        } else {
            this.mHistoryEnd = historyItem;
            this.mHistory = historyItem;
        }
    }

    private void addHistoryBufferLocked(long j2, long j3, byte b2, BatteryStats.HistoryItem historyItem) {
        if (!this.mIteratingHistory) {
            this.mHistoryBufferLastPos = this.mHistoryBuffer.dataPosition();
            this.mHistoryLastLastWritten.setTo(this.mHistoryLastWritten);
            this.mHistoryLastWritten.setTo(this.mHistoryBaseTime + j2, b2, historyItem);
            BatteryStats.HistoryItem historyItem2 = this.mHistoryLastWritten;
            historyItem2.states &= this.mActiveHistoryStates;
            historyItem2.states2 &= this.mActiveHistoryStates2;
            writeHistoryDelta(this.mHistoryBuffer, historyItem2, this.mHistoryLastLastWritten);
            this.mLastHistoryElapsedRealtime = j2;
            historyItem.wakelockTag = null;
            historyItem.wakeReasonTag = null;
            historyItem.eventCode = 0;
            historyItem.eventTag = null;
            return;
        }
        throw new IllegalStateException("Can't do this while iterating history!");
    }

    public BatteryStatsImpl(File file, Handler handler, PlatformIdleStateCallback platformIdleStateCallback, UserInfoProvider userInfoProvider) {
        this(new SystemClocks(), file, handler, platformIdleStateCallback, userInfoProvider);
    }

    private BatteryStatsImpl(Clocks clocks, File file, Handler handler, PlatformIdleStateCallback platformIdleStateCallback, UserInfoProvider userInfoProvider) {
        this.mKernelWakelockReader = new KernelWakelockReader();
        this.mTmpWakelockStats = new KernelWakelockStats();
        this.mKernelUidCpuTimeReader = new KernelUidCpuTimeReader();
        this.mKernelUidCpuFreqTimeReader = new KernelUidCpuFreqTimeReader();
        this.mKernelMemoryBandwidthStats = new KernelMemoryBandwidthStats();
        this.mKernelMemoryStats = new LongSparseArray<>();
        this.mTmpRpmStats = new RpmStats();
        this.mLastRpmStatsUpdateTimeMs = -1000L;
        this.mExternalSync = null;
        this.mUserInfoProvider = null;
        this.mIsolatedUids = new SparseIntArray();
        this.mUidStats = new SparseArray<>();
        this.mPartialTimers = new ArrayList<>();
        this.mFullTimers = new ArrayList<>();
        this.mWindowTimers = new ArrayList<>();
        this.mDrawTimers = new ArrayList<>();
        this.mSensorTimers = new SparseArray<>();
        this.mWifiRunningTimers = new ArrayList<>();
        this.mFullWifiLockTimers = new ArrayList<>();
        this.mWifiMulticastTimers = new ArrayList<>();
        this.mWifiScanTimers = new ArrayList<>();
        this.mWifiBatchedScanTimers = new SparseArray<>();
        this.mAudioTurnedOnTimers = new ArrayList<>();
        this.mVideoTurnedOnTimers = new ArrayList<>();
        this.mFlashlightTurnedOnTimers = new ArrayList<>();
        this.mCameraTurnedOnTimers = new ArrayList<>();
        this.mBluetoothScanOnTimers = new ArrayList<>();
        this.mLastPartialTimers = new ArrayList<>();
        TimeBase timeBase = new TimeBase();
        this.mOnBatteryTimeBase = timeBase;
        this.mOnBatteryScreenOffTimeBase = new TimeBase();
        this.mActiveEvents = new BatteryStats.HistoryEventTracker();
        this.mHaveBatteryLevel = false;
        this.mRecordingHistory = false;
        this.mHistoryBuffer = Parcel.obtain();
        this.mHistoryLastWritten = new BatteryStats.HistoryItem();
        this.mHistoryLastLastWritten = new BatteryStats.HistoryItem();
        this.mHistoryReadTmp = new BatteryStats.HistoryItem();
        this.mHistoryAddTmp = new BatteryStats.HistoryItem();
        this.mHistoryTagPool = new HashMap<>();
        this.mNextHistoryTagIdx = 0;
        this.mNumHistoryTagChars = 0;
        this.mHistoryBufferLastPos = -1;
        this.mHistoryOverflow = false;
        this.mActiveHistoryStates = -1;
        this.mActiveHistoryStates2 = -1;
        this.mLastHistoryElapsedRealtime = 0L;
        this.mTrackRunningHistoryElapsedRealtime = 0L;
        this.mTrackRunningHistoryUptime = 0L;
        this.mHistoryCur = new BatteryStats.HistoryItem();
        this.mLastHistoryStepDetails = null;
        this.mLastHistoryStepLevel = (byte) 0;
        this.mCurHistoryStepDetails = new BatteryStats.HistoryStepDetails();
        this.mReadHistoryStepDetails = new BatteryStats.HistoryStepDetails();
        this.mTmpHistoryStepDetails = new BatteryStats.HistoryStepDetails();
        this.mScreenState = 0;
        this.mScreenBrightnessBin = -1;
        this.mScreenBrightnessTimer = new StopwatchTimer[5];
        this.mPhoneSignalStrengthBin = -1;
        this.mPhoneSignalStrengthBinRaw = -1;
        this.mPhoneSignalStrengthsTimer = new StopwatchTimer[5];
        this.mPhoneDataConnectionType = -1;
        this.mPhoneDataConnectionsTimer = new StopwatchTimer[17];
        this.mNetworkByteActivityCounters = new LongSamplingCounter[10];
        this.mNetworkPacketActivityCounters = new LongSamplingCounter[10];
        this.mHasWifiReporting = false;
        this.mHasBluetoothReporting = false;
        this.mHasModemReporting = false;
        this.mWifiState = -1;
        this.mWifiStateTimer = new StopwatchTimer[8];
        this.mWifiSupplState = -1;
        this.mWifiSupplStateTimer = new StopwatchTimer[13];
        this.mWifiSignalStrengthBin = -1;
        this.mWifiSignalStrengthsTimer = new StopwatchTimer[5];
        this.mMobileRadioPowerState = 1;
        this.mWifiRadioPowerState = 1;
        this.mCharging = true;
        this.mInitStepMode = 0;
        this.mCurStepMode = 0;
        this.mModStepMode = 0;
        this.mDischargeStepTracker = new BatteryStats.LevelStepTracker(200);
        this.mDailyDischargeStepTracker = new BatteryStats.LevelStepTracker(400);
        this.mPowerControllerBatteryStatsHelper = new PowerControllerBatteryStatsHelper();
        this.mChargeStepTracker = new BatteryStats.LevelStepTracker(200);
        this.mDailyChargeStepTracker = new BatteryStats.LevelStepTracker(400);
        this.mDailyStartTime = 0L;
        this.mNextMinDailyDeadline = 0L;
        this.mNextMaxDailyDeadline = 0L;
        this.mDailyItems = new ArrayList<>();
        this.mLastWriteTime = 0L;
        this.mPhoneServiceState = -1;
        this.mPhoneServiceStateRaw = -1;
        this.mPhoneSimStateRaw = -1;
        this.mEstimatedBatteryCapacity = -1;
        this.mMinLearnedBatteryCapacity = -1;
        this.mMaxLearnedBatteryCapacity = -1;
        this.mRpmStats = new HashMap<>();
        this.mScreenOffRpmStats = new HashMap<>();
        this.mKernelWakelockStats = new HashMap<>();
        this.mLastWakeupReason = null;
        this.mLastWakeupUptimeMs = 0L;
        this.mWakeupReasonStats = new HashMap<>();
        this.mChangedStates = 0;
        this.mChangedStates2 = 0;
        this.mInitialAcquireWakeUid = -1;
        this.mWifiFullLockNesting = 0;
        this.mWifiScanNesting = 0;
        this.mWifiMulticastNesting = 0;
        this.mNetworkStatsFactory = new NetworkStatsFactory();
        this.mNetworkStatsPool = new Pools.SynchronizedPool(6);
        this.mWifiNetworkLock = new Object();
        this.mWifiIfaces = EmptyArray.STRING;
        this.mLastWifiNetworkStats = new NetworkStats(0L, -1);
        this.mModemNetworkLock = new Object();
        this.mModemIfaces = EmptyArray.STRING;
        this.mLastModemNetworkStats = new NetworkStats(0L, -1);
        this.mPendingWrite = null;
        this.mWriteLock = new ReentrantLock();
        init(clocks);
        if (file != null) {
            this.mFile = new JournaledFile(new File(file, "batterystats.bin"), new File(file, "batterystats.bin.tmp"));
        } else {
            this.mFile = null;
        }
        this.mCheckinFile = new AtomicFile(new File(file, "batterystats-checkin.bin"));
        this.mDailyFile = new AtomicFile(new File(file, "batterystats-daily.xml"));
        this.mHandler = new MyHandler(handler.getLooper());
        this.mStartCount++;
        this.mScreenOnTimer = new StopwatchTimer(this.mClocks, null, -1, null, timeBase);
        this.mScreenDozeTimer = new StopwatchTimer(this.mClocks, null, -1, null, timeBase);
        for (int i2 = 0; i2 < 5; i2++) {
            this.mScreenBrightnessTimer[i2] = new StopwatchTimer(this.mClocks, null, (-100) - i2, null, this.mOnBatteryTimeBase);
        }
        this.mInteractiveTimer = new StopwatchTimer(this.mClocks, null, -10, null, this.mOnBatteryTimeBase);
        this.mPowerSaveModeEnabledTimer = new StopwatchTimer(this.mClocks, null, -2, null, this.mOnBatteryTimeBase);
        this.mDeviceIdleModeLightTimer = new StopwatchTimer(this.mClocks, null, -11, null, this.mOnBatteryTimeBase);
        this.mDeviceIdleModeFullTimer = new StopwatchTimer(this.mClocks, null, -14, null, this.mOnBatteryTimeBase);
        this.mDeviceLightIdlingTimer = new StopwatchTimer(this.mClocks, null, -15, null, this.mOnBatteryTimeBase);
        this.mDeviceIdlingTimer = new StopwatchTimer(this.mClocks, null, -12, null, this.mOnBatteryTimeBase);
        this.mPhoneOnTimer = new StopwatchTimer(this.mClocks, null, -3, null, this.mOnBatteryTimeBase);
        for (int i3 = 0; i3 < 5; i3++) {
            this.mPhoneSignalStrengthsTimer[i3] = new StopwatchTimer(this.mClocks, null, (-200) - i3, null, this.mOnBatteryTimeBase);
        }
        this.mPhoneSignalScanningTimer = new StopwatchTimer(this.mClocks, null, -199, null, this.mOnBatteryTimeBase);
        for (int i4 = 0; i4 < 17; i4++) {
            this.mPhoneDataConnectionsTimer[i4] = new StopwatchTimer(this.mClocks, null, (-300) - i4, null, this.mOnBatteryTimeBase);
        }
        for (int i5 = 0; i5 < 10; i5++) {
            this.mNetworkByteActivityCounters[i5] = new LongSamplingCounter(this.mOnBatteryTimeBase);
            this.mNetworkPacketActivityCounters[i5] = new LongSamplingCounter(this.mOnBatteryTimeBase);
        }
        this.mWifiActivity = new ControllerActivityCounterImpl(this.mOnBatteryTimeBase, 1);
        this.mBluetoothActivity = new ControllerActivityCounterImpl(this.mOnBatteryTimeBase, 1);
        this.mModemActivity = new ControllerActivityCounterImpl(this.mOnBatteryTimeBase, 5);
        this.mMobileRadioActiveTimer = new StopwatchTimer(this.mClocks, null, -400, null, this.mOnBatteryTimeBase);
        this.mMobileRadioActivePerAppTimer = new StopwatchTimer(this.mClocks, null, -401, null, this.mOnBatteryTimeBase);
        this.mMobileRadioActiveAdjustedTime = new LongSamplingCounter(this.mOnBatteryTimeBase);
        this.mMobileRadioActiveUnknownTime = new LongSamplingCounter(this.mOnBatteryTimeBase);
        this.mMobileRadioActiveUnknownCount = new LongSamplingCounter(this.mOnBatteryTimeBase);
        this.mWifiOnTimer = new StopwatchTimer(this.mClocks, null, -4, null, this.mOnBatteryTimeBase);
        this.mGlobalWifiRunningTimer = new StopwatchTimer(this.mClocks, null, -5, null, this.mOnBatteryTimeBase);
        for (int i6 = 0; i6 < 8; i6++) {
            this.mWifiStateTimer[i6] = new StopwatchTimer(this.mClocks, null, (-600) - i6, null, this.mOnBatteryTimeBase);
        }
        for (int i7 = 0; i7 < 13; i7++) {
            this.mWifiSupplStateTimer[i7] = new StopwatchTimer(this.mClocks, null, (-700) - i7, null, this.mOnBatteryTimeBase);
        }
        for (int i8 = 0; i8 < 5; i8++) {
            this.mWifiSignalStrengthsTimer[i8] = new StopwatchTimer(this.mClocks, null, (-800) - i8, null, this.mOnBatteryTimeBase);
        }
        this.mAudioOnTimer = new StopwatchTimer(this.mClocks, null, -7, null, this.mOnBatteryTimeBase);
        this.mVideoOnTimer = new StopwatchTimer(this.mClocks, null, -8, null, this.mOnBatteryTimeBase);
        this.mFlashlightOnTimer = new StopwatchTimer(this.mClocks, null, -9, null, this.mOnBatteryTimeBase);
        this.mCameraOnTimer = new StopwatchTimer(this.mClocks, null, -13, null, this.mOnBatteryTimeBase);
        this.mBluetoothScanTimer = new StopwatchTimer(this.mClocks, null, -14, null, this.mOnBatteryTimeBase);
        this.mDischargeScreenOffCounter = new LongSamplingCounter(this.mOnBatteryScreenOffTimeBase);
        this.mDischargeScreenDozeCounter = new LongSamplingCounter(this.mOnBatteryTimeBase);
        this.mDischargeCounter = new LongSamplingCounter(this.mOnBatteryTimeBase);
        this.mOnBatteryInternal = false;
        this.mOnBattery = false;
        initTimes(this.mClocks.uptimeMillis() * 1000, this.mClocks.elapsedRealtime() * 1000);
        String str = Build.ID;
        this.mEndPlatformVersion = str;
        this.mStartPlatformVersion = str;
        this.mDischargeStartLevel = 0;
        this.mDischargeUnplugLevel = 0;
        this.mDischargePlugLevel = -1;
        this.mDischargeCurrentLevel = 0;
        this.mCurrentBatteryLevel = 0;
        initDischarge();
        clearHistoryLocked();
        updateDailyDeadlineLocked();
        this.mPlatformIdleStateCallback = platformIdleStateCallback;
        this.mUserInfoProvider = userInfoProvider;
    }

    public BatteryStatsImpl(Parcel parcel) {
        this(new SystemClocks(), parcel);
    }

    public BatteryStatsImpl(Clocks clocks, Parcel parcel) {
        this.mKernelWakelockReader = new KernelWakelockReader();
        this.mTmpWakelockStats = new KernelWakelockStats();
        this.mKernelUidCpuTimeReader = new KernelUidCpuTimeReader();
        this.mKernelUidCpuFreqTimeReader = new KernelUidCpuFreqTimeReader();
        this.mKernelMemoryBandwidthStats = new KernelMemoryBandwidthStats();
        this.mKernelMemoryStats = new LongSparseArray<>();
        this.mTmpRpmStats = new RpmStats();
        this.mLastRpmStatsUpdateTimeMs = -1000L;
        this.mExternalSync = null;
        this.mUserInfoProvider = null;
        this.mIsolatedUids = new SparseIntArray();
        this.mUidStats = new SparseArray<>();
        this.mPartialTimers = new ArrayList<>();
        this.mFullTimers = new ArrayList<>();
        this.mWindowTimers = new ArrayList<>();
        this.mDrawTimers = new ArrayList<>();
        this.mSensorTimers = new SparseArray<>();
        this.mWifiRunningTimers = new ArrayList<>();
        this.mFullWifiLockTimers = new ArrayList<>();
        this.mWifiMulticastTimers = new ArrayList<>();
        this.mWifiScanTimers = new ArrayList<>();
        this.mWifiBatchedScanTimers = new SparseArray<>();
        this.mAudioTurnedOnTimers = new ArrayList<>();
        this.mVideoTurnedOnTimers = new ArrayList<>();
        this.mFlashlightTurnedOnTimers = new ArrayList<>();
        this.mCameraTurnedOnTimers = new ArrayList<>();
        this.mBluetoothScanOnTimers = new ArrayList<>();
        this.mLastPartialTimers = new ArrayList<>();
        this.mOnBatteryTimeBase = new TimeBase();
        this.mOnBatteryScreenOffTimeBase = new TimeBase();
        this.mActiveEvents = new BatteryStats.HistoryEventTracker();
        this.mHaveBatteryLevel = false;
        this.mRecordingHistory = false;
        this.mHistoryBuffer = Parcel.obtain();
        this.mHistoryLastWritten = new BatteryStats.HistoryItem();
        this.mHistoryLastLastWritten = new BatteryStats.HistoryItem();
        this.mHistoryReadTmp = new BatteryStats.HistoryItem();
        this.mHistoryAddTmp = new BatteryStats.HistoryItem();
        this.mHistoryTagPool = new HashMap<>();
        this.mNextHistoryTagIdx = 0;
        this.mNumHistoryTagChars = 0;
        this.mHistoryBufferLastPos = -1;
        this.mHistoryOverflow = false;
        this.mActiveHistoryStates = -1;
        this.mActiveHistoryStates2 = -1;
        this.mLastHistoryElapsedRealtime = 0L;
        this.mTrackRunningHistoryElapsedRealtime = 0L;
        this.mTrackRunningHistoryUptime = 0L;
        this.mHistoryCur = new BatteryStats.HistoryItem();
        this.mLastHistoryStepDetails = null;
        this.mLastHistoryStepLevel = (byte) 0;
        this.mCurHistoryStepDetails = new BatteryStats.HistoryStepDetails();
        this.mReadHistoryStepDetails = new BatteryStats.HistoryStepDetails();
        this.mTmpHistoryStepDetails = new BatteryStats.HistoryStepDetails();
        this.mScreenState = 0;
        this.mScreenBrightnessBin = -1;
        this.mScreenBrightnessTimer = new StopwatchTimer[5];
        this.mPhoneSignalStrengthBin = -1;
        this.mPhoneSignalStrengthBinRaw = -1;
        this.mPhoneSignalStrengthsTimer = new StopwatchTimer[5];
        this.mPhoneDataConnectionType = -1;
        this.mPhoneDataConnectionsTimer = new StopwatchTimer[17];
        this.mNetworkByteActivityCounters = new LongSamplingCounter[10];
        this.mNetworkPacketActivityCounters = new LongSamplingCounter[10];
        this.mHasWifiReporting = false;
        this.mHasBluetoothReporting = false;
        this.mHasModemReporting = false;
        this.mWifiState = -1;
        this.mWifiStateTimer = new StopwatchTimer[8];
        this.mWifiSupplState = -1;
        this.mWifiSupplStateTimer = new StopwatchTimer[13];
        this.mWifiSignalStrengthBin = -1;
        this.mWifiSignalStrengthsTimer = new StopwatchTimer[5];
        this.mMobileRadioPowerState = 1;
        this.mWifiRadioPowerState = 1;
        this.mCharging = true;
        this.mInitStepMode = 0;
        this.mCurStepMode = 0;
        this.mModStepMode = 0;
        this.mDischargeStepTracker = new BatteryStats.LevelStepTracker(200);
        this.mDailyDischargeStepTracker = new BatteryStats.LevelStepTracker(400);
        this.mPowerControllerBatteryStatsHelper = new PowerControllerBatteryStatsHelper();
        this.mChargeStepTracker = new BatteryStats.LevelStepTracker(200);
        this.mDailyChargeStepTracker = new BatteryStats.LevelStepTracker(400);
        this.mDailyStartTime = 0L;
        this.mNextMinDailyDeadline = 0L;
        this.mNextMaxDailyDeadline = 0L;
        this.mDailyItems = new ArrayList<>();
        this.mLastWriteTime = 0L;
        this.mPhoneServiceState = -1;
        this.mPhoneServiceStateRaw = -1;
        this.mPhoneSimStateRaw = -1;
        this.mEstimatedBatteryCapacity = -1;
        this.mMinLearnedBatteryCapacity = -1;
        this.mMaxLearnedBatteryCapacity = -1;
        this.mRpmStats = new HashMap<>();
        this.mScreenOffRpmStats = new HashMap<>();
        this.mKernelWakelockStats = new HashMap<>();
        this.mLastWakeupReason = null;
        this.mLastWakeupUptimeMs = 0L;
        this.mWakeupReasonStats = new HashMap<>();
        this.mChangedStates = 0;
        this.mChangedStates2 = 0;
        this.mInitialAcquireWakeUid = -1;
        this.mWifiFullLockNesting = 0;
        this.mWifiScanNesting = 0;
        this.mWifiMulticastNesting = 0;
        this.mNetworkStatsFactory = new NetworkStatsFactory();
        this.mNetworkStatsPool = new Pools.SynchronizedPool(6);
        this.mWifiNetworkLock = new Object();
        this.mWifiIfaces = EmptyArray.STRING;
        this.mLastWifiNetworkStats = new NetworkStats(0L, -1);
        this.mModemNetworkLock = new Object();
        this.mModemIfaces = EmptyArray.STRING;
        this.mLastModemNetworkStats = new NetworkStats(0L, -1);
        this.mPendingWrite = null;
        this.mWriteLock = new ReentrantLock();
        init(clocks);
        this.mFile = null;
        this.mCheckinFile = null;
        this.mDailyFile = null;
        this.mHandler = null;
        this.mExternalSync = null;
        clearHistoryLocked();
        readFromParcel(parcel);
        this.mPlatformIdleStateCallback = null;
    }
}
