package module.canbus;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.provider.MediaStore;
import android.text.format.DateFormat;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class HJ_AutoTestService extends Service {
    public int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        char c3 = DateFormat.CAPITAL_AM_PM;
        if (c2 < 'A' || c2 > 'F') {
            c3 = DateFormat.AM_PM;
            if (c2 < 'a' || c2 > 'f') {
                return 0;
            }
        }
        return (c2 - c3) + 10;
    }

    public final void b(String str, int i2, int i3) {
        if (str == null) {
            return;
        }
        int length = str.length();
        byte[] bArr = new byte[length];
        byte[] bytes = str.getBytes();
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5++) {
            bArr[i5] = bytes[i5];
        }
        int i6 = length + 7;
        int[] iArr = new int[i6];
        iArr[0] = -29;
        iArr[1] = 85;
        int i7 = 2;
        iArr[2] = -86;
        iArr[3] = length + 3;
        iArr[4] = (byte) i2;
        iArr[5] = (byte) i3;
        for (int i8 = 0; i8 < length; i8++) {
            iArr[6 + i8] = bArr[i8];
        }
        while (true) {
            int i9 = length + 6;
            if (i7 >= i9) {
                iArr[i9] = i4;
                z.k.s(iArr);
                a.f.p().y("BT ** num = " + str + "  ** ", iArr, 6, i6);
                return;
            }
            i4 ^= iArr[i7];
            i7++;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        if (intent != null && intent.hasExtra("from")) {
            String stringExtra = intent.getStringExtra("from");
            if (stringExtra == null) {
                a.f.p().w("AutoTest from = null Action = " + intent.getAction());
            } else {
                a.f.p().w("AutoTest from = " + stringExtra + " Action = " + intent.getAction());
            }
            int i4 = 0;
            if (stringExtra.equals("radio")) {
                Log.d("test", "  0000  str_from == radio");
                int i5 = intent.getIntExtra("radio_band", 0) > 65535 ? 3 : 1;
                int intExtra = intent.getIntExtra("radio_freq", 0);
                int intExtra2 = intent.getIntExtra("radio_type", 0);
                Log.d("test", "  1111 iRadioBand =" + i5 + "  iRadioFreq = " + intExtra + " iRadioType = " + intExtra2);
                int i6 = (intExtra >> 8) & 255;
                int i7 = intExtra & 255;
                z.k.s(227, 85, 170, 6, 64, intExtra2, i5, i6, i7, (((intExtra2 ^ 236) ^ i5) ^ i6) ^ i7);
            } else if (stringExtra.equals("set")) {
                Log.d("test", "  0000  str_from == set");
                int[] intArrayExtra = intent.getIntArrayExtra("SetInfo");
                if (intArrayExtra != null) {
                    a.f.p().y(" 000 111 set SetInfo:", intArrayExtra, 0, intArrayExtra.length);
                    z.k.s(intArrayExtra);
                }
            } else if (stringExtra.equals("bt")) {
                int intExtra3 = intent.getIntExtra("data0", 0);
                int intExtra4 = intent.getIntExtra("data1", 0);
                String stringExtra2 = intent.getStringExtra("str0");
                a.f.p().w("***  bt_recv  b0 = " + intExtra3 + " , b1 = " + intExtra4);
                switch (intExtra3) {
                    case 1:
                    case 2:
                    case 5:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                        z.k.s(227, 85, 170, 4, 66, intExtra3, intExtra4, (intExtra3 ^ 236) ^ intExtra4);
                        break;
                    case 3:
                        if (stringExtra2 != null) {
                            int[] iArr = new int[13];
                            iArr[0] = -29;
                            iArr[1] = 85;
                            iArr[2] = -86;
                            iArr[3] = 9;
                            iArr[4] = 66;
                            iArr[5] = 3;
                            for (int i8 = 0; i8 < 6; i8++) {
                                int i9 = i8 * 2;
                                iArr[6 + i8] = (a(stringExtra2.charAt(i9)) * 16) + a(stringExtra2.charAt(i9 + 1));
                            }
                            for (int i10 = 2; i10 < 12; i10++) {
                                i4 ^= iArr[i10];
                            }
                            iArr[12] = i4;
                            z.k.s(iArr);
                        }
                        break;
                    case 4:
                    case 6:
                        b(stringExtra2, 66, intExtra3);
                        break;
                }
            } else if (stringExtra.equals(MediaStore.AUTHORITY)) {
                int intExtra5 = intent.getIntExtra("data0", 0);
                int intExtra6 = intent.getIntExtra("data1", 0);
                int intExtra7 = intent.getIntExtra("data2", 0);
                int intExtra8 = intent.getIntExtra("data3", 0);
                if (intExtra5 == 70 && intExtra6 == 5) {
                    z.k.s(227, 85, 170, 5, intExtra5, intExtra6, intExtra7, intExtra8, (((intExtra5 ^ 175) ^ intExtra6) ^ intExtra7) ^ intExtra8);
                }
                if (intExtra5 == 65) {
                    if (intExtra6 == 2) {
                        z.k.s(227, 85, 170, 6, intExtra5, intExtra6, 0, intExtra7, intExtra8, ((((intExtra5 ^ 172) ^ intExtra6) ^ 0) ^ intExtra7) ^ intExtra8);
                    } else {
                        z.k.s(227, 85, 170, 4, intExtra5, intExtra6, intExtra7, ((intExtra5 ^ 174) ^ intExtra6) ^ intExtra7);
                    }
                }
            }
        }
        return super.onStartCommand(intent, i2, i3);
    }
}
