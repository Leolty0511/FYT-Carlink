package android.drm;

import android.accessibilityservice.c;
import android.app.m;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.IntentFilter;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import dalvik.system.CloseGuard;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class DrmManagerClient implements AutoCloseable {
    private static final int ACTION_PROCESS_DRM_INFO = 1002;
    private static final int ACTION_REMOVE_ALL_RIGHTS = 1001;
    public static final int ERROR_NONE = 0;
    public static final int ERROR_UNKNOWN = -2000;
    public static final int INVALID_SESSION = -1;
    private static final String TAG = "DrmManagerClient";
    private final CloseGuard mCloseGuard;
    private final AtomicBoolean mClosed = new AtomicBoolean();
    private Context mContext;
    private EventHandler mEventHandler;
    HandlerThread mEventThread;
    private InfoHandler mInfoHandler;
    HandlerThread mInfoThread;
    private long mNativeContext;
    private OnErrorListener mOnErrorListener;
    private OnEventListener mOnEventListener;
    private OnInfoListener mOnInfoListener;
    protected int mUniqueId;

    public class EventHandler extends Handler {
        public EventHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            DrmErrorEvent drmErrorEvent;
            DrmEvent drmEvent;
            HashMap map = new HashMap();
            int i2 = message.what;
            DrmEvent drmEvent2 = null;
            if (i2 == 1001) {
                DrmManagerClient drmManagerClient = DrmManagerClient.this;
                if (drmManagerClient._removeAllRights(drmManagerClient.mUniqueId) == 0) {
                    drmEvent = new DrmEvent(DrmManagerClient.this.mUniqueId, 1001, null);
                    drmEvent2 = drmEvent;
                    drmErrorEvent = null;
                } else {
                    drmErrorEvent = new DrmErrorEvent(DrmManagerClient.this.mUniqueId, 2007, null);
                }
            } else {
                if (i2 != 1002) {
                    m.C(new StringBuilder("Unknown message type "), message.what, DrmManagerClient.TAG);
                    return;
                }
                DrmInfo drmInfo = (DrmInfo) message.obj;
                DrmManagerClient drmManagerClient2 = DrmManagerClient.this;
                DrmInfoStatus drmInfoStatus_processDrmInfo = drmManagerClient2._processDrmInfo(drmManagerClient2.mUniqueId, drmInfo);
                map.put(DrmEvent.DRM_INFO_STATUS_OBJECT, drmInfoStatus_processDrmInfo);
                map.put(DrmEvent.DRM_INFO_OBJECT, drmInfo);
                if (drmInfoStatus_processDrmInfo == null || 1 != drmInfoStatus_processDrmInfo.statusCode) {
                    int infoType = drmInfoStatus_processDrmInfo != null ? drmInfoStatus_processDrmInfo.infoType : drmInfo.getInfoType();
                    DrmManagerClient drmManagerClient3 = DrmManagerClient.this;
                    drmErrorEvent = new DrmErrorEvent(drmManagerClient3.mUniqueId, drmManagerClient3.getErrorType(infoType), null, map);
                } else {
                    DrmManagerClient drmManagerClient4 = DrmManagerClient.this;
                    drmEvent = new DrmEvent(drmManagerClient4.mUniqueId, drmManagerClient4.getEventType(drmInfoStatus_processDrmInfo.infoType), null, map);
                    drmEvent2 = drmEvent;
                    drmErrorEvent = null;
                }
            }
            if (DrmManagerClient.this.mOnEventListener != null && drmEvent2 != null) {
                DrmManagerClient.this.mOnEventListener.onEvent(DrmManagerClient.this, drmEvent2);
            }
            if (DrmManagerClient.this.mOnErrorListener == null || drmErrorEvent == null) {
                return;
            }
            DrmManagerClient.this.mOnErrorListener.onError(DrmManagerClient.this, drmErrorEvent);
        }
    }

    public class InfoHandler extends Handler {
        public static final int INFO_EVENT_TYPE = 1;

        public InfoHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            DrmInfoEvent drmInfoEvent;
            DrmErrorEvent drmErrorEvent;
            if (message.what != 1) {
                m.C(new StringBuilder("Unknown message type "), message.what, DrmManagerClient.TAG);
                return;
            }
            int i2 = message.arg1;
            int i3 = message.arg2;
            String string = message.obj.toString();
            DrmInfoEvent drmInfoEvent2 = null;
            switch (i3) {
                case 1:
                case 3:
                case 4:
                case 5:
                case 6:
                    drmInfoEvent = new DrmInfoEvent(i2, i3, string);
                    DrmInfoEvent drmInfoEvent3 = drmInfoEvent;
                    drmErrorEvent = null;
                    drmInfoEvent2 = drmInfoEvent3;
                    break;
                case 2:
                    try {
                        DrmUtils.removeFile(string);
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    drmInfoEvent = new DrmInfoEvent(i2, i3, string);
                    DrmInfoEvent drmInfoEvent4 = drmInfoEvent;
                    drmErrorEvent = null;
                    drmInfoEvent2 = drmInfoEvent4;
                    break;
                default:
                    drmErrorEvent = new DrmErrorEvent(i2, i3, string);
                    break;
            }
            if (DrmManagerClient.this.mOnInfoListener != null && drmInfoEvent2 != null) {
                DrmManagerClient.this.mOnInfoListener.onInfo(DrmManagerClient.this, drmInfoEvent2);
            }
            if (DrmManagerClient.this.mOnErrorListener == null || drmErrorEvent == null) {
                return;
            }
            DrmManagerClient.this.mOnErrorListener.onError(DrmManagerClient.this, drmErrorEvent);
        }
    }

    public interface OnErrorListener {
        void onError(DrmManagerClient drmManagerClient, DrmErrorEvent drmErrorEvent);
    }

    public interface OnEventListener {
        void onEvent(DrmManagerClient drmManagerClient, DrmEvent drmEvent);
    }

    public interface OnInfoListener {
        void onInfo(DrmManagerClient drmManagerClient, DrmInfoEvent drmInfoEvent);
    }

    static {
        System.loadLibrary("drmframework_jni");
    }

    public DrmManagerClient(Context context) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        this.mContext = context;
        createEventThreads();
        this.mUniqueId = _initialize();
        closeGuard.open("release");
    }

    private native DrmInfo _acquireDrmInfo(int i2, DrmInfoRequest drmInfoRequest);

    private native boolean _canHandle(int i2, String str, String str2);

    private native int _checkRightsStatus(int i2, String str, int i3);

    private native DrmConvertedStatus _closeConvertSession(int i2, int i3);

    private native DrmConvertedStatus _convertData(int i2, int i3, byte[] bArr);

    private native DrmSupportInfo[] _getAllSupportInfo(int i2);

    private native ContentValues _getConstraints(int i2, String str, int i3);

    private native int _getDrmObjectType(int i2, String str, String str2);

    private native ContentValues _getMetadata(int i2, String str);

    private native String _getOriginalMimeType(int i2, String str, FileDescriptor fileDescriptor);

    private native int _initialize();

    private native void _installDrmEngine(int i2, String str);

    private native int _openConvertSession(int i2, String str);

    /* JADX INFO: Access modifiers changed from: private */
    public native DrmInfoStatus _processDrmInfo(int i2, DrmInfo drmInfo);

    private native void _release(int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public native int _removeAllRights(int i2);

    private native int _removeRights(int i2, String str);

    private native int _saveRights(int i2, DrmRights drmRights, String str, String str2);

    private native void _setListeners(int i2, Object obj);

    private String convertUriToPath(Uri uri) {
        AutoCloseable autoCloseable = null;
        if (uri == null) {
            return null;
        }
        String scheme = uri.getScheme();
        if (scheme == null || scheme.equals("") || scheme.equals(ContentResolver.SCHEME_FILE)) {
            return uri.getPath();
        }
        if (scheme.equals(IntentFilter.SCHEME_HTTP)) {
            return uri.toString();
        }
        if (!scheme.equals("content")) {
            throw new IllegalArgumentException("Given Uri scheme is not supported");
        }
        try {
            try {
                Cursor cursorQuery = this.mContext.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
                if (cursorQuery == null || cursorQuery.getCount() == 0 || !cursorQuery.moveToFirst()) {
                    throw new IllegalArgumentException("Given Uri could not be found in media store");
                }
                String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                cursorQuery.close();
                return string;
            } catch (SQLiteException unused) {
                throw new IllegalArgumentException("Given Uri is not formatted in a way so that it can be found in media store.");
            }
        } catch (Throwable th) {
            if (0 != 0) {
                autoCloseable.close();
            }
            throw th;
        }
    }

    private void createEventThreads() {
        if (this.mEventHandler == null && this.mInfoHandler == null) {
            HandlerThread handlerThread = new HandlerThread("DrmManagerClient.InfoHandler");
            this.mInfoThread = handlerThread;
            handlerThread.start();
            this.mInfoHandler = new InfoHandler(this.mInfoThread.getLooper());
            HandlerThread handlerThread2 = new HandlerThread("DrmManagerClient.EventHandler");
            this.mEventThread = handlerThread2;
            handlerThread2.start();
            this.mEventHandler = new EventHandler(this.mEventThread.getLooper());
        }
    }

    private void createListeners() {
        _setListeners(this.mUniqueId, new WeakReference(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getErrorType(int i2) {
        return (i2 == 1 || i2 == 2 || i2 == 3) ? 2006 : -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getEventType(int i2) {
        return (i2 == 1 || i2 == 2 || i2 == 3) ? 1002 : -1;
    }

    public static void notify(Object obj, int i2, int i3, String str) {
        InfoHandler infoHandler;
        DrmManagerClient drmManagerClient = (DrmManagerClient) ((WeakReference) obj).get();
        if (drmManagerClient == null || (infoHandler = drmManagerClient.mInfoHandler) == null) {
            return;
        }
        drmManagerClient.mInfoHandler.sendMessage(infoHandler.obtainMessage(1, i2, i3, str));
    }

    public DrmInfo acquireDrmInfo(DrmInfoRequest drmInfoRequest) {
        if (drmInfoRequest == null || !drmInfoRequest.isValid()) {
            throw new IllegalArgumentException("Given drmInfoRequest is invalid/null");
        }
        return _acquireDrmInfo(this.mUniqueId, drmInfoRequest);
    }

    public int acquireRights(DrmInfoRequest drmInfoRequest) {
        DrmInfo drmInfoAcquireDrmInfo = acquireDrmInfo(drmInfoRequest);
        return drmInfoAcquireDrmInfo == null ? ERROR_UNKNOWN : processDrmInfo(drmInfoAcquireDrmInfo);
    }

    public boolean canHandle(String str, String str2) {
        if ((str == null || str.equals("")) && (str2 == null || str2.equals(""))) {
            throw new IllegalArgumentException("Path or the mimetype should be non null");
        }
        return _canHandle(this.mUniqueId, str, str2);
    }

    public int checkRightsStatus(String str) {
        return checkRightsStatus(str, 0);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.mCloseGuard.close();
        if (this.mClosed.compareAndSet(false, true)) {
            if (this.mEventHandler != null) {
                this.mEventThread.quit();
                this.mEventThread = null;
            }
            if (this.mInfoHandler != null) {
                this.mInfoThread.quit();
                this.mInfoThread = null;
            }
            this.mEventHandler = null;
            this.mInfoHandler = null;
            this.mOnEventListener = null;
            this.mOnInfoListener = null;
            this.mOnErrorListener = null;
            _release(this.mUniqueId);
        }
    }

    public DrmConvertedStatus closeConvertSession(int i2) {
        return _closeConvertSession(this.mUniqueId, i2);
    }

    public DrmConvertedStatus convertData(int i2, byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            throw new IllegalArgumentException("Given inputData should be non null");
        }
        return _convertData(this.mUniqueId, i2, bArr);
    }

    public void finalize() throws Throwable {
        try {
            CloseGuard closeGuard = this.mCloseGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
            close();
        } finally {
            super.finalize();
        }
    }

    public String[] getAvailableDrmEngines() {
        DrmSupportInfo[] drmSupportInfoArr_getAllSupportInfo = _getAllSupportInfo(this.mUniqueId);
        ArrayList arrayList = new ArrayList();
        for (DrmSupportInfo drmSupportInfo : drmSupportInfoArr_getAllSupportInfo) {
            arrayList.add(drmSupportInfo.getDescriprition());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public ContentValues getConstraints(String str, int i2) {
        if (str == null || str.equals("") || !DrmStore.Action.isValid(i2)) {
            throw new IllegalArgumentException("Given usage or path is invalid/null");
        }
        return _getConstraints(this.mUniqueId, str, i2);
    }

    public int getDrmObjectType(String str, String str2) {
        if ((str == null || str.equals("")) && (str2 == null || str2.equals(""))) {
            throw new IllegalArgumentException("Path or the mimetype should be non null");
        }
        return _getDrmObjectType(this.mUniqueId, str, str2);
    }

    public ContentValues getMetadata(String str) {
        if (str == null || str.equals("")) {
            throw new IllegalArgumentException("Given path is invalid/null");
        }
        return _getMetadata(this.mUniqueId, str);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x002a A[EXC_TOP_SPLITTER, PHI: r0 r2
  0x002a: PHI (r0v6 java.lang.String) = (r0v12 java.lang.String), (r0v10 java.lang.String) binds: [B:22:0x0039, B:12:0x0028] A[DONT_GENERATE, DONT_INLINE]
  0x002a: PHI (r2v2 java.io.FileInputStream) = (r2v1 java.io.FileInputStream), (r2v7 java.io.FileInputStream) binds: [B:22:0x0039, B:12:0x0028] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public String getOriginalMimeType(String str) {
        FileInputStream fileInputStream;
        FileDescriptor fd;
        if (str == null || str.equals("")) {
            throw new IllegalArgumentException("Given path should be non null");
        }
        FileInputStream fileInputStream2 = null;
        str_getOriginalMimeType = null;
        String str_getOriginalMimeType = null;
        try {
            File file = new File(str);
            if (file.exists()) {
                fileInputStream = new FileInputStream(file);
                try {
                    fd = fileInputStream.getFD();
                } catch (IOException unused) {
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } else {
                fd = null;
                fileInputStream = null;
            }
            str_getOriginalMimeType = _getOriginalMimeType(this.mUniqueId, str, fd);
            if (fileInputStream != null) {
                fileInputStream.close();
            }
        } catch (IOException unused4) {
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
        return str_getOriginalMimeType;
    }

    public void installDrmEngine(String str) {
        if (str == null || str.equals("")) {
            throw new IllegalArgumentException(c.k("Given engineFilePath: ", str, "is not valid"));
        }
        _installDrmEngine(this.mUniqueId, str);
    }

    public int openConvertSession(String str) {
        if (str == null || str.equals("")) {
            throw new IllegalArgumentException("Path or the mimeType should be non null");
        }
        return _openConvertSession(this.mUniqueId, str);
    }

    public int processDrmInfo(DrmInfo drmInfo) {
        if (drmInfo == null || !drmInfo.isValid()) {
            throw new IllegalArgumentException("Given drmInfo is invalid/null");
        }
        EventHandler eventHandler = this.mEventHandler;
        if (eventHandler == null) {
            return ERROR_UNKNOWN;
        }
        if (this.mEventHandler.sendMessage(eventHandler.obtainMessage(1002, drmInfo))) {
            return 0;
        }
        return ERROR_UNKNOWN;
    }

    @Deprecated
    public void release() {
        close();
    }

    public int removeAllRights() {
        EventHandler eventHandler = this.mEventHandler;
        if (eventHandler == null) {
            return ERROR_UNKNOWN;
        }
        if (this.mEventHandler.sendMessage(eventHandler.obtainMessage(1001))) {
            return 0;
        }
        return ERROR_UNKNOWN;
    }

    public int removeRights(String str) {
        if (str == null || str.equals("")) {
            throw new IllegalArgumentException("Given path should be non null");
        }
        return _removeRights(this.mUniqueId, str);
    }

    public int saveRights(DrmRights drmRights, String str, String str2) throws Throwable {
        if (drmRights == null || !drmRights.isValid()) {
            throw new IllegalArgumentException("Given drmRights or contentPath is not valid");
        }
        if (str != null && !str.equals("")) {
            DrmUtils.writeToFile(str, drmRights.getData());
        }
        return _saveRights(this.mUniqueId, drmRights, str, str2);
    }

    public synchronized void setOnErrorListener(OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
        if (onErrorListener != null) {
            createListeners();
        }
    }

    public synchronized void setOnEventListener(OnEventListener onEventListener) {
        this.mOnEventListener = onEventListener;
        if (onEventListener != null) {
            createListeners();
        }
    }

    public synchronized void setOnInfoListener(OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
        if (onInfoListener != null) {
            createListeners();
        }
    }

    public int checkRightsStatus(Uri uri) {
        if (uri == null || Uri.EMPTY == uri) {
            throw new IllegalArgumentException("Given uri is not valid");
        }
        return checkRightsStatus(convertUriToPath(uri));
    }

    public boolean canHandle(Uri uri, String str) {
        if ((uri != null && Uri.EMPTY != uri) || (str != null && !str.equals(""))) {
            return canHandle(convertUriToPath(uri), str);
        }
        throw new IllegalArgumentException("Uri or the mimetype should be non null");
    }

    public ContentValues getConstraints(Uri uri, int i2) {
        if (uri != null && Uri.EMPTY != uri) {
            return getConstraints(convertUriToPath(uri), i2);
        }
        throw new IllegalArgumentException("Uri should be non null");
    }

    public int getDrmObjectType(Uri uri, String str) {
        String strConvertUriToPath = "";
        if ((uri != null && Uri.EMPTY != uri) || (str != null && !str.equals(""))) {
            try {
                strConvertUriToPath = convertUriToPath(uri);
            } catch (Exception unused) {
                Log.w(TAG, "Given Uri could not be found in media store");
            }
            return getDrmObjectType(strConvertUriToPath, str);
        }
        throw new IllegalArgumentException("Uri or the mimetype should be non null");
    }

    public ContentValues getMetadata(Uri uri) {
        if (uri != null && Uri.EMPTY != uri) {
            return getMetadata(convertUriToPath(uri));
        }
        throw new IllegalArgumentException("Uri should be non null");
    }

    public int removeRights(Uri uri) {
        if (uri != null && Uri.EMPTY != uri) {
            return removeRights(convertUriToPath(uri));
        }
        throw new IllegalArgumentException("Given uri is not valid");
    }

    public int checkRightsStatus(String str, int i2) {
        if (str != null && !str.equals("") && DrmStore.Action.isValid(i2)) {
            return _checkRightsStatus(this.mUniqueId, str, i2);
        }
        throw new IllegalArgumentException("Given path or action is not valid");
    }

    public int checkRightsStatus(Uri uri, int i2) {
        if (uri != null && Uri.EMPTY != uri) {
            return checkRightsStatus(convertUriToPath(uri), i2);
        }
        throw new IllegalArgumentException("Given uri is not valid");
    }

    public String getOriginalMimeType(Uri uri) {
        if (uri != null && Uri.EMPTY != uri) {
            return getOriginalMimeType(convertUriToPath(uri));
        }
        throw new IllegalArgumentException("Given uri is not valid");
    }
}
