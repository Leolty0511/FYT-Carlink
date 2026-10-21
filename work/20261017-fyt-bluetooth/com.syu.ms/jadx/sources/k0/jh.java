package k0;

import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class jh extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6875b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6878e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6876c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6877d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{33, 24}, new int[]{34, 54}, new int[]{35, 1}, new int[]{36, 76}, new int[]{37, 0}, new int[]{38, 13}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6879f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f6880g = {new int[]{1, 5}, new int[]{2, 1}, new int[]{3, 54}, new int[]{4, 1}, new int[]{5, 6}, new int[]{6, 55}, new int[]{7, 29}, new int[]{8, 67}, new int[]{9, 68}, new int[]{14, 9}, new int[]{15, 54}, new int[]{16, 6}, new int[]{17, 58}, new int[]{18, 1}, new int[]{19, 1}, new int[]{20, 29}, new int[]{22, 7}, new int[]{23, 8}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f6881h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f6882i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f6883j = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (jh.this.f6882i == millis && jh.this.f6883j == i2) {
                return;
            }
            jh.this.f6882i = millis;
            jh.this.f6883j = i2;
            int i3 = u0.b.K3;
            if (i3 == 0) {
                z.k.s(227, 130, 3, (byte) time.hour, (byte) time.minute, 2);
                return;
            }
            if (i3 == 1) {
                z.k.s(227, 130, 3, (byte) time.hour, (byte) time.minute, 0);
            } else if (i3 != 2) {
                z.k.s(227, 130, 3, (byte) time.hour, (byte) time.minute, 0);
            } else {
                z.k.s(227, 130, 3, (byte) time.hour, (byte) time.minute, 1);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f6881h);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0264  */
    /* JADX WARN: Code duplicated, block: B:102:0x0266 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:103:0x0268  */
    /* JADX WARN: Code duplicated, block: B:104:0x026a  */
    /* JADX WARN: Code duplicated, block: B:106:0x026d  */
    /* JADX WARN: Code duplicated, block: B:107:0x026f  */
    /* JADX WARN: Code duplicated, block: B:110:0x0273  */
    /* JADX WARN: Code duplicated, block: B:111:0x0276  */
    /* JADX WARN: Code duplicated, block: B:113:0x027a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:114:0x027c  */
    /* JADX WARN: Code duplicated, block: B:115:0x027e  */
    /* JADX WARN: Code duplicated, block: B:117:0x0281  */
    /* JADX WARN: Code duplicated, block: B:118:0x0283  */
    /* JADX WARN: Code duplicated, block: B:121:0x0287  */
    /* JADX WARN: Code duplicated, block: B:122:0x0289  */
    /* JADX WARN: Code duplicated, block: B:123:0x028b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:124:0x028d  */
    /* JADX WARN: Code duplicated, block: B:125:0x028f  */
    /* JADX WARN: Code duplicated, block: B:127:0x0292  */
    /* JADX WARN: Code duplicated, block: B:128:0x0294  */
    /* JADX WARN: Code duplicated, block: B:131:0x0298  */
    /* JADX WARN: Code duplicated, block: B:132:0x029a  */
    /* JADX WARN: Code duplicated, block: B:134:0x029e  */
    /* JADX WARN: Code duplicated, block: B:135:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:138:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:139:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:142:0x02ab A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:143:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:144:0x02af  */
    /* JADX WARN: Code duplicated, block: B:147:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:148:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:151:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:152:0x02bc  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        int[][] iArr;
        int[][] iArr2;
        int i4 = bArr[i2] & 255;
        int i5 = 3;
        if (i4 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 540);
            return;
        }
        if (i4 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (i4 == 64) {
            int i6 = i2 + 2;
            qt.y0(18, (bArr[i6] >> 7) & 1);
            qt.y0(19, (bArr[i6] >> 6) & 1);
            qt.y0(20, (bArr[i6] >> 5) & 1);
            qt.y0(21, (bArr[i6] >> 4) & 1);
            return;
        }
        if (i4 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i7 = i2 + 3;
            l0.c0.a((bArr[i7] >> 3) & 1, (bArr[i7] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i7] & 255}, null, null);
            return;
        }
        if (i4 == 51) {
            qt.y0(13, (((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255)) & 65535);
            qt.y0(14, (((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255)) & 65535);
            qt.y0(15, (((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255)) & 65535);
            qt.y0(16, (((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255)) & 65535);
            qt.y0(17, bArr[i2 + 10] & 255);
            return;
        }
        if (i4 != 52) {
            switch (i4) {
                case 32:
                    byte b2 = bArr[i2 + 2];
                    byte b3 = bArr[i2 + 3];
                    this.f6876c = b2 & 255;
                    int i8 = 0;
                    while (true) {
                        iArr = this.f6877d;
                        if (i8 < iArr.length) {
                            int i9 = this.f6876c;
                            if (i9 != iArr[i8][0]) {
                                i8++;
                            } else if (i9 != 0) {
                                this.f6875b = i8;
                            }
                        }
                    }
                    int i10 = b3 & 255;
                    if (i10 == 1) {
                        if (i8 < iArr.length) {
                            l0.b0.l0(iArr[i8][1], 0);
                        }
                    } else if (i10 == 0) {
                        int i11 = this.f6875b;
                        if (i11 < iArr.length && i11 != 255) {
                            l0.b0.l0(iArr[i11][1], 1);
                        }
                        this.f6875b = 255;
                    }
                    break;
                case 33:
                    byte b4 = bArr[i2 + 2];
                    byte b5 = bArr[i2 + 3];
                    this.f6879f = b4 & 255;
                    int i12 = 0;
                    while (true) {
                        iArr2 = this.f6880g;
                        if (i12 < iArr2.length) {
                            int i13 = this.f6879f;
                            if (i13 != iArr2[i12][0]) {
                                i12++;
                            } else if (i13 != 0) {
                                this.f6878e = i12;
                            }
                        }
                    }
                    int i14 = this.f6879f;
                    if (i14 == 8) {
                        for (int i15 = 0; i15 < (b5 & 255); i15++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    } else if (i14 == 9) {
                        for (int i16 = 0; i16 < (b5 & 255); i16++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (i14 == 22) {
                        for (int i17 = 0; i17 < (b5 & 255); i17++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    } else if (i14 != 23) {
                        int i18 = b5 & 255;
                        if (i18 == 1) {
                            if (i12 < iArr2.length) {
                                l0.b0.l0(iArr2[i12][1], 0);
                            }
                        } else if (i18 == 0) {
                            int i19 = this.f6878e;
                            if (i19 < iArr2.length && i19 != 255) {
                                l0.b0.l0(iArr2[i19][1], 1);
                            }
                            this.f6878e = 255;
                        }
                    } else {
                        for (int i20 = 0; i20 < (b5 & 255); i20++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    }
                    break;
                case 34:
                    u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                    break;
                case 35:
                    u0.d.D2(l0.c0.E0(bArr[i2 + 2] & 255));
                    u0.d.E2(l0.c0.E0(bArr[i2 + 3] & 255));
                    u0.d.F2(l0.c0.E0(bArr[i2 + 4] & 255));
                    u0.d.G2(l0.c0.E0(bArr[i2 + 5] & 255));
                    break;
                case 36:
                    byte b6 = bArr[i2 + 2];
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(2, (b6 >> 6) & 1);
                        qt.y0(1, (b6 >> 7) & 1);
                    } else {
                        qt.y0(2, (b6 >> 7) & 1);
                        qt.y0(1, (b6 >> 6) & 1);
                    }
                    qt.y0(4, (b6 >> 5) & 1);
                    qt.y0(3, (b6 >> 4) & 1);
                    qt.y0(0, (b6 >> 2) & 1);
                    qt.y0(5, (b6 >> 3) & 1);
                    break;
                case 37:
                    qt.y0(9, (((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255)) & 65535);
                    qt.y0(10, (((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255)) & 65535);
                    qt.y0(11, (((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255)) & 65535);
                    qt.y0(12, ((bArr[i2 + 9] & 255) | ((bArr[i2 + 8] << 8) & 65280)) & 65535);
                    break;
            }
            return;
        }
        int i21 = ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255);
        int i22 = (255 & bArr[i2 + 4]) | ((bArr[i2 + 5] << 8) & 65280);
        byte b7 = bArr[i2 + 6];
        if (i21 < 200) {
            if (!((i22 > 300) & (i22 < 700))) {
                if (i22 >= 200) {
                    if (i21 > 300) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (i21 < 700) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (z10 && z11) {
                        i5 = 7;
                    } else if (i21 <= 800) {
                        if (i22 > 300) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        if (i22 < 700) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        if (z8 && z9) {
                            i5 = 4;
                        } else if (i22 <= 800) {
                            if (i21 > 400) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (i21 < 600) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (z3 && z2) {
                                if (i22 > 400) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                if (i22 < 600) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                if (z4 && z5) {
                                    i5 = 5;
                                } else {
                                    i5 = -1;
                                }
                            } else {
                                i5 = -1;
                            }
                        } else {
                            if (i21 > 300) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            if (i21 < 700) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            if (z6 && z7) {
                                i5 = 8;
                            } else {
                                if (i21 > 400) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (i21 < 600) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                if (z3 && z2) {
                                    if (i22 > 400) {
                                        z4 = true;
                                    } else {
                                        z4 = false;
                                    }
                                    if (i22 < 600) {
                                        z5 = true;
                                    } else {
                                        z5 = false;
                                    }
                                    if (z4 && z5) {
                                        i5 = 5;
                                    } else {
                                        i5 = -1;
                                    }
                                } else {
                                    i5 = -1;
                                }
                            }
                        }
                    } else if (i22 <= 800) {
                        if (i21 > 400) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (i21 < 600) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z3 && z2) {
                            if (i22 > 400) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (i22 < 600) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            if (z4 && z5) {
                                i5 = 5;
                            } else {
                                i5 = -1;
                            }
                        } else {
                            i5 = -1;
                        }
                    } else {
                        if (i21 > 300) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (i21 < 700) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        if (z6 && z7) {
                            i5 = 8;
                        } else {
                            if (i21 > 400) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (i21 < 600) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (z3 && z2) {
                                if (i22 > 400) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                if (i22 < 600) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                if (z4 && z5) {
                                    i5 = 5;
                                } else {
                                    i5 = -1;
                                }
                            } else {
                                i5 = -1;
                            }
                        }
                    }
                } else if (i21 <= 800) {
                    if (i22 > 300) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    if (i22 < 700) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    if (z8 && z9) {
                        i5 = 4;
                    } else if (i22 <= 800) {
                        if (i21 > 400) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (i21 < 600) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z3 && z2) {
                            if (i22 > 400) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (i22 < 600) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            if (z4 && z5) {
                                i5 = 5;
                            } else {
                                i5 = -1;
                            }
                        } else {
                            i5 = -1;
                        }
                    } else {
                        if (i21 > 300) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (i21 < 700) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        if (z6 && z7) {
                            i5 = 8;
                        } else {
                            if (i21 > 400) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (i21 < 600) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (z3 && z2) {
                                if (i22 > 400) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                if (i22 < 600) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                if (z4 && z5) {
                                    i5 = 5;
                                } else {
                                    i5 = -1;
                                }
                            } else {
                                i5 = -1;
                            }
                        }
                    }
                } else if (i22 <= 800) {
                    if (i21 > 400) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (i21 < 600) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (z3 && z2) {
                        if (i22 > 400) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (i22 < 600) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (z4 && z5) {
                            i5 = 5;
                        } else {
                            i5 = -1;
                        }
                    } else {
                        i5 = -1;
                    }
                } else {
                    if (i21 > 300) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (i21 < 700) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    if (z6 && z7) {
                        i5 = 8;
                    } else {
                        if (i21 > 400) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (i21 < 600) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z3 && z2) {
                            if (i22 > 400) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (i22 < 600) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            if (z4 && z5) {
                                i5 = 5;
                            } else {
                                i5 = -1;
                            }
                        } else {
                            i5 = -1;
                        }
                    }
                }
            }
        } else if (i22 >= 200) {
            if (i21 > 300) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (i21 < 700) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z10 && z11) {
                i5 = 7;
            } else if (i21 <= 800) {
                if (i22 > 300) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                if (i22 < 700) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                if (z8 && z9) {
                    i5 = 4;
                } else if (i22 <= 800) {
                    if (i21 > 400) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (i21 < 600) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (z3 && z2) {
                        if (i22 > 400) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (i22 < 600) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (z4 && z5) {
                            i5 = 5;
                        } else {
                            i5 = -1;
                        }
                    } else {
                        i5 = -1;
                    }
                } else {
                    if (i21 > 300) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (i21 < 700) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    if (z6 && z7) {
                        i5 = 8;
                    } else {
                        if (i21 > 400) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (i21 < 600) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z3 && z2) {
                            if (i22 > 400) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (i22 < 600) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            if (z4 && z5) {
                                i5 = 5;
                            } else {
                                i5 = -1;
                            }
                        } else {
                            i5 = -1;
                        }
                    }
                }
            } else if (i22 <= 800) {
                if (i21 > 400) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (i21 < 600) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3 && z2) {
                    if (i22 > 400) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (i22 < 600) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (z4 && z5) {
                        i5 = 5;
                    } else {
                        i5 = -1;
                    }
                } else {
                    i5 = -1;
                }
            } else {
                if (i21 > 300) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (i21 < 700) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (z6 && z7) {
                    i5 = 8;
                } else {
                    if (i21 > 400) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (i21 < 600) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (z3 && z2) {
                        if (i22 > 400) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (i22 < 600) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (z4 && z5) {
                            i5 = 5;
                        } else {
                            i5 = -1;
                        }
                    } else {
                        i5 = -1;
                    }
                }
            }
        } else if (i21 <= 800) {
            if (i22 > 300) {
                z8 = true;
            } else {
                z8 = false;
            }
            if (i22 < 700) {
                z9 = true;
            } else {
                z9 = false;
            }
            if (z8 && z9) {
                i5 = 4;
            } else if (i22 <= 800) {
                if (i21 > 400) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (i21 < 600) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3 && z2) {
                    if (i22 > 400) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (i22 < 600) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (z4 && z5) {
                        i5 = 5;
                    } else {
                        i5 = -1;
                    }
                } else {
                    i5 = -1;
                }
            } else {
                if (i21 > 300) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (i21 < 700) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (z6 && z7) {
                    i5 = 8;
                } else {
                    if (i21 > 400) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (i21 < 600) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (z3 && z2) {
                        if (i22 > 400) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (i22 < 600) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (z4 && z5) {
                            i5 = 5;
                        } else {
                            i5 = -1;
                        }
                    } else {
                        i5 = -1;
                    }
                }
            }
        } else if (i22 <= 800) {
            if (i21 > 400) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (i21 < 600) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3 && z2) {
                if (i22 > 400) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (i22 < 600) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (z4 && z5) {
                    i5 = 5;
                } else {
                    i5 = -1;
                }
            } else {
                i5 = -1;
            }
        } else {
            if (i21 > 300) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (i21 < 700) {
                z7 = true;
            } else {
                z7 = false;
            }
            if (z6 && z7) {
                i5 = 8;
            } else {
                if (i21 > 400) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (i21 < 600) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3 && z2) {
                    if (i22 > 400) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (i22 < 600) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (z4 && z5) {
                        i5 = 5;
                    } else {
                        i5 = -1;
                    }
                } else {
                    i5 = -1;
                }
            }
        }
        if (i5 == -1 || b7 != 1) {
            return;
        }
        l0.b0.l0(i5, 0);
        l0.b0.l0(i5, 1);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        qt.q0(this.f6881h);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 22) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 131, 2, iArr[0], iArr[1]);
    }
}
