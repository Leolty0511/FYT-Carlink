package com.syu.carlink.utils;

import android.app.m;
import t.b;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f739a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f740b;
    public final s.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f741d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f742e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f743f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f744g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f745h;

    public a(String str, String str2) {
        b.h(str, "index");
        this.f739a = str;
        this.f740b = str2;
        this.c = kotlin.a.c(new z.a() { // from class: com.syu.carlink.utils.SlaveDevice$callingStates$2
            @Override // z.a
            public final Integer[] invoke() {
                return new Integer[]{6, 5, 4};
            }
        });
        this.f744g = 1;
        this.f745h = 1;
    }

    public final boolean equals(Object obj) {
        return obj instanceof a ? b.a(((a) obj).f740b, this.f740b) : super.equals(obj);
    }

    public final int hashCode() {
        return (this.f740b.hashCode() * 31) + super.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SlaveDevice:[ index: ");
        sb.append(this.f739a);
        sb.append("; mac: ");
        sb.append(this.f740b);
        sb.append("; name: ");
        sb.append(this.f741d);
        sb.append(" hfpState: ");
        sb.append(this.f744g);
        sb.append(" a2dpState: ");
        return m.j(sb, this.f745h, ']');
    }
}
