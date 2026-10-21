package android.telephony;

import android.app.ActivityManager;
import android.app.ActivityThread;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.UserInfo;
import android.net.Uri;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import com.android.internal.telephony.IMms;
import com.android.internal.telephony.ISms;
import com.android.internal.telephony.SmsRawData;
import com.android.internal.telephony.fdnsvr.FdnServiceManger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class SmsManager {
    public static final int CDMA_SMS_RECORD_LENGTH = 255;
    public static final int CELL_BROADCAST_RAN_TYPE_CDMA = 1;
    public static final int CELL_BROADCAST_RAN_TYPE_GSM = 0;
    private static final int DEFAULT_SUBSCRIPTION_ID = -1002;
    public static final String EXTRA_MMS_DATA = "android.telephony.extra.MMS_DATA";
    public static final String EXTRA_MMS_HTTP_STATUS = "android.telephony.extra.MMS_HTTP_STATUS";
    public static final String MESSAGE_STATUS_READ = "read";
    public static final String MESSAGE_STATUS_SEEN = "seen";
    public static final String MMS_CONFIG_ALIAS_ENABLED = "aliasEnabled";
    public static final String MMS_CONFIG_ALIAS_MAX_CHARS = "aliasMaxChars";
    public static final String MMS_CONFIG_ALIAS_MIN_CHARS = "aliasMinChars";
    public static final String MMS_CONFIG_ALLOW_ATTACH_AUDIO = "allowAttachAudio";
    public static final String MMS_CONFIG_APPEND_TRANSACTION_ID = "enabledTransID";
    public static final String MMS_CONFIG_CLOSE_CONNECTION = "mmsCloseConnection";
    public static final String MMS_CONFIG_EMAIL_GATEWAY_NUMBER = "emailGatewayNumber";
    public static final String MMS_CONFIG_GROUP_MMS_ENABLED = "enableGroupMms";
    public static final String MMS_CONFIG_HTTP_PARAMS = "httpParams";
    public static final String MMS_CONFIG_HTTP_SOCKET_TIMEOUT = "httpSocketTimeout";
    public static final String MMS_CONFIG_MAX_IMAGE_HEIGHT = "maxImageHeight";
    public static final String MMS_CONFIG_MAX_IMAGE_WIDTH = "maxImageWidth";
    public static final String MMS_CONFIG_MAX_MESSAGE_SIZE = "maxMessageSize";
    public static final String MMS_CONFIG_MESSAGE_TEXT_MAX_SIZE = "maxMessageTextSize";
    public static final String MMS_CONFIG_MMS_DELIVERY_REPORT_ENABLED = "enableMMSDeliveryReports";
    public static final String MMS_CONFIG_MMS_ENABLED = "enabledMMS";
    public static final String MMS_CONFIG_MMS_READ_REPORT_ENABLED = "enableMMSReadReports";
    public static final String MMS_CONFIG_MULTIPART_SMS_ENABLED = "enableMultipartSMS";
    public static final String MMS_CONFIG_NAI_SUFFIX = "naiSuffix";
    public static final String MMS_CONFIG_NOTIFY_WAP_MMSC_ENABLED = "enabledNotifyWapMMSC";
    public static final String MMS_CONFIG_RECIPIENT_LIMIT = "recipientLimit";
    public static final String MMS_CONFIG_SEND_MULTIPART_SMS_AS_SEPARATE_MESSAGES = "sendMultipartSmsAsSeparateMessages";
    public static final String MMS_CONFIG_SHOW_CELL_BROADCAST_APP_LINKS = "config_cellBroadcastAppLinks";
    public static final String MMS_CONFIG_SMS_DELIVERY_REPORT_ENABLED = "enableSMSDeliveryReports";
    public static final String MMS_CONFIG_SMS_TO_MMS_TEXT_LENGTH_THRESHOLD = "smsToMmsTextLengthThreshold";
    public static final String MMS_CONFIG_SMS_TO_MMS_TEXT_THRESHOLD = "smsToMmsTextThreshold";
    public static final String MMS_CONFIG_SUBJECT_MAX_LENGTH = "maxSubjectLength";
    public static final String MMS_CONFIG_SUPPORT_HTTP_CHARSET_HEADER = "supportHttpCharsetHeader";
    public static final String MMS_CONFIG_SUPPORT_MMS_CONTENT_DISPOSITION = "supportMmsContentDisposition";
    public static final String MMS_CONFIG_UA_PROF_TAG_NAME = "uaProfTagName";
    public static final String MMS_CONFIG_UA_PROF_URL = "uaProfUrl";
    public static final String MMS_CONFIG_USER_AGENT = "userAgent";
    public static final int MMS_ERROR_CONFIGURATION_ERROR = 7;
    public static final int MMS_ERROR_FDN_CHECKED_CONTACRS = 9;
    public static final int MMS_ERROR_HTTP_FAILURE = 4;
    public static final int MMS_ERROR_INVALID_APN = 2;
    public static final int MMS_ERROR_IO_ERROR = 5;
    public static final int MMS_ERROR_NO_DATA_NETWORK = 8;
    public static final int MMS_ERROR_RETRY = 6;
    public static final int MMS_ERROR_UNABLE_CONNECT_MMS = 3;
    public static final int MMS_ERROR_UNSPECIFIED = 1;
    private static final String PHONE_PACKAGE_NAME = "com.android.phone";
    public static final int RESULT_ERROR_FDN_CHECK_FAILURE = 6;
    public static final int RESULT_ERROR_GENERIC_FAILURE = 1;
    public static final int RESULT_ERROR_LIMIT_EXCEEDED = 5;
    public static final int RESULT_ERROR_NO_SERVICE = 4;
    public static final int RESULT_ERROR_NULL_PDU = 3;
    public static final int RESULT_ERROR_RADIO_OFF = 2;
    public static final int RESULT_ERROR_SHORT_CODE_NEVER_ALLOWED = 8;
    public static final int RESULT_ERROR_SHORT_CODE_NOT_ALLOWED = 7;
    private static final int SMS_PICK = 2;
    public static final int SMS_RECORD_LENGTH = 176;
    public static final int SMS_TYPE_INCOMING = 0;
    public static final int SMS_TYPE_OUTGOING = 1;
    public static final int STATUS_ON_ICC_FREE = 0;
    public static final int STATUS_ON_ICC_READ = 1;
    public static final int STATUS_ON_ICC_SENT = 5;
    public static final int STATUS_ON_ICC_UNREAD = 3;
    public static final int STATUS_ON_ICC_UNSENT = 7;
    private static final String TAG = "SmsManager";
    private int mSubId;
    private static final SmsManager sInstance = new SmsManager(-1002);
    private static final Object sLockObject = new Object();
    private static final Map<Integer, SmsManager> sSubInstances = new ArrayMap();
    private static String DIALOG_TYPE_KEY = "dialog_type";

    private SmsManager(int i2) {
        this.mSubId = i2;
    }

    public static void AddCMSCToTarget(String str, int i2) {
        Context applicationContext = ActivityThread.currentApplication().getApplicationContext();
        UserHandle userHandleMyUserHandle = Process.myUserHandle();
        try {
            UserInfo currentUser = ActivityManager.getService().getCurrentUser();
            if (currentUser != null) {
                userHandleMyUserHandle = currentUser.getUserHandle();
            }
        } catch (RemoteException unused) {
            Log.e(TAG, "RemoteException when getCurrentUser");
        }
        try {
            Log.i(TAG, "SmsManger------AddCMSCToTarget---->", new Exception());
            Log.i(TAG, "SmsManger------AddCMSCToTarget---number---->" + str);
            Log.e(TAG, "SmsManger------AddCMSCToTarget---SUB =" + i2);
            SubscriptionManager subscriptionManagerFrom = SubscriptionManager.from(applicationContext);
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(FdnServiceManger.FDNSERVICE_PACKAGENAME, "com.spread.cachefdn.StopSmscActivity"));
            intent.putExtra("com.android.phone.settings.SubscriptionInfoHelper.SubscriptionId", i2);
            intent.putExtra("com.android.phone.settings.SubscriptionInfoHelper.SubscriptionLabel", subscriptionManagerFrom.getActiveSubscriptionInfo(i2).getDisplayName().toString());
            intent.putExtra("smcsNumber", str);
            applicationContext.startActivityAsUser(intent, userHandleMyUserHandle);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean CanSendEmptyMessgeOrNot(String str) {
        return Settings.Global.getInt(ActivityThread.currentApplication().getApplicationContext().getContentResolver(), "ro.message.EmptyMessage", 1) <= 0;
    }

    private boolean checkFdnEnable() {
        try {
            return TelephonyManagerEx.from(ActivityThread.currentApplication().getApplicationContext()).getIccFdnEnabled(getSubscriptionId());
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private void checkSendToTaget(String str, String str2) {
        ActivityThread.currentApplication().getApplicationContext();
        boolean zCheckFdnContact = false;
        try {
            Log.e(TAG, "checkSendToTaget");
            int subscriptionId = getSubscriptionId();
            Log.d(TAG, "subID =" + subscriptionId);
            zCheckFdnContact = SmsManagerEx.getSubActivity(subscriptionId).checkFdnContact(str);
            Log.e(TAG, "SmsManger------1A--needStop---->" + zCheckFdnContact);
        } catch (Exception unused) {
        }
        if (zCheckFdnContact) {
            Log.e(TAG, "SmsManger------1B--needStop---->" + zCheckFdnContact);
            throw new IllegalArgumentException("Invalid FDN destinationAddress");
        }
    }

    private static ArrayList<SmsMessage> createMessageListFromRawRecords(List<SmsRawData> list) {
        SmsMessage smsMessageCreateFromEfRecord;
        ArrayList<SmsMessage> arrayList = new ArrayList<>();
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                SmsRawData smsRawData = list.get(i2);
                if (smsRawData != null && (smsMessageCreateFromEfRecord = SmsMessage.createFromEfRecord(i2 + 1, smsRawData.getBytes())) != null) {
                    arrayList.add(smsMessageCreateFromEfRecord);
                }
            }
        }
        return arrayList;
    }

    public static SmsManager getDefault() {
        return sInstance;
    }

    public static int getDefaultSmsSubscriptionId() {
        try {
            return ISms.Stub.asInterface(ServiceManager.getService("isms")).getPreferredSmsSubscription();
        } catch (RemoteException | NullPointerException unused) {
            return -1;
        }
    }

    private static ISms getISmsService() {
        return ISms.Stub.asInterface(ServiceManager.getService("isms"));
    }

    private static ISms getISmsServiceOrThrow() {
        ISms iSmsService = getISmsService();
        if (iSmsService != null) {
            return iSmsService;
        }
        throw new UnsupportedOperationException("Sms is not supported");
    }

    public static Bundle getMmsConfig(BaseBundle baseBundle) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("enabledTransID", baseBundle.getBoolean("enabledTransID"));
        bundle.putBoolean("enabledMMS", baseBundle.getBoolean("enabledMMS"));
        bundle.putBoolean("enableGroupMms", baseBundle.getBoolean("enableGroupMms"));
        bundle.putBoolean("enabledNotifyWapMMSC", baseBundle.getBoolean("enabledNotifyWapMMSC"));
        bundle.putBoolean("aliasEnabled", baseBundle.getBoolean("aliasEnabled"));
        bundle.putBoolean("allowAttachAudio", baseBundle.getBoolean("allowAttachAudio"));
        bundle.putBoolean("enableMultipartSMS", baseBundle.getBoolean("enableMultipartSMS"));
        bundle.putBoolean("enableSMSDeliveryReports", baseBundle.getBoolean("enableSMSDeliveryReports"));
        bundle.putBoolean("supportMmsContentDisposition", baseBundle.getBoolean("supportMmsContentDisposition"));
        bundle.putBoolean("sendMultipartSmsAsSeparateMessages", baseBundle.getBoolean("sendMultipartSmsAsSeparateMessages"));
        bundle.putBoolean("enableMMSReadReports", baseBundle.getBoolean("enableMMSReadReports"));
        bundle.putBoolean("enableMMSDeliveryReports", baseBundle.getBoolean("enableMMSDeliveryReports"));
        bundle.putBoolean("mmsCloseConnection", baseBundle.getBoolean("mmsCloseConnection"));
        bundle.putInt("maxMessageSize", baseBundle.getInt("maxMessageSize"));
        bundle.putInt("maxImageWidth", baseBundle.getInt("maxImageWidth"));
        bundle.putInt("maxImageHeight", baseBundle.getInt("maxImageHeight"));
        bundle.putInt("recipientLimit", baseBundle.getInt("recipientLimit"));
        bundle.putInt("aliasMinChars", baseBundle.getInt("aliasMinChars"));
        bundle.putInt("aliasMaxChars", baseBundle.getInt("aliasMaxChars"));
        bundle.putInt("smsToMmsTextThreshold", baseBundle.getInt("smsToMmsTextThreshold"));
        bundle.putInt("smsToMmsTextLengthThreshold", baseBundle.getInt("smsToMmsTextLengthThreshold"));
        bundle.putInt("maxMessageTextSize", baseBundle.getInt("maxMessageTextSize"));
        bundle.putInt("maxSubjectLength", baseBundle.getInt("maxSubjectLength"));
        bundle.putInt("httpSocketTimeout", baseBundle.getInt("httpSocketTimeout"));
        bundle.putString("uaProfTagName", baseBundle.getString("uaProfTagName"));
        bundle.putString("userAgent", baseBundle.getString("userAgent"));
        bundle.putString("uaProfUrl", baseBundle.getString("uaProfUrl"));
        bundle.putString("httpParams", baseBundle.getString("httpParams"));
        bundle.putString("emailGatewayNumber", baseBundle.getString("emailGatewayNumber"));
        bundle.putString("naiSuffix", baseBundle.getString("naiSuffix"));
        bundle.putBoolean("config_cellBroadcastAppLinks", baseBundle.getBoolean("config_cellBroadcastAppLinks"));
        bundle.putBoolean("supportHttpCharsetHeader", baseBundle.getBoolean("supportHttpCharsetHeader"));
        return bundle;
    }

    public static SmsManager getSmsManagerForSubscriptionId(int i2) {
        SmsManager smsManager;
        synchronized (sLockObject) {
            Map<Integer, SmsManager> map = sSubInstances;
            smsManager = map.get(Integer.valueOf(i2));
            if (smsManager == null) {
                smsManager = new SmsManager(i2);
                map.put(Integer.valueOf(i2), smsManager);
            }
        }
        return smsManager;
    }

    private void sendMultipartTextMessageInternal(String str, String str2, List<String> list, List<PendingIntent> list2, List<PendingIntent> list3, boolean z2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Invalid destinationAddress");
        }
        if (list == null || list.size() < 1) {
            throw new IllegalArgumentException("Invalid message body");
        }
        if (list.size() > 1) {
            try {
                getISmsServiceOrThrow().sendMultipartTextForSubscriber(getSubscriptionId(), ActivityThread.currentPackageName(), str, str2, list, list2, list3, z2);
                return;
            } catch (RemoteException unused) {
                return;
            }
        }
        PendingIntent pendingIntent = null;
        PendingIntent pendingIntent2 = (list2 == null || list2.size() <= 0) ? null : list2.get(0);
        if (list3 != null && list3.size() > 0) {
            pendingIntent = list3.get(0);
        }
        sendTextMessage(str, str2, list.get(0), pendingIntent2, pendingIntent);
    }

    private void sendTextMessageInternal(String str, String str2, String str3, PendingIntent pendingIntent, PendingIntent pendingIntent2, boolean z2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Invalid destinationAddress");
        }
        if (TextUtils.isEmpty(str3) && CanSendEmptyMessgeOrNot(str3)) {
            throw new IllegalArgumentException("Invalid message body");
        }
        boolean zCheckFdnEnable = checkFdnEnable();
        Log.e(TAG, "checkEnable =" + zCheckFdnEnable);
        if (zCheckFdnEnable) {
            checkSendToTaget(str, str2);
        }
        try {
            getISmsServiceOrThrow().sendTextForSubscriber(getSubscriptionId(), ActivityThread.currentPackageName(), str, str2, str3, pendingIntent, pendingIntent2, z2);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            Log.i(TAG, "RemoteException ex:     " + e2.getMessage());
        }
    }

    public Uri addMultimediaMessageDraft(Uri uri) {
        if (uri == null) {
            throw new IllegalArgumentException("Uri contentUri null");
        }
        try {
            IMms iMmsAsInterface = IMms.Stub.asInterface(ServiceManager.getService("imms"));
            if (iMmsAsInterface != null) {
                return iMmsAsInterface.addMultimediaMessageDraft(ActivityThread.currentPackageName(), uri);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public Uri addTextMessageDraft(String str, String str2) {
        try {
            IMms iMmsAsInterface = IMms.Stub.asInterface(ServiceManager.getService("imms"));
            if (iMmsAsInterface != null) {
                return iMmsAsInterface.addTextMessageDraft(ActivityThread.currentPackageName(), str, str2);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public boolean archiveStoredConversation(long j2, boolean z2) {
        try {
            IMms iMmsAsInterface = IMms.Stub.asInterface(ServiceManager.getService("imms"));
            if (iMmsAsInterface != null) {
                return iMmsAsInterface.archiveStoredConversation(ActivityThread.currentPackageName(), j2, z2);
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean copyMessageToIcc(byte[] bArr, byte[] bArr2, int i2) {
        if (bArr2 == null) {
            throw new IllegalArgumentException("pdu is NULL");
        }
        try {
            ISms iSmsService = getISmsService();
            if (iSmsService != null) {
                return iSmsService.copyMessageToIccEfForSubscriber(getSubscriptionId(), ActivityThread.currentPackageName(), i2, bArr2, bArr);
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public String createAppSpecificSmsToken(PendingIntent pendingIntent) {
        try {
            return getISmsServiceOrThrow().createAppSpecificSmsToken(getSubscriptionId(), ActivityThread.currentPackageName(), pendingIntent);
        } catch (RemoteException e2) {
            e2.rethrowFromSystemServer();
            return null;
        }
    }

    public boolean deleteMessageFromIcc(int i2) {
        byte[] bArr = new byte[175];
        Arrays.fill(bArr, (byte) -1);
        try {
            ISms iSmsService = getISmsService();
            if (iSmsService != null) {
                return iSmsService.updateMessageOnIccEfForSubscriber(getSubscriptionId(), ActivityThread.currentPackageName(), i2, 0, bArr);
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean deleteStoredConversation(long j2) {
        try {
            IMms iMmsAsInterface = IMms.Stub.asInterface(ServiceManager.getService("imms"));
            if (iMmsAsInterface != null) {
                return iMmsAsInterface.deleteStoredConversation(ActivityThread.currentPackageName(), j2);
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean deleteStoredMessage(Uri uri) {
        if (uri == null) {
            throw new IllegalArgumentException("Empty message URI");
        }
        try {
            IMms iMmsAsInterface = IMms.Stub.asInterface(ServiceManager.getService("imms"));
            if (iMmsAsInterface != null) {
                return iMmsAsInterface.deleteStoredMessage(ActivityThread.currentPackageName(), uri);
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean disableCellBroadcast(int i2, int i3) {
        try {
            ISms iSmsService = getISmsService();
            if (iSmsService != null) {
                return iSmsService.disableCellBroadcastForSubscriber(getSubscriptionId(), i2, i3);
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean disableCellBroadcastRange(int i2, int i3, int i4) {
        if (i3 < i2) {
            throw new IllegalArgumentException("endMessageId < startMessageId");
        }
        try {
            ISms iSmsService = getISmsService();
            if (iSmsService != null) {
                return iSmsService.disableCellBroadcastRangeForSubscriber(getSubscriptionId(), i2, i3, i4);
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public ArrayList<String> divideMessage(String str) {
        if (str != null) {
            return SmsMessage.fragmentText(str);
        }
        throw new IllegalArgumentException("text is null");
    }

    public void downloadMultimediaMessage(Context context, String str, Uri uri, Bundle bundle, PendingIntent pendingIntent) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Empty MMS location URL");
        }
        if (uri == null) {
            throw new IllegalArgumentException("Uri contentUri null");
        }
        try {
            IMms iMmsAsInterface = IMms.Stub.asInterface(ServiceManager.getService("imms"));
            if (iMmsAsInterface == null) {
                return;
            }
            iMmsAsInterface.downloadMessage(getSubscriptionId(), ActivityThread.currentPackageName(), str, uri, bundle, pendingIntent);
        } catch (RemoteException unused) {
        }
    }

    public boolean enableCellBroadcast(int i2, int i3) {
        try {
            ISms iSmsService = getISmsService();
            if (iSmsService != null) {
                return iSmsService.enableCellBroadcastForSubscriber(getSubscriptionId(), i2, i3);
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean enableCellBroadcastRange(int i2, int i3, int i4) {
        if (i3 < i2) {
            throw new IllegalArgumentException("endMessageId < startMessageId");
        }
        try {
            ISms iSmsService = getISmsService();
            if (iSmsService != null) {
                return iSmsService.enableCellBroadcastRangeForSubscriber(getSubscriptionId(), i2, i3, i4);
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public ArrayList<SmsMessage> getAllMessagesFromIcc() {
        List<SmsRawData> allMessagesFromIccEfForSubscriber = null;
        try {
            ISms iSmsService = getISmsService();
            if (iSmsService != null) {
                allMessagesFromIccEfForSubscriber = iSmsService.getAllMessagesFromIccEfForSubscriber(getSubscriptionId(), ActivityThread.currentPackageName());
            }
        } catch (RemoteException unused) {
        }
        return createMessageListFromRawRecords(allMessagesFromIccEfForSubscriber);
    }

    public boolean getAutoPersisting() {
        try {
            IMms iMmsAsInterface = IMms.Stub.asInterface(ServiceManager.getService("imms"));
            if (iMmsAsInterface != null) {
                return iMmsAsInterface.getAutoPersisting();
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public Bundle getCarrierConfigValues() {
        try {
            IMms iMmsAsInterface = IMms.Stub.asInterface(ServiceManager.getService("imms"));
            if (iMmsAsInterface != null) {
                return iMmsAsInterface.getCarrierConfigValues(getSubscriptionId());
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public String getImsSmsFormat() {
        try {
            ISms iSmsService = getISmsService();
            return iSmsService != null ? iSmsService.getImsSmsFormatForSubscriber(getSubscriptionId()) : "unknown";
        } catch (RemoteException unused) {
            return "unknown";
        }
    }

    public int getSubscriptionId() {
        int defaultSmsSubscriptionId = this.mSubId;
        if (defaultSmsSubscriptionId == -1002) {
            defaultSmsSubscriptionId = getDefaultSmsSubscriptionId();
        }
        ActivityThread.currentApplication().getApplicationContext();
        try {
            ISms iSmsService = getISmsService();
            if (iSmsService != null) {
                iSmsService.isSmsSimPickActivityNeeded(defaultSmsSubscriptionId);
            }
        } catch (RemoteException unused) {
            Log.e(TAG, "Exception in getSubscriptionId");
        }
        return defaultSmsSubscriptionId;
    }

    public Uri importMultimediaMessage(Uri uri, String str, long j2, boolean z2, boolean z3) {
        if (uri == null) {
            throw new IllegalArgumentException("Uri contentUri null");
        }
        try {
            IMms iMmsAsInterface = IMms.Stub.asInterface(ServiceManager.getService("imms"));
            if (iMmsAsInterface != null) {
                return iMmsAsInterface.importMultimediaMessage(ActivityThread.currentPackageName(), uri, str, j2, z2, z3);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public Uri importTextMessage(String str, int i2, String str2, long j2, boolean z2, boolean z3) {
        try {
            IMms iMmsAsInterface = IMms.Stub.asInterface(ServiceManager.getService("imms"));
            if (iMmsAsInterface != null) {
                return iMmsAsInterface.importTextMessage(ActivityThread.currentPackageName(), str, i2, str2, j2, z2, z3);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public void injectSmsPdu(byte[] bArr, String str, PendingIntent pendingIntent) {
        if (!str.equals("3gpp") && !str.equals("3gpp2")) {
            throw new IllegalArgumentException("Invalid pdu format. format must be either 3gpp or 3gpp2");
        }
        try {
            ISms iSmsAsInterface = ISms.Stub.asInterface(ServiceManager.getService("isms"));
            if (iSmsAsInterface != null) {
                iSmsAsInterface.injectSmsPduForSubscriber(getSubscriptionId(), bArr, str, pendingIntent);
            }
        } catch (RemoteException unused) {
        }
    }

    public boolean isImsSmsSupported() {
        try {
            ISms iSmsService = getISmsService();
            if (iSmsService != null) {
                return iSmsService.isImsSmsSupportedForSubscriber(getSubscriptionId());
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isSMSPromptEnabled() {
        try {
            return ISms.Stub.asInterface(ServiceManager.getService("isms")).isSMSPromptEnabled();
        } catch (RemoteException | NullPointerException unused) {
            return false;
        }
    }

    public void sendDataMessage(String str, String str2, short s2, byte[] bArr, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Invalid destinationAddress");
        }
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("Invalid message data");
        }
        try {
            getISmsServiceOrThrow().sendDataForSubscriber(getSubscriptionId(), ActivityThread.currentPackageName(), str, str2, s2 & 65535, bArr, pendingIntent, pendingIntent2);
        } catch (RemoteException unused) {
        }
    }

    public void sendDataMessageWithSelfPermissions(String str, String str2, short s2, byte[] bArr, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Invalid destinationAddress");
        }
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("Invalid message data");
        }
        try {
            getISmsServiceOrThrow().sendDataForSubscriberWithSelfPermissions(getSubscriptionId(), ActivityThread.currentPackageName(), str, str2, s2 & 65535, bArr, pendingIntent, pendingIntent2);
        } catch (RemoteException unused) {
        }
    }

    public void sendMultimediaMessage(Context context, Uri uri, String str, Bundle bundle, PendingIntent pendingIntent) {
        if (uri == null) {
            throw new IllegalArgumentException("Uri contentUri null");
        }
        try {
            IMms iMmsAsInterface = IMms.Stub.asInterface(ServiceManager.getService("imms"));
            if (iMmsAsInterface == null) {
                return;
            }
            iMmsAsInterface.sendMessage(getSubscriptionId(), ActivityThread.currentPackageName(), uri, str, bundle, pendingIntent);
        } catch (RemoteException unused) {
        }
    }

    public void sendMultipartTextMessage(String str, String str2, ArrayList<String> arrayList, ArrayList<PendingIntent> arrayList2, ArrayList<PendingIntent> arrayList3) {
        sendMultipartTextMessageInternal(str, str2, arrayList, arrayList2, arrayList3, true);
    }

    public void sendMultipartTextMessageWithoutPersisting(String str, String str2, List<String> list, List<PendingIntent> list2, List<PendingIntent> list3) {
        sendMultipartTextMessageInternal(str, str2, list, list2, list3, false);
    }

    public void sendStoredMultimediaMessage(Uri uri, Bundle bundle, PendingIntent pendingIntent) {
        if (uri == null) {
            throw new IllegalArgumentException("Empty message URI");
        }
        try {
            IMms iMmsAsInterface = IMms.Stub.asInterface(ServiceManager.getService("imms"));
            if (iMmsAsInterface != null) {
                iMmsAsInterface.sendStoredMessage(getSubscriptionId(), ActivityThread.currentPackageName(), uri, bundle, pendingIntent);
            }
        } catch (RemoteException unused) {
        }
    }

    public void sendStoredMultipartTextMessage(Uri uri, String str, ArrayList<PendingIntent> arrayList, ArrayList<PendingIntent> arrayList2) {
        if (uri == null) {
            throw new IllegalArgumentException("Empty message URI");
        }
        try {
            getISmsServiceOrThrow().sendStoredMultipartText(getSubscriptionId(), ActivityThread.currentPackageName(), uri, str, arrayList, arrayList2);
        } catch (RemoteException unused) {
        }
    }

    public void sendStoredTextMessage(Uri uri, String str, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        if (uri == null) {
            throw new IllegalArgumentException("Empty message URI");
        }
        try {
            getISmsServiceOrThrow().sendStoredText(getSubscriptionId(), ActivityThread.currentPackageName(), uri, str, pendingIntent, pendingIntent2);
        } catch (RemoteException unused) {
        }
    }

    public void sendTextMessage(String str, String str2, String str3, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        sendTextMessageInternal(str, str2, str3, pendingIntent, pendingIntent2, true);
    }

    public void sendTextMessageWithSelfPermissions(String str, String str2, String str3, PendingIntent pendingIntent, PendingIntent pendingIntent2, boolean z2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Invalid destinationAddress");
        }
        if (TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Invalid message body");
        }
        try {
            getISmsServiceOrThrow().sendTextForSubscriberWithSelfPermissions(getSubscriptionId(), ActivityThread.currentPackageName(), str, str2, str3, pendingIntent, pendingIntent2, z2);
        } catch (RemoteException unused) {
        }
    }

    public void sendTextMessageWithoutPersisting(String str, String str2, String str3, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        sendTextMessageInternal(str, str2, str3, pendingIntent, pendingIntent2, false);
    }

    public void setAutoPersisting(boolean z2) {
        try {
            IMms iMmsAsInterface = IMms.Stub.asInterface(ServiceManager.getService("imms"));
            if (iMmsAsInterface != null) {
                iMmsAsInterface.setAutoPersisting(ActivityThread.currentPackageName(), z2);
            }
        } catch (RemoteException unused) {
        }
    }

    public boolean updateMessageOnIcc(int i2, int i3, byte[] bArr) {
        try {
            ISms iSmsService = getISmsService();
            if (iSmsService != null) {
                return iSmsService.updateMessageOnIccEfForSubscriber(getSubscriptionId(), ActivityThread.currentPackageName(), i2, i3, bArr);
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean updateStoredMessageStatus(Uri uri, ContentValues contentValues) {
        if (uri == null) {
            throw new IllegalArgumentException("Empty message URI");
        }
        try {
            IMms iMmsAsInterface = IMms.Stub.asInterface(ServiceManager.getService("imms"));
            if (iMmsAsInterface != null) {
                return iMmsAsInterface.updateStoredMessageStatus(ActivityThread.currentPackageName(), uri, contentValues);
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }
}
