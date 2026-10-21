package y;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public class g extends c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f17949a;

    public void K2(int i2) {
        c cVar = this.f17949a;
        if (cVar != null) {
            try {
                cVar.Z0(i2, null, null, null);
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }

    public void L2(int i2, int i3) {
        c cVar = this.f17949a;
        if (cVar != null) {
            try {
                cVar.Z0(i2, new int[]{i3}, null, null);
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // y.c
    public f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        c cVar = this.f17949a;
        if (cVar == null) {
            return null;
        }
        try {
            return cVar.M1(i2, iArr, fArr, strArr);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void M2(int i2, int i3, int i4) {
        c cVar = this.f17949a;
        if (cVar != null) {
            try {
                cVar.Z0(i2, new int[]{i3, i4}, null, null);
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }

    public void N2(int i2, String str) {
        c cVar = this.f17949a;
        if (cVar != null) {
            try {
                cVar.Z0(i2, null, null, new String[]{str});
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }

    public void O2(c cVar) {
        this.f17949a = cVar;
    }

    @Override // y.c
    public void P0(b bVar, int i2) {
        c cVar = this.f17949a;
        if (cVar != null) {
            try {
                cVar.P0(bVar, i2);
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // y.c
    public void Y1(b bVar, int i2, int i3) {
        c cVar = this.f17949a;
        if (cVar != null) {
            try {
                cVar.Y1(bVar, i2, i3);
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        c cVar = this.f17949a;
        if (cVar != null) {
            try {
                cVar.Z0(i2, iArr, fArr, strArr);
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }
}
