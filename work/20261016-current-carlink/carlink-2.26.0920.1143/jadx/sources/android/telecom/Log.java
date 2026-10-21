package android.telecom;

import android.content.Context;
import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.AsyncTask;
import android.os.Build;
import android.provider.SettingsStringUtil;
import android.security.keystore.KeyProperties;
import android.telecom.Logging.EventManager;
import android.telecom.Logging.Session;
import android.telecom.Logging.SessionManager;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Slog;
import com.android.internal.telephony.PhoneConstants;
import com.android.internal.util.IndentingPrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.IllegalFormatException;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class Log {
    private static final int EVENTS_TO_CACHE = 10;
    private static final int EVENTS_TO_CACHE_DEBUG = 20;
    private static final long EXTENDED_LOGGING_DURATION_MILLIS = 1800000;
    private static final boolean FORCE_LOGGING = false;
    public static String TAG = "TelecomFramework";
    private static EventManager sEventManager;
    private static MessageDigest sMessageDigest;
    private static SessionManager sSessionManager;
    public static boolean DEBUG = isLoggable(3);
    public static boolean INFO = isLoggable(4);
    public static boolean VERBOSE = isLoggable(2);
    public static boolean WARN = isLoggable(5);
    public static boolean ERROR = isLoggable(6);
    private static final boolean USER_BUILD = Build.IS_USER;
    private static final Object sSingletonSync = new Object();
    private static boolean sIsUserExtendedLoggingEnabled = false;
    private static long sUserExtendedLoggingStopTime = 0;

    private Log() {
    }

    public static void addEvent(EventManager.Loggable loggable, String str) {
        getEventManager().event(loggable, str, null);
    }

    public static void addRequestResponsePair(EventManager.TimedEventPair timedEventPair) {
        getEventManager().addRequestResponsePair(timedEventPair);
    }

    private static String buildMessage(String str, String str2, Object... objArr) {
        String sessionId = getSessionId();
        String strJ = TextUtils.isEmpty(sessionId) ? "" : android.accessibilityservice.c.j(": ", sessionId);
        if (objArr != null) {
            try {
                if (objArr.length != 0) {
                    str2 = String.format(Locale.US, str2, objArr);
                }
            } catch (IllegalFormatException e2) {
                e(TAG, (Throwable) e2, "Log: IllegalFormatException: formatString='%s' numArgs=%d", str2, Integer.valueOf(objArr.length));
                str2 = str2 + " (An error occurred while formatting the message.)";
            }
        }
        return String.format(Locale.US, "%s: %s%s", str, str2, strJ);
    }

    public static void cancelSubsession(Session session) {
        getSessionManager().cancelSubsession(session);
    }

    public static void continueSession(Session session, String str) {
        getSessionManager().continueSession(session, str);
    }

    public static Session createSubsession() {
        return getSessionManager().createSubsession();
    }

    public static void d(String str, String str2, Object... objArr) {
        if (sIsUserExtendedLoggingEnabled) {
            maybeDisableLogging();
            Slog.i(TAG, buildMessage(str, str2, objArr));
        } else if (DEBUG) {
            Slog.d(TAG, buildMessage(str, str2, objArr));
        }
    }

    public static void dumpEvents(IndentingPrintWriter indentingPrintWriter) {
        synchronized (sSingletonSync) {
            if (sEventManager != null) {
                getEventManager().dumpEvents(indentingPrintWriter);
            } else {
                indentingPrintWriter.println("No Historical Events Logged.");
            }
        }
    }

    public static void dumpEventsTimeline(IndentingPrintWriter indentingPrintWriter) {
        synchronized (sSingletonSync) {
            if (sEventManager != null) {
                getEventManager().dumpEventsTimeline(indentingPrintWriter);
            } else {
                indentingPrintWriter.println("No Historical Events Logged.");
            }
        }
    }

    public static void e(String str, Throwable th, String str2, Object... objArr) {
        if (ERROR) {
            Slog.e(TAG, buildMessage(str, str2, objArr), th);
        }
    }

    private static String encodeHex(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b2 : bArr) {
            int i2 = b2 & 255;
            if (i2 < 16) {
                stringBuffer.append(WifiEnterpriseConfig.ENGINE_DISABLE);
            }
            stringBuffer.append(Integer.toString(i2, 16));
        }
        return stringBuffer.toString();
    }

    public static void endSession() {
        getSessionManager().endSession();
    }

    private static EventManager getEventManager() {
        if (sEventManager == null) {
            synchronized (sSingletonSync) {
                if (sEventManager == null) {
                    EventManager eventManager = new EventManager(new android.os.a(2));
                    sEventManager = eventManager;
                    return eventManager;
                }
            }
        }
        return sEventManager;
    }

    public static Session.Info getExternalSession() {
        return getSessionManager().getExternalSession();
    }

    private static String getPrefixFromObject(Object obj) {
        return obj == null ? "<null>" : obj.getClass().getSimpleName();
    }

    public static String getSessionId() {
        synchronized (sSingletonSync) {
            if (sSessionManager == null) {
                return "";
            }
            return getSessionManager().getSessionId();
        }
    }

    public static SessionManager getSessionManager() {
        if (sSessionManager == null) {
            synchronized (sSingletonSync) {
                if (sSessionManager == null) {
                    SessionManager sessionManager = new SessionManager();
                    sSessionManager = sessionManager;
                    return sessionManager;
                }
            }
        }
        return sSessionManager;
    }

    public static void i(String str, String str2, Object... objArr) {
        if (INFO) {
            Slog.i(TAG, buildMessage(str, str2, objArr));
        }
    }

    public static void initMd5Sum() {
        new AsyncTask<Void, Void, Void>() { // from class: android.telecom.Log.1
            @Override // android.os.AsyncTask
            public Void doInBackground(Void... voidArr) {
                MessageDigest messageDigest;
                try {
                    messageDigest = MessageDigest.getInstance(KeyProperties.DIGEST_SHA1);
                } catch (NoSuchAlgorithmException unused) {
                    messageDigest = null;
                }
                MessageDigest unused2 = Log.sMessageDigest = messageDigest;
                return null;
            }
        }.execute(new Void[0]);
    }

    public static boolean isLoggable(int i2) {
        return android.util.Log.isLoggable(TAG, i2);
    }

    private static void maybeDisableLogging() {
        if (sIsUserExtendedLoggingEnabled && sUserExtendedLoggingStopTime < System.currentTimeMillis()) {
            sUserExtendedLoggingStopTime = 0L;
            sIsUserExtendedLoggingEnabled = false;
        }
    }

    public static String pii(Object obj) {
        return (obj == null || VERBOSE) ? String.valueOf(obj) : android.accessibilityservice.c.n(new StringBuilder("["), secureHash(String.valueOf(obj).getBytes()), "]");
    }

    public static String piiHandle(Object obj) {
        if (obj == null || VERBOSE) {
            return String.valueOf(obj);
        }
        StringBuilder sb = new StringBuilder();
        if (obj instanceof Uri) {
            Uri uri = (Uri) obj;
            String scheme = uri.getScheme();
            if (!TextUtils.isEmpty(scheme)) {
                sb.append(scheme);
                sb.append(SettingsStringUtil.DELIMITER);
            }
            String schemeSpecificPart = uri.getSchemeSpecificPart();
            int i2 = 0;
            if (PhoneAccount.SCHEME_TEL.equals(scheme)) {
                while (i2 < schemeSpecificPart.length()) {
                    char cCharAt = schemeSpecificPart.charAt(i2);
                    sb.append(PhoneNumberUtils.isDialable(cCharAt) ? PhoneConstants.APN_TYPE_ALL : Character.valueOf(cCharAt));
                    i2++;
                }
            } else if ("sip".equals(scheme)) {
                while (i2 < schemeSpecificPart.length()) {
                    char cCharAt2 = schemeSpecificPart.charAt(i2);
                    if (cCharAt2 != '@' && cCharAt2 != '.') {
                        cCharAt2 = '*';
                    }
                    sb.append(cCharAt2);
                    i2++;
                }
            } else {
                sb.append(pii(obj));
            }
        }
        return sb.toString();
    }

    public static void registerEventListener(EventManager.EventListener eventListener) {
        getEventManager().registerEventListener(eventListener);
    }

    public static void registerSessionListener(SessionManager.ISessionListener iSessionListener) {
        getSessionManager().registerSessionListener(iSessionListener);
    }

    private static String secureHash(byte[] bArr) {
        if (USER_BUILD) {
            return "****";
        }
        MessageDigest messageDigest = sMessageDigest;
        if (messageDigest == null) {
            return "Uninitialized SHA1";
        }
        messageDigest.reset();
        sMessageDigest.update(bArr);
        return encodeHex(sMessageDigest.digest());
    }

    public static void setIsExtendedLoggingEnabled(boolean z2) {
        if (sIsUserExtendedLoggingEnabled == z2) {
            return;
        }
        EventManager eventManager = sEventManager;
        if (eventManager != null) {
            eventManager.changeEventCacheSize(z2 ? 20 : 10);
        }
        sIsUserExtendedLoggingEnabled = z2;
        if (z2) {
            sUserExtendedLoggingStopTime = System.currentTimeMillis() + 1800000;
        } else {
            sUserExtendedLoggingStopTime = 0L;
        }
    }

    public static void setSessionContext(Context context) {
        getSessionManager().setContext(context);
    }

    public static void setTag(String str) {
        TAG = str;
        DEBUG = isLoggable(3);
        INFO = isLoggable(4);
        VERBOSE = isLoggable(2);
        WARN = isLoggable(5);
        ERROR = isLoggable(6);
    }

    public static void startSession(String str) {
        getSessionManager().startSession(str, null);
    }

    public static void v(String str, String str2, Object... objArr) {
        if (sIsUserExtendedLoggingEnabled) {
            maybeDisableLogging();
            Slog.i(TAG, buildMessage(str, str2, objArr));
        } else if (VERBOSE) {
            Slog.v(TAG, buildMessage(str, str2, objArr));
        }
    }

    public static void w(String str, String str2, Object... objArr) {
        if (WARN) {
            Slog.w(TAG, buildMessage(str, str2, objArr));
        }
    }

    public static void wtf(String str, Throwable th, String str2, Object... objArr) {
        Slog.wtf(TAG, buildMessage(str, str2, objArr), th);
    }

    public static void addEvent(EventManager.Loggable loggable, String str, Object obj) {
        getEventManager().event(loggable, str, obj);
    }

    public static void startSession(Session.Info info, String str) {
        getSessionManager().startSession(info, str, null);
    }

    public static void wtf(Object obj, Throwable th, String str, Object... objArr) {
        Slog.wtf(TAG, buildMessage(getPrefixFromObject(obj), str, objArr), th);
    }

    public static void addEvent(EventManager.Loggable loggable, String str, String str2, Object... objArr) {
        getEventManager().event(loggable, str, str2, objArr);
    }

    public static void e(Object obj, Throwable th, String str, Object... objArr) {
        if (ERROR) {
            Slog.e(TAG, buildMessage(getPrefixFromObject(obj), str, objArr), th);
        }
    }

    public static void i(Object obj, String str, Object... objArr) {
        if (INFO) {
            Slog.i(TAG, buildMessage(getPrefixFromObject(obj), str, objArr));
        }
    }

    public static void startSession(String str, String str2) {
        getSessionManager().startSession(str, str2);
    }

    public static void w(Object obj, String str, Object... objArr) {
        if (WARN) {
            Slog.w(TAG, buildMessage(getPrefixFromObject(obj), str, objArr));
        }
    }

    public static void wtf(String str, String str2, Object... objArr) {
        String strBuildMessage = buildMessage(str, str2, objArr);
        Slog.wtf(TAG, strBuildMessage, new IllegalStateException(strBuildMessage));
    }

    public static void startSession(Session.Info info, String str, String str2) {
        getSessionManager().startSession(info, str, str2);
    }

    public static void wtf(Object obj, String str, Object... objArr) {
        String strBuildMessage = buildMessage(getPrefixFromObject(obj), str, objArr);
        Slog.wtf(TAG, strBuildMessage, new IllegalStateException(strBuildMessage));
    }

    public static void d(Object obj, String str, Object... objArr) {
        if (sIsUserExtendedLoggingEnabled) {
            maybeDisableLogging();
            Slog.i(TAG, buildMessage(getPrefixFromObject(obj), str, objArr));
        } else if (DEBUG) {
            Slog.d(TAG, buildMessage(getPrefixFromObject(obj), str, objArr));
        }
    }

    public static void v(Object obj, String str, Object... objArr) {
        if (sIsUserExtendedLoggingEnabled) {
            maybeDisableLogging();
            Slog.i(TAG, buildMessage(getPrefixFromObject(obj), str, objArr));
        } else if (VERBOSE) {
            Slog.v(TAG, buildMessage(getPrefixFromObject(obj), str, objArr));
        }
    }
}
