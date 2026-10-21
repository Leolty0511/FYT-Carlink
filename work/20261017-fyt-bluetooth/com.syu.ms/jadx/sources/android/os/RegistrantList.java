package android.os;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class RegistrantList {
    public ArrayList registrants = new ArrayList();

    private synchronized void internalNotifyRegistrants(Object obj, Throwable th) {
        int size = this.registrants.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((Registrant) this.registrants.get(i2)).internalNotifyRegistrant(obj, th);
        }
    }

    public synchronized void add(Handler handler, int i2, Object obj) {
        add(new Registrant(handler, i2, obj));
    }

    public synchronized void addUnique(Handler handler, int i2, Object obj) {
        remove(handler);
        add(new Registrant(handler, i2, obj));
    }

    public synchronized Object get(int i2) {
        return this.registrants.get(i2);
    }

    public void notifyException(Throwable th) {
        internalNotifyRegistrants(null, th);
    }

    public void notifyRegistrants() {
        internalNotifyRegistrants(null, null);
    }

    public void notifyResult(Object obj) {
        internalNotifyRegistrants(obj, null);
    }

    public synchronized void remove(Handler handler) {
        int size = this.registrants.size();
        for (int i2 = 0; i2 < size; i2++) {
            Registrant registrant = (Registrant) this.registrants.get(i2);
            Handler handler2 = registrant.getHandler();
            if (handler2 == null || handler2 == handler) {
                registrant.clear();
            }
        }
        removeCleared();
    }

    public synchronized void removeCleared() {
        for (int size = this.registrants.size() - 1; size >= 0; size--) {
            if (((Registrant) this.registrants.get(size)).refH == null) {
                this.registrants.remove(size);
            }
        }
    }

    public synchronized int size() {
        return this.registrants.size();
    }

    public void notifyRegistrants(AsyncResult asyncResult) {
        internalNotifyRegistrants(asyncResult.result, asyncResult.exception);
    }

    public synchronized void add(Registrant registrant) {
        removeCleared();
        this.registrants.add(registrant);
    }
}
