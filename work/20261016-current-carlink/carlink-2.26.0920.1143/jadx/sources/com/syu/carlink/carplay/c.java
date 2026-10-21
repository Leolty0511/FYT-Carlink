package com.syu.carlink.carplay;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes4.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f694a = {0, 0, 0, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s.a f695b = kotlin.a.c(new z.a() { // from class: com.syu.carlink.carplay.VideoFrame$data$2
        @Override // z.a
        public final byte[] invoke() {
            return new byte[2097152];
        }
    });
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f696d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final s.a f697e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f698f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final s.a f699g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f700h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f701i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f702j;

    public c() {
        s.a aVarC = kotlin.a.c(new z.a() { // from class: com.syu.carlink.carplay.VideoFrame$checkedHeader$2
            @Override // z.a
            public final SparseArray<Boolean> invoke() {
                return new SparseArray<>();
            }
        });
        this.f697e = aVarC;
        this.f699g = kotlin.a.c(new z.a() { // from class: com.syu.carlink.carplay.VideoFrame$recycles$2
            @Override // z.a
            public final byte[] invoke() {
                return new byte[2097152];
            }
        });
        this.f698f = false;
        ((SparseArray) aVarC.getValue()).clear();
        this.f702j = 0;
        this.f696d = 0;
        this.f700h = 0;
        this.f701i = 0;
        this.c = 0;
    }

    public final byte[] a() {
        return (byte[]) this.f699g.getValue();
    }
}
