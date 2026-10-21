package com.android.server;

import android.accessibilityservice.c;
import android.app.m;
import android.os.StrictMode;
import android.os.SystemProperties;
import android.util.Log;
import android.util.Slog;
import dalvik.system.SocketTagger;
import java.io.FileDescriptor;

/* JADX INFO: loaded from: classes3.dex */
public final class NetworkManagementSocketTagger extends SocketTagger {
    private static final boolean LOGD = false;
    public static final String PROP_QTAGUID_ENABLED = "net.qtaguid_enabled";
    private static final String TAG = "NetworkManagementSocketTagger";
    private static ThreadLocal<SocketTags> threadSocketTags = new ThreadLocal<SocketTags>() { // from class: com.android.server.NetworkManagementSocketTagger.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public SocketTags initialValue() {
            return new SocketTags();
        }
    };

    public static class SocketTags {
        public int statsTag = -1;
        public int statsUid = -1;
    }

    public static int getThreadSocketStatsTag() {
        return threadSocketTags.get().statsTag;
    }

    public static void install() {
        SocketTagger.set(new NetworkManagementSocketTagger());
    }

    public static int kernelToTag(String str) {
        int length = str.length();
        if (length > 10) {
            return Long.decode(str.substring(0, length - 8)).intValue();
        }
        return 0;
    }

    private static native int native_deleteTagData(int i2, int i3);

    private static native int native_setCounterSet(int i2, int i3);

    private static native int native_tagSocketFd(FileDescriptor fileDescriptor, int i2, int i3);

    private static native int native_untagSocketFd(FileDescriptor fileDescriptor);

    public static void resetKernelUidStats(int i2) {
        int iNative_deleteTagData;
        if (!SystemProperties.getBoolean(PROP_QTAGUID_ENABLED, false) || (iNative_deleteTagData = native_deleteTagData(0, i2)) >= 0) {
            return;
        }
        Slog.w(TAG, "problem clearing counters for uid " + i2 + " : errno " + iNative_deleteTagData);
    }

    public static void setKernelCounterSet(int i2, int i3) {
        int iNative_setCounterSet;
        if (!SystemProperties.getBoolean(PROP_QTAGUID_ENABLED, false) || (iNative_setCounterSet = native_setCounterSet(i3, i2)) >= 0) {
            return;
        }
        c.A(c.t("setKernelCountSet(", i2, ", ", i3, ") failed with errno "), iNative_setCounterSet, TAG);
    }

    public static int setThreadSocketStatsTag(int i2) {
        int i3 = threadSocketTags.get().statsTag;
        threadSocketTags.get().statsTag = i2;
        return i3;
    }

    public static int setThreadSocketStatsUid(int i2) {
        int i3 = threadSocketTags.get().statsUid;
        threadSocketTags.get().statsUid = i2;
        return i3;
    }

    private void tagSocketFd(FileDescriptor fileDescriptor, int i2, int i3) {
        int iNative_tagSocketFd;
        if (!(i2 == -1 && i3 == -1) && SystemProperties.getBoolean(PROP_QTAGUID_ENABLED, false) && (iNative_tagSocketFd = native_tagSocketFd(fileDescriptor, i2, i3)) < 0) {
            StringBuilder sb = new StringBuilder("tagSocketFd(");
            m.u(sb, fileDescriptor.getInt$(), ", ", i2, ", ");
            sb.append(i3);
            sb.append(") failed with errno");
            sb.append(iNative_tagSocketFd);
            Log.i(TAG, sb.toString());
        }
    }

    private void unTagSocketFd(FileDescriptor fileDescriptor) {
        int iNative_untagSocketFd;
        SocketTags socketTags = threadSocketTags.get();
        if (!(socketTags.statsTag == -1 && socketTags.statsUid == -1) && SystemProperties.getBoolean(PROP_QTAGUID_ENABLED, false) && (iNative_untagSocketFd = native_untagSocketFd(fileDescriptor)) < 0) {
            Log.w(TAG, "untagSocket(" + fileDescriptor.getInt$() + ") failed with errno " + iNative_untagSocketFd);
        }
    }

    public void tag(FileDescriptor fileDescriptor) {
        SocketTags socketTags = threadSocketTags.get();
        if (socketTags.statsTag == -1 && StrictMode.vmUntaggedSocketEnabled()) {
            StrictMode.onUntaggedSocket();
        }
        tagSocketFd(fileDescriptor, socketTags.statsTag, socketTags.statsUid);
    }

    public void untag(FileDescriptor fileDescriptor) {
        unTagSocketFd(fileDescriptor);
    }
}
