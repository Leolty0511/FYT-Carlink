package com.syu.carlink.carplay;

import android.os.Handler;
import android.os.HandlerThread;
import c0.d;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import java.util.NoSuchElementException;
import o.e;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f680d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s.a f678a = kotlin.a.c(new z.a() { // from class: com.syu.carlink.carplay.PlayInfo$mHandler$2
        @Override // z.a
        public final Handler invoke() {
            HandlerThread handlerThread = new HandlerThread("cp-sync-playInfo");
            handlerThread.start();
            return new Handler(handlerThread.getLooper());
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.net.b f679b = new android.net.b(this, 11);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f681e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f682f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f683g = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f684h = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f685i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f686j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f687k = -1;

    public static void a(int i2, String str) {
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        CarLinkService carLinkServiceF = carLink.f();
        e eVarL = carLinkServiceF != null ? carLinkServiceF.l() : null;
        if (eVarL != null) {
            eVarL.c(0, 23, new int[]{10, i2}, null, new String[]{str});
        }
    }

    public static void b(int... iArr) {
        int i2;
        int i3;
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        CarLinkService carLinkServiceF = carLink.f();
        e eVarL = carLinkServiceF != null ? carLinkServiceF.l() : null;
        if (eVarL != null) {
            Object[] objArr = new Object[2];
            int[] iArr2 = {10, 0};
            boolean z2 = true;
            objArr[1] = iArr;
            d dVar = new d(0, 1);
            int i4 = dVar.f353d;
            int i5 = dVar.c;
            boolean z3 = i4 <= 0 ? i5 <= 0 : i5 >= 0;
            int i6 = z3 ? 0 : i5;
            int length = 0;
            while (z3) {
                if (i6 != i5) {
                    i3 = i4 + i6;
                } else {
                    if (!z3) {
                        throw new NoSuchElementException();
                    }
                    z3 = false;
                    i3 = i6;
                }
                Object obj = objArr[i6];
                length += obj != null ? ((int[]) obj).length : 1;
                i6 = i3;
            }
            int[] iArr3 = new int[length];
            d dVar2 = new d(0, 1);
            int i7 = dVar2.f353d;
            int i8 = dVar2.c;
            if (i7 <= 0 ? i8 > 0 : i8 < 0) {
                z2 = false;
            }
            int i9 = z2 ? 0 : i8;
            int i10 = 0;
            int i11 = 0;
            while (z2) {
                if (i9 != i8) {
                    i2 = i7 + i9;
                } else {
                    if (!z2) {
                        throw new NoSuchElementException();
                    }
                    z2 = false;
                    i2 = i9;
                }
                Object obj2 = objArr[i9];
                if (obj2 != null) {
                    if (i10 < i9) {
                        int i12 = i9 - i10;
                        System.arraycopy(iArr2, i10, iArr3, i11, i12);
                        i11 += i12;
                    }
                    int length2 = ((int[]) obj2).length;
                    System.arraycopy(obj2, 0, iArr3, i11, length2);
                    i11 += length2;
                    i10 = i9 + 1;
                }
                i9 = i2;
            }
            if (i10 < 2) {
                System.arraycopy(iArr2, i10, iArr3, i11, 2 - i10);
            }
            e.b(eVarL, 0, 23, iArr3, null, 24);
        }
    }

    public final String toString() {
        return kotlin.text.a.G("\n            title: " + this.f681e + "\n            artist: " + this.f682f + "\n            album: " + this.f683g + "\n            cover: " + this.f684h + "\n            duration: " + this.c + "\n            position: " + this.f680d + "\n            playState: " + this.f685i + "\n            shuffleMode: " + this.f686j + "\n            repeatMode: " + this.f687k + "\n        ");
    }
}
