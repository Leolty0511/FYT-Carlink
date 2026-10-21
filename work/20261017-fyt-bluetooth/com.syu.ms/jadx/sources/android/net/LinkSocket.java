package android.net;

import android.util.Log;
import java.net.Socket;
import java.net.SocketAddress;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class LinkSocket extends Socket {
    private static final boolean DBG = true;
    private static final String TAG = "LinkSocket";

    public static final class LinkRequestReason {
        public static final int LINK_PROBLEM_NONE = 0;
        public static final int LINK_PROBLEM_UNKNOWN = 1;

        private LinkRequestReason() {
        }
    }

    public LinkSocket() {
        log("LinkSocket() EX");
    }

    public static void log(String str) {
        Log.d(TAG, str);
    }

    @Override // java.net.Socket
    @Deprecated
    public void bind(SocketAddress socketAddress) {
        log("bind(localAddr) EX throws IOException");
        throw new UnsupportedOperationException("bind is deprecated for LinkSocket");
    }

    @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        log("close() EX");
    }

    public void connect(String str, int i2, int i3) {
        log("connect(dstName, dstPort, timeout) EX");
    }

    public LinkCapabilities getCapabilities() {
        log("getCapabilities() EX");
        return null;
    }

    public LinkProperties getLinkProperties() {
        log("LinkProperties() EX");
        return new LinkProperties();
    }

    public LinkCapabilities getNeededCapabilities() {
        log("getNeeds() EX");
        return null;
    }

    public Set<Integer> getTrackedCapabilities() {
        log("getTrackedCapabilities(capabilities) EX");
        return new HashSet();
    }

    public void requestNewLink(LinkRequestReason linkRequestReason) {
        log("requestNewLink(linkRequestReason) EX");
    }

    public boolean setNeededCapabilities(LinkCapabilities linkCapabilities) {
        log("setNeeds() EX");
        return false;
    }

    public void setTrackedCapabilities(Set<Integer> set) {
        log("setTrackedCapabilities(capabilities) EX");
    }

    public void connect(String str, int i2) {
        log("connect(dstName, dstPort, timeout) EX");
    }

    public LinkCapabilities getCapabilities(Set<Integer> set) {
        log("getCapabilities(capabilities) EX");
        return new LinkCapabilities();
    }

    public LinkSocket(LinkSocketNotifier linkSocketNotifier) {
        log("LinkSocket(notifier) EX");
    }

    @Override // java.net.Socket
    @Deprecated
    public void connect(SocketAddress socketAddress, int i2) {
        log("connect(remoteAddr, timeout) EX DEPRECATED");
    }

    @Override // java.net.Socket
    @Deprecated
    public void connect(SocketAddress socketAddress) {
        log("connect(remoteAddr) EX DEPRECATED");
    }

    public LinkSocket(LinkSocketNotifier linkSocketNotifier, Proxy proxy) {
        log("LinkSocket(notifier, proxy) EX");
    }

    public void connect(int i2) {
        log("connect(timeout) EX");
    }

    public void connect() {
        log("connect() EX");
    }
}
