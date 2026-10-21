package android.database;

import android.net.Uri;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public abstract class ContentObserver {
    public Handler mHandler;
    private final Object mLock = new Object();
    private Transport mTransport;

    public final class NotificationRunnable implements Runnable {
        private final boolean mSelfChange;
        private final Uri mUri;

        public NotificationRunnable(boolean z2, Uri uri) {
            this.mSelfChange = z2;
            this.mUri = uri;
        }

        @Override // java.lang.Runnable
        public void run() {
            ContentObserver.this.onChange(this.mSelfChange, this.mUri);
        }
    }

    public static final class Transport extends IContentObserver.Stub {
        private ContentObserver mContentObserver;

        public Transport(ContentObserver contentObserver) {
            this.mContentObserver = contentObserver;
        }

        @Override // android.database.IContentObserver
        public void onChange(boolean z2, Uri uri) {
            ContentObserver contentObserver = this.mContentObserver;
            if (contentObserver != null) {
                contentObserver.dispatchChange(z2, uri);
            }
        }

        public void releaseContentObserver() {
            this.mContentObserver = null;
        }
    }

    public ContentObserver(Handler handler) {
        this.mHandler = handler;
    }

    public boolean deliverSelfNotifications() {
        return false;
    }

    @Deprecated
    public final void dispatchChange(boolean z2) {
        dispatchChange(z2, null);
    }

    public IContentObserver getContentObserver() {
        Transport transport;
        synchronized (this.mLock) {
            if (this.mTransport == null) {
                this.mTransport = new Transport(this);
            }
            transport = this.mTransport;
        }
        return transport;
    }

    public void onChange(boolean z2) {
    }

    public void onChange(boolean z2, Uri uri) {
        onChange(z2);
    }

    public IContentObserver releaseContentObserver() {
        Transport transport;
        synchronized (this.mLock) {
            transport = this.mTransport;
            if (transport != null) {
                transport.releaseContentObserver();
                this.mTransport = null;
            }
        }
        return transport;
    }

    public final void dispatchChange(boolean z2, Uri uri) {
        Handler handler = this.mHandler;
        if (handler == null) {
            onChange(z2, uri);
        } else {
            handler.post(new NotificationRunnable(z2, uri));
        }
    }
}
