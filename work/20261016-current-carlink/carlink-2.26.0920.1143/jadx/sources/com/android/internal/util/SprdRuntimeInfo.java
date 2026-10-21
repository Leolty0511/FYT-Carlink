package com.android.internal.util;

import android.util.Log;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes3.dex */
public class SprdRuntimeInfo {
    public static final int SPRD_CPU_INFO = 1;
    public static final int SPRD_MEM_INFO = 2;
    public static final int SPRD_SCHED_INFO = 4;
    private static final String TAG = "SprdRuntimeInfo";
    private static SparseArray<String> sFilePathConfig;

    static {
        SparseArray<String> sparseArray = new SparseArray<>(5);
        sFilePathConfig = sparseArray;
        sparseArray.put(1, "/sys/kernel/debug/sprd_debug/cpu/cpu_usage");
        sFilePathConfig.put(4, "/sys/kernel/debug/sprd_debug/sche/schedlog");
    }

    public static void printSprdRuntimeInfo(int i2) throws Throwable {
        if ((i2 & 1) != 0) {
            Log.d(TAG, "------------- start print sprd cpu info -------------");
            readFile(sFilePathConfig.get(1));
            Log.d(TAG, "------------- end print sprd cpu info -------------");
        }
        if ((i2 & 4) != 0) {
            Log.d(TAG, "------------- start print sprd sched info -------------");
            readFile(sFilePathConfig.get(4));
            Log.d(TAG, "------------- end print sprd sched info -------------");
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:21:0x0031
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    private static void readFile(java.lang.String r5) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "fr close exception"
            java.lang.String r1 = "SprdRuntimeInfo"
            r2 = 0
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L25
            java.io.FileReader r4 = new java.io.FileReader     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L25
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L25
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L25
        Lf:
            java.lang.String r5 = r3.readLine()     // Catch: java.lang.Throwable -> L1d java.lang.Exception -> L20
            if (r5 == 0) goto L19
            android.util.Log.d(r1, r5)     // Catch: java.lang.Throwable -> L1d java.lang.Exception -> L20
            goto Lf
        L19:
            r3.close()     // Catch: java.io.IOException -> L31
            goto L34
        L1d:
            r5 = move-exception
            r2 = r3
            goto L35
        L20:
            r5 = move-exception
            r2 = r3
            goto L26
        L23:
            r5 = move-exception
            goto L35
        L25:
            r5 = move-exception
        L26:
            java.lang.String r3 = "print sprd runtime info caughed exception"
            android.util.Log.w(r1, r3, r5)     // Catch: java.lang.Throwable -> L23
            if (r2 == 0) goto L34
            r2.close()     // Catch: java.io.IOException -> L31
            goto L34
        L31:
            android.util.Log.w(r1, r0)
        L34:
            return
        L35:
            if (r2 == 0) goto L3e
            r2.close()     // Catch: java.io.IOException -> L3b
            goto L3e
        L3b:
            android.util.Log.w(r1, r0)
        L3e:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.util.SprdRuntimeInfo.readFile(java.lang.String):void");
    }
}
