package w;

import com.google.android.projection.proto.Protos;
import f0.h;

/* JADX INFO: loaded from: classes4.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f1117a;

    /* JADX WARN: Code duplicated, block: B:76:0x00d2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        int i2;
        b bVar;
        Object objNewInstance;
        String property = System.getProperty("java.specification.version");
        if (property == null) {
            i2 = Protos.KeyCode.KEYCODE_SECONDARY_BUTTON_VALUE;
        } else {
            int iO = h.O(property, '.', 0, 6);
            try {
                if (iO < 0) {
                    i2 = Integer.parseInt(property) * 65536;
                } else {
                    int i3 = iO + 1;
                    int iO2 = h.O(property, '.', i3, 4);
                    if (iO2 < 0) {
                        iO2 = property.length();
                    }
                    String strSubstring = property.substring(0, iO);
                    t.b.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    String strSubstring2 = property.substring(i3, iO2);
                    t.b.g(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                    i2 = Integer.parseInt(strSubstring2) + (Integer.parseInt(strSubstring) * 65536);
                }
            } catch (NumberFormatException unused) {
                i2 = Protos.KeyCode.KEYCODE_SECONDARY_BUTTON_VALUE;
            }
        }
        if (i2 >= 65544 || i2 < 65536) {
            try {
                Object objNewInstance2 = y.b.class.newInstance();
                t.b.g(objNewInstance2, "forName(\"kotlin.internal…entations\").newInstance()");
                try {
                    try {
                        bVar = (b) objNewInstance2;
                    } catch (ClassCastException e2) {
                        ClassLoader classLoader = objNewInstance2.getClass().getClassLoader();
                        ClassLoader classLoader2 = b.class.getClassLoader();
                        if (t.b.a(classLoader, classLoader2)) {
                            throw e2;
                        }
                        throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader + ", base type classloader: " + classLoader2, e2);
                    }
                } catch (ClassNotFoundException unused2) {
                    if (i2 < 65543) {
                        try {
                            objNewInstance = x.b.class.newInstance();
                            t.b.g(objNewInstance, "forName(\"kotlin.internal…entations\").newInstance()");
                            try {
                                try {
                                    bVar = (b) objNewInstance;
                                } catch (ClassNotFoundException unused3) {
                                    bVar = new b();
                                }
                            } catch (ClassCastException e3) {
                                ClassLoader classLoader3 = objNewInstance.getClass().getClassLoader();
                                ClassLoader classLoader4 = b.class.getClassLoader();
                                if (t.b.a(classLoader3, classLoader4)) {
                                    throw e3;
                                }
                                throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader3 + ", base type classloader: " + classLoader4, e3);
                            }
                        } catch (ClassNotFoundException unused4) {
                            Object objNewInstance3 = Class.forName("kotlin.internal.JRE7PlatformImplementations").newInstance();
                            t.b.g(objNewInstance3, "forName(\"kotlin.internal…entations\").newInstance()");
                            try {
                                bVar = (b) objNewInstance3;
                            } catch (ClassCastException e4) {
                                ClassLoader classLoader5 = objNewInstance3.getClass().getClassLoader();
                                ClassLoader classLoader6 = b.class.getClassLoader();
                                if (t.b.a(classLoader5, classLoader6)) {
                                    throw e4;
                                }
                                throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader5 + ", base type classloader: " + classLoader6, e4);
                            }
                        }
                    } else {
                        objNewInstance = x.b.class.newInstance();
                        t.b.g(objNewInstance, "forName(\"kotlin.internal…entations\").newInstance()");
                        bVar = (b) objNewInstance;
                    }
                }
            } catch (ClassNotFoundException unused5) {
                Object objNewInstance4 = Class.forName("kotlin.internal.JRE8PlatformImplementations").newInstance();
                t.b.g(objNewInstance4, "forName(\"kotlin.internal…entations\").newInstance()");
                try {
                    bVar = (b) objNewInstance4;
                } catch (ClassCastException e5) {
                    ClassLoader classLoader7 = objNewInstance4.getClass().getClassLoader();
                    ClassLoader classLoader8 = b.class.getClassLoader();
                    if (t.b.a(classLoader7, classLoader8)) {
                        throw e5;
                    }
                    throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader7 + ", base type classloader: " + classLoader8, e5);
                }
            }
        } else if (i2 < 65543 || i2 < 65536) {
            objNewInstance = x.b.class.newInstance();
            t.b.g(objNewInstance, "forName(\"kotlin.internal…entations\").newInstance()");
            bVar = (b) objNewInstance;
        } else {
            bVar = new b();
        }
        f1117a = bVar;
    }
}
