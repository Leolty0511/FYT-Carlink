package com.android.fmradio;

import android.bluetooth.BluetoothClass;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f683e = new a(8750, 10800, 20);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f684f = new a(8750, 10800, 5);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f685g = new a(6500, 7400, 3);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f686h = new a(8750, 10800, 10);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f687i = new a(8750, 10800, 10);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f688j = new a(BluetoothClass.Device.PHONE_CORDLESS, 1620, 10);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f689k = new a(BluetoothClass.Device.PHONE_CORDLESS, 1620, 9);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f692c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f693d;

    /* JADX INFO: renamed from: com.android.fmradio.a$a, reason: collision with other inner class name */
    public static class C0017a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public a f694a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public a f695b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public a f696c = new a(0, 0, 0);

        public C0017a(a aVar, a aVar2) {
            this.f694a = aVar;
            this.f695b = aVar2;
        }
    }

    public a(int i2, int i3, int i4) {
        this.f690a = i2;
        this.f691b = i3;
        this.f692c = i4;
        this.f693d = i4 == 0 ? 0 : (int) (((i3 - i2) / i4) + 0.5f);
    }

    public boolean a(int i2) {
        return i2 >= this.f690a && i2 <= this.f691b;
    }

    public boolean b() {
        return this.f690a >= 0 && this.f691b > 0 && this.f692c > 0;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof a)) {
            return super.equals(obj);
        }
        a aVar = (a) obj;
        return aVar.f690a == this.f690a && aVar.f691b == this.f691b && aVar.f692c == this.f692c;
    }

    public String toString() {
        return String.format("FmRang [min: %d, max: %d, step: %d]", Integer.valueOf(this.f690a), Integer.valueOf(this.f691b), Integer.valueOf(this.f692c));
    }
}
