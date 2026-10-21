package android.telephony;

import android.app.ActivityThread;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteFullException;
import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.provider.BaseColumns;
import android.provider.BlockedNumberContract;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.provider.SettingsEx;
import android.telecom.Call;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.telephony.IPhoneSubInfoEx;
import com.android.internal.telephony.ITelephony;
import com.android.internal.telephony.ITelephonyEx;
import com.android.internal.telephony.IccCardConstantsEx;
import com.android.internal.telephony.TelephonyProperties;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class TelephonyManagerEx {
    private static final String BLACKLIST_ACTION_NAME = "com.sprd.blacklist.action";
    private static final String BLACKLIST_CALL_RECORD_URI = "content://com.sprd.providers.block/block_recorded";
    private static final String BLACKLIST_PACKAGE_NAME = "com.sprd.firewall";
    private static final String BLACKLIST_SMS_RECORD_URI = "content://com.sprd.providers.block/sms_block_recorded";
    private static final int CALL_SELECT = 2;
    private static final int CALL_SHIFT = 1;
    private static final String LTE_INDICATOR = "L";
    private static final String RADIO_MODEM_CAPABILITY = "persist.radio.modem.config";
    private static final String SIM_ENABLED_PROPERTY = "persist.radio.sim_enabled";
    public static final int SMS_SELECT = 1;
    public static final int SMS_SHIFT = 0;
    private static final String TAG = "TelephonyManagerEx";
    private final Context mContext;
    private final int mSubId;
    private static final String BLACKLIST_NUMBER_URI = "content://com.android.blockednumber/blocked";
    public static final Uri BlOCK_NUMBER_CONTENT_URI = Uri.parse(BLACKLIST_NUMBER_URI);

    public static final class CallBlockRecorder implements BaseColumns {
        public static final String BLOCK_DATE = "block_date";
        public static final String CALL_TYPE = "call_type";
        public static final Uri CONTENT_URI = Uri.parse(TelephonyManagerEx.BLACKLIST_CALL_RECORD_URI);
        public static final String NAME = "name";
        public static final String NUMBER_VALUE = "number_value";

        private CallBlockRecorder() {
        }
    }

    public static final class SmsBlockRecorder implements BaseColumns {
        public static final String BLOCK_DATE = "block_date";
        public static final String BLOCK_SMS_CONTENT = "sms_content";
        public static final Uri CONTENT_URI = Uri.parse(TelephonyManagerEx.BLACKLIST_SMS_RECORD_URI);
        public static final String NAME = "name";
        public static final String NUMBER_VALUE = "number_value";

        private SmsBlockRecorder() {
        }
    }

    public TelephonyManagerEx(Context context) {
        this(context, Integer.MAX_VALUE);
    }

    public static boolean checkSimlockLocked(int i2) {
        return getSimStateFromProperty(i2).isSimlockLocked();
    }

    public static TelephonyManagerEx from(Context context) {
        return (TelephonyManagerEx) context.getSystemService("phone_ex");
    }

    private static int getDefaultSubscription() {
        return SubscriptionManager.getDefaultSubscriptionId();
    }

    private ITelephony getITelephony() {
        return ITelephony.Stub.asInterface(ServiceManager.getService("phone"));
    }

    private ITelephonyEx getITelephonyEx() {
        return ITelephonyEx.Stub.asInterface(ServiceManager.getService("phone_ex"));
    }

    private String getOpPackageName() {
        Context context = this.mContext;
        return context != null ? context.getOpPackageName() : ActivityThread.currentOpPackageName();
    }

    public static int getSimStateEx(int i2) {
        return getSimStateFromProperty(i2).ordinal();
    }

    private static IccCardConstantsEx.State getSimStateFromProperty(int i2) {
        IccCardConstantsEx.State state = IccCardConstantsEx.State.UNKNOWN;
        String telephonyProperty = TelephonyManager.getTelephonyProperty(i2, TelephonyProperties.PROPERTY_SIM_STATE, "");
        if (telephonyProperty == null || telephonyProperty.length() <= 0) {
            return state;
        }
        try {
            return IccCardConstantsEx.State.valueOf(telephonyProperty);
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            return state;
        }
    }

    private int getSubId() {
        int i2 = this.mSubId;
        return i2 == Integer.MAX_VALUE ? getDefaultSubscription() : i2;
    }

    private IPhoneSubInfoEx getSubscriberInfo() {
        return IPhoneSubInfoEx.Stub.asInterface(ServiceManager.getService("iphonesubinfoEx"));
    }

    public static boolean isBatteryLow() {
        return LowBatteryCallUtils.getInstance().isBatteryLow();
    }

    public static boolean isDeviceSupportLte() {
        String str = SystemProperties.get(RADIO_MODEM_CAPABILITY, "");
        if (str.isEmpty() || !str.toUpperCase().contains(LTE_INDICATOR)) {
            return false;
        }
        Log.d(TAG, "isDeviceSupportLte TRUE");
        return true;
    }

    public static void showLowBatteryChangeToVideoDialog(Call call) {
        LowBatteryCallUtils.getInstance().showLowBatteryChangeToVideoDialog(call);
    }

    public static void showLowBatteryDialDialog(Context context, Intent intent, boolean z2) {
        LowBatteryCallUtils.getInstance().showLowBatteryDialDialog(context, intent, z2);
    }

    public static void showLowBatteryInCallDialog(Context context, Call call) {
        LowBatteryCallUtils.getInstance().showLowBatteryInCallDialog(context, call);
    }

    public boolean checkIsBlackNumber(Context context, String str) {
        Log.d(TAG, "checkIsBlackCallNumber");
        Cursor cursorQuery = context.getContentResolver().query(BlOCK_NUMBER_CONTENT_URI, new String[]{BlockedNumberContract.BlockedNumbers.COLUMN_ORIGINAL_NUMBER, BlockedNumberContract.BlockedNumbers.BLOCK_TYPE}, null, null, null);
        if (cursorQuery != null) {
            try {
                if (cursorQuery.moveToFirst()) {
                    do {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndex(BlockedNumberContract.BlockedNumbers.COLUMN_ORIGINAL_NUMBER));
                        cursorQuery.getInt(cursorQuery.getColumnIndex(BlockedNumberContract.BlockedNumbers.BLOCK_TYPE));
                        if (PhoneNumberUtils.compare(str.trim(), string.trim())) {
                            cursorQuery.close();
                            return true;
                        }
                    } while (cursorQuery.moveToNext());
                }
            } catch (Exception unused) {
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        }
        if (cursorQuery == null) {
            Log.i(TAG, "black number cursor == null");
            return false;
        }
        cursorQuery.close();
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0050 A[Catch: all -> 0x004e, TRY_LEAVE, TryCatch #0 {all -> 0x004e, blocks: (B:7:0x0022, B:9:0x0028, B:15:0x0047, B:20:0x0050), top: B:27:0x0022 }] */
    public boolean checkIsBlockCallNumber(Context context, String str) {
        Log.d(TAG, "checkIsBlackCallNumber");
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            return false;
        }
        Cursor cursorQuery = contentResolver.query(BlockedNumberContract.BlockedNumbers.CONTENT_URI, new String[]{BlockedNumberContract.BlockedNumbers.BLOCK_TYPE, BlockedNumberContract.BlockedNumbers.COLUMN_ORIGINAL_NUMBER}, null, null, null);
        if (cursorQuery != null) {
            try {
                if (cursorQuery.moveToFirst()) {
                    do {
                        int i2 = cursorQuery.getInt(cursorQuery.getColumnIndex(BlockedNumberContract.BlockedNumbers.BLOCK_TYPE));
                        if (PhoneNumberUtils.compare(str, cursorQuery.getString(cursorQuery.getColumnIndex(BlockedNumberContract.BlockedNumbers.COLUMN_ORIGINAL_NUMBER))) && (i2 & 2) == 2) {
                            cursorQuery.close();
                            return true;
                        }
                    } while (cursorQuery.moveToNext());
                } else {
                    Log.e(TAG, "Query black list cursor is null.");
                }
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        } else {
            Log.e(TAG, "Query black list cursor is null.");
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004f A[Catch: all -> 0x004d, TRY_LEAVE, TryCatch #0 {all -> 0x004d, blocks: (B:7:0x0022, B:9:0x0028, B:15:0x0046, B:20:0x004f), top: B:27:0x0022 }] */
    public boolean checkIsBlockSMSNumber(Context context, String str) {
        Log.d(TAG, "checkIsBlockSMSNumber");
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            return false;
        }
        Cursor cursorQuery = contentResolver.query(BlockedNumberContract.BlockedNumbers.CONTENT_URI, new String[]{BlockedNumberContract.BlockedNumbers.BLOCK_TYPE, BlockedNumberContract.BlockedNumbers.COLUMN_ORIGINAL_NUMBER}, null, null, null);
        if (cursorQuery != null) {
            try {
                if (cursorQuery.moveToFirst()) {
                    do {
                        int i2 = cursorQuery.getInt(cursorQuery.getColumnIndex(BlockedNumberContract.BlockedNumbers.BLOCK_TYPE));
                        if (PhoneNumberUtilsEx.compare(str, cursorQuery.getString(cursorQuery.getColumnIndex(BlockedNumberContract.BlockedNumbers.COLUMN_ORIGINAL_NUMBER))) && (i2 & 1) == 1) {
                            cursorQuery.close();
                            return true;
                        }
                    } while (cursorQuery.moveToNext());
                } else {
                    Log.e(TAG, "Query black list cursor is null.");
                }
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        } else {
            Log.e(TAG, "Query black list cursor is null.");
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return false;
    }

    public TelephonyManagerEx createForSubscriptionId(int i2) {
        return new TelephonyManagerEx(this.mContext, i2);
    }

    public Intent createManageBlockedNumbersIntent() {
        return new Intent(BLACKLIST_ACTION_NAME);
    }

    public CellLocation getCellLocationForPhone(int i2) {
        try {
            Bundle cellLocationForPhone = getITelephonyEx().getCellLocationForPhone(i2);
            if (cellLocationForPhone.isEmpty()) {
                return null;
            }
            CellLocation cellLocationNewFromBundle = CellLocation.newFromBundle(cellLocationForPhone);
            if (cellLocationNewFromBundle.isEmpty()) {
                return null;
            }
            return cellLocationNewFromBundle;
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public boolean getDataEnabledDuringVolteCall() {
        Context context = this.mContext;
        return context != null && Settings.Global.getInt(context.getContentResolver(), SettingsEx.GlobalEx.DATA_ENABLED_DURING_VOLTE_CALLS, 0) == 1;
    }

    public boolean getIccFdnEnabled(int i2) {
        try {
            return getITelephonyEx().getIccFdnEnabledForSubscriber(i2);
        } catch (RemoteException | NullPointerException unused) {
            return false;
        }
    }

    public int getIntFromSharedPreference(String str, String str2) {
        try {
            return getITelephonyEx().getIntFromSharedPreference(str, str2);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException getIntFromSharedPreference", e2);
            return -1;
        } catch (NullPointerException e3) {
            Log.e(TAG, "NullPointerException getIntFromSharedPreference", e3);
            return -1;
        }
    }

    public String getIsimDomain(int i2) {
        try {
            IPhoneSubInfoEx subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getIsimDomainForSubscriber(i2);
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getIsimImpi(int i2) {
        try {
            IPhoneSubInfoEx subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getIsimImpiForSubscriber(i2);
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String[] getIsimImpu(int i2) {
        try {
            IPhoneSubInfoEx subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getIsimImpuForSubscriber(i2);
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getIsimIst(int i2) {
        try {
            IPhoneSubInfoEx subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getIsimIstForSubscriber(i2);
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String[] getIsimPcscf(int i2) {
        try {
            IPhoneSubInfoEx subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getIsimPcscfForSubscriber(i2);
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public boolean getLTECapabilityForPhone(int i2) {
        try {
            ITelephonyEx iTelephonyEx = getITelephonyEx();
            if (iTelephonyEx != null) {
                return iTelephonyEx.getLTECapabilityForPhone(i2);
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException calling getLTECapabilityForPhone", e2);
            return false;
        } catch (NullPointerException e3) {
            Log.e(TAG, "NullPointerException  calling getLTECapabilityForPhone", e3);
            return false;
        }
    }

    public boolean getLTECapabilityForSubId(int i2) {
        return getLTECapabilityForPhone(SubscriptionManager.getPhoneId(i2));
    }

    public String getOriginalServiceProviderName(int i2) {
        try {
            return getITelephonyEx().getOriginalServiceProviderName(i2);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException getOriginalServiceProviderName", e2);
            return null;
        } catch (NullPointerException e3) {
            Log.e(TAG, "NullPointerException getOriginalServiceProviderName", e3);
            return null;
        }
    }

    public String getPnnHomeName(int i2) {
        try {
            return getITelephonyEx().getPnnHomeName(i2);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException calling getPnnHomeName", e2);
            return null;
        } catch (NullPointerException e3) {
            Log.e(TAG, "NullPointerException calling getPnnHomeName", e3);
            return null;
        }
    }

    public String getSmsc() {
        return getSmscForSubscriber(SubscriptionManager.getDefaultSmsSubscriptionId());
    }

    public String getSmscForSubscriber(int i2) {
        try {
            ITelephonyEx iTelephonyEx = getITelephonyEx();
            if (iTelephonyEx != null) {
                return iTelephonyEx.getSmscForSubscriber(i2, getOpPackageName());
            }
            return null;
        } catch (RemoteException e2) {
            Rlog.e(TAG, "getSmscForSubscriber RemoteException", e2);
            return null;
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "getSmscForSubscriber NullPointerException", e3);
            return null;
        }
    }

    public String getStringFromSharedPreference(String str, String str2) {
        try {
            return getITelephonyEx().getStringFromSharedPreference(str, str2);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException getStringFromSharedPreference", e2);
            return "";
        } catch (NullPointerException e3) {
            Log.e(TAG, "NullPointerException getStringFromSharedPreference", e3);
            return "";
        }
    }

    public boolean isCallFireWallInstalled() {
        try {
            Context context = this.mContext;
            if (context == null) {
                return false;
            }
            context.getPackageManager().getPackageInfo(BLACKLIST_PACKAGE_NAME, 1);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public boolean isRadioOn(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.isRadioOnForSubscriber(i2, getOpPackageName());
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#isRadioOn", e2);
            return false;
        }
    }

    public boolean isRedundantWapPushMessage(Context context, String str, String str2) {
        ContentResolver contentResolver = context.getContentResolver();
        boolean z2 = false;
        if (contentResolver != null) {
            Cursor cursorQuery = contentResolver.query(SmsBlockRecorder.CONTENT_URI, new String[]{"number_value", SmsBlockRecorder.BLOCK_SMS_CONTENT}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        do {
                            if (PhoneNumberUtils.compare(str, cursorQuery.getString(cursorQuery.getColumnIndex("number_value"))) && TextUtils.equals(cursorQuery.getString(cursorQuery.getColumnIndex(SmsBlockRecorder.BLOCK_SMS_CONTENT)), str2)) {
                                Log.d(TAG, "found redundant wap push record.");
                                z2 = true;
                                break;
                            }
                        } while (cursorQuery.moveToNext());
                    }
                } catch (Throwable th) {
                    cursorQuery.close();
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
        return z2;
    }

    public boolean isRingtongUriAvailable(Uri uri) {
        try {
            return getITelephonyEx().isRingtongUriAvailable(uri);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException calling getRingtoneUri", e2);
            return false;
        } catch (IllegalStateException e3) {
            Log.e(TAG, "IllegalStateException  calling getRingtoneUri", e3);
            return false;
        } catch (NullPointerException e4) {
            Log.e(TAG, "NullPointerException  calling getRingtoneUri", e4);
            return false;
        }
    }

    public boolean isSimEnabled(int i2) {
        return !WifiEnterpriseConfig.ENGINE_DISABLE.equals(TelephonyManager.getTelephonyProperty(i2, SIM_ENABLED_PROPERTY, WifiEnterpriseConfig.ENGINE_ENABLE));
    }

    public boolean isUsimCard(int i2) {
        try {
            return getITelephonyEx().isUsimCard(i2);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException calling isUsimCard", e2);
            return false;
        } catch (NullPointerException e3) {
            Log.e(TAG, "NullPointerException  calling isUsimCard", e3);
            return false;
        }
    }

    public boolean putToBlockList(Context context, String str, int i2, String str2) {
        Uri uriInsert;
        ContentResolver contentResolver = context.getContentResolver();
        String strNormalizeNumber = PhoneNumberUtils.normalizeNumber(str);
        ContentValues contentValues = new ContentValues();
        try {
            contentValues.put(BlockedNumberContract.BlockedNumbers.COLUMN_ORIGINAL_NUMBER, str);
            contentValues.put(BlockedNumberContract.BlockedNumbers.MIN_MATCH, PhoneNumberUtils.toCallerIDMinMatch(strNormalizeNumber));
            contentValues.put(BlockedNumberContract.BlockedNumbers.BLOCK_TYPE, Integer.valueOf(i2));
            contentValues.put("name", str2);
        } catch (Exception unused) {
            Log.e(TAG, "black number putToBlockList:exception");
        }
        try {
            uriInsert = contentResolver.insert(BlOCK_NUMBER_CONTENT_URI, contentValues);
        } catch (Exception unused2) {
            Log.e(TAG, "black number putToBlockList: provider == null");
            uriInsert = null;
        }
        return uriInsert != null;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004d  */
    public void putToBlockListCall(Context context, String str) {
        int columnIndex;
        String string;
        if (!isCallFireWallInstalled()) {
            Log.e(TAG, "sprd callfirewall is not installed, no call block list");
            return;
        }
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            return;
        }
        long time = new Date().getTime();
        Cursor cursorQuery = contentResolver.query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(str)), null, null, null, null);
        if (cursorQuery != null) {
            try {
                if (!cursorQuery.moveToFirst() || (columnIndex = cursorQuery.getColumnIndex("display_name")) == -1) {
                    string = "";
                } else {
                    string = cursorQuery.getString(columnIndex);
                }
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        } else {
            string = "";
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("number_value", str);
            contentValues.put("block_date", Long.valueOf(time));
            contentValues.put("name", string);
            contentResolver.insert(CallBlockRecorder.CONTENT_URI, contentValues);
        } catch (SQLiteDiskIOException e2) {
            e2.printStackTrace();
        } catch (SQLiteFullException e3) {
            e3.printStackTrace();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public Uri putToSmsBlackList(Context context, String str, String str2, long j2) {
        if (!isCallFireWallInstalled()) {
            Log.e(TAG, "sprd callfirewall is not installed, no sms block list");
            return null;
        }
        ContentResolver contentResolver = context.getContentResolver();
        ContentValues contentValues = new ContentValues();
        contentValues.put("number_value", str);
        contentValues.put(SmsBlockRecorder.BLOCK_SMS_CONTENT, str2);
        contentValues.put("block_date", Long.valueOf(j2));
        return contentResolver.insert(SmsBlockRecorder.CONTENT_URI, contentValues);
    }

    public void setDataEnabledDuringVolteCall(boolean z2) {
        Context context = this.mContext;
        if (context != null) {
            Settings.Global.putInt(context.getContentResolver(), SettingsEx.GlobalEx.DATA_ENABLED_DURING_VOLTE_CALLS, z2 ? 1 : 0);
        }
    }

    public boolean setLine1NumberForDisplayForSubscriberEx(int i2, String str, String str2) {
        try {
            return getITelephonyEx().setLine1NumberForDisplayForSubscriberEx(i2, str, str2);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException calling ITelephony#setLine1NumberForDisplayForSubscriberEx", e2);
            return false;
        } catch (NullPointerException e3) {
            Log.e(TAG, "NullPointerException calling ITelephony#setLine1NumberForDisplayForSubscriberEx", e3);
            return false;
        }
    }

    public void setSimEnabled(int i2, boolean z2) {
        TelephonyManager.setTelephonyProperty(i2, SIM_ENABLED_PROPERTY, z2 ? WifiEnterpriseConfig.ENGINE_ENABLE : WifiEnterpriseConfig.ENGINE_DISABLE);
        try {
            ITelephonyEx iTelephonyEx = getITelephonyEx();
            if (iTelephonyEx != null) {
                iTelephonyEx.setSimEnabled(i2, z2);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephonyEx#setSimEnabled", e2);
        }
    }

    public boolean setSmsc(String str) {
        return setSmscForSubscriber(str, SubscriptionManager.getDefaultSmsSubscriptionId());
    }

    public boolean setSmscForSubscriber(String str, int i2) {
        try {
            ITelephonyEx iTelephonyEx = getITelephonyEx();
            if (iTelephonyEx != null) {
                return iTelephonyEx.setSmscForSubscriber(str, i2);
            }
            return false;
        } catch (RemoteException e2) {
            Rlog.e(TAG, "setSmscForSubscriber RemoteException", e2);
            return false;
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "setSmscForSubscriber NullPointerException", e3);
            return false;
        }
    }

    public TelephonyManagerEx(Context context, int i2) {
        this.mSubId = i2;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            this.mContext = applicationContext;
        } else {
            this.mContext = context;
        }
    }
}
