package android.database;

import android.net.Uri;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ContentObservable extends Observable<ContentObserver> {
    @Deprecated
    public void dispatchChange(boolean z2) {
        dispatchChange(z2, null);
    }

    @Deprecated
    public void notifyChange(boolean z2) {
        synchronized (this.mObservers) {
            Iterator it = this.mObservers.iterator();
            while (it.hasNext()) {
                ((ContentObserver) it.next()).onChange(z2, null);
            }
        }
    }

    public void dispatchChange(boolean z2, Uri uri) {
        synchronized (this.mObservers) {
            for (T t2 : this.mObservers) {
                if (!z2 || t2.deliverSelfNotifications()) {
                    t2.dispatchChange(z2, uri);
                }
            }
        }
    }

    @Override // android.database.Observable
    public void registerObserver(ContentObserver contentObserver) {
        super.registerObserver(contentObserver);
    }
}
