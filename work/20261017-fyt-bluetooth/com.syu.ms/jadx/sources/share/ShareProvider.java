package share;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import app.App;
import d1.d;
import k0.nt;
import m1.a;
import n0.j4;
import n0.k4;
import o0.e;
import v0.b;
import y0.f;

/* JADX INFO: loaded from: classes2.dex */
public class ShareProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return a.f13514c;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        try {
            int i2 = Integer.parseInt(str);
            if (App.c() == null) {
                i2 = -1;
            }
            switch (i2) {
                case 0:
                    return new l1.a(d.f1570c);
                case 1:
                    return new l1.a(nt.f8661v);
                case 2:
                case 5:
                default:
                    return null;
                case 3:
                    return new l1.a(f.f18031a);
                case 4:
                    return new l1.a(e.f16764a);
                case 6:
                    return new l1.a(c1.a.f406a);
                case 7:
                    return new l1.a(b.f17726a);
                case 8:
                    return new l1.a(p0.b.f17025g);
                case 9:
                    return new l1.a(j4.f16464b);
                case 10:
                    return new l1.a(g.e.p());
                case 11:
                    return new l1.a(j4.f16463a);
                case 12:
                    return new l1.a(k4.c());
                case 13:
                    return new l1.a(g.e.a());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
