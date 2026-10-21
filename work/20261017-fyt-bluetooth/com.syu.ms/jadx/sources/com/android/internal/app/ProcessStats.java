package com.android.internal.app;

import android.app.backup.FullBackup;
import android.content.Context;
import android.hardware.Camera;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.util.ArrayMap;
import android.util.Slog;
import android.util.SparseArray;
import android.webkit.WebViewFactory;
import dalvik.system.VMRuntime;
import j.l;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessStats implements Parcelable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f861c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f866h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f867i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f868j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f869k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f870l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f871m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f873o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int[] f874p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f875q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ArrayMap<String, Integer> f876r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public ArrayList<String> f877s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int[] f852t = {0, 1, 2, 3};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int[] f853u = {0, 4};

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int[] f854v = {0, 1, 2, 3, 4, 5, 6, 7, 8};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int[] f855w = {2, 3, 4, 5, 6, 7, 8};

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int[] f856x = {0, 0, 1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 13};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int[] f857y = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13};

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final String[] f858z = {"Persist", "Top    ", "ImpFg  ", "ImpBg  ", "Backup ", "HeavyWt", "Service", "ServRst", "Receivr", "Home   ", "LastAct", "CchAct ", "CchCAct", "CchEmty"};
    public static final String[] A = {"off", Camera.Parameters.FLASH_MODE_ON};
    public static final String[] B = {"norm", "mod", "low", "crit"};
    public static final String[] C = {"pers", "top", "impfg", "impbg", Context.BACKUP_SERVICE, "heavy", "service", "service-rs", "receiver", CalendarContract.CalendarCache.TIMEZONE_TYPE_HOME, "lastact", "cch-activity", "cch-aclient", "cch-empty"};
    public static final String[] D = {"0", "1"};
    public static final String[] E = {"n", "m", "l", FullBackup.CACHE_TREE_TOKEN};
    public static final String[] F = {"p", "t", FullBackup.DATA_TREE_TOKEN, "b", "u", "w", "s", "x", FullBackup.ROOT_TREE_TOKEN, "h", "l", FullBackup.APK_TREE_TOKEN, FullBackup.CACHE_TREE_TOKEN, "e"};
    public static int G = 0;
    public static int H = 255;
    public static int I = 8;
    public static int J = 255;
    public static int K = 16;
    public static int L = 65535;
    public static final Parcelable.Creator<ProcessStats> CREATOR = new a();
    public static final int[] M = new int[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final l<c> f862d = new l<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final l<d> f863e = new l<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long[] f864f = new long[8];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f865g = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ArrayList<long[]> f872n = new ArrayList<>();

    public static class a implements Parcelable.Creator<ProcessStats> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ProcessStats createFromParcel(Parcel parcel) {
            return new ProcessStats(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ProcessStats[] newArray(int i2) {
            return new ProcessStats[i2];
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ProcessStats f878a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f879b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int[] f880c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f881d;

        public b(ProcessStats processStats, String str) {
            this.f878a = processStats;
            this.f879b = str;
        }

        public void a(int i2, long j2) {
            int iB;
            int iD = ProcessStats.d(this.f880c, this.f881d, i2);
            if (iD >= 0) {
                iB = this.f880c[iD];
            } else {
                ProcessStats processStats = this.f878a;
                processStats.f874p = this.f880c;
                processStats.f875q = this.f881d;
                iB = processStats.b(~iD, i2, 1);
                ProcessStats processStats2 = this.f878a;
                this.f880c = processStats2.f874p;
                this.f881d = processStats2.f875q;
            }
            long[] jArr = this.f878a.f872n.get((iB >> ProcessStats.I) & ProcessStats.J);
            int i3 = (iB >> ProcessStats.K) & ProcessStats.L;
            jArr[i3] = jArr[i3] + j2;
        }

        public boolean b(Parcel parcel) {
            int[] iArrL = this.f878a.l(parcel, this.f879b, "durations");
            this.f880c = iArrL;
            if (iArrL == ProcessStats.M) {
                return false;
            }
            this.f881d = iArrL != null ? iArrL.length : 0;
            return true;
        }

        public void c() {
            this.f880c = null;
            this.f881d = 0;
        }

        public void d(Parcel parcel) {
            parcel.writeInt(this.f881d);
            for (int i2 = 0; i2 < this.f881d; i2++) {
                parcel.writeInt(this.f880c[i2]);
            }
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayMap<String, d> f882a = new ArrayMap<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayMap<String, e> f883b = new ArrayMap<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f884c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f885d;

        public c(String str, int i2) {
            this.f885d = i2;
            this.f884c = str;
        }
    }

    public static final class e extends b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f906e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f907f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public d f908g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Object f909h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f910i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f911j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public long f912k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f913l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f914m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f915n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public long f916o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f917p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f918q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public long f919r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public int f920s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f921t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public long f922u;

        public e(ProcessStats processStats, String str, String str2, String str3, d dVar) {
            super(processStats, str2);
            this.f911j = -1;
            this.f915n = -1;
            this.f918q = -1;
            this.f921t = -1;
            this.f906e = str;
            this.f907f = str3;
            this.f908g = dVar;
        }

        public void e(long j2) {
            int i2 = this.f911j;
            if (i2 != -1) {
                a((i2 * 4) + 0, j2 - this.f912k);
                this.f912k = j2;
            }
            int i3 = this.f915n;
            if (i3 != -1) {
                a((i3 * 4) + 1, j2 - this.f916o);
                this.f916o = j2;
            }
            int i4 = this.f918q;
            if (i4 != -1) {
                a((i4 * 4) + 2, j2 - this.f919r);
                this.f919r = j2;
            }
            int i5 = this.f921t;
            if (i5 != -1) {
                a((i5 * 4) + 3, j2 - this.f922u);
                this.f922u = j2;
            }
        }

        public boolean f() {
            return this.f909h != null || this.f913l;
        }

        public boolean g(Parcel parcel) {
            if (!b(parcel)) {
                return false;
            }
            this.f910i = parcel.readInt();
            this.f914m = parcel.readInt();
            this.f917p = parcel.readInt();
            this.f920s = parcel.readInt();
            return true;
        }

        public void h(long j2) {
            c();
            this.f910i = this.f911j != -1 ? 1 : 0;
            this.f914m = this.f915n != -1 ? 1 : 0;
            this.f917p = this.f918q != -1 ? 1 : 0;
            this.f920s = this.f921t == -1 ? 0 : 1;
            this.f922u = j2;
            this.f919r = j2;
            this.f916o = j2;
            this.f912k = j2;
        }

        public void i(Parcel parcel, long j2) {
            d(parcel);
            parcel.writeInt(this.f910i);
            parcel.writeInt(this.f914m);
            parcel.writeInt(this.f917p);
            parcel.writeInt(this.f920s);
        }

        public String toString() {
            return "ServiceState{" + Integer.toHexString(System.identityHashCode(this)) + " " + this.f879b + " pkg=" + this.f906e + " proc=" + Integer.toHexString(System.identityHashCode(this)) + "}";
        }
    }

    public ProcessStats(Parcel parcel) {
        m();
        k(parcel);
    }

    public static int d(int[] iArr, int i2, int i3) {
        int i4 = i2 - 1;
        int i5 = 0;
        while (i5 <= i4) {
            int i6 = (i5 + i4) >>> 1;
            int i7 = (iArr[i6] >> G) & H;
            if (i7 < i3) {
                i5 = i6 + 1;
            } else {
                if (i7 <= i3) {
                    return i6;
                }
                i4 = i6 - 1;
            }
        }
        return ~i5;
    }

    public static String g(int i2) {
        StringBuilder sb = new StringBuilder(16);
        sb.append(FullBackup.APK_TREE_TOKEN);
        sb.append((i2 >> I) & J);
        sb.append("i");
        sb.append((i2 >> K) & L);
        sb.append("t");
        sb.append((i2 >> G) & H);
        return sb.toString();
    }

    public int b(int i2, int i3, int i4) {
        int[] iArr = this.f874p;
        int length = iArr != null ? iArr.length : 0;
        if (this.f875q >= length) {
            int[] iArr2 = new int[u.a.h(length + 1)];
            if (length > 0) {
                System.arraycopy(this.f874p, 0, iArr2, 0, length);
            }
            this.f874p = iArr2;
        }
        int i5 = this.f875q;
        if (i5 > 0 && i5 - i2 != 0) {
            int[] iArr3 = this.f874p;
            System.arraycopy(iArr3, i2, iArr3, i2 + 1, i5 - i2);
        }
        int iC = c(i4);
        this.f874p[i2] = i3 | iC;
        this.f875q++;
        return iC;
    }

    public int c(int i2) {
        int size = this.f872n.size() - 1;
        if (this.f873o + i2 > this.f872n.get(size).length) {
            this.f872n.add(new long[4096]);
            size++;
            this.f873o = 0;
        }
        int i3 = size << I;
        int i4 = this.f873o;
        int i5 = i3 | (i4 << K);
        this.f873o = i4 + i2;
        return i5;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final void e() {
        this.f860b = DateFormat.format("yyyy-MM-dd-HH-mm-ss", this.f867i).toString();
    }

    public boolean f(boolean z2) {
        boolean z3;
        String str = SystemProperties.get("persist.sys.dalvik.vm.lib", VMRuntime.getRuntime().vmLibrary());
        if (Objects.equals(str, this.f870l)) {
            z3 = false;
        } else {
            if (z2) {
                this.f870l = str;
            }
            z3 = true;
        }
        String str2 = WebViewFactory.useExperimentalWebView() ? "chromeview" : "webview";
        if (str2.equals(this.f871m)) {
            return z3;
        }
        if (!z2) {
            return true;
        }
        this.f871m = str2;
        return true;
    }

    public final boolean h(Parcel parcel, int i2, String str) {
        int i3 = parcel.readInt();
        if (i3 == i2) {
            return true;
        }
        this.f859a = "bad " + str + ": " + i3;
        return false;
    }

    public final String i(Parcel parcel, int i2) {
        if (i2 <= 9) {
            return parcel.readString();
        }
        int i3 = parcel.readInt();
        if (i3 >= 0) {
            return this.f877s.get(i3);
        }
        int i4 = ~i3;
        String string = parcel.readString();
        while (this.f877s.size() <= i4) {
            this.f877s.add(null);
        }
        this.f877s.set(i4, string);
        return string;
    }

    public final void j(Parcel parcel, int i2, long[] jArr, int i3) {
        if (i2 <= 10) {
            parcel.readLongArray(jArr);
            return;
        }
        int length = jArr.length;
        if (i3 > length) {
            throw new RuntimeException("bad array lengths: got " + i3 + " array is " + length);
        }
        int i4 = 0;
        while (i4 < i3) {
            int i5 = parcel.readInt();
            if (i5 >= 0) {
                jArr[i4] = i5;
            } else {
                jArr[i4] = ((long) parcel.readInt()) | (((long) (~i5)) << 32);
            }
            i4++;
        }
        while (i4 < length) {
            jArr[i4] = 0;
            i4++;
        }
    }

    public void k(Parcel parcel) {
        boolean z2 = false;
        boolean z3 = this.f862d.b().size() > 0 || this.f863e.b().size() > 0;
        if (z3) {
            o();
        }
        if (h(parcel, 1347638355, "magic number")) {
            int i2 = parcel.readInt();
            if (i2 != 13) {
                this.f859a = "bad version: " + i2;
                return;
            }
            if (h(parcel, 14, "state count") && h(parcel, 8, "adj count") && h(parcel, 7, "pss count") && h(parcel, 4096, "longs size")) {
                this.f877s = new ArrayList<>();
                this.f867i = parcel.readLong();
                e();
                this.f868j = parcel.readLong();
                this.f869k = parcel.readLong();
                this.f870l = parcel.readString();
                this.f871m = parcel.readString();
                this.f861c = parcel.readInt();
                int i3 = parcel.readInt();
                int i4 = parcel.readInt();
                this.f872n.clear();
                for (int i5 = 0; i5 < i3 - 1; i5++) {
                    while (i5 >= this.f872n.size()) {
                        this.f872n.add(new long[4096]);
                    }
                    j(parcel, i2, this.f872n.get(i5), 4096);
                }
                long[] jArr = new long[4096];
                this.f873o = i4;
                j(parcel, i2, jArr, i4);
                this.f872n.add(jArr);
                long[] jArr2 = this.f864f;
                j(parcel, i2, jArr2, jArr2.length);
                int i6 = parcel.readInt();
                if (i6 < 0) {
                    this.f859a = "bad process count: " + i6;
                    return;
                }
                while (i6 > 0) {
                    i6--;
                    String strI = i(parcel, i2);
                    if (strI == null) {
                        this.f859a = "bad process name";
                        return;
                    }
                    int i7 = parcel.readInt();
                    if (i7 < 0) {
                        this.f859a = "bad uid count: " + i7;
                        return;
                    }
                    while (i7 > 0) {
                        i7--;
                        int i8 = parcel.readInt();
                        if (i8 < 0) {
                            this.f859a = "bad uid: " + i8;
                            return;
                        }
                        String strI2 = i(parcel, i2);
                        if (strI2 == null) {
                            this.f859a = "bad process package name";
                            return;
                        }
                        d dVarA = z3 ? this.f863e.a(strI, i8) : null;
                        if (dVarA == null) {
                            dVarA = new d(this, strI2, i8, strI);
                            if (!dVarA.h(parcel, true)) {
                                return;
                            }
                        } else if (!dVarA.h(parcel, false)) {
                            return;
                        }
                        this.f863e.c(strI, i8, dVarA);
                    }
                }
                int i9 = parcel.readInt();
                if (i9 < 0) {
                    this.f859a = "bad package count: " + i9;
                    return;
                }
                while (i9 > 0) {
                    int i10 = i9 - 1;
                    String strI3 = i(parcel, i2);
                    if (strI3 == null) {
                        this.f859a = "bad package name";
                        return;
                    }
                    int i11 = parcel.readInt();
                    if (i11 < 0) {
                        this.f859a = "bad uid count: " + i11;
                        return;
                    }
                    while (i11 > 0) {
                        int i12 = i11 - 1;
                        int i13 = parcel.readInt();
                        if (i13 < 0) {
                            this.f859a = "bad uid: " + i13;
                            return;
                        }
                        c cVar = new c(strI3, i13);
                        this.f862d.c(strI3, i13, cVar);
                        int i14 = parcel.readInt();
                        if (i14 < 0) {
                            this.f859a = "bad package process count: " + i14;
                            return;
                        }
                        while (i14 > 0) {
                            i14--;
                            String strI4 = i(parcel, i2);
                            if (strI4 == null) {
                                this.f859a = "bad package process name";
                                return;
                            }
                            int i15 = parcel.readInt();
                            d dVarA2 = this.f863e.a(strI4, i13);
                            if (dVarA2 == null) {
                                this.f859a = "no common proc: " + strI4;
                                return;
                            }
                            if (i15 != 0) {
                                d dVar = z3 ? cVar.f882a.get(strI4) : null;
                                if (dVar == null) {
                                    dVar = new d(dVarA2, strI3, i13, strI4, 0L);
                                    if (!dVar.h(parcel, true)) {
                                        return;
                                    }
                                } else if (!dVar.h(parcel, z2)) {
                                    return;
                                }
                                cVar.f882a.put(strI4, dVar);
                            } else {
                                cVar.f882a.put(strI4, dVarA2);
                            }
                        }
                        int i16 = parcel.readInt();
                        if (i16 < 0) {
                            this.f859a = "bad package service count: " + i16;
                            return;
                        }
                        while (i16 > 0) {
                            int i17 = i16 - 1;
                            String string = parcel.readString();
                            if (string == null) {
                                this.f859a = "bad package service name";
                                return;
                            }
                            String strI5 = i2 > 9 ? i(parcel, i2) : null;
                            e eVar = z3 ? cVar.f883b.get(string) : null;
                            if (eVar == null) {
                                eVar = new e(this, strI3, string, strI5, null);
                            }
                            if (!eVar.g(parcel)) {
                                return;
                            }
                            cVar.f883b.put(string, eVar);
                            cVar = cVar;
                            i16 = i17;
                            strI3 = strI3;
                            z2 = false;
                        }
                        i11 = i12;
                    }
                    i9 = i10;
                }
                this.f877s = null;
            }
        }
    }

    public final int[] l(Parcel parcel, String str, String str2) {
        int i2 = parcel.readInt();
        if (i2 < 0) {
            Slog.w("ProcessStats", "Ignoring existing stats; bad " + str2 + " table size: " + i2);
            return M;
        }
        if (i2 == 0) {
            return null;
        }
        int[] iArr = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            iArr[i3] = parcel.readInt();
            if (!p(iArr[i3])) {
                Slog.w("ProcessStats", "Ignoring existing stats; bad " + str2 + " table entry: " + g(iArr[i3]));
                return null;
            }
        }
        return iArr;
    }

    public void m() {
        n();
        this.f862d.b().clear();
        this.f863e.b().clear();
        this.f865g = -1;
        this.f866h = 0L;
    }

    public final void n() {
        this.f867i = System.currentTimeMillis();
        e();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.f869k = jElapsedRealtime;
        this.f868j = jElapsedRealtime;
        this.f872n.clear();
        this.f872n.add(new long[4096]);
        this.f873o = 0;
        Arrays.fill(this.f864f, 0L);
        this.f866h = 0L;
        this.f859a = null;
        this.f861c = 0;
        f(true);
    }

    public void o() {
        n();
        long jUptimeMillis = SystemClock.uptimeMillis();
        ArrayMap<String, SparseArray<d>> arrayMapB = this.f863e.b();
        for (int size = arrayMapB.size() - 1; size >= 0; size--) {
            SparseArray<d> sparseArrayValueAt = arrayMapB.valueAt(size);
            for (int size2 = sparseArrayValueAt.size() - 1; size2 >= 0; size2--) {
                if (sparseArrayValueAt.valueAt(size2).f()) {
                    sparseArrayValueAt.valueAt(size2).i(jUptimeMillis);
                } else {
                    sparseArrayValueAt.valueAt(size2).g();
                    sparseArrayValueAt.removeAt(size2);
                }
            }
            if (sparseArrayValueAt.size() <= 0) {
                arrayMapB.removeAt(size);
            }
        }
        ArrayMap<String, SparseArray<c>> arrayMapB2 = this.f862d.b();
        for (int size3 = arrayMapB2.size() - 1; size3 >= 0; size3--) {
            SparseArray<c> sparseArrayValueAt2 = arrayMapB2.valueAt(size3);
            for (int size4 = sparseArrayValueAt2.size() - 1; size4 >= 0; size4--) {
                c cVarValueAt = sparseArrayValueAt2.valueAt(size4);
                for (int size5 = cVarValueAt.f882a.size() - 1; size5 >= 0; size5--) {
                    d dVarValueAt = cVarValueAt.f882a.valueAt(size5);
                    if (dVarValueAt.f() || dVarValueAt.f886e.f()) {
                        dVarValueAt.i(jUptimeMillis);
                    } else {
                        cVarValueAt.f882a.valueAt(size5).g();
                        cVarValueAt.f882a.removeAt(size5);
                    }
                }
                for (int size6 = cVarValueAt.f883b.size() - 1; size6 >= 0; size6--) {
                    e eVarValueAt = cVarValueAt.f883b.valueAt(size6);
                    if (eVarValueAt.f()) {
                        eVarValueAt.h(jUptimeMillis);
                    } else {
                        cVarValueAt.f883b.removeAt(size6);
                    }
                }
                if (cVarValueAt.f882a.size() <= 0 && cVarValueAt.f883b.size() <= 0) {
                    sparseArrayValueAt2.removeAt(size4);
                }
            }
            if (sparseArrayValueAt2.size() <= 0) {
                arrayMapB2.removeAt(size3);
            }
        }
        this.f866h = jUptimeMillis;
    }

    public boolean p(int i2) {
        return ((i2 >> I) & J) < this.f872n.size() && ((i2 >> K) & L) < 4096;
    }

    public final void q(Parcel parcel, String str) {
        Integer num = this.f876r.get(str);
        if (num != null) {
            parcel.writeInt(num.intValue());
            return;
        }
        Integer numValueOf = Integer.valueOf(this.f876r.size());
        this.f876r.put(str, numValueOf);
        parcel.writeInt(~numValueOf.intValue());
        parcel.writeString(str);
    }

    public final void r(Parcel parcel, long[] jArr, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            long j2 = jArr[i3];
            if (j2 < 0) {
                Slog.w("ProcessStats", "Time val negative: " + j2);
                j2 = 0L;
            }
            if (j2 <= 2147483647L) {
                parcel.writeInt((int) j2);
            } else {
                parcel.writeInt(~((int) (2147483647L & (j2 >> 32))));
                parcel.writeInt((int) (j2 & 268435455));
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int i3;
        long jUptimeMillis = SystemClock.uptimeMillis();
        parcel.writeInt(1347638355);
        parcel.writeInt(13);
        parcel.writeInt(14);
        parcel.writeInt(8);
        parcel.writeInt(7);
        parcel.writeInt(4096);
        this.f876r = new ArrayMap<>(this.f863e.f2961a.size());
        ArrayMap<String, SparseArray<d>> arrayMapB = this.f863e.b();
        int size = arrayMapB.size();
        for (int i4 = 0; i4 < size; i4++) {
            SparseArray<d> sparseArrayValueAt = arrayMapB.valueAt(i4);
            int size2 = sparseArrayValueAt.size();
            for (int i5 = 0; i5 < size2; i5++) {
                sparseArrayValueAt.valueAt(i5).e(jUptimeMillis);
            }
        }
        ArrayMap<String, SparseArray<c>> arrayMapB2 = this.f862d.b();
        int size3 = arrayMapB2.size();
        for (int i6 = 0; i6 < size3; i6++) {
            SparseArray<c> sparseArrayValueAt2 = arrayMapB2.valueAt(i6);
            int size4 = sparseArrayValueAt2.size();
            int i7 = 0;
            while (i7 < size4) {
                c cVarValueAt = sparseArrayValueAt2.valueAt(i7);
                int size5 = cVarValueAt.f882a.size();
                int i8 = 0;
                while (i8 < size5) {
                    d dVarValueAt = cVarValueAt.f882a.valueAt(i8);
                    SparseArray<c> sparseArray = sparseArrayValueAt2;
                    if (dVarValueAt.f886e != dVarValueAt) {
                        dVarValueAt.e(jUptimeMillis);
                    }
                    i8++;
                    sparseArrayValueAt2 = sparseArray;
                }
                SparseArray<c> sparseArray2 = sparseArrayValueAt2;
                int size6 = cVarValueAt.f883b.size();
                for (int i9 = 0; i9 < size6; i9++) {
                    cVarValueAt.f883b.valueAt(i9).e(jUptimeMillis);
                }
                i7++;
                sparseArrayValueAt2 = sparseArray2;
            }
        }
        parcel.writeLong(this.f867i);
        parcel.writeLong(this.f868j);
        parcel.writeLong(this.f869k);
        parcel.writeString(this.f870l);
        parcel.writeString(this.f871m);
        parcel.writeInt(this.f861c);
        parcel.writeInt(this.f872n.size());
        parcel.writeInt(this.f873o);
        int i10 = 0;
        while (true) {
            i3 = 1;
            if (i10 >= this.f872n.size() - 1) {
                break;
            }
            long[] jArr = this.f872n.get(i10);
            r(parcel, jArr, jArr.length);
            i10++;
        }
        ArrayList<long[]> arrayList = this.f872n;
        r(parcel, arrayList.get(arrayList.size() - 1), this.f873o);
        int i11 = this.f865g;
        if (i11 != -1) {
            long[] jArr2 = this.f864f;
            jArr2[i11] = jArr2[i11] + (jUptimeMillis - this.f866h);
            this.f866h = jUptimeMillis;
        }
        long[] jArr3 = this.f864f;
        r(parcel, jArr3, jArr3.length);
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            q(parcel, arrayMapB.keyAt(i12));
            SparseArray<d> sparseArrayValueAt3 = arrayMapB.valueAt(i12);
            int size7 = sparseArrayValueAt3.size();
            parcel.writeInt(size7);
            for (int i13 = 0; i13 < size7; i13++) {
                parcel.writeInt(sparseArrayValueAt3.keyAt(i13));
                d dVarValueAt2 = sparseArrayValueAt3.valueAt(i13);
                q(parcel, dVarValueAt2.f887f);
                dVarValueAt2.j(parcel, jUptimeMillis);
            }
        }
        parcel.writeInt(size3);
        int i14 = 0;
        while (i14 < size3) {
            q(parcel, arrayMapB2.keyAt(i14));
            SparseArray<c> sparseArrayValueAt4 = arrayMapB2.valueAt(i14);
            int size8 = sparseArrayValueAt4.size();
            parcel.writeInt(size8);
            int i15 = 0;
            while (i15 < size8) {
                parcel.writeInt(sparseArrayValueAt4.keyAt(i15));
                c cVarValueAt2 = sparseArrayValueAt4.valueAt(i15);
                int size9 = cVarValueAt2.f882a.size();
                parcel.writeInt(size9);
                for (int i16 = 0; i16 < size9; i16++) {
                    q(parcel, cVarValueAt2.f882a.keyAt(i16));
                    d dVarValueAt3 = cVarValueAt2.f882a.valueAt(i16);
                    if (dVarValueAt3.f886e == dVarValueAt3) {
                        parcel.writeInt(0);
                    } else {
                        parcel.writeInt(i3);
                        dVarValueAt3.j(parcel, jUptimeMillis);
                    }
                }
                int size10 = cVarValueAt2.f883b.size();
                parcel.writeInt(size10);
                for (int i17 = 0; i17 < size10; i17++) {
                    parcel.writeString(cVarValueAt2.f883b.keyAt(i17));
                    e eVarValueAt = cVarValueAt2.f883b.valueAt(i17);
                    q(parcel, eVarValueAt.f907f);
                    eVarValueAt.i(parcel, jUptimeMillis);
                }
                i15++;
                i3 = 1;
            }
            i14++;
            i3 = 1;
        }
        this.f876r = null;
    }

    public static final class d extends b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final d f886e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f887f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f888g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f889h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f890i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f891j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public long f892k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int[] f893l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f894m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f895n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f896o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f897p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f898q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public int f899r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public int f900s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public long f901t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public long f902u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public long f903v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public boolean f904w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public boolean f905x;

        public d(ProcessStats processStats, String str, int i2, String str2) {
            super(processStats, str2);
            this.f889h = -1;
            this.f891j = -1;
            this.f886e = this;
            this.f887f = str;
            this.f888g = i2;
        }

        public void e(long j2) {
            int i2 = this.f889h;
            if (i2 != -1) {
                long j3 = j2 - this.f890i;
                if (j3 > 0) {
                    a(i2, j3);
                }
            }
            this.f890i = j2;
        }

        public boolean f() {
            return this.f895n || this.f896o > 0 || this.f897p > 0 || this.f889h != -1;
        }

        public void g() {
            this.f905x = true;
        }

        public boolean h(Parcel parcel, boolean z2) {
            boolean z3 = parcel.readInt() != 0;
            if (z2) {
                this.f904w = z3;
            }
            if (!b(parcel)) {
                return false;
            }
            int[] iArrL = this.f878a.l(parcel, this.f879b, "pss");
            this.f893l = iArrL;
            if (iArrL == ProcessStats.M) {
                return false;
            }
            this.f894m = iArrL != null ? iArrL.length : 0;
            this.f898q = parcel.readInt();
            this.f899r = parcel.readInt();
            int i2 = parcel.readInt();
            this.f900s = i2;
            if (i2 > 0) {
                this.f901t = parcel.readLong();
                this.f902u = parcel.readLong();
                this.f903v = parcel.readLong();
            } else {
                this.f903v = 0L;
                this.f902u = 0L;
                this.f901t = 0L;
            }
            return true;
        }

        public void i(long j2) {
            c();
            this.f890i = j2;
            this.f891j = -1;
            this.f892k = 0L;
            this.f893l = null;
            this.f894m = 0;
            this.f898q = 0;
            this.f899r = 0;
            this.f900s = 0;
            this.f903v = 0L;
            this.f902u = 0L;
            this.f901t = 0L;
        }

        public void j(Parcel parcel, long j2) {
            parcel.writeInt(this.f904w ? 1 : 0);
            d(parcel);
            parcel.writeInt(this.f894m);
            for (int i2 = 0; i2 < this.f894m; i2++) {
                parcel.writeInt(this.f893l[i2]);
            }
            parcel.writeInt(this.f898q);
            parcel.writeInt(this.f899r);
            parcel.writeInt(this.f900s);
            if (this.f900s > 0) {
                parcel.writeLong(this.f901t);
                parcel.writeLong(this.f902u);
                parcel.writeLong(this.f903v);
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("ProcessState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" ");
            sb.append(this.f879b);
            sb.append("/");
            sb.append(this.f888g);
            sb.append(" pkg=");
            sb.append(this.f887f);
            if (this.f904w) {
                sb.append(" (multi)");
            }
            if (this.f886e != this) {
                sb.append(" (sub)");
            }
            sb.append("}");
            return sb.toString();
        }

        public d(d dVar, String str, int i2, String str2, long j2) {
            super(dVar.f878a, str2);
            this.f889h = -1;
            this.f891j = -1;
            this.f886e = dVar;
            this.f887f = str;
            this.f888g = i2;
            this.f889h = dVar.f889h;
            this.f890i = j2;
        }
    }
}
