package v0;

import android.media.videoeditor.MediaProperties;
import java.io.UnsupportedEncodingException;
import o1.q;

/* JADX INFO: loaded from: classes2.dex */
public class i extends m implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f17752a = new byte[MediaProperties.SAMPLES_PER_FRAME_MP3];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f17753b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f17754c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f17755d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f17756e = false;

    @Override // v0.m
    public void K2() {
    }

    @Override // v0.m
    public void L2() {
    }

    @Override // v0.m, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    public final void M2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == 69) {
            if (bArr[i2 + 1] == 86 && bArr[i2 + 2] == 69 && bArr[i2 + 3] == 78 && bArr[i2 + 4] == 84) {
                byte b3 = bArr[i2 + 8];
                return;
            }
            return;
        }
        if (b2 == 74) {
            if (bArr[i2 + 1] == 84 && bArr[i2 + 2] == 87 && bArr[i2 + 3] == 68) {
                int i4 = 12;
                int i5 = 0;
                while (i4 < i3 && (bArr[i2 + i4] != 44 || (i5 = i5 + 1) != 2)) {
                    i4++;
                }
                if (i4 < i3 - 4) {
                    try {
                        new String(bArr, i2 + i4 + 1, (i3 - i4) - 4, "Windows-936");
                        return;
                    } catch (UnsupportedEncodingException e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (b2 == 79) {
            if (bArr[i2 + 1] == 66 && bArr[i2 + 2] == 68 && bArr[i2 + 3] == 73 && bArr[i2 + 4] == 78 && bArr[i2 + 5] == 70) {
                try {
                    new String(bArr, i2 + 6, i3 - 6, "Windows-936");
                    return;
                } catch (UnsupportedEncodingException e3) {
                    e3.printStackTrace();
                    return;
                }
            }
            return;
        }
        if (b2 == 83) {
            if (bArr[i2 + 1] == 83 && bArr[i2 + 2] == 76) {
                byte b4 = bArr[i2 + 3];
                return;
            }
            return;
        }
        if (b2 == 84) {
            if (bArr[i2 + 1] == 82 && bArr[i2 + 2] == 65 && bArr[i2 + 3] == 78 && bArr[i2 + 4] == 83) {
                try {
                    new String(bArr, i2 + 23, i3 - 23, "Windows-936");
                    return;
                } catch (UnsupportedEncodingException e4) {
                    e4.printStackTrace();
                    return;
                }
            }
            return;
        }
        if (b2 == 86) {
            if (bArr[i2 + 1] == 73 && bArr[i2 + 2] == 78) {
                byte b5 = bArr[i2 + 3];
                return;
            }
            return;
        }
        if (b2 == 87 && bArr[i2 + 1] == 65 && bArr[i2 + 2] == 82) {
            byte b6 = bArr[i2 + 3];
        }
    }

    @Override // v0.m, y.c
    public void P0(y.b bVar, int i2) {
    }

    @Override // v0.m, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // v0.m, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f17753b + bArr.length > 1024) {
            this.f17753b = 0;
            this.f17755d = 0;
            this.f17754c = 0;
            this.f17756e = false;
        }
        System.arraycopy(bArr, 0, this.f17752a, this.f17753b, bArr.length);
        int length = this.f17753b + bArr.length;
        this.f17753b = length;
        int i3 = this.f17755d;
        if (length <= i3) {
            return;
        }
        while (true) {
            i2 = this.f17753b;
            if (i3 >= i2) {
                break;
            }
            if (this.f17756e) {
                byte[] bArr2 = this.f17752a;
                if (bArr2[i3 - 1] == 13 && bArr2[i3] == 10) {
                    this.f17756e = false;
                    int i4 = this.f17754c;
                    M2(bArr2, i4 + 1, (i3 - i4) - 2);
                    this.f17754c = i3 + 1;
                }
            } else if (this.f17752a[i3] == 36) {
                this.f17756e = true;
                this.f17754c = i3;
            }
            i3++;
        }
        int i5 = this.f17754c;
        if (i5 != 0) {
            if (i5 == i2) {
                this.f17753b = 0;
            } else {
                int i6 = i2 - i5;
                this.f17753b = i6;
                byte[] bArr3 = this.f17752a;
                System.arraycopy(bArr3, i5, bArr3, 0, i6);
            }
            this.f17754c = 0;
        }
        if (!this.f17756e) {
            this.f17755d = 0;
            return;
        }
        int i7 = this.f17753b;
        if (i7 > 1) {
            this.f17755d = i7;
        } else {
            this.f17755d = 1;
        }
    }
}
