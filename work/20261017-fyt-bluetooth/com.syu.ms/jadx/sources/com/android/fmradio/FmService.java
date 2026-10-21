package com.android.fmradio;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import w0.d;
import w0.f;

/* JADX INFO: loaded from: classes.dex */
public class FmService extends Service {
    public static final int RDS_CMD_NONE = -1;
    public static final int RDS_CMD_NOTIFY_AF_CONFIG = 8;
    public static final int RDS_CMD_NOTIFY_AF_SWITCH = 9;
    public static final int RDS_CMD_NOTIFY_CODETABLE = 13;
    public static final int RDS_CMD_NOTIFY_PI_Seeking = 5;
    public static final int RDS_CMD_NOTIFY_PSNAME = 10;
    public static final int RDS_CMD_NOTIFY_PTY_CONFIG = 7;
    public static final int RDS_CMD_NOTIFY_PTY_Seeking = 4;
    public static final int RDS_CMD_NOTIFY_PTY_TYPE = 2;
    public static final int RDS_CMD_NOTIFY_TA_CONFIG = 6;
    public static final int RDS_CMD_NOTIFY_TA_STATE = 1;
    public static final int RDS_CMD_NOTIFY_TA_Seeking = 3;
    public static final int RDS_CMD_NOTIFY_TEXT = 11;
    public static final int RDS_CMD_NOTIFY_TP_STATE = 0;
    public static String rdsTable = "";

    public class a extends Binder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public FmService f681a;

        public a(FmService fmService) {
            this.f681a = fmService;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int Rdscallback(int i2, int i3, int i4, int i5) {
        b bVar = b.f702f0;
        switch (i2) {
            case 0:
                bVar.z0(bVar.a0(27, "TPstate"));
                return 0;
            case 1:
                bVar.y0(i3);
                return 0;
            case 2:
                bVar.v0(i3, false);
                return 0;
            case 3:
                f.w(i3);
                return 0;
            case 4:
                f.t(i3);
                return 0;
            case 5:
                f.s(i3);
                return 0;
            case 6:
                if (i3 == 1 || i3 == 0) {
                    bVar.x0(i3);
                }
                return 0;
            case 7:
            case 12:
            default:
                return 0;
            case 8:
                f.q(i3);
                return 0;
            case 9:
                bVar.D0(i3, true, false, true);
                return 0;
            case 10:
                if (d.f17806r != 1 && d.f17807s != 1 && bVar.f703a != b.f701e0) {
                    bVar.t0(bVar.U(bVar.X(30, "PSname"), rdsTable, "ascii"));
                }
                return 0;
            case 11:
                if (d.f17806r != 1 && d.f17807s != 1 && bVar.f703a != b.f701e0) {
                    bVar.l0();
                }
                return 0;
            case 13:
                int i6 = 65535 & i3;
                if (i6 == 3598) {
                    rdsTable = "SO";
                } else if (i6 == 3855) {
                    rdsTable = "SI";
                } else if (i6 == 7022) {
                    rdsTable = "LS2";
                }
                return 0;
        }
    }

    private static int callback(int i2, int i3) {
        b.f702f0.D0(i2, true, false, false);
        return 0;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return new a(this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        return super.onStartCommand(intent, i2, i3);
    }
}
