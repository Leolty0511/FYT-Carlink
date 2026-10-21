package com.android.internal.os;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadset;
import android.mtp.MtpConstants;
import android.net.NetworkStats;
import android.os.BatteryStats;
import android.os.Parcel;
import android.os.ParcelFormatException;
import android.os.Parcelable;
import android.os.Process;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.text.format.DateUtils;
import android.util.Log;
import android.util.LogWriter;
import android.util.Printer;
import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.net.NetworkStatsFactory;
import com.google.android.collect.Sets;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public final class BatteryStatsImpl extends BatteryStats {
    public static int Y0;
    public static int Z0;
    public boolean A;
    public long A0;
    public int B;
    public long B0;
    public long C;
    public long C0;
    public long D;
    public int D0;
    public long E;
    public int E0;
    public long F;
    public int F0;
    public long G;
    public int G0;
    public long H;
    public int H0;
    public long I;
    public final HashMap<String, g> I0;
    public long J;
    public final String[] J0;
    public long K;
    public final long[] K0;
    public long L;
    public final Map<String, d> L0;
    public boolean M;
    public HashMap<String, Integer> M0;
    public h N;
    public final NetworkStatsFactory N0;
    public int O;
    public NetworkStats O0;
    public final h[] P;

    @GuardedBy("this")
    public HashSet<String> P0;
    public c Q;

    @GuardedBy("this")
    public HashSet<String> Q0;
    public boolean R;
    public int R0;
    public h S;
    public int S0;
    public int T;
    public int T0;
    public int U;
    public int U0;
    public final h[] V;
    public int V0;
    public h W;
    public Parcel W0;
    public int X;
    public final ReentrantLock X0;
    public final h[] Y;
    public final e[] Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SparseArray<j> f1016a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f1017a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList<h> f1018b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public h f1019b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList<h> f1020c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f1021c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList<h> f1022d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f1023d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SparseArray<ArrayList<h>> f1024e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public h f1025e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList<h> f1026f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f1027f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList<h> f1028g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public h f1029g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList<h> f1030h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public BluetoothHeadset f1031h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList<h> f1032i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f1033i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SparseArray<ArrayList<h>> f1034j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public boolean f1035j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList<h> f1036k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public long f1037k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ArrayList<Object> f1038l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public long f1039l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f1040m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public long f1041m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f1042n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public long f1043n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1044o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public long f1045o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Parcel f1046p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public long f1047p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final BatteryStats.HistoryItem f1048q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int f1049q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final BatteryStats.HistoryItem f1050r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public int f1051r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final BatteryStats.HistoryItem f1052s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public int f1053s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1054t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public int f1055t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1056u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public int f1057u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public long f1058v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public int f1059v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final BatteryStats.HistoryItem f1060w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public int f1061w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public BatteryStats.HistoryItem f1062x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public int f1063x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public BatteryStats.HistoryItem f1064y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public int f1065y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f1066z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public int f1067z0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public static final int[] f1014a1 = {5129, MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE, 9, 9, 9, MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE};

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public static final int[] f1015b1 = {4105, 8457, 265, 265, 265, 265, 8457};
    public static final Parcelable.Creator<BatteryStatsImpl> CREATOR = new a();

    public static class a implements Parcelable.Creator<BatteryStatsImpl> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BatteryStatsImpl createFromParcel(Parcel parcel) {
            return new BatteryStatsImpl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public BatteryStatsImpl[] newArray(int i2) {
            return new BatteryStatsImpl[i2];
        }
    }

    public static final class b extends i {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final j f1068k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public long f1069l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public long f1070m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f1071n;

        public b(j jVar, int i2, ArrayList<Object> arrayList, boolean z2, Parcel parcel) {
            super(i2, arrayList, parcel);
            this.f1068k = jVar;
            this.f1069l = parcel.readLong();
            this.f1070m = parcel.readLong();
            this.f1071n = z2;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.i
        public int a() {
            return this.f1103c;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.i
        public long b(long j2) {
            long jE = e(SystemClock.elapsedRealtime() * 1000);
            if (jE <= 0) {
                return this.f1107g;
            }
            this.f1107g = jE;
            return jE;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.i
        public void d(Parcel parcel, long j2) {
            super.d(parcel, j2);
            parcel.writeLong(this.f1069l);
            parcel.writeLong(this.f1070m);
        }

        public final long e(long j2) {
            if (this.f1069l > 0) {
                return (this.f1109i + this.f1070m) - j2;
            }
            return 0L;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.i, android.os.BatteryStats.Timer
        public void logState(Printer printer, String str) {
            super.logState(printer, str);
            printer.println(str + "mLastAddedTime=" + this.f1069l + " mLastAddedDuration=" + this.f1070m);
        }
    }

    public class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1078a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f1079b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1080c;

        public d(int i2, long j2, int i3) {
            this.f1078a = i2;
            this.f1079b = j2;
            this.f1080c = i3;
        }
    }

    public static class f extends c {
        public f(ArrayList<Object> arrayList, Parcel parcel) {
            super(arrayList, parcel);
        }
    }

    public final class j extends BatteryStats.Uid {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f1111a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f1112b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public h f1113c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f1114d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public h f1115e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f1116f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public h f1117g;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f1120j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public h f1121k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f1122l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public h f1123m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f1124n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public h f1125o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public h f1126p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public b f1127q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public c[] f1128r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public e[] f1129s;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f1118h = -1;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public final HashMap<String, d> f1130t = new HashMap<>();

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final HashMap<Integer, c> f1131u = new HashMap<>();

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public final HashMap<String, b> f1132v = new HashMap<>();

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public final HashMap<String, a> f1133w = new HashMap<>();

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final SparseArray<BatteryStats.Uid.Pid> f1134x = new SparseArray<>();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public h[] f1119i = new h[5];

        public final class a extends BatteryStats.Uid.Pkg {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f1136a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f1137b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f1138c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f1139d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final HashMap<String, BatteryStatsUidPkgServC0020a> f1140e = new HashMap<>();

            /* JADX INFO: renamed from: com.android.internal.os.BatteryStatsImpl$j$a$a, reason: collision with other inner class name */
            public final class BatteryStatsUidPkgServC0020a extends BatteryStats.Uid.Pkg.Serv {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public long f1142a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public long f1143b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public boolean f1144c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                public int f1145d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public long f1146e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public long f1147f;

                /* JADX INFO: renamed from: g, reason: collision with root package name */
                public boolean f1148g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public int f1149h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public long f1150i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public int f1151j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public int f1152k;

                /* JADX INFO: renamed from: l, reason: collision with root package name */
                public long f1153l;

                /* JADX INFO: renamed from: m, reason: collision with root package name */
                public int f1154m;

                /* JADX INFO: renamed from: n, reason: collision with root package name */
                public int f1155n;

                /* JADX INFO: renamed from: o, reason: collision with root package name */
                public long f1156o;

                /* JADX INFO: renamed from: p, reason: collision with root package name */
                public int f1157p;

                /* JADX INFO: renamed from: q, reason: collision with root package name */
                public int f1158q;

                public BatteryStatsUidPkgServC0020a() {
                    super();
                    BatteryStatsImpl.this.f1038l.add(this);
                }

                public long a(long j2) {
                    return !this.f1144c ? this.f1142a : (this.f1142a + j2) - this.f1143b;
                }

                public void b(Parcel parcel) {
                    this.f1142a = parcel.readLong();
                    this.f1143b = parcel.readLong();
                    this.f1144c = parcel.readInt() != 0;
                    this.f1145d = parcel.readInt();
                    this.f1146e = parcel.readLong();
                    this.f1147f = parcel.readLong();
                    this.f1148g = parcel.readInt() != 0;
                    this.f1149h = parcel.readInt();
                    this.f1150i = parcel.readLong();
                    this.f1151j = parcel.readInt();
                    this.f1152k = parcel.readInt();
                    this.f1153l = 0L;
                    this.f1154m = 0;
                    this.f1155n = 0;
                    this.f1156o = parcel.readLong();
                    this.f1157p = parcel.readInt();
                    this.f1158q = parcel.readInt();
                }

                public void c(Parcel parcel) {
                    parcel.writeLong(this.f1142a);
                    parcel.writeLong(this.f1143b);
                    parcel.writeInt(this.f1144c ? 1 : 0);
                    parcel.writeInt(this.f1145d);
                    parcel.writeLong(this.f1146e);
                    parcel.writeLong(this.f1147f);
                    parcel.writeInt(this.f1148g ? 1 : 0);
                    parcel.writeInt(this.f1149h);
                    parcel.writeLong(this.f1150i);
                    parcel.writeInt(this.f1151j);
                    parcel.writeInt(this.f1152k);
                    parcel.writeLong(this.f1156o);
                    parcel.writeInt(this.f1157p);
                    parcel.writeInt(this.f1158q);
                }

                @Override // android.os.BatteryStats.Uid.Pkg.Serv
                public int getLaunches(int i2) {
                    int i3;
                    if (i2 == 1) {
                        return this.f1155n;
                    }
                    int i4 = this.f1149h;
                    if (i2 == 2) {
                        i3 = this.f1152k;
                    } else {
                        if (i2 != 3) {
                            return i4;
                        }
                        i3 = this.f1158q;
                    }
                    return i4 - i3;
                }

                @Override // android.os.BatteryStats.Uid.Pkg.Serv
                public long getStartTime(long j2, int i2) {
                    long j3;
                    if (i2 == 1) {
                        return this.f1153l;
                    }
                    long jA = a(j2);
                    if (i2 == 2) {
                        j3 = this.f1150i;
                    } else {
                        if (i2 != 3) {
                            return jA;
                        }
                        j3 = this.f1156o;
                    }
                    return jA - j3;
                }

                @Override // android.os.BatteryStats.Uid.Pkg.Serv
                public int getStarts(int i2) {
                    int i3;
                    if (i2 == 1) {
                        return this.f1154m;
                    }
                    int i4 = this.f1145d;
                    if (i2 == 2) {
                        i3 = this.f1151j;
                    } else {
                        if (i2 != 3) {
                            return i4;
                        }
                        i3 = this.f1157p;
                    }
                    return i4 - i3;
                }
            }

            public a() {
                BatteryStatsImpl.this.f1038l.add(this);
            }

            public void a(Parcel parcel) {
                this.f1136a = parcel.readInt();
                this.f1137b = parcel.readInt();
                this.f1138c = 0;
                this.f1139d = parcel.readInt();
                int i2 = parcel.readInt();
                this.f1140e.clear();
                for (int i3 = 0; i3 < i2; i3++) {
                    String string = parcel.readString();
                    BatteryStatsUidPkgServC0020a batteryStatsUidPkgServC0020a = new BatteryStatsUidPkgServC0020a();
                    this.f1140e.put(string, batteryStatsUidPkgServC0020a);
                    batteryStatsUidPkgServC0020a.b(parcel);
                }
            }

            public void b(Parcel parcel) {
                parcel.writeInt(this.f1136a);
                parcel.writeInt(this.f1137b);
                parcel.writeInt(this.f1139d);
                parcel.writeInt(this.f1140e.size());
                for (Map.Entry<String, BatteryStatsUidPkgServC0020a> entry : this.f1140e.entrySet()) {
                    parcel.writeString(entry.getKey());
                    entry.getValue().c(parcel);
                }
            }

            @Override // android.os.BatteryStats.Uid.Pkg
            public Map<String, ? extends BatteryStats.Uid.Pkg.Serv> getServiceStats() {
                return this.f1140e;
            }

            @Override // android.os.BatteryStats.Uid.Pkg
            public int getWakeups(int i2) {
                int i3;
                if (i2 == 1) {
                    return this.f1138c;
                }
                int i4 = this.f1136a;
                if (i2 == 2) {
                    i3 = this.f1137b;
                } else {
                    if (i2 != 3) {
                        return i4;
                    }
                    i3 = this.f1139d;
                }
                return i4 - i3;
            }
        }

        public final class b extends BatteryStats.Uid.Proc {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public long f1160a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public long f1161b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public long f1162c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f1163d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public long f1164e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public long f1165f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public long f1166g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f1167h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public long f1168i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public long f1169j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public long f1170k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public int f1171l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            public long f1172m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public long f1173n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            public long f1174o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            public int f1175p;

            /* JADX INFO: renamed from: q, reason: collision with root package name */
            public f[] f1176q;

            /* JADX INFO: renamed from: r, reason: collision with root package name */
            public ArrayList<BatteryStats.Uid.Proc.ExcessivePower> f1177r;

            public b() {
                BatteryStatsImpl.this.f1038l.add(this);
                this.f1176q = new f[BatteryStatsImpl.this.getCpuSpeedSteps()];
            }

            public boolean a(Parcel parcel) {
                int i2 = parcel.readInt();
                if (i2 == 0) {
                    this.f1177r = null;
                    return true;
                }
                if (i2 > 10000) {
                    Slog.w("BatteryStatsImpl", "File corrupt: too many excessive power entries " + i2);
                    return false;
                }
                this.f1177r = new ArrayList<>();
                for (int i3 = 0; i3 < i2; i3++) {
                    BatteryStats.Uid.Proc.ExcessivePower excessivePower = new BatteryStats.Uid.Proc.ExcessivePower();
                    excessivePower.type = parcel.readInt();
                    excessivePower.overTime = parcel.readLong();
                    excessivePower.usedTime = parcel.readLong();
                    this.f1177r.add(excessivePower);
                }
                return true;
            }

            public void b(Parcel parcel) {
                this.f1160a = parcel.readLong();
                this.f1161b = parcel.readLong();
                this.f1162c = parcel.readLong();
                this.f1163d = parcel.readInt();
                this.f1164e = parcel.readLong();
                this.f1165f = parcel.readLong();
                this.f1166g = parcel.readLong();
                this.f1167h = parcel.readInt();
                this.f1168i = 0L;
                this.f1169j = 0L;
                this.f1170k = 0L;
                this.f1171l = 0;
                this.f1172m = parcel.readLong();
                this.f1173n = parcel.readLong();
                this.f1174o = parcel.readLong();
                this.f1175p = parcel.readInt();
                int i2 = parcel.readInt();
                int cpuSpeedSteps = BatteryStatsImpl.this.getCpuSpeedSteps();
                if (i2 >= cpuSpeedSteps) {
                    cpuSpeedSteps = i2;
                }
                this.f1176q = new f[cpuSpeedSteps];
                for (int i3 = 0; i3 < i2; i3++) {
                    if (parcel.readInt() != 0) {
                        this.f1176q[i3] = new f(BatteryStatsImpl.this.f1038l, parcel);
                    }
                }
                a(parcel);
            }

            public void c(Parcel parcel) {
                ArrayList<BatteryStats.Uid.Proc.ExcessivePower> arrayList = this.f1177r;
                if (arrayList == null) {
                    parcel.writeInt(0);
                    return;
                }
                int size = arrayList.size();
                parcel.writeInt(size);
                for (int i2 = 0; i2 < size; i2++) {
                    BatteryStats.Uid.Proc.ExcessivePower excessivePower = this.f1177r.get(i2);
                    parcel.writeInt(excessivePower.type);
                    parcel.writeLong(excessivePower.overTime);
                    parcel.writeLong(excessivePower.usedTime);
                }
            }

            @Override // android.os.BatteryStats.Uid.Proc
            public int countExcessivePowers() {
                ArrayList<BatteryStats.Uid.Proc.ExcessivePower> arrayList = this.f1177r;
                if (arrayList != null) {
                    return arrayList.size();
                }
                return 0;
            }

            public void d(Parcel parcel) {
                parcel.writeLong(this.f1160a);
                parcel.writeLong(this.f1161b);
                parcel.writeLong(this.f1162c);
                parcel.writeInt(this.f1163d);
                parcel.writeLong(this.f1164e);
                parcel.writeLong(this.f1165f);
                parcel.writeLong(this.f1166g);
                parcel.writeInt(this.f1167h);
                parcel.writeLong(this.f1172m);
                parcel.writeLong(this.f1173n);
                parcel.writeLong(this.f1174o);
                parcel.writeInt(this.f1175p);
                parcel.writeInt(this.f1176q.length);
                int i2 = 0;
                while (true) {
                    f[] fVarArr = this.f1176q;
                    if (i2 >= fVarArr.length) {
                        c(parcel);
                        return;
                    }
                    f fVar = fVarArr[i2];
                    if (fVar != null) {
                        parcel.writeInt(1);
                        fVar.b(parcel);
                    } else {
                        parcel.writeInt(0);
                    }
                    i2++;
                }
            }

            @Override // android.os.BatteryStats.Uid.Proc
            public BatteryStats.Uid.Proc.ExcessivePower getExcessivePower(int i2) {
                ArrayList<BatteryStats.Uid.Proc.ExcessivePower> arrayList = this.f1177r;
                if (arrayList != null) {
                    return arrayList.get(i2);
                }
                return null;
            }

            @Override // android.os.BatteryStats.Uid.Proc
            public long getForegroundTime(int i2) {
                long j2;
                if (i2 == 1) {
                    return this.f1170k;
                }
                long j3 = this.f1162c;
                if (i2 == 2) {
                    j2 = this.f1166g;
                } else {
                    if (i2 != 3) {
                        return j3;
                    }
                    j2 = this.f1174o;
                }
                return j3 - j2;
            }

            @Override // android.os.BatteryStats.Uid.Proc
            public int getStarts(int i2) {
                int i3;
                if (i2 == 1) {
                    return this.f1171l;
                }
                int i4 = this.f1163d;
                if (i2 == 2) {
                    i3 = this.f1167h;
                } else {
                    if (i2 != 3) {
                        return i4;
                    }
                    i3 = this.f1175p;
                }
                return i4 - i3;
            }

            @Override // android.os.BatteryStats.Uid.Proc
            public long getSystemTime(int i2) {
                long j2;
                if (i2 == 1) {
                    return this.f1169j;
                }
                long j3 = this.f1161b;
                if (i2 == 2) {
                    j2 = this.f1165f;
                } else {
                    if (i2 != 3) {
                        return j3;
                    }
                    j2 = this.f1173n;
                }
                return j3 - j2;
            }

            @Override // android.os.BatteryStats.Uid.Proc
            public long getTimeAtCpuSpeedStep(int i2, int i3) {
                f fVar;
                f[] fVarArr = this.f1176q;
                if (i2 >= fVarArr.length || (fVar = fVarArr[i2]) == null) {
                    return 0L;
                }
                return fVar.getCountLocked(i3);
            }

            @Override // android.os.BatteryStats.Uid.Proc
            public long getUserTime(int i2) {
                long j2;
                if (i2 == 1) {
                    return this.f1168i;
                }
                long j3 = this.f1160a;
                if (i2 == 2) {
                    j2 = this.f1164e;
                } else {
                    if (i2 != 3) {
                        return j3;
                    }
                    j2 = this.f1172m;
                }
                return j3 - j2;
            }
        }

        public final class c extends BatteryStats.Uid.Sensor {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f1179a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public h f1180b;

            public c(int i2) {
                this.f1179a = i2;
            }

            @Override // android.os.BatteryStats.Uid.Sensor
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public i getSensorTime() {
                return this.f1180b;
            }

            public void b(ArrayList<Object> arrayList, Parcel parcel) {
                this.f1180b = c(arrayList, parcel);
            }

            public final h c(ArrayList<Object> arrayList, Parcel parcel) {
                if (parcel.readInt() == 0) {
                    return null;
                }
                ArrayList<h> arrayList2 = BatteryStatsImpl.this.f1024e.get(this.f1179a);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>();
                    BatteryStatsImpl.this.f1024e.put(this.f1179a, arrayList2);
                }
                return new h(j.this, 0, arrayList2, arrayList, parcel);
            }

            public void d(Parcel parcel, long j2) {
                i.c(parcel, this.f1180b, j2);
            }

            @Override // android.os.BatteryStats.Uid.Sensor
            public int getHandle() {
                return this.f1179a;
            }
        }

        public final class d extends BatteryStats.Uid.Wakelock {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public h f1182a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public h f1183b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public h f1184c;

            public d() {
            }

            @Override // android.os.BatteryStats.Uid.Wakelock
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public i getWakeTime(int i2) {
                if (i2 == 0) {
                    return this.f1182a;
                }
                if (i2 == 1) {
                    return this.f1183b;
                }
                if (i2 == 2) {
                    return this.f1184c;
                }
                throw new IllegalArgumentException("type = " + i2);
            }

            public void b(ArrayList<Object> arrayList, Parcel parcel) {
                this.f1182a = c(0, BatteryStatsImpl.this.f1018b, arrayList, parcel);
                this.f1183b = c(1, BatteryStatsImpl.this.f1020c, arrayList, parcel);
                this.f1184c = c(2, BatteryStatsImpl.this.f1022d, arrayList, parcel);
            }

            public final h c(int i2, ArrayList<h> arrayList, ArrayList<Object> arrayList2, Parcel parcel) {
                if (parcel.readInt() == 0) {
                    return null;
                }
                return new h(j.this, i2, arrayList, arrayList2, parcel);
            }

            public void d(Parcel parcel, long j2) {
                i.c(parcel, this.f1182a, j2);
                i.c(parcel, this.f1183b, j2);
                i.c(parcel, this.f1184c, j2);
            }
        }

        public j(int i2) {
            this.f1111a = i2;
            this.f1113c = new h(this, 4, BatteryStatsImpl.this.f1026f, BatteryStatsImpl.this.f1038l);
            this.f1115e = new h(this, 5, BatteryStatsImpl.this.f1028g, BatteryStatsImpl.this.f1038l);
            this.f1117g = new h(this, 6, BatteryStatsImpl.this.f1032i, BatteryStatsImpl.this.f1038l);
            this.f1121k = new h(this, 7, BatteryStatsImpl.this.f1030h, BatteryStatsImpl.this.f1038l);
        }

        public h a() {
            if (this.f1123m == null) {
                this.f1123m = new h(this, 7, null, BatteryStatsImpl.this.f1038l);
            }
            return this.f1123m;
        }

        public h b() {
            if (this.f1126p == null) {
                this.f1126p = new h(this, 10, null, BatteryStatsImpl.this.f1038l);
            }
            return this.f1126p;
        }

        public h c() {
            if (this.f1125o == null) {
                this.f1125o = new h(this, 8, null, BatteryStatsImpl.this.f1038l);
            }
            return this.f1125o;
        }

        @Override // android.os.BatteryStats.Uid
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public i getForegroundActivityTimer() {
            return this.f1126p;
        }

        @Override // android.os.BatteryStats.Uid
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public i getVibratorOnTimer() {
            return this.f1127q;
        }

        public void f() {
            this.f1129s = new e[4];
            for (int i2 = 0; i2 < 4; i2++) {
                this.f1129s[i2] = new e(BatteryStatsImpl.this.f1038l);
            }
        }

        public void g() {
            this.f1128r = new c[3];
            for (int i2 = 0; i2 < 3; i2++) {
                this.f1128r[i2] = new c(BatteryStatsImpl.this.f1038l);
            }
        }

        @Override // android.os.BatteryStats.Uid
        public long getAudioTurnedOnTime(long j2, int i2) {
            h hVar = this.f1123m;
            if (hVar == null) {
                return 0L;
            }
            return hVar.getTotalTimeLocked(j2, i2);
        }

        @Override // android.os.BatteryStats.Uid
        public long getFullWifiLockTime(long j2, int i2) {
            h hVar = this.f1115e;
            if (hVar == null) {
                return 0L;
            }
            return hVar.getTotalTimeLocked(j2, i2);
        }

        @Override // android.os.BatteryStats.Uid
        public long getNetworkActivityCount(int i2, int i3) {
            e[] eVarArr = this.f1129s;
            if (eVarArr == null || i2 < 0 || i2 >= eVarArr.length) {
                return 0L;
            }
            return eVarArr[i2].b(i3);
        }

        @Override // android.os.BatteryStats.Uid
        public Map<String, ? extends BatteryStats.Uid.Pkg> getPackageStats() {
            return this.f1133w;
        }

        @Override // android.os.BatteryStats.Uid
        public SparseArray<? extends BatteryStats.Uid.Pid> getPidStats() {
            return this.f1134x;
        }

        @Override // android.os.BatteryStats.Uid
        public Map<String, ? extends BatteryStats.Uid.Proc> getProcessStats() {
            return this.f1132v;
        }

        @Override // android.os.BatteryStats.Uid
        public Map<Integer, ? extends BatteryStats.Uid.Sensor> getSensorStats() {
            return this.f1131u;
        }

        @Override // android.os.BatteryStats.Uid
        public int getUid() {
            return this.f1111a;
        }

        @Override // android.os.BatteryStats.Uid
        public int getUserActivityCount(int i2, int i3) {
            c[] cVarArr = this.f1128r;
            if (cVarArr == null) {
                return 0;
            }
            return cVarArr[i2].getCountLocked(i3);
        }

        @Override // android.os.BatteryStats.Uid
        public long getVideoTurnedOnTime(long j2, int i2) {
            h hVar = this.f1125o;
            if (hVar == null) {
                return 0L;
            }
            return hVar.getTotalTimeLocked(j2, i2);
        }

        @Override // android.os.BatteryStats.Uid
        public Map<String, ? extends BatteryStats.Uid.Wakelock> getWakelockStats() {
            return this.f1130t;
        }

        @Override // android.os.BatteryStats.Uid
        public long getWifiBatchedScanTime(int i2, long j2, int i3) {
            if (i2 < 0 || i2 >= 5) {
                return 0L;
            }
            h[] hVarArr = this.f1119i;
            if (hVarArr[i2] == null) {
                return 0L;
            }
            return hVarArr[i2].getTotalTimeLocked(j2, i3);
        }

        @Override // android.os.BatteryStats.Uid
        public long getWifiMulticastTime(long j2, int i2) {
            h hVar = this.f1121k;
            if (hVar == null) {
                return 0L;
            }
            return hVar.getTotalTimeLocked(j2, i2);
        }

        @Override // android.os.BatteryStats.Uid
        public long getWifiRunningTime(long j2, int i2) {
            h hVar = this.f1113c;
            if (hVar == null) {
                return 0L;
            }
            return hVar.getTotalTimeLocked(j2, i2);
        }

        @Override // android.os.BatteryStats.Uid
        public long getWifiScanTime(long j2, int i2) {
            h hVar = this.f1117g;
            if (hVar == null) {
                return 0L;
            }
            return hVar.getTotalTimeLocked(j2, i2);
        }

        public void h(int i2, Parcel parcel) {
            if (i2 < 0 || i2 >= 5) {
                return;
            }
            ArrayList<h> arrayList = BatteryStatsImpl.this.f1034j.get(i2);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                BatteryStatsImpl.this.f1034j.put(i2, arrayList);
            }
            ArrayList<h> arrayList2 = arrayList;
            if (parcel == null) {
                this.f1119i[i2] = new h(this, 11, arrayList2, BatteryStatsImpl.this.f1038l);
            } else {
                this.f1119i[i2] = new h(this, 11, arrayList2, BatteryStatsImpl.this.f1038l, parcel);
            }
        }

        @Override // android.os.BatteryStats.Uid
        public boolean hasNetworkActivity() {
            return this.f1129s != null;
        }

        @Override // android.os.BatteryStats.Uid
        public boolean hasUserActivity() {
            return this.f1128r != null;
        }

        public void i(int i2, long j2) {
            if (this.f1129s == null) {
                f();
            }
            if (i2 >= 0 && i2 < 4) {
                this.f1129s[i2].a(j2);
                return;
            }
            Slog.w("BatteryStatsImpl", "Unknown network activity type " + i2 + " was specified.", new Throwable());
        }

        public void j(ArrayList<Object> arrayList, Parcel parcel) {
            int i2 = parcel.readInt();
            this.f1130t.clear();
            for (int i3 = 0; i3 < i2; i3++) {
                String string = parcel.readString();
                d dVar = new d();
                dVar.b(arrayList, parcel);
                this.f1130t.put(string, dVar);
            }
            int i4 = parcel.readInt();
            this.f1131u.clear();
            for (int i5 = 0; i5 < i4; i5++) {
                int i6 = parcel.readInt();
                c cVar = new c(i6);
                cVar.b(BatteryStatsImpl.this.f1038l, parcel);
                this.f1131u.put(Integer.valueOf(i6), cVar);
            }
            int i7 = parcel.readInt();
            this.f1132v.clear();
            for (int i8 = 0; i8 < i7; i8++) {
                String string2 = parcel.readString();
                b bVar = new b();
                bVar.b(parcel);
                this.f1132v.put(string2, bVar);
            }
            int i9 = parcel.readInt();
            this.f1133w.clear();
            for (int i10 = 0; i10 < i9; i10++) {
                String string3 = parcel.readString();
                a aVar = new a();
                aVar.a(parcel);
                this.f1133w.put(string3, aVar);
            }
            this.f1112b = false;
            if (parcel.readInt() != 0) {
                BatteryStatsImpl batteryStatsImpl = BatteryStatsImpl.this;
                this.f1113c = new h(this, 4, batteryStatsImpl.f1026f, batteryStatsImpl.f1038l, parcel);
            } else {
                this.f1113c = null;
            }
            this.f1114d = false;
            if (parcel.readInt() != 0) {
                BatteryStatsImpl batteryStatsImpl2 = BatteryStatsImpl.this;
                this.f1115e = new h(this, 5, batteryStatsImpl2.f1028g, batteryStatsImpl2.f1038l, parcel);
            } else {
                this.f1115e = null;
            }
            this.f1116f = false;
            if (parcel.readInt() != 0) {
                BatteryStatsImpl batteryStatsImpl3 = BatteryStatsImpl.this;
                this.f1117g = new h(this, 6, batteryStatsImpl3.f1032i, batteryStatsImpl3.f1038l, parcel);
            } else {
                this.f1117g = null;
            }
            this.f1118h = -1;
            for (int i11 = 0; i11 < 5; i11++) {
                if (parcel.readInt() != 0) {
                    h(i11, parcel);
                } else {
                    this.f1119i[i11] = null;
                }
            }
            this.f1120j = false;
            if (parcel.readInt() != 0) {
                BatteryStatsImpl batteryStatsImpl4 = BatteryStatsImpl.this;
                this.f1121k = new h(this, 7, batteryStatsImpl4.f1030h, batteryStatsImpl4.f1038l, parcel);
            } else {
                this.f1121k = null;
            }
            this.f1122l = false;
            if (parcel.readInt() != 0) {
                this.f1123m = new h(this, 7, null, BatteryStatsImpl.this.f1038l, parcel);
            } else {
                this.f1123m = null;
            }
            this.f1124n = false;
            if (parcel.readInt() != 0) {
                this.f1125o = new h(this, 8, null, BatteryStatsImpl.this.f1038l, parcel);
            } else {
                this.f1125o = null;
            }
            if (parcel.readInt() != 0) {
                this.f1126p = new h(this, 10, null, BatteryStatsImpl.this.f1038l, parcel);
            } else {
                this.f1126p = null;
            }
            if (parcel.readInt() != 0) {
                BatteryStatsImpl batteryStatsImpl5 = BatteryStatsImpl.this;
                this.f1127q = new b(this, 9, batteryStatsImpl5.f1038l, batteryStatsImpl5.f1035j0, parcel);
            } else {
                this.f1127q = null;
            }
            if (parcel.readInt() != 0) {
                this.f1128r = new c[3];
                for (int i12 = 0; i12 < 3; i12++) {
                    this.f1128r[i12] = new c(BatteryStatsImpl.this.f1038l, parcel);
                }
            } else {
                this.f1128r = null;
            }
            if (parcel.readInt() == 0) {
                this.f1129s = null;
                return;
            }
            this.f1129s = new e[4];
            for (int i13 = 0; i13 < 4; i13++) {
                this.f1129s[i13] = new e(BatteryStatsImpl.this.f1038l, parcel);
            }
        }

        public void k(Parcel parcel, long j2) {
            parcel.writeInt(this.f1130t.size());
            for (Map.Entry<String, d> entry : this.f1130t.entrySet()) {
                parcel.writeString(entry.getKey());
                entry.getValue().d(parcel, j2);
            }
            parcel.writeInt(this.f1131u.size());
            for (Map.Entry<Integer, c> entry2 : this.f1131u.entrySet()) {
                parcel.writeInt(entry2.getKey().intValue());
                entry2.getValue().d(parcel, j2);
            }
            parcel.writeInt(this.f1132v.size());
            for (Map.Entry<String, b> entry3 : this.f1132v.entrySet()) {
                parcel.writeString(entry3.getKey());
                entry3.getValue().d(parcel);
            }
            parcel.writeInt(this.f1133w.size());
            for (Map.Entry<String, a> entry4 : this.f1133w.entrySet()) {
                parcel.writeString(entry4.getKey());
                entry4.getValue().b(parcel);
            }
            if (this.f1113c != null) {
                parcel.writeInt(1);
                this.f1113c.d(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.f1115e != null) {
                parcel.writeInt(1);
                this.f1115e.d(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.f1117g != null) {
                parcel.writeInt(1);
                this.f1117g.d(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            for (int i2 = 0; i2 < 5; i2++) {
                if (this.f1119i[i2] != null) {
                    parcel.writeInt(1);
                    this.f1119i[i2].d(parcel, j2);
                } else {
                    parcel.writeInt(0);
                }
            }
            if (this.f1121k != null) {
                parcel.writeInt(1);
                this.f1121k.d(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.f1123m != null) {
                parcel.writeInt(1);
                this.f1123m.d(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.f1125o != null) {
                parcel.writeInt(1);
                this.f1125o.d(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.f1126p != null) {
                parcel.writeInt(1);
                this.f1126p.d(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.f1127q != null) {
                parcel.writeInt(1);
                this.f1127q.d(parcel, j2);
            } else {
                parcel.writeInt(0);
            }
            if (this.f1128r != null) {
                parcel.writeInt(1);
                for (int i3 = 0; i3 < 3; i3++) {
                    this.f1128r[i3].b(parcel);
                }
            } else {
                parcel.writeInt(0);
            }
            if (this.f1129s == null) {
                parcel.writeInt(0);
                return;
            }
            parcel.writeInt(1);
            for (int i4 = 0; i4 < 4; i4++) {
                this.f1129s[i4].c(parcel);
            }
        }

        @Override // android.os.BatteryStats.Uid
        public void noteActivityPausedLocked() {
            h hVar = this.f1126p;
            if (hVar != null) {
                hVar.g(BatteryStatsImpl.this);
            }
        }

        @Override // android.os.BatteryStats.Uid
        public void noteActivityResumedLocked() {
            b().f(BatteryStatsImpl.this);
        }

        @Override // android.os.BatteryStats.Uid
        public void noteAudioTurnedOffLocked() {
            if (this.f1122l) {
                this.f1122l = false;
                h hVar = this.f1123m;
                if (hVar != null) {
                    hVar.g(BatteryStatsImpl.this);
                }
            }
        }

        @Override // android.os.BatteryStats.Uid
        public void noteAudioTurnedOnLocked() {
            if (this.f1122l) {
                return;
            }
            this.f1122l = true;
            a().f(BatteryStatsImpl.this);
        }

        @Override // android.os.BatteryStats.Uid
        public void noteFullWifiLockAcquiredLocked() {
            if (this.f1114d) {
                return;
            }
            this.f1114d = true;
            if (this.f1115e == null) {
                BatteryStatsImpl batteryStatsImpl = BatteryStatsImpl.this;
                this.f1115e = new h(this, 5, batteryStatsImpl.f1028g, batteryStatsImpl.f1038l);
            }
            this.f1115e.f(BatteryStatsImpl.this);
        }

        @Override // android.os.BatteryStats.Uid
        public void noteFullWifiLockReleasedLocked() {
            if (this.f1114d) {
                this.f1114d = false;
                this.f1115e.g(BatteryStatsImpl.this);
            }
        }

        @Override // android.os.BatteryStats.Uid
        public void noteUserActivityLocked(int i2) {
            if (this.f1128r == null) {
                g();
            }
            if (i2 >= 0 && i2 < 3) {
                this.f1128r[i2].a();
                return;
            }
            Slog.w("BatteryStatsImpl", "Unknown user activity type " + i2 + " was specified.", new Throwable());
        }

        @Override // android.os.BatteryStats.Uid
        public void noteVideoTurnedOffLocked() {
            if (this.f1124n) {
                this.f1124n = false;
                h hVar = this.f1125o;
                if (hVar != null) {
                    hVar.g(BatteryStatsImpl.this);
                }
            }
        }

        @Override // android.os.BatteryStats.Uid
        public void noteVideoTurnedOnLocked() {
            if (this.f1124n) {
                return;
            }
            this.f1124n = true;
            c().f(BatteryStatsImpl.this);
        }

        @Override // android.os.BatteryStats.Uid
        public void noteWifiBatchedScanStartedLocked(int i2) {
            int i3 = 0;
            while (i2 > 8 && i3 < 5) {
                i2 >>= 3;
                i3++;
            }
            int i4 = this.f1118h;
            if (i4 == i3) {
                return;
            }
            if (i4 != -1) {
                this.f1119i[i4].g(BatteryStatsImpl.this);
            }
            this.f1118h = i3;
            if (this.f1119i[i3] == null) {
                h(i3, null);
            }
            this.f1119i[i3].f(BatteryStatsImpl.this);
        }

        @Override // android.os.BatteryStats.Uid
        public void noteWifiBatchedScanStoppedLocked() {
            int i2 = this.f1118h;
            if (i2 != -1) {
                this.f1119i[i2].g(BatteryStatsImpl.this);
                this.f1118h = -1;
            }
        }

        @Override // android.os.BatteryStats.Uid
        public void noteWifiMulticastDisabledLocked() {
            if (this.f1120j) {
                this.f1120j = false;
                this.f1121k.g(BatteryStatsImpl.this);
            }
        }

        @Override // android.os.BatteryStats.Uid
        public void noteWifiMulticastEnabledLocked() {
            if (this.f1120j) {
                return;
            }
            this.f1120j = true;
            if (this.f1121k == null) {
                BatteryStatsImpl batteryStatsImpl = BatteryStatsImpl.this;
                this.f1121k = new h(this, 7, batteryStatsImpl.f1030h, batteryStatsImpl.f1038l);
            }
            this.f1121k.f(BatteryStatsImpl.this);
        }

        @Override // android.os.BatteryStats.Uid
        public void noteWifiRunningLocked() {
            if (this.f1112b) {
                return;
            }
            this.f1112b = true;
            if (this.f1113c == null) {
                BatteryStatsImpl batteryStatsImpl = BatteryStatsImpl.this;
                this.f1113c = new h(this, 4, batteryStatsImpl.f1026f, batteryStatsImpl.f1038l);
            }
            this.f1113c.f(BatteryStatsImpl.this);
        }

        @Override // android.os.BatteryStats.Uid
        public void noteWifiScanStartedLocked() {
            if (this.f1116f) {
                return;
            }
            this.f1116f = true;
            if (this.f1117g == null) {
                BatteryStatsImpl batteryStatsImpl = BatteryStatsImpl.this;
                this.f1117g = new h(this, 6, batteryStatsImpl.f1032i, batteryStatsImpl.f1038l);
            }
            this.f1117g.f(BatteryStatsImpl.this);
        }

        @Override // android.os.BatteryStats.Uid
        public void noteWifiScanStoppedLocked() {
            if (this.f1116f) {
                this.f1116f = false;
                this.f1117g.g(BatteryStatsImpl.this);
            }
        }

        @Override // android.os.BatteryStats.Uid
        public void noteWifiStoppedLocked() {
            if (this.f1112b) {
                this.f1112b = false;
                this.f1113c.g(BatteryStatsImpl.this);
            }
        }
    }

    public BatteryStatsImpl() {
        this.f1016a = new SparseArray<>();
        this.f1018b = new ArrayList<>();
        this.f1020c = new ArrayList<>();
        this.f1022d = new ArrayList<>();
        this.f1024e = new SparseArray<>();
        this.f1026f = new ArrayList<>();
        this.f1028g = new ArrayList<>();
        this.f1030h = new ArrayList<>();
        this.f1032i = new ArrayList<>();
        this.f1034j = new SparseArray<>();
        this.f1036k = new ArrayList<>();
        this.f1038l = new ArrayList<>();
        this.f1042n = false;
        this.f1044o = true;
        this.f1046p = Parcel.obtain();
        this.f1048q = new BatteryStats.HistoryItem();
        this.f1050r = new BatteryStats.HistoryItem();
        this.f1052s = new BatteryStats.HistoryItem();
        this.f1054t = -1;
        this.f1056u = false;
        this.f1058v = 0L;
        this.f1060w = new BatteryStats.HistoryItem();
        this.O = -1;
        this.P = new h[5];
        this.T = -1;
        this.U = -1;
        this.V = new h[5];
        this.X = -1;
        this.Y = new h[17];
        this.Z = new e[4];
        this.f1021c0 = -1;
        this.A0 = 0L;
        this.E0 = -1;
        this.F0 = -1;
        this.G0 = -1;
        this.H0 = -1;
        this.I0 = new HashMap<>();
        this.J0 = new String[3];
        this.K0 = new long[3];
        this.L0 = new HashMap();
        this.M0 = new HashMap<>();
        this.N0 = new NetworkStatsFactory();
        this.P0 = Sets.newHashSet();
        this.Q0 = Sets.newHashSet();
        this.R0 = 0;
        this.S0 = 0;
        this.T0 = 0;
        this.U0 = 0;
        this.V0 = 0;
        this.W0 = null;
        this.X0 = new ReentrantLock();
    }

    public void a() {
        this.f1040m = 0L;
        this.f1058v = 0L;
        this.f1046p.setDataSize(0);
        this.f1046p.setDataPosition(0);
        this.f1046p.setDataCapacity(65536);
        this.f1050r.cmd = (byte) 0;
        this.f1048q.cmd = (byte) 0;
        this.f1054t = -1;
        this.f1056u = false;
    }

    public long b(long j2) {
        long j3 = this.f1041m0;
        return this.f1035j0 ? j3 + (j2 - this.f1043n0) : j3;
    }

    public long c(long j2) {
        long j3 = this.f1037k0;
        return this.f1035j0 ? j3 + (j2 - this.f1039l0) : j3;
    }

    @Override // android.os.BatteryStats
    public long computeBatteryRealtime(long j2, int i2) {
        if (i2 == 0) {
            return this.E + b(j2);
        }
        if (i2 == 1) {
            return this.F;
        }
        if (i2 == 2) {
            return b(j2);
        }
        if (i2 != 3) {
            return 0L;
        }
        return b(j2) - this.f1047p0;
    }

    @Override // android.os.BatteryStats
    public long computeBatteryUptime(long j2, int i2) {
        if (i2 == 0) {
            return this.C + getBatteryUptime(j2);
        }
        if (i2 == 1) {
            return this.D;
        }
        if (i2 == 2) {
            return getBatteryUptime(j2);
        }
        if (i2 != 3) {
            return 0L;
        }
        return c(j2) - this.f1045o0;
    }

    @Override // android.os.BatteryStats
    public long computeRealtime(long j2, int i2) {
        long j3;
        if (i2 == 0) {
            return this.J + (j2 - this.K);
        }
        if (i2 == 1) {
            return this.L;
        }
        if (i2 == 2) {
            j3 = this.K;
        } else {
            if (i2 != 3) {
                return 0L;
            }
            j3 = this.f1043n0;
        }
        return j2 - j3;
    }

    @Override // android.os.BatteryStats
    public long computeUptime(long j2, int i2) {
        long j3;
        if (i2 == 0) {
            return this.G + (j2 - this.H);
        }
        if (i2 == 1) {
            return this.I;
        }
        if (i2 == 2) {
            j3 = this.H;
        } else {
            if (i2 != 3) {
                return 0L;
            }
            j3 = this.f1039l0;
        }
        return j2 - j3;
    }

    public int d() {
        if (this.E0 == -1) {
            return this.D0;
        }
        if (this.f1031h0 != null) {
            return e() - this.E0;
        }
        return 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.BatteryStats
    public void dumpLocked(PrintWriter printWriter, boolean z2, int i2) {
        super.dumpLocked(printWriter, z2, i2);
    }

    public final int e() {
        BluetoothHeadset bluetoothHeadset = this.f1031h0;
        if (bluetoothHeadset == null) {
            return -1;
        }
        List<BluetoothDevice> connectedDevices = bluetoothHeadset.getConnectedDevices();
        if (connectedDevices.size() > 0) {
            return this.f1031h0.getBatteryUsageHint(connectedDevices.get(0));
        }
        return -1;
    }

    public final long f() {
        try {
            File file = new File("/sys/devices/virtual/net/rmnet0/awake_time_ms");
            if (!file.exists()) {
                return 0L;
            }
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            String line = bufferedReader.readLine();
            bufferedReader.close();
            return Long.parseLong(line) * 1000;
        } catch (IOException | NumberFormatException unused) {
            return 0L;
        }
    }

    @Override // android.os.BatteryStats
    public void finishIteratingHistoryLocked() {
        this.A = false;
        Parcel parcel = this.f1046p;
        parcel.setDataPosition(parcel.dataSize());
    }

    @Override // android.os.BatteryStats
    public void finishIteratingOldHistoryLocked() {
        this.A = false;
        Parcel parcel = this.f1046p;
        parcel.setDataPosition(parcel.dataSize());
    }

    public int g() {
        return this.f1051r0;
    }

    @Override // android.os.BatteryStats
    public long getBatteryRealtime(long j2) {
        return b(j2);
    }

    @Override // android.os.BatteryStats
    public long getBatteryUptime(long j2) {
        return c(j2);
    }

    @Override // android.os.BatteryStats
    public long getBluetoothOnTime(long j2, int i2) {
        return this.f1029g0.getTotalTimeLocked(j2, i2);
    }

    @Override // android.os.BatteryStats
    public int getCpuSpeedSteps() {
        return Y0;
    }

    @Override // android.os.BatteryStats
    public int getDischargeAmountScreenOff() {
        int i2;
        int i3;
        int i4;
        synchronized (this) {
            i2 = this.f1065y0;
            if (this.f1033i0 && !this.M && (i3 = this.f1051r0) < (i4 = this.f1059v0)) {
                i2 += i4 - i3;
            }
        }
        return i2;
    }

    @Override // android.os.BatteryStats
    public int getDischargeAmountScreenOffSinceCharge() {
        int i2;
        int i3;
        int i4;
        synchronized (this) {
            i2 = this.f1067z0;
            if (this.f1033i0 && !this.M && (i3 = this.f1051r0) < (i4 = this.f1059v0)) {
                i2 += i4 - i3;
            }
        }
        return i2;
    }

    @Override // android.os.BatteryStats
    public int getDischargeAmountScreenOn() {
        int i2;
        int i3;
        int i4;
        synchronized (this) {
            i2 = this.f1061w0;
            if (this.f1033i0 && this.M && (i3 = this.f1051r0) < (i4 = this.f1057u0)) {
                i2 += i4 - i3;
            }
        }
        return i2;
    }

    @Override // android.os.BatteryStats
    public int getDischargeAmountScreenOnSinceCharge() {
        int i2;
        int i3;
        int i4;
        synchronized (this) {
            i2 = this.f1063x0;
            if (this.f1033i0 && this.M && (i3 = this.f1051r0) < (i4 = this.f1057u0)) {
                i2 += i4 - i3;
            }
        }
        return i2;
    }

    @Override // android.os.BatteryStats
    public int getDischargeCurrentLevel() {
        int iG;
        synchronized (this) {
            iG = g();
        }
        return iG;
    }

    @Override // android.os.BatteryStats
    public int getDischargeStartLevel() {
        int iH;
        synchronized (this) {
            iH = h();
        }
        return iH;
    }

    @Override // android.os.BatteryStats
    public long getGlobalWifiRunningTime(long j2, int i2) {
        return this.f1025e0.getTotalTimeLocked(j2, i2);
    }

    @Override // android.os.BatteryStats
    public int getHighDischargeAmountSinceCharge() {
        int i2;
        int i3;
        int i4;
        synchronized (this) {
            i2 = this.f1055t0;
            if (this.f1033i0 && (i3 = this.f1051r0) < (i4 = this.f1049q0)) {
                i2 += i4 - i3;
            }
        }
        return i2;
    }

    @Override // android.os.BatteryStats
    public long getHistoryBaseTime() {
        return this.f1040m;
    }

    @Override // android.os.BatteryStats
    public int getInputEventCount(int i2) {
        return this.Q.getCountLocked(i2);
    }

    @Override // android.os.BatteryStats
    public boolean getIsOnBattery() {
        return this.f1033i0;
    }

    @Override // android.os.BatteryStats
    public Map<String, ? extends g> getKernelWakelockStats() {
        return this.I0;
    }

    @Override // android.os.BatteryStats
    public int getLowDischargeAmountSinceCharge() {
        int i2;
        int i3;
        int i4;
        synchronized (this) {
            i2 = this.f1053s0;
            if (this.f1033i0 && (i3 = this.f1051r0) < (i4 = this.f1049q0)) {
                i2 += (i4 - i3) - 1;
            }
        }
        return i2;
    }

    @Override // android.os.BatteryStats
    public long getNetworkActivityCount(int i2, int i3) {
        if (i2 < 0) {
            return 0L;
        }
        e[] eVarArr = this.Z;
        if (i2 < eVarArr.length) {
            return eVarArr[i2].b(i3);
        }
        return 0L;
    }

    @Override // android.os.BatteryStats
    public boolean getNextHistoryLocked(BatteryStats.HistoryItem historyItem) {
        int iDataPosition = this.f1046p.dataPosition();
        if (iDataPosition == 0) {
            historyItem.clear();
        }
        if (iDataPosition >= this.f1046p.dataSize()) {
            return false;
        }
        historyItem.readDelta(this.f1046p);
        return true;
    }

    @Override // android.os.BatteryStats
    public boolean getNextOldHistoryLocked(BatteryStats.HistoryItem historyItem) {
        boolean z2 = this.f1046p.dataPosition() >= this.f1046p.dataSize();
        if (!z2) {
            this.f1052s.readDelta(this.f1046p);
            this.f1066z |= this.f1052s.cmd == 3;
        }
        BatteryStats.HistoryItem historyItem2 = this.f1064y;
        if (historyItem2 == null) {
            if (!this.f1066z && !z2) {
                Slog.w("BatteryStatsImpl", "Old history ends before new history!");
            }
            return false;
        }
        historyItem.setTo(historyItem2);
        this.f1064y = historyItem2.next;
        if (!this.f1066z) {
            if (z2) {
                Slog.w("BatteryStatsImpl", "New history ends before old history!");
            } else if (!historyItem.same(this.f1052s)) {
                long historyBaseTime = getHistoryBaseTime() + SystemClock.elapsedRealtime();
                u.e eVar = new u.e(new LogWriter(5, "BatteryStatsImpl"));
                eVar.println("Histories differ!");
                eVar.println("Old history:");
                new BatteryStats.HistoryPrinter().printNextItem(eVar, historyItem, historyBaseTime);
                eVar.println("New history:");
                new BatteryStats.HistoryPrinter().printNextItem(eVar, this.f1052s, historyBaseTime);
                eVar.flush();
            }
        }
        return true;
    }

    @Override // android.os.BatteryStats
    public int getPhoneDataConnectionCount(int i2, int i3) {
        return this.Y[i2].getCountLocked(i3);
    }

    @Override // android.os.BatteryStats
    public long getPhoneDataConnectionTime(int i2, long j2, int i3) {
        return this.Y[i2].getTotalTimeLocked(j2, i3);
    }

    @Override // android.os.BatteryStats
    public long getPhoneOnTime(long j2, int i2) {
        return this.S.getTotalTimeLocked(j2, i2);
    }

    @Override // android.os.BatteryStats
    public long getPhoneSignalScanningTime(long j2, int i2) {
        return this.W.getTotalTimeLocked(j2, i2);
    }

    @Override // android.os.BatteryStats
    public int getPhoneSignalStrengthCount(int i2, int i3) {
        return this.V[i2].getCountLocked(i3);
    }

    @Override // android.os.BatteryStats
    public long getPhoneSignalStrengthTime(int i2, long j2, int i3) {
        return this.V[i2].getTotalTimeLocked(j2, i3);
    }

    @Override // android.os.BatteryStats
    public long getRadioDataUptime() {
        return this.C0 == -1 ? this.B0 : f() - this.C0;
    }

    @Override // android.os.BatteryStats
    public long getRadioDataUptimeMs() {
        return getRadioDataUptime() / 1000;
    }

    @Override // android.os.BatteryStats
    public long getScreenBrightnessTime(int i2, long j2, int i3) {
        return this.P[i2].getTotalTimeLocked(j2, i3);
    }

    @Override // android.os.BatteryStats
    public long getScreenOnTime(long j2, int i2) {
        return this.N.getTotalTimeLocked(j2, i2);
    }

    @Override // android.os.BatteryStats
    public int getStartCount() {
        return this.B;
    }

    @Override // android.os.BatteryStats
    public SparseArray<? extends BatteryStats.Uid> getUidStats() {
        return this.f1016a;
    }

    @Override // android.os.BatteryStats
    public long getWifiOnTime(long j2, int i2) {
        return this.f1019b0.getTotalTimeLocked(j2, i2);
    }

    public int h() {
        return this.f1049q0;
    }

    public j i(int i2) {
        j jVar = this.f1016a.get(i2);
        if (jVar != null) {
            return jVar;
        }
        j jVar2 = new j(i2);
        this.f1016a.put(i2, jVar2);
        return jVar2;
    }

    public final Map<String, d> j(byte[] bArr, int i2, boolean z2) {
        byte b2;
        int i3;
        Map<String, d> map;
        int i4;
        byte b3;
        char c2 = 0;
        int i5 = 0;
        while (true) {
            b2 = 10;
            if (i5 >= i2 || bArr[i5] == 10 || bArr[i5] == 0) {
                break;
            }
            i5++;
        }
        int i6 = i5 + 1;
        synchronized (this) {
            Map<String, d> map2 = this.L0;
            Z0++;
            int i7 = i6;
            int i8 = 0;
            while (i7 < i2) {
                int i9 = i7;
                while (i9 < i2 && bArr[i9] != b2 && bArr[i9] != 0) {
                    i9++;
                }
                int i10 = i9 + 1;
                if (i10 >= i2 - 1) {
                    return map2;
                }
                String[] strArr = this.J0;
                long[] jArr = this.K0;
                for (int i11 = i7; i11 < i10; i11++) {
                    if ((bArr[i11] & 128) != 0) {
                        bArr[i11] = 63;
                    }
                }
                boolean procLine = Process.parseProcLine(bArr, i7, i10, z2 ? f1015b1 : f1014a1, strArr, jArr, null);
                String str = strArr[c2];
                int i12 = (int) jArr[1];
                long j2 = z2 ? jArr[2] * 1000 : (jArr[2] + 500) / 1000;
                if (!procLine || str.length() <= 0) {
                    i3 = i10;
                    map = map2;
                    i4 = i8;
                    b3 = b2;
                } else {
                    if (map2.containsKey(str)) {
                        i3 = i10;
                        map = map2;
                        i4 = i8;
                        b3 = b2;
                        d dVar = map.get(str);
                        int i13 = dVar.f1080c;
                        int i14 = Z0;
                        if (i13 == i14) {
                            dVar.f1078a += i12;
                            dVar.f1079b += j2;
                        } else {
                            dVar.f1078a = i12;
                            dVar.f1079b = j2;
                            dVar.f1080c = i14;
                            i8 = i4 + 1;
                        }
                    } else {
                        i3 = i10;
                        map = map2;
                        b3 = b2;
                        map.put(str, new d(i12, j2, Z0));
                        i8++;
                    }
                    i7 = i3;
                    map2 = map;
                    b2 = b3;
                    c2 = 0;
                }
                i8 = i4;
                i7 = i3;
                map2 = map;
                b2 = b3;
                c2 = 0;
            }
            Map<String, d> map3 = map2;
            if (map3.size() != i8) {
                Iterator<d> it = map3.values().iterator();
                while (it.hasNext()) {
                    if (it.next().f1080c != Z0) {
                        it.remove();
                    }
                }
            }
            return map3;
        }
    }

    public void k(Parcel parcel) {
        l(parcel);
    }

    public void l(Parcel parcel) {
        if (parcel.readInt() != -1166707595) {
            throw new ParcelFormatException("Bad magic number");
        }
        m(parcel, false);
        this.B = parcel.readInt();
        this.C = parcel.readLong();
        this.D = 0L;
        this.E = parcel.readLong();
        this.F = 0L;
        this.M = false;
        this.N = new h(null, -1, null, this.f1038l, parcel);
        for (int i2 = 0; i2 < 5; i2++) {
            this.P[i2] = new h(null, (-100) - i2, null, this.f1038l, parcel);
        }
        this.Q = new c(this.f1038l, parcel);
        this.R = false;
        this.S = new h(null, -2, null, this.f1038l, parcel);
        for (int i3 = 0; i3 < 5; i3++) {
            this.V[i3] = new h(null, (-200) - i3, null, this.f1038l, parcel);
        }
        this.W = new h(null, -199, null, this.f1038l, parcel);
        for (int i4 = 0; i4 < 17; i4++) {
            this.Y[i4] = new h(null, (-300) - i4, null, this.f1038l, parcel);
        }
        for (int i5 = 0; i5 < 4; i5++) {
            this.Z[i5] = new e(this.f1038l, parcel);
        }
        this.f1017a0 = false;
        this.f1019b0 = new h(null, -2, null, this.f1038l, parcel);
        this.f1023d0 = false;
        this.f1025e0 = new h(null, -2, null, this.f1038l, parcel);
        this.f1027f0 = false;
        this.f1029g0 = new h(null, -2, null, this.f1038l, parcel);
        this.G = parcel.readLong();
        this.H = parcel.readLong();
        this.I = 0L;
        this.J = parcel.readLong();
        this.K = parcel.readLong();
        this.L = 0L;
        this.f1033i0 = parcel.readInt() != 0;
        this.f1035j0 = false;
        this.f1037k0 = parcel.readLong();
        this.f1039l0 = parcel.readLong();
        this.f1041m0 = parcel.readLong();
        this.f1043n0 = parcel.readLong();
        this.f1045o0 = parcel.readLong();
        this.f1047p0 = parcel.readLong();
        this.f1049q0 = parcel.readInt();
        this.f1051r0 = parcel.readInt();
        this.f1053s0 = parcel.readInt();
        this.f1055t0 = parcel.readInt();
        this.f1061w0 = parcel.readInt();
        this.f1063x0 = parcel.readInt();
        this.f1065y0 = parcel.readInt();
        this.f1067z0 = parcel.readInt();
        this.A0 = parcel.readLong();
        this.B0 = parcel.readLong();
        this.C0 = -1L;
        this.D0 = parcel.readInt();
        this.E0 = -1;
        this.I0.clear();
        int i6 = parcel.readInt();
        for (int i7 = 0; i7 < i6; i7++) {
            if (parcel.readInt() != 0) {
                String string = parcel.readString();
                parcel.readInt();
                this.I0.put(string, new g(this.f1038l, this.f1033i0, parcel));
            }
        }
        this.f1018b.clear();
        this.f1020c.clear();
        this.f1022d.clear();
        this.f1026f.clear();
        this.f1028g.clear();
        this.f1032i.clear();
        this.f1034j.clear();
        this.f1030h.clear();
        Y0 = parcel.readInt();
        int i8 = parcel.readInt();
        this.f1016a.clear();
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = parcel.readInt();
            j jVar = new j(i10);
            jVar.j(this.f1038l, parcel);
            this.f1016a.append(i10, jVar);
        }
    }

    public void m(Parcel parcel, boolean z2) {
        long j2 = parcel.readLong();
        this.f1046p.setDataSize(0);
        this.f1046p.setDataPosition(0);
        int i2 = parcel.readInt();
        int iDataPosition = parcel.dataPosition();
        if (i2 >= 442368) {
            Slog.w("BatteryStatsImpl", "File corrupt: history data buffer too large " + i2);
        } else if ((i2 & (-4)) != i2) {
            Slog.w("BatteryStatsImpl", "File corrupt: history data buffer not aligned " + i2);
        } else {
            this.f1046p.appendFrom(parcel, iDataPosition, i2);
            parcel.setDataPosition(iDataPosition + i2);
        }
        if (z2) {
            o(parcel);
        }
        this.f1040m = j2;
        if (j2 > 0) {
            this.f1040m = (this.f1040m - SystemClock.elapsedRealtime()) + DateUtils.MINUTE_IN_MILLIS;
        }
    }

    public final Map<String, d> n() {
        FileInputStream fileInputStream;
        boolean z2;
        byte[] bArr = new byte[8192];
        try {
            try {
                fileInputStream = new FileInputStream("/proc/wakelocks");
                z2 = false;
            } catch (FileNotFoundException unused) {
                fileInputStream = new FileInputStream("/d/wakeup_sources");
                z2 = true;
            }
            int i2 = fileInputStream.read(bArr);
            fileInputStream.close();
            if (i2 > 0) {
                for (int i3 = 0; i3 < i2; i3++) {
                    if (bArr[i3] == 0) {
                        i2 = i3;
                        break;
                    }
                }
            }
            return j(bArr, i2, z2);
        } catch (FileNotFoundException | IOException unused2) {
            return null;
        }
    }

    public void o(Parcel parcel) {
    }

    public void p() {
        Map<String, d> mapN = n();
        if (mapN == null) {
            Slog.w("BatteryStatsImpl", "Couldn't get kernel wake lock stats");
            return;
        }
        for (Map.Entry<String, d> entry : mapN.entrySet()) {
            String key = entry.getKey();
            d value = entry.getValue();
            g gVar = this.I0.get(key);
            if (gVar == null) {
                gVar = new g(this.f1038l, this.f1035j0, true);
                this.I0.put(key, gVar);
            }
            gVar.h(value.f1078a);
            gVar.i(value.f1079b);
            gVar.g(Z0);
        }
        if (mapN.size() != this.I0.size()) {
            Iterator<Map.Entry<String, g>> it = this.I0.entrySet().iterator();
            while (it.hasNext()) {
                g value2 = it.next().getValue();
                if (value2.e() != Z0) {
                    value2.f();
                }
            }
        }
    }

    @Override // android.os.BatteryStats
    public void prepareForDumpLocked() {
        p();
        q();
    }

    public final void q() {
        if (SystemProperties.getBoolean("net.qtaguid_enabled", false)) {
            try {
                NetworkStats networkStatsA = this.N0.a();
                NetworkStats networkStats = this.O0;
                if (networkStats == null) {
                    this.O0 = networkStatsA;
                    return;
                }
                NetworkStats networkStatsSubtract = networkStatsA.subtract(networkStats);
                this.O0 = networkStatsA;
                NetworkStats.Entry values = null;
                int size = networkStatsSubtract.size();
                for (int i2 = 0; i2 < size; i2++) {
                    values = networkStatsSubtract.getValues(i2, values);
                    if (values.rxBytes != 0 && values.txBytes != 0 && values.tag == 0) {
                        j jVarI = i(values.uid);
                        if (this.P0.contains(values.iface)) {
                            jVarI.i(0, values.rxBytes);
                            jVarI.i(1, values.txBytes);
                            this.Z[0].a(values.rxBytes);
                            this.Z[1].a(values.txBytes);
                        } else if (this.Q0.contains(values.iface)) {
                            jVarI.i(2, values.rxBytes);
                            jVarI.i(3, values.txBytes);
                            this.Z[2].a(values.rxBytes);
                            this.Z[3].a(values.txBytes);
                        }
                    }
                }
            } catch (IOException e2) {
                Log.wtf("BatteryStatsImpl", "Failed to read network stats", e2);
            }
        }
    }

    public void r(Parcel parcel, boolean z2) {
        parcel.writeLong(this.f1040m + this.f1058v);
        parcel.writeInt(this.f1046p.dataSize());
        Parcel parcel2 = this.f1046p;
        parcel.appendFrom(parcel2, 0, parcel2.dataSize());
        if (z2) {
            s(parcel);
        }
    }

    public void s(Parcel parcel) {
    }

    @Override // android.os.BatteryStats
    public boolean startIteratingHistoryLocked() {
        this.f1046p.setDataPosition(0);
        this.f1066z = false;
        this.A = true;
        return this.f1046p.dataSize() > 0;
    }

    @Override // android.os.BatteryStats
    public boolean startIteratingOldHistoryLocked() {
        this.f1046p.setDataPosition(0);
        this.f1052s.clear();
        this.f1066z = false;
        this.A = true;
        BatteryStats.HistoryItem historyItem = this.f1062x;
        this.f1064y = historyItem;
        return historyItem != null;
    }

    public void t(Parcel parcel, boolean z2, int i2) {
        p();
        q();
        long jUptimeMillis = SystemClock.uptimeMillis() * 1000;
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long jC = c(jUptimeMillis);
        long jB = b(jElapsedRealtime);
        parcel.writeInt(-1166707595);
        r(parcel, false);
        parcel.writeInt(this.B);
        parcel.writeLong(this.C);
        parcel.writeLong(this.E);
        this.N.d(parcel, jB);
        for (int i3 = 0; i3 < 5; i3++) {
            this.P[i3].d(parcel, jB);
        }
        this.Q.b(parcel);
        this.S.d(parcel, jB);
        for (int i4 = 0; i4 < 5; i4++) {
            this.V[i4].d(parcel, jB);
        }
        this.W.d(parcel, jB);
        for (int i5 = 0; i5 < 17; i5++) {
            this.Y[i5].d(parcel, jB);
        }
        for (int i6 = 0; i6 < 4; i6++) {
            this.Z[i6].c(parcel);
        }
        this.f1019b0.d(parcel, jB);
        this.f1025e0.d(parcel, jB);
        this.f1029g0.d(parcel, jB);
        parcel.writeLong(this.G);
        parcel.writeLong(this.H);
        parcel.writeLong(this.J);
        parcel.writeLong(this.K);
        parcel.writeInt(this.f1033i0 ? 1 : 0);
        parcel.writeLong(jC);
        parcel.writeLong(this.f1039l0);
        parcel.writeLong(jB);
        parcel.writeLong(this.f1043n0);
        parcel.writeLong(this.f1045o0);
        parcel.writeLong(this.f1047p0);
        parcel.writeInt(this.f1049q0);
        parcel.writeInt(this.f1051r0);
        parcel.writeInt(this.f1053s0);
        parcel.writeInt(this.f1055t0);
        parcel.writeInt(this.f1061w0);
        parcel.writeInt(this.f1063x0);
        parcel.writeInt(this.f1065y0);
        parcel.writeInt(this.f1067z0);
        parcel.writeLong(this.A0);
        parcel.writeLong(getRadioDataUptime());
        parcel.writeInt(d());
        if (z2) {
            parcel.writeInt(this.I0.size());
            for (Map.Entry<String, g> entry : this.I0.entrySet()) {
                g value = entry.getValue();
                if (value != null) {
                    parcel.writeInt(1);
                    parcel.writeString(entry.getKey());
                    i.c(parcel, value, jB);
                } else {
                    parcel.writeInt(0);
                }
            }
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(Y0);
        if (!z2) {
            parcel.writeInt(0);
            return;
        }
        int size = this.f1016a.size();
        parcel.writeInt(size);
        for (int i7 = 0; i7 < size; i7++) {
            parcel.writeInt(this.f1016a.keyAt(i7));
            this.f1016a.valueAt(i7).k(parcel, jB);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        t(parcel, true, i2);
    }

    public static final class h extends i {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final j f1095k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final ArrayList<h> f1096l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f1097m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public long f1098n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public long f1099o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public long f1100p;

        public h(j jVar, int i2, ArrayList<h> arrayList, ArrayList<Object> arrayList2, Parcel parcel) {
            super(i2, arrayList2, parcel);
            this.f1095k = jVar;
            this.f1096l = arrayList;
            this.f1098n = parcel.readLong();
        }

        public static void e(BatteryStatsImpl batteryStatsImpl, ArrayList<h> arrayList) {
            long jB = batteryStatsImpl.b(SystemClock.elapsedRealtime() * 1000);
            int size = arrayList.size();
            for (int i2 = size - 1; i2 >= 0; i2--) {
                h hVar = arrayList.get(i2);
                long j2 = jB - hVar.f1098n;
                if (j2 > 0) {
                    hVar.f1107g += j2 / ((long) size);
                }
                hVar.f1098n = jB;
            }
        }

        @Override // com.android.internal.os.BatteryStatsImpl.i
        public int a() {
            return this.f1103c;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.i
        public long b(long j2) {
            long j3 = this.f1100p;
            long size = 0;
            if (j3 > 0) {
                long j4 = this.f1098n;
                if (j2 > j4 + j3) {
                    j2 = j4 + j3;
                }
            }
            long j5 = this.f1107g;
            if (this.f1097m > 0) {
                long j6 = j2 - this.f1098n;
                ArrayList<h> arrayList = this.f1096l;
                size = j6 / ((long) (arrayList != null ? arrayList.size() : 1));
            }
            return j5 + size;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.i
        public void d(Parcel parcel, long j2) {
            super.d(parcel, j2);
            parcel.writeLong(this.f1098n);
        }

        public void f(BatteryStatsImpl batteryStatsImpl) {
            int i2 = this.f1097m;
            this.f1097m = i2 + 1;
            if (i2 == 0) {
                this.f1098n = batteryStatsImpl.b(SystemClock.elapsedRealtime() * 1000);
                ArrayList<h> arrayList = this.f1096l;
                if (arrayList != null) {
                    e(batteryStatsImpl, arrayList);
                    this.f1096l.add(this);
                }
                this.f1103c++;
                this.f1099o = this.f1107g;
            }
        }

        public void g(BatteryStatsImpl batteryStatsImpl) {
            int i2 = this.f1097m;
            if (i2 == 0) {
                return;
            }
            int i3 = i2 - 1;
            this.f1097m = i3;
            if (i3 == 0) {
                ArrayList<h> arrayList = this.f1096l;
                if (arrayList != null) {
                    e(batteryStatsImpl, arrayList);
                    this.f1096l.remove(this);
                } else {
                    long jB = batteryStatsImpl.b(SystemClock.elapsedRealtime() * 1000);
                    this.f1097m = 1;
                    this.f1107g = b(jB);
                    this.f1097m = 0;
                }
                if (this.f1107g == this.f1099o) {
                    this.f1103c--;
                }
            }
        }

        @Override // com.android.internal.os.BatteryStatsImpl.i, android.os.BatteryStats.Timer
        public void logState(Printer printer, String str) {
            super.logState(printer, str);
            printer.println(str + "mNesting=" + this.f1097m + " mUpdateTime=" + this.f1098n + " mAcquireTime=" + this.f1099o);
        }

        public h(j jVar, int i2, ArrayList<h> arrayList, ArrayList<Object> arrayList2) {
            super(i2, arrayList2);
            this.f1095k = jVar;
            this.f1096l = arrayList;
        }
    }

    public static final class g extends i {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f1088k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f1089l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public long f1090m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public long f1091n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public boolean f1092o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public boolean f1093p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f1094q;

        public g(ArrayList<Object> arrayList, boolean z2, Parcel parcel) {
            super(0, arrayList, parcel);
            this.f1088k = parcel.readInt();
            this.f1089l = parcel.readInt();
            this.f1090m = parcel.readLong();
            this.f1091n = parcel.readLong();
            this.f1093p = parcel.readInt() == 1;
            this.f1092o = z2;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.i
        public int a() {
            return this.f1103c + ((this.f1092o && this.f1093p) ? this.f1088k - this.f1089l : 0);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.i
        public long b(long j2) {
            return this.f1107g + ((this.f1092o && this.f1093p) ? this.f1090m - this.f1091n : 0L);
        }

        @Override // com.android.internal.os.BatteryStatsImpl.i
        public void d(Parcel parcel, long j2) {
            super.d(parcel, j2);
            parcel.writeInt(this.f1088k);
            parcel.writeInt(this.f1089l);
            parcel.writeLong(this.f1090m);
            parcel.writeLong(this.f1091n);
            parcel.writeInt(this.f1093p ? 1 : 0);
        }

        public int e() {
            return this.f1094q;
        }

        public void f() {
            this.f1093p = false;
            this.f1091n = 0L;
            this.f1089l = 0;
        }

        public void g(int i2) {
            this.f1094q = i2;
        }

        public void h(int i2) {
            if (this.f1092o && this.f1089l == 0) {
                this.f1089l = i2;
                this.f1093p = true;
            }
            this.f1088k = i2;
        }

        public void i(long j2) {
            if (this.f1092o && this.f1091n == 0) {
                this.f1091n = j2;
                this.f1093p = true;
            }
            this.f1090m = j2;
        }

        @Override // com.android.internal.os.BatteryStatsImpl.i, android.os.BatteryStats.Timer
        public void logState(Printer printer, String str) {
            super.logState(printer, str);
            printer.println(str + "mCurrentReportedCount=" + this.f1088k + " mUnpluggedReportedCount=" + this.f1089l + " mCurrentReportedTotalTime=" + this.f1090m + " mUnpluggedReportedTotalTime=" + this.f1091n);
        }

        public g(ArrayList<Object> arrayList, boolean z2, boolean z3) {
            super(0, arrayList);
            this.f1093p = z3;
            this.f1092o = z2;
        }
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList<Object> f1082a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f1083b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f1084c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f1085d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f1086e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f1087f;

        public e(ArrayList<Object> arrayList, Parcel parcel) {
            this.f1082a = arrayList;
            long j2 = parcel.readLong();
            this.f1087f = j2;
            this.f1083b = j2;
            this.f1084c = parcel.readLong();
            this.f1085d = 0L;
            this.f1086e = parcel.readLong();
            arrayList.add(this);
        }

        public void a(long j2) {
            this.f1083b += j2;
        }

        public long b(int i2) {
            long j2;
            if (i2 == 1) {
                return this.f1085d;
            }
            long j3 = this.f1083b;
            if (i2 == 3) {
                j2 = this.f1086e;
            } else {
                if (i2 == 0) {
                    return j3;
                }
                j2 = this.f1084c;
            }
            return j3 - j2;
        }

        public void c(Parcel parcel) {
            parcel.writeLong(this.f1083b);
            parcel.writeLong(this.f1084c);
            parcel.writeLong(this.f1086e);
        }

        public e(ArrayList<Object> arrayList) {
            this.f1082a = arrayList;
            arrayList.add(this);
        }
    }

    public static class c extends BatteryStats.Counter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AtomicInteger f1072a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList<Object> f1073b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1074c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1075d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1076e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1077f;

        public c(ArrayList<Object> arrayList, Parcel parcel) {
            AtomicInteger atomicInteger = new AtomicInteger();
            this.f1072a = atomicInteger;
            this.f1073b = arrayList;
            int i2 = parcel.readInt();
            this.f1077f = i2;
            atomicInteger.set(i2);
            this.f1074c = parcel.readInt();
            this.f1075d = 0;
            this.f1076e = parcel.readInt();
            arrayList.add(this);
        }

        public void a() {
            this.f1072a.incrementAndGet();
        }

        public void b(Parcel parcel) {
            parcel.writeInt(this.f1072a.get());
            parcel.writeInt(this.f1074c);
            parcel.writeInt(this.f1076e);
        }

        @Override // android.os.BatteryStats.Counter
        public int getCountLocked(int i2) {
            int i3;
            if (i2 == 1) {
                return this.f1075d;
            }
            int i4 = this.f1072a.get();
            if (i2 == 3) {
                i3 = this.f1076e;
            } else {
                if (i2 == 0) {
                    return i4;
                }
                i3 = this.f1074c;
            }
            return i4 - i3;
        }

        @Override // android.os.BatteryStats.Counter
        public void logState(Printer printer, String str) {
            printer.println(str + "mCount=" + this.f1072a.get() + " mLoadedCount=" + this.f1074c + " mLastCount=" + this.f1075d + " mUnpluggedCount=" + this.f1076e + " mPluggedCount=" + this.f1077f);
        }

        public c(ArrayList<Object> arrayList) {
            this.f1072a = new AtomicInteger();
            this.f1073b = arrayList;
            arrayList.add(this);
        }
    }

    public static abstract class i extends BatteryStats.Timer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f1101a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList<Object> f1102b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1103c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1104d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1105e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1106f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public long f1107g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f1108h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f1109i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public long f1110j;

        public i(int i2, ArrayList<Object> arrayList, Parcel parcel) {
            this.f1101a = i2;
            this.f1102b = arrayList;
            this.f1103c = parcel.readInt();
            this.f1104d = parcel.readInt();
            this.f1105e = 0;
            this.f1106f = parcel.readInt();
            this.f1107g = parcel.readLong();
            this.f1108h = parcel.readLong();
            this.f1109i = 0L;
            this.f1110j = parcel.readLong();
            arrayList.add(this);
        }

        public static void c(Parcel parcel, i iVar, long j2) {
            if (iVar == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                iVar.d(parcel, j2);
            }
        }

        public abstract int a();

        public abstract long b(long j2);

        public void d(Parcel parcel, long j2) {
            parcel.writeInt(this.f1103c);
            parcel.writeInt(this.f1104d);
            parcel.writeInt(this.f1106f);
            parcel.writeLong(b(j2));
            parcel.writeLong(this.f1108h);
            parcel.writeLong(this.f1110j);
        }

        @Override // android.os.BatteryStats.Timer
        public int getCountLocked(int i2) {
            int i3;
            if (i2 == 1) {
                return this.f1105e;
            }
            int iA = a();
            if (i2 == 3) {
                i3 = this.f1106f;
            } else {
                if (i2 == 0) {
                    return iA;
                }
                i3 = this.f1104d;
            }
            return iA - i3;
        }

        @Override // android.os.BatteryStats.Timer
        public long getTotalTimeLocked(long j2, int i2) {
            long j3;
            if (i2 == 1) {
                return this.f1109i;
            }
            long jB = b(j2);
            if (i2 == 3) {
                j3 = this.f1110j;
            } else {
                if (i2 == 0) {
                    return jB;
                }
                j3 = this.f1108h;
            }
            return jB - j3;
        }

        @Override // android.os.BatteryStats.Timer
        public void logState(Printer printer, String str) {
            printer.println(str + "mCount=" + this.f1103c + " mLoadedCount=" + this.f1104d + " mLastCount=" + this.f1105e + " mUnpluggedCount=" + this.f1106f);
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("mTotalTime=");
            sb.append(this.f1107g);
            sb.append(" mLoadedTime=");
            sb.append(this.f1108h);
            printer.println(sb.toString());
            printer.println(str + "mLastTime=" + this.f1109i + " mUnpluggedTime=" + this.f1110j);
        }

        public i(int i2, ArrayList<Object> arrayList) {
            this.f1101a = i2;
            this.f1102b = arrayList;
            arrayList.add(this);
        }
    }

    public BatteryStatsImpl(Parcel parcel) {
        this.f1016a = new SparseArray<>();
        this.f1018b = new ArrayList<>();
        this.f1020c = new ArrayList<>();
        this.f1022d = new ArrayList<>();
        this.f1024e = new SparseArray<>();
        this.f1026f = new ArrayList<>();
        this.f1028g = new ArrayList<>();
        this.f1030h = new ArrayList<>();
        this.f1032i = new ArrayList<>();
        this.f1034j = new SparseArray<>();
        this.f1036k = new ArrayList<>();
        this.f1038l = new ArrayList<>();
        this.f1042n = false;
        this.f1044o = true;
        this.f1046p = Parcel.obtain();
        this.f1048q = new BatteryStats.HistoryItem();
        this.f1050r = new BatteryStats.HistoryItem();
        this.f1052s = new BatteryStats.HistoryItem();
        this.f1054t = -1;
        this.f1056u = false;
        this.f1058v = 0L;
        this.f1060w = new BatteryStats.HistoryItem();
        this.O = -1;
        this.P = new h[5];
        this.T = -1;
        this.U = -1;
        this.V = new h[5];
        this.X = -1;
        this.Y = new h[17];
        this.Z = new e[4];
        this.f1021c0 = -1;
        this.A0 = 0L;
        this.E0 = -1;
        this.F0 = -1;
        this.G0 = -1;
        this.H0 = -1;
        this.I0 = new HashMap<>();
        this.J0 = new String[3];
        this.K0 = new long[3];
        this.L0 = new HashMap();
        this.M0 = new HashMap<>();
        this.N0 = new NetworkStatsFactory();
        this.P0 = Sets.newHashSet();
        this.Q0 = Sets.newHashSet();
        this.R0 = 0;
        this.S0 = 0;
        this.T0 = 0;
        this.U0 = 0;
        this.V0 = 0;
        this.W0 = null;
        this.X0 = new ReentrantLock();
        a();
        k(parcel);
    }
}
