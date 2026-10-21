package f0;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f870a;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        t.b.g(charsetForName, "forName(\"UTF-8\")");
        f870a = charsetForName;
        t.b.g(Charset.forName("UTF-16"), "forName(\"UTF-16\")");
        t.b.g(Charset.forName("UTF-16BE"), "forName(\"UTF-16BE\")");
        t.b.g(Charset.forName("UTF-16LE"), "forName(\"UTF-16LE\")");
        t.b.g(Charset.forName("US-ASCII"), "forName(\"US-ASCII\")");
        t.b.g(Charset.forName("ISO-8859-1"), "forName(\"ISO-8859-1\")");
    }
}
