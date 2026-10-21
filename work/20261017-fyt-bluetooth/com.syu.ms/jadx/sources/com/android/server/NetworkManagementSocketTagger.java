package com.android.server;

import dalvik.system.SocketTagger;

/* JADX INFO: loaded from: classes.dex */
public final class NetworkManagementSocketTagger extends SocketTagger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ThreadLocal<b> f1541a = new a();

    public static class a extends ThreadLocal<b> {
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public b initialValue() {
            return new b();
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1542a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1543b = -1;
    }

    public static int a() {
        return f1541a.get().f1542a;
    }

    public static void b(int i2) {
        f1541a.get().f1542a = i2;
    }

    public static void c(int i2) {
        f1541a.get().f1543b = i2;
    }
}
