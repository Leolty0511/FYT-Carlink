package u;

import java.io.PrintWriter;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public class h extends PrintWriter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f17252a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17253b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public StringBuilder f17254c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public char[] f17255d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17256e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f17257f;

    public h(Writer writer, String str) {
        this(writer, str, -1);
    }

    public void a() {
        this.f17254c.delete(0, this.f17252a.length());
        this.f17255d = null;
    }

    public void b() {
        this.f17254c.append(this.f17252a);
        this.f17255d = null;
    }

    public final void c() {
        if (this.f17257f) {
            this.f17257f = false;
            if (this.f17254c.length() != 0) {
                if (this.f17255d == null) {
                    this.f17255d = this.f17254c.toString().toCharArray();
                }
                char[] cArr = this.f17255d;
                super.write(cArr, 0, cArr.length);
            }
        }
    }

    public void d(String str, Object obj) {
        print(str + "=" + String.valueOf(obj) + " ");
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(char[] cArr, int i2, int i3) {
        int length = this.f17254c.length();
        int i4 = i3 + i2;
        int i5 = i2;
        while (i2 < i4) {
            int i6 = i2 + 1;
            char c2 = cArr[i2];
            this.f17256e++;
            if (c2 == '\n') {
                c();
                super.write(cArr, i5, i6 - i5);
                this.f17257f = true;
                this.f17256e = 0;
                i5 = i6;
            }
            int i7 = this.f17253b;
            if (i7 > 0 && this.f17256e >= i7 - length) {
                if (this.f17257f) {
                    c();
                    super.write(cArr, i5, i6 - i5);
                    super.write(10);
                    this.f17257f = true;
                    this.f17256e = 0;
                    i5 = i6;
                } else {
                    super.write(10);
                    this.f17257f = true;
                    this.f17256e = i6 - i5;
                }
            }
            i2 = i6;
        }
        if (i5 != i2) {
            c();
            super.write(cArr, i5, i2 - i5);
        }
    }

    public h(Writer writer, String str, int i2) {
        super(writer);
        this.f17254c = new StringBuilder();
        this.f17257f = true;
        this.f17252a = str;
        this.f17253b = i2;
    }
}
