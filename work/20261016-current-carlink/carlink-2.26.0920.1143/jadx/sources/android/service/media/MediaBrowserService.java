package android.service.media;

import android.accessibilityservice.c;
import android.app.Service;
import android.content.Intent;
import android.content.pm.ParceledListSlice;
import android.media.browse.MediaBrowser;
import android.media.browse.MediaBrowserUtils;
import android.media.session.MediaSession;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Pair;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MediaBrowserService extends Service {
    private static final boolean DBG = false;
    public static final String KEY_MEDIA_ITEM = "media_item";
    private static final int RESULT_ERROR = -1;
    private static final int RESULT_FLAG_ON_LOAD_ITEM_NOT_IMPLEMENTED = 2;
    private static final int RESULT_FLAG_OPTION_NOT_HANDLED = 1;
    private static final int RESULT_OK = 0;
    public static final String SERVICE_INTERFACE = "android.media.browse.MediaBrowserService";
    private static final String TAG = "MediaBrowserService";
    private ServiceBinder mBinder;
    private ConnectionRecord mCurConnection;
    MediaSession.Token mSession;
    private final ArrayMap<IBinder, ConnectionRecord> mConnections = new ArrayMap<>();
    private final Handler mHandler = new Handler();

    public static final class BrowserRoot {
        public static final String EXTRA_OFFLINE = "android.service.media.extra.OFFLINE";
        public static final String EXTRA_RECENT = "android.service.media.extra.RECENT";
        public static final String EXTRA_SUGGESTED = "android.service.media.extra.SUGGESTED";
        private final Bundle mExtras;
        private final String mRootId;

        public BrowserRoot(String str, Bundle bundle) {
            if (str == null) {
                throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead.");
            }
            this.mRootId = str;
            this.mExtras = bundle;
        }

        public Bundle getExtras() {
            return this.mExtras;
        }

        public String getRootId() {
            return this.mRootId;
        }
    }

    public class ConnectionRecord implements IBinder.DeathRecipient {
        IMediaBrowserServiceCallbacks callbacks;
        String pkg;
        BrowserRoot root;
        Bundle rootHints;
        HashMap<String, List<Pair<IBinder, Bundle>>> subscriptions;

        private ConnectionRecord() {
            this.subscriptions = new HashMap<>();
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MediaBrowserService.this.mHandler.post(new Runnable() { // from class: android.service.media.MediaBrowserService.ConnectionRecord.1
                @Override // java.lang.Runnable
                public void run() {
                    MediaBrowserService.this.mConnections.remove(ConnectionRecord.this.callbacks.asBinder());
                }
            });
        }
    }

    public class Result<T> {
        private Object mDebug;
        private boolean mDetachCalled;
        private int mFlags;
        private boolean mSendResultCalled;

        public Result(Object obj) {
            this.mDebug = obj;
        }

        public void detach() {
            if (this.mDetachCalled) {
                throw new IllegalStateException("detach() called when detach() had already been called for: " + this.mDebug);
            }
            if (!this.mSendResultCalled) {
                this.mDetachCalled = true;
            } else {
                throw new IllegalStateException("detach() called when sendResult() had already been called for: " + this.mDebug);
            }
        }

        public boolean isDone() {
            return this.mDetachCalled || this.mSendResultCalled;
        }

        public void onResultSent(T t2, int i2) {
        }

        public void sendResult(T t2) {
            if (this.mSendResultCalled) {
                throw new IllegalStateException("sendResult() called twice for: " + this.mDebug);
            }
            this.mSendResultCalled = true;
            onResultSent(t2, this.mFlags);
        }

        public void setFlags(int i2) {
            this.mFlags = i2;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ResultFlags {
    }

    public class ServiceBinder extends IMediaBrowserService.Stub {
        private ServiceBinder() {
        }

        @Override // android.service.media.IMediaBrowserService
        public void addSubscription(final String str, final IBinder iBinder, final Bundle bundle, final IMediaBrowserServiceCallbacks iMediaBrowserServiceCallbacks) {
            MediaBrowserService.this.mHandler.post(new Runnable() { // from class: android.service.media.MediaBrowserService.ServiceBinder.3
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserService.this.mConnections.get(iMediaBrowserServiceCallbacks.asBinder());
                    if (connectionRecord == null) {
                        c.C(new StringBuilder("addSubscription for callback that isn't registered id="), str, MediaBrowserService.TAG);
                    } else {
                        MediaBrowserService.this.addSubscription(str, connectionRecord, iBinder, bundle);
                    }
                }
            });
        }

        @Override // android.service.media.IMediaBrowserService
        public void addSubscriptionDeprecated(String str, IMediaBrowserServiceCallbacks iMediaBrowserServiceCallbacks) {
        }

        @Override // android.service.media.IMediaBrowserService
        public void connect(final String str, final Bundle bundle, final IMediaBrowserServiceCallbacks iMediaBrowserServiceCallbacks) {
            final int callingUid = Binder.getCallingUid();
            if (MediaBrowserService.this.isValidPackage(str, callingUid)) {
                MediaBrowserService.this.mHandler.post(new Runnable() { // from class: android.service.media.MediaBrowserService.ServiceBinder.1
                    @Override // java.lang.Runnable
                    public void run() {
                        IBinder iBinderAsBinder = iMediaBrowserServiceCallbacks.asBinder();
                        MediaBrowserService.this.mConnections.remove(iBinderAsBinder);
                        ConnectionRecord connectionRecord = new ConnectionRecord();
                        String str2 = str;
                        connectionRecord.pkg = str2;
                        Bundle bundle2 = bundle;
                        connectionRecord.rootHints = bundle2;
                        connectionRecord.callbacks = iMediaBrowserServiceCallbacks;
                        BrowserRoot browserRootOnGetRoot = MediaBrowserService.this.onGetRoot(str2, callingUid, bundle2);
                        connectionRecord.root = browserRootOnGetRoot;
                        if (browserRootOnGetRoot == null) {
                            Log.i(MediaBrowserService.TAG, "No root for client " + str + " from service " + getClass().getName());
                            try {
                                iMediaBrowserServiceCallbacks.onConnectFailed();
                                return;
                            } catch (RemoteException unused) {
                                c.C(new StringBuilder("Calling onConnectFailed() failed. Ignoring. pkg="), str, MediaBrowserService.TAG);
                                return;
                            }
                        }
                        try {
                            MediaBrowserService.this.mConnections.put(iBinderAsBinder, connectionRecord);
                            iBinderAsBinder.linkToDeath(connectionRecord, 0);
                            if (MediaBrowserService.this.mSession != null) {
                                iMediaBrowserServiceCallbacks.onConnect(connectionRecord.root.getRootId(), MediaBrowserService.this.mSession, connectionRecord.root.getExtras());
                            }
                        } catch (RemoteException unused2) {
                            c.C(new StringBuilder("Calling onConnect() failed. Dropping client. pkg="), str, MediaBrowserService.TAG);
                            MediaBrowserService.this.mConnections.remove(iBinderAsBinder);
                        }
                    }
                });
                return;
            }
            throw new IllegalArgumentException("Package/uid mismatch: uid=" + callingUid + " package=" + str);
        }

        @Override // android.service.media.IMediaBrowserService
        public void disconnect(final IMediaBrowserServiceCallbacks iMediaBrowserServiceCallbacks) {
            MediaBrowserService.this.mHandler.post(new Runnable() { // from class: android.service.media.MediaBrowserService.ServiceBinder.2
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserService.this.mConnections.remove(iMediaBrowserServiceCallbacks.asBinder());
                    if (connectionRecord != null) {
                        connectionRecord.callbacks.asBinder().unlinkToDeath(connectionRecord, 0);
                    }
                }
            });
        }

        @Override // android.service.media.IMediaBrowserService
        public void getMediaItem(final String str, final ResultReceiver resultReceiver, final IMediaBrowserServiceCallbacks iMediaBrowserServiceCallbacks) {
            MediaBrowserService.this.mHandler.post(new Runnable() { // from class: android.service.media.MediaBrowserService.ServiceBinder.5
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserService.this.mConnections.get(iMediaBrowserServiceCallbacks.asBinder());
                    if (connectionRecord == null) {
                        c.C(new StringBuilder("getMediaItem for callback that isn't registered id="), str, MediaBrowserService.TAG);
                    } else {
                        MediaBrowserService.this.performLoadItem(str, connectionRecord, resultReceiver);
                    }
                }
            });
        }

        @Override // android.service.media.IMediaBrowserService
        public void removeSubscription(final String str, final IBinder iBinder, final IMediaBrowserServiceCallbacks iMediaBrowserServiceCallbacks) {
            MediaBrowserService.this.mHandler.post(new Runnable() { // from class: android.service.media.MediaBrowserService.ServiceBinder.4
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserService.this.mConnections.get(iMediaBrowserServiceCallbacks.asBinder());
                    if (connectionRecord == null) {
                        c.C(new StringBuilder("removeSubscription for callback that isn't registered id="), str, MediaBrowserService.TAG);
                    } else {
                        if (MediaBrowserService.this.removeSubscription(str, connectionRecord, iBinder)) {
                            return;
                        }
                        Log.w(MediaBrowserService.TAG, "removeSubscription called for " + str + " which is not subscribed");
                    }
                }
            });
        }

        @Override // android.service.media.IMediaBrowserService
        public void removeSubscriptionDeprecated(String str, IMediaBrowserServiceCallbacks iMediaBrowserServiceCallbacks) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSubscription(String str, ConnectionRecord connectionRecord, IBinder iBinder, Bundle bundle) {
        List<Pair<IBinder, Bundle>> arrayList = connectionRecord.subscriptions.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        for (Pair<IBinder, Bundle> pair : arrayList) {
            if (iBinder == pair.first && MediaBrowserUtils.areSameOptions(bundle, pair.second)) {
                return;
            }
        }
        arrayList.add(new Pair<>(iBinder, bundle));
        connectionRecord.subscriptions.put(str, arrayList);
        performLoadChildren(str, connectionRecord, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<MediaBrowser.MediaItem> applyOptions(List<MediaBrowser.MediaItem> list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        int i2 = bundle.getInt(MediaBrowser.EXTRA_PAGE, -1);
        int i3 = bundle.getInt(MediaBrowser.EXTRA_PAGE_SIZE, -1);
        if (i2 == -1 && i3 == -1) {
            return list;
        }
        int i4 = i3 * i2;
        int size = i4 + i3;
        if (i2 < 0 || i3 < 1 || i4 >= list.size()) {
            return Collections.EMPTY_LIST;
        }
        if (size > list.size()) {
            size = list.size();
        }
        return list.subList(i4, size);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidPackage(String str, int i2) {
        if (str == null) {
            return false;
        }
        for (String str2 : getPackageManager().getPackagesForUid(i2)) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    private void notifyChildrenChangedInternal(final String str, final Bundle bundle) {
        if (str == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        }
        this.mHandler.post(new Runnable() { // from class: android.service.media.MediaBrowserService.2
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = MediaBrowserService.this.mConnections.keySet().iterator();
                while (it.hasNext()) {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserService.this.mConnections.get((IBinder) it.next());
                    List<Pair<IBinder, Bundle>> list = connectionRecord.subscriptions.get(str);
                    if (list != null) {
                        for (Pair<IBinder, Bundle> pair : list) {
                            if (MediaBrowserUtils.hasDuplicatedItems(bundle, pair.second)) {
                                MediaBrowserService.this.performLoadChildren(str, connectionRecord, pair.second);
                            }
                        }
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performLoadChildren(final String str, final ConnectionRecord connectionRecord, final Bundle bundle) {
        Result<List<MediaBrowser.MediaItem>> result = new Result<List<MediaBrowser.MediaItem>>(str) { // from class: android.service.media.MediaBrowserService.3
            @Override // android.service.media.MediaBrowserService.Result
            public void onResultSent(List<MediaBrowser.MediaItem> list, int i2) {
                if (MediaBrowserService.this.mConnections.get(connectionRecord.callbacks.asBinder()) != connectionRecord) {
                    return;
                }
                if ((i2 & 1) != 0) {
                    list = MediaBrowserService.this.applyOptions(list, bundle);
                }
                try {
                    connectionRecord.callbacks.onLoadChildrenWithOptions(str, list == null ? null : new ParceledListSlice(list), bundle);
                } catch (RemoteException unused) {
                    StringBuilder sb = new StringBuilder("Calling onLoadChildren() failed for id=");
                    sb.append(str);
                    sb.append(" package=");
                    c.C(sb, connectionRecord.pkg, MediaBrowserService.TAG);
                }
            }
        };
        this.mCurConnection = connectionRecord;
        if (bundle == null) {
            onLoadChildren(str, result);
        } else {
            onLoadChildren(str, result, bundle);
        }
        this.mCurConnection = null;
        if (result.isDone()) {
            return;
        }
        throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + connectionRecord.pkg + " id=" + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performLoadItem(final String str, final ConnectionRecord connectionRecord, final ResultReceiver resultReceiver) {
        Result<MediaBrowser.MediaItem> result = new Result<MediaBrowser.MediaItem>(str) { // from class: android.service.media.MediaBrowserService.4
            @Override // android.service.media.MediaBrowserService.Result
            public void onResultSent(MediaBrowser.MediaItem mediaItem, int i2) {
                if (MediaBrowserService.this.mConnections.get(connectionRecord.callbacks.asBinder()) != connectionRecord) {
                    return;
                }
                if ((i2 & 2) != 0) {
                    resultReceiver.send(-1, null);
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putParcelable(MediaBrowserService.KEY_MEDIA_ITEM, mediaItem);
                resultReceiver.send(0, bundle);
            }
        };
        this.mCurConnection = connectionRecord;
        onLoadItem(str, result);
        this.mCurConnection = null;
        if (!result.isDone()) {
            throw new IllegalStateException(c.j("onLoadItem must call detach() or sendResult() before returning for id=", str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean removeSubscription(String str, ConnectionRecord connectionRecord, IBinder iBinder) {
        boolean z2 = false;
        if (iBinder == null) {
            return connectionRecord.subscriptions.remove(str) != null;
        }
        List<Pair<IBinder, Bundle>> list = connectionRecord.subscriptions.get(str);
        if (list != null) {
            Iterator<Pair<IBinder, Bundle>> it = list.iterator();
            while (it.hasNext()) {
                if (iBinder == it.next().first) {
                    it.remove();
                    z2 = true;
                }
            }
            if (list.size() == 0) {
                connectionRecord.subscriptions.remove(str);
            }
        }
        return z2;
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public final Bundle getBrowserRootHints() {
        ConnectionRecord connectionRecord = this.mCurConnection;
        if (connectionRecord == null) {
            throw new IllegalStateException("This should be called inside of onLoadChildren or onLoadItem methods");
        }
        if (connectionRecord.rootHints == null) {
            return null;
        }
        return new Bundle(this.mCurConnection.rootHints);
    }

    public MediaSession.Token getSessionToken() {
        return this.mSession;
    }

    public void notifyChildrenChanged(String str) {
        notifyChildrenChangedInternal(str, null);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (SERVICE_INTERFACE.equals(intent.getAction())) {
            return this.mBinder;
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mBinder = new ServiceBinder();
    }

    public abstract BrowserRoot onGetRoot(String str, int i2, Bundle bundle);

    public abstract void onLoadChildren(String str, Result<List<MediaBrowser.MediaItem>> result);

    public void onLoadChildren(String str, Result<List<MediaBrowser.MediaItem>> result, Bundle bundle) {
        result.setFlags(1);
        onLoadChildren(str, result);
    }

    public void onLoadItem(String str, Result<MediaBrowser.MediaItem> result) {
        result.setFlags(2);
        result.sendResult(null);
    }

    public void setSessionToken(final MediaSession.Token token) {
        if (token == null) {
            throw new IllegalArgumentException("Session token may not be null.");
        }
        if (this.mSession != null) {
            throw new IllegalStateException("The session token has already been set.");
        }
        this.mSession = token;
        this.mHandler.post(new Runnable() { // from class: android.service.media.MediaBrowserService.1
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = MediaBrowserService.this.mConnections.values().iterator();
                while (it.hasNext()) {
                    ConnectionRecord connectionRecord = (ConnectionRecord) it.next();
                    try {
                        connectionRecord.callbacks.onConnect(connectionRecord.root.getRootId(), token, connectionRecord.root.getExtras());
                    } catch (RemoteException unused) {
                        Log.w(MediaBrowserService.TAG, "Connection for " + connectionRecord.pkg + " is no longer valid.");
                        it.remove();
                    }
                }
            }
        });
    }

    public void notifyChildrenChanged(String str, Bundle bundle) {
        if (bundle == null) {
            throw new IllegalArgumentException("options cannot be null in notifyChildrenChanged");
        }
        notifyChildrenChangedInternal(str, bundle);
    }
}
