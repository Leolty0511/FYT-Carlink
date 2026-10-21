package com.android.internal.location;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.m;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.INetInitiatedListener;
import android.location.LocationManager;
import android.os.RemoteException;
import android.os.UserHandle;
import android.telephony.PhoneNumberUtils;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.android.internal.R;
import com.android.internal.app.NetInitiatedActivity;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.telephony.GsmAlphabet;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class GpsNetInitiatedHandler {
    public static final String ACTION_NI_VERIFY = "android.intent.action.NETWORK_INITIATED_VERIFY";
    private static final boolean DEBUG = true;
    public static final int GPS_ENC_NONE = 0;
    public static final int GPS_ENC_SUPL_GSM_DEFAULT = 1;
    public static final int GPS_ENC_SUPL_UCS2 = 3;
    public static final int GPS_ENC_SUPL_UTF8 = 2;
    public static final int GPS_ENC_UNKNOWN = -1;
    public static final int GPS_NI_NEED_NOTIFY = 1;
    public static final int GPS_NI_NEED_VERIFY = 2;
    public static final int GPS_NI_PRIVACY_OVERRIDE = 4;
    public static final int GPS_NI_RESPONSE_ACCEPT = 1;
    public static final int GPS_NI_RESPONSE_DENY = 2;
    public static final int GPS_NI_RESPONSE_IGNORE = 4;
    public static final int GPS_NI_RESPONSE_NORESP = 3;
    public static final int GPS_NI_TYPE_EMERGENCY_SUPL = 4;
    public static final int GPS_NI_TYPE_UMTS_CTRL_PLANE = 3;
    public static final int GPS_NI_TYPE_UMTS_SUPL = 2;
    public static final int GPS_NI_TYPE_VOICE = 1;
    public static final String NI_EXTRA_CMD_NOTIF_ID = "notif_id";
    public static final String NI_EXTRA_CMD_RESPONSE = "response";
    public static final String NI_INTENT_KEY_DEFAULT_RESPONSE = "default_resp";
    public static final String NI_INTENT_KEY_MESSAGE = "message";
    public static final String NI_INTENT_KEY_NOTIF_ID = "notif_id";
    public static final String NI_INTENT_KEY_TIMEOUT = "timeout";
    public static final String NI_INTENT_KEY_TITLE = "title";
    public static final String NI_RESPONSE_EXTRA_CMD = "send_ni_response";
    private static final String TAG = "GpsNetInitiatedHandler";
    private static final boolean VERBOSE = false;
    private static boolean mIsHexInput = true;
    private final BroadcastReceiver mBroadcastReciever;
    private final Context mContext;
    private volatile boolean mIsInEmergency;
    private volatile boolean mIsSuplEsEnabled;
    private final LocationManager mLocationManager;
    private final INetInitiatedListener mNetInitiatedListener;
    private Notification.Builder mNiNotificationBuilder;
    private final PhoneStateListener mPhoneStateListener;
    private final TelephonyManager mTelephonyManager;
    private boolean mPlaySounds = false;
    private boolean mPopupImmediately = true;
    private volatile boolean mIsLocationEnabled = false;

    public static class GpsNiNotification {
        public int defaultResponse;
        public boolean needNotify;
        public boolean needVerify;
        public int niType;
        public int notificationId;
        public boolean privacyOverride;
        public String requestorId;
        public int requestorIdEncoding;
        public String text;
        public int textEncoding;
        public int timeout;
    }

    public static class GpsNiResponse {
        int userResponse;
    }

    public GpsNetInitiatedHandler(Context context, INetInitiatedListener iNetInitiatedListener, boolean z2) {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.android.internal.location.GpsNetInitiatedHandler.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (action.equals(Intent.ACTION_NEW_OUTGOING_CALL)) {
                    GpsNetInitiatedHandler.this.setInEmergency(PhoneNumberUtils.isEmergencyNumber(intent.getStringExtra(Intent.EXTRA_PHONE_NUMBER)));
                    Log.v(GpsNetInitiatedHandler.TAG, "ACTION_NEW_OUTGOING_CALL - " + GpsNetInitiatedHandler.this.getInEmergency());
                    return;
                }
                if (action.equals(LocationManager.MODE_CHANGED_ACTION)) {
                    GpsNetInitiatedHandler.this.updateLocationMode();
                    Log.d(GpsNetInitiatedHandler.TAG, "location enabled :" + GpsNetInitiatedHandler.this.getLocationEnabled());
                }
            }
        };
        this.mBroadcastReciever = broadcastReceiver;
        this.mContext = context;
        if (iNetInitiatedListener == null) {
            throw new IllegalArgumentException("netInitiatedListener is null");
        }
        this.mNetInitiatedListener = iNetInitiatedListener;
        setSuplEsEnabled(z2);
        this.mLocationManager = (LocationManager) context.getSystemService("location");
        updateLocationMode();
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        this.mTelephonyManager = telephonyManager;
        PhoneStateListener phoneStateListener = new PhoneStateListener() { // from class: com.android.internal.location.GpsNetInitiatedHandler.2
            @Override // android.telephony.PhoneStateListener
            public void onCallStateChanged(int i2, String str) {
                Log.d(GpsNetInitiatedHandler.TAG, "onCallStateChanged(): state is " + i2);
                if (i2 == 0) {
                    GpsNetInitiatedHandler.this.setInEmergency(false);
                }
            }
        };
        this.mPhoneStateListener = phoneStateListener;
        telephonyManager.listen(phoneStateListener, 32);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Intent.ACTION_NEW_OUTGOING_CALL);
        intentFilter.addAction(LocationManager.MODE_CHANGED_ACTION);
        context.registerReceiver(broadcastReceiver, intentFilter);
    }

    public static String decodeGSMPackedString(byte[] bArr) {
        int length = bArr.length;
        int i2 = (length * 8) / 7;
        if (length % 7 == 0 && length > 0 && (bArr[length - 1] >> 1) == 0) {
            i2--;
        }
        String strGsm7BitPackedToString = GsmAlphabet.gsm7BitPackedToString(bArr, 0, i2);
        if (strGsm7BitPackedToString != null) {
            return strGsm7BitPackedToString;
        }
        Log.e(TAG, "Decoding of GSM packed string failed");
        return "";
    }

    private static String decodeString(String str, boolean z2, int i2) {
        byte[] bArrStringToByteArray = stringToByteArray(str, z2);
        if (i2 == -1 || i2 == 0) {
            return str;
        }
        if (i2 == 1) {
            return decodeGSMPackedString(bArrStringToByteArray);
        }
        if (i2 == 2) {
            return decodeUTF8String(bArrStringToByteArray);
        }
        if (i2 == 3) {
            return decodeUCS2String(bArrStringToByteArray);
        }
        Log.e(TAG, "Unknown encoding " + i2 + " for NI text " + str);
        return str;
    }

    public static String decodeUCS2String(byte[] bArr) {
        try {
            return new String(bArr, "UTF-16");
        } catch (UnsupportedEncodingException unused) {
            throw new AssertionError();
        }
    }

    public static String decodeUTF8String(byte[] bArr) {
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            throw new AssertionError();
        }
    }

    private static String getDialogMessage(GpsNiNotification gpsNiNotification, Context context) {
        return getNotifMessage(gpsNiNotification, context);
    }

    public static String getDialogTitle(GpsNiNotification gpsNiNotification, Context context) {
        return getNotifTitle(gpsNiNotification, context);
    }

    private Intent getDlgIntent(GpsNiNotification gpsNiNotification) {
        Intent intent = new Intent();
        String dialogTitle = getDialogTitle(gpsNiNotification, this.mContext);
        String dialogMessage = getDialogMessage(gpsNiNotification, this.mContext);
        intent.setFlags(268468224);
        intent.setClass(this.mContext, NetInitiatedActivity.class);
        intent.putExtra("notif_id", gpsNiNotification.notificationId);
        intent.putExtra("title", dialogTitle);
        intent.putExtra(NI_INTENT_KEY_MESSAGE, dialogMessage);
        intent.putExtra(NI_INTENT_KEY_TIMEOUT, gpsNiNotification.timeout);
        intent.putExtra(NI_INTENT_KEY_DEFAULT_RESPONSE, gpsNiNotification.defaultResponse);
        StringBuilder sb = new StringBuilder("generateIntent, title: ");
        sb.append(dialogTitle);
        sb.append(", message: ");
        sb.append(dialogMessage);
        sb.append(", timeout: ");
        m.t(sb, gpsNiNotification.timeout, TAG);
        return intent;
    }

    private static String getNotifMessage(GpsNiNotification gpsNiNotification, Context context) {
        return String.format(context.getString(R.string.gpsNotifMessage), decodeString(gpsNiNotification.requestorId, mIsHexInput, gpsNiNotification.requestorIdEncoding), decodeString(gpsNiNotification.text, mIsHexInput, gpsNiNotification.textEncoding));
    }

    private static String getNotifTicker(GpsNiNotification gpsNiNotification, Context context) {
        return String.format(context.getString(R.string.gpsNotifTicker), decodeString(gpsNiNotification.requestorId, mIsHexInput, gpsNiNotification.requestorIdEncoding), decodeString(gpsNiNotification.text, mIsHexInput, gpsNiNotification.textEncoding));
    }

    private static String getNotifTitle(GpsNiNotification gpsNiNotification, Context context) {
        return String.format(context.getString(R.string.gpsNotifTitle), new Object[0]);
    }

    private void handleNi(GpsNiNotification gpsNiNotification) {
        Log.d(TAG, "in handleNi () : needNotify: " + gpsNiNotification.needNotify + " needVerify: " + gpsNiNotification.needVerify + " privacyOverride: " + gpsNiNotification.privacyOverride + " mPopupImmediately: " + this.mPopupImmediately + " mInEmergency: " + getInEmergency());
        if (!getLocationEnabled() && !getInEmergency()) {
            try {
                this.mNetInitiatedListener.sendNiResponse(gpsNiNotification.notificationId, 4);
            } catch (RemoteException unused) {
                Log.e(TAG, "RemoteException in sendNiResponse");
            }
        }
        if (gpsNiNotification.needNotify) {
            if (gpsNiNotification.needVerify && this.mPopupImmediately) {
                openNiDialog(gpsNiNotification);
            } else {
                setNiNotification(gpsNiNotification);
            }
        }
        if (!gpsNiNotification.needVerify || gpsNiNotification.privacyOverride) {
            try {
                this.mNetInitiatedListener.sendNiResponse(gpsNiNotification.notificationId, 1);
            } catch (RemoteException unused2) {
                Log.e(TAG, "RemoteException in sendNiResponse");
            }
        }
    }

    private void handleNiInEs(GpsNiNotification gpsNiNotification) {
        StringBuilder sb = new StringBuilder("in handleNiInEs () : niType: ");
        sb.append(gpsNiNotification.niType);
        sb.append(" notificationId: ");
        m.t(sb, gpsNiNotification.notificationId, TAG);
        if ((gpsNiNotification.niType == 4) == getInEmergency()) {
            handleNi(gpsNiNotification);
            return;
        }
        try {
            this.mNetInitiatedListener.sendNiResponse(gpsNiNotification.notificationId, 4);
        } catch (RemoteException unused) {
            Log.e(TAG, "RemoteException in sendNiResponse");
        }
    }

    private void openNiDialog(GpsNiNotification gpsNiNotification) {
        Intent dlgIntent = getDlgIntent(gpsNiNotification);
        StringBuilder sb = new StringBuilder("openNiDialog, notifyId: ");
        sb.append(gpsNiNotification.notificationId);
        sb.append(", requestorId: ");
        sb.append(gpsNiNotification.requestorId);
        sb.append(", text: ");
        m.x(sb, gpsNiNotification.text, TAG);
        this.mContext.startActivity(dlgIntent);
    }

    private synchronized void setNiNotification(GpsNiNotification gpsNiNotification) {
        NotificationManager notificationManager = (NotificationManager) this.mContext.getSystemService(Context.NOTIFICATION_SERVICE);
        if (notificationManager == null) {
            return;
        }
        String notifTitle = getNotifTitle(gpsNiNotification, this.mContext);
        String notifMessage = getNotifMessage(gpsNiNotification, this.mContext);
        Log.d(TAG, "setNiNotification, notifyId: " + gpsNiNotification.notificationId + ", title: " + notifTitle + ", message: " + notifMessage);
        if (this.mNiNotificationBuilder == null) {
            this.mNiNotificationBuilder = new Notification.Builder(this.mContext, SystemNotificationChannels.NETWORK_ALERTS).setSmallIcon(R.drawable.stat_sys_gps_on).setWhen(0L).setOngoing(true).setAutoCancel(true).setColor(this.mContext.getColor(R.color.system_notification_accent_color));
        }
        if (this.mPlaySounds) {
            this.mNiNotificationBuilder.setDefaults(1);
        } else {
            this.mNiNotificationBuilder.setDefaults(0);
        }
        this.mNiNotificationBuilder.setTicker(getNotifTicker(gpsNiNotification, this.mContext)).setContentTitle(notifTitle).setContentText(notifMessage).setContentIntent(PendingIntent.getBroadcast(this.mContext, 0, !this.mPopupImmediately ? getDlgIntent(gpsNiNotification) : new Intent(), 0));
        notificationManager.notifyAsUser(null, gpsNiNotification.notificationId, this.mNiNotificationBuilder.build(), UserHandle.ALL);
    }

    public static byte[] stringToByteArray(String str, boolean z2) {
        int length = str.length();
        if (z2) {
            length /= 2;
        }
        byte[] bArr = new byte[length];
        int i2 = 0;
        if (z2) {
            while (i2 < length) {
                int i3 = i2 * 2;
                bArr[i2] = (byte) Integer.parseInt(str.substring(i3, i3 + 2), 16);
                i2++;
            }
        } else {
            while (i2 < length) {
                bArr[i2] = (byte) str.charAt(i2);
                i2++;
            }
        }
        return bArr;
    }

    public boolean getInEmergency() {
        return this.mIsInEmergency || this.mTelephonyManager.getEmergencyCallbackMode();
    }

    public boolean getLocationEnabled() {
        return this.mIsLocationEnabled;
    }

    public boolean getSuplEsEnabled() {
        return this.mIsSuplEsEnabled;
    }

    public void handleNiNotification(GpsNiNotification gpsNiNotification) {
        Log.d(TAG, "in handleNiNotification () : notificationId: " + gpsNiNotification.notificationId + " requestorId: " + gpsNiNotification.requestorId + " text: " + gpsNiNotification.text + " mIsSuplEsEnabled" + getSuplEsEnabled() + " mIsLocationEnabled" + getLocationEnabled());
        if (getSuplEsEnabled()) {
            handleNiInEs(gpsNiNotification);
        } else {
            handleNi(gpsNiNotification);
        }
    }

    public void setInEmergency(boolean z2) {
        this.mIsInEmergency = z2;
    }

    public void setSuplEsEnabled(boolean z2) {
        this.mIsSuplEsEnabled = z2;
    }

    public void updateLocationMode() {
        this.mIsLocationEnabled = this.mLocationManager.isProviderEnabled("gps");
    }
}
