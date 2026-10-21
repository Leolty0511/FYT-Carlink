package android.os;

import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class UEventObserver {
    private static final boolean DEBUG = false;
    private static final String TAG = "UEventObserver";
    private static UEventThread sThread;

    public static final class UEvent {
        private final HashMap<String, String> mMap = new HashMap<>();

        public UEvent(String str) {
            int length = str.length();
            int i2 = 0;
            while (i2 < length) {
                int iIndexOf = str.indexOf(61, i2);
                int iIndexOf2 = str.indexOf(0, i2);
                if (iIndexOf2 < 0) {
                    return;
                }
                if (iIndexOf > i2 && iIndexOf < iIndexOf2) {
                    this.mMap.put(str.substring(i2, iIndexOf), str.substring(iIndexOf + 1, iIndexOf2));
                }
                i2 = iIndexOf2 + 1;
            }
        }

        public String get(String str) {
            return this.mMap.get(str);
        }

        public String toString() {
            return this.mMap.toString();
        }

        public String get(String str, String str2) {
            String str3 = this.mMap.get(str);
            return str3 == null ? str2 : str3;
        }
    }

    public static final class UEventThread extends Thread {
        private final ArrayList<Object> mKeysAndObservers;
        private final ArrayList<UEventObserver> mTempObserversToSignal;

        public UEventThread() {
            super(UEventObserver.TAG);
            this.mKeysAndObservers = new ArrayList<>();
            this.mTempObserversToSignal = new ArrayList<>();
        }

        private void sendEvent(String str) {
            int i2;
            synchronized (this.mKeysAndObservers) {
                int size = this.mKeysAndObservers.size();
                for (int i3 = 0; i3 < size; i3 += 2) {
                    if (str.contains((String) this.mKeysAndObservers.get(i3))) {
                        this.mTempObserversToSignal.add((UEventObserver) this.mKeysAndObservers.get(i3 + 1));
                    }
                }
            }
            if (this.mTempObserversToSignal.isEmpty()) {
                return;
            }
            UEvent uEvent = new UEvent(str);
            int size2 = this.mTempObserversToSignal.size();
            for (i2 = 0; i2 < size2; i2++) {
                this.mTempObserversToSignal.get(i2).onUEvent(uEvent);
            }
            this.mTempObserversToSignal.clear();
        }

        public void addObserver(String str, UEventObserver uEventObserver) {
            synchronized (this.mKeysAndObservers) {
                this.mKeysAndObservers.add(str);
                this.mKeysAndObservers.add(uEventObserver);
                UEventObserver.nativeAddMatch(str);
            }
        }

        public void removeObserver(UEventObserver uEventObserver) {
            synchronized (this.mKeysAndObservers) {
                int i2 = 0;
                while (i2 < this.mKeysAndObservers.size()) {
                    int i3 = i2 + 1;
                    if (this.mKeysAndObservers.get(i3) == uEventObserver) {
                        this.mKeysAndObservers.remove(i3);
                        UEventObserver.nativeRemoveMatch((String) this.mKeysAndObservers.remove(i2));
                    } else {
                        i2 += 2;
                    }
                }
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            UEventObserver.nativeSetup();
            while (true) {
                String strNativeWaitForNextEvent = UEventObserver.nativeWaitForNextEvent();
                if (strNativeWaitForNextEvent != null) {
                    sendEvent(strNativeWaitForNextEvent);
                }
            }
        }
    }

    private static UEventThread getThread() {
        UEventThread uEventThread;
        synchronized (UEventObserver.class) {
            if (sThread == null) {
                UEventThread uEventThread2 = new UEventThread();
                sThread = uEventThread2;
                uEventThread2.start();
            }
            uEventThread = sThread;
        }
        return uEventThread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeAddMatch(String str);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeRemoveMatch(String str);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeSetup();

    /* JADX INFO: Access modifiers changed from: private */
    public static native String nativeWaitForNextEvent();

    private static UEventThread peekThread() {
        UEventThread uEventThread;
        synchronized (UEventObserver.class) {
            uEventThread = sThread;
        }
        return uEventThread;
    }

    public void finalize() throws Throwable {
        try {
            stopObserving();
        } finally {
            super.finalize();
        }
    }

    public abstract void onUEvent(UEvent uEvent);

    public final void startObserving(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("match substring must be non-empty");
        }
        getThread().addObserver(str, this);
    }

    public final void stopObserving() {
        UEventThread thread = getThread();
        if (thread != null) {
            thread.removeObserver(this);
        }
    }
}
