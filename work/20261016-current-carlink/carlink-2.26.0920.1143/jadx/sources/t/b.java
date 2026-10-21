package t;

import android.net.wifi.WifiEnterpriseConfig;
import android.os.Bundle;
import android.os.SystemProperties;
import android.security.keystore.KeyProperties;
import android.text.format.DateFormat;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.syu.carlink.utils.ScreenDensityCalculator$DeviceType;
import com.syu.jni.SyuJniNative;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import k0.h;
import kotlin.UninitializedPropertyAccessException;
import kotlin.collections.EmptyList;
import z.l;
import z.p;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p.b f1107a = new p.b("CLOSED_EMPTY");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final p.b f1108b = new p.b(WifiEnterpriseConfig.EMPTY_VALUE);
    public static final Object[] c = new Object[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final char[] f1109d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', DateFormat.CAPITAL_AM_PM, 'B', 'C', 'D', DateFormat.DAY, 'F'};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final f.f f1110e = new f.f((Method) null, (Method) null, (Method) null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static f.f f1111f;

    public static int A(String str, int i2, int i3, int i4, int i5) {
        if ((i5 & 4) != 0) {
            i3 = 1;
        }
        if ((i5 & 8) != 0) {
            i4 = Integer.MAX_VALUE;
        }
        return (int) z(i2, i3, i4, str);
    }

    public static void B(String str) {
        UninitializedPropertyAccessException uninitializedPropertyAccessException = new UninitializedPropertyAccessException(android.accessibilityservice.c.k("lateinit property ", str, " has not been initialized"));
        x(b.class.getName(), uninitializedPropertyAccessException);
        throw uninitializedPropertyAccessException;
    }

    public static final Object[] C(Collection collection) {
        h(collection, "collection");
        int size = collection.size();
        Object[] objArr = c;
        if (size == 0) {
            return objArr;
        }
        Iterator it = collection.iterator();
        if (!it.hasNext()) {
            return objArr;
        }
        Object[] objArrCopyOf = new Object[size];
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            objArrCopyOf[i2] = it.next();
            if (i3 >= objArrCopyOf.length) {
                if (!it.hasNext()) {
                    return objArrCopyOf;
                }
                int i4 = ((i3 * 3) + 1) >>> 1;
                if (i4 <= i3) {
                    i4 = 2147483645;
                    if (i3 >= 2147483645) {
                        throw new OutOfMemoryError();
                    }
                }
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, i4);
                g(objArrCopyOf, "copyOf(result, newSize)");
            } else if (!it.hasNext()) {
                Object[] objArrCopyOf2 = Arrays.copyOf(objArrCopyOf, i3);
                g(objArrCopyOf2, "copyOf(result, size)");
                return objArrCopyOf2;
            }
            i2 = i3;
        }
    }

    public static final Object[] D(Collection collection, Object[] objArr) {
        Object[] objArrCopyOf;
        h(collection, "collection");
        objArr.getClass();
        int size = collection.size();
        int i2 = 0;
        if (size == 0) {
            if (objArr.length <= 0) {
                return objArr;
            }
            objArr[0] = null;
            return objArr;
        }
        Iterator it = collection.iterator();
        if (!it.hasNext()) {
            if (objArr.length <= 0) {
                return objArr;
            }
            objArr[0] = null;
            return objArr;
        }
        if (size <= objArr.length) {
            objArrCopyOf = objArr;
        } else {
            Object objNewInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
            f(objNewInstance, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArrCopyOf = (Object[]) objNewInstance;
        }
        while (true) {
            int i3 = i2 + 1;
            objArrCopyOf[i2] = it.next();
            if (i3 >= objArrCopyOf.length) {
                if (!it.hasNext()) {
                    return objArrCopyOf;
                }
                int i4 = ((i3 * 3) + 1) >>> 1;
                if (i4 <= i3) {
                    i4 = 2147483645;
                    if (i3 >= 2147483645) {
                        throw new OutOfMemoryError();
                    }
                }
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, i4);
                g(objArrCopyOf, "copyOf(result, newSize)");
            } else if (!it.hasNext()) {
                if (objArrCopyOf == objArr) {
                    objArr[i3] = null;
                    return objArr;
                }
                Object[] objArrCopyOf2 = Arrays.copyOf(objArrCopyOf, i3);
                g(objArrCopyOf2, "copyOf(result, size)");
                return objArrCopyOf2;
            }
            i2 = i3;
        }
    }

    public static String E(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        int length = bArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            char[] cArr = f1109d;
            sb.append(cArr[(bArr[i2] & 240) >> 4]);
            sb.append(cArr[bArr[i2] & 15]);
        }
        String string = sb.toString();
        g(string, "sb.toString()");
        return string;
    }

    public static final Map F(Map map) {
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        Map mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        g(mapSingletonMap, "with(entries.iterator().…ingletonMap(key, value) }");
        return mapSingletonMap;
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static final ArrayList b(Object... objArr) {
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new a(objArr, true));
    }

    public static void c(p pVar) {
        int arity;
        if (pVar != null) {
            if (pVar instanceof kotlin.jvm.internal.e) {
                arity = ((kotlin.jvm.internal.e) pVar).getArity();
            } else if (pVar instanceof z.a) {
                arity = 0;
            } else {
                arity = pVar instanceof l ? 1 : 2;
            }
            if (arity == 2) {
                return;
            }
            ClassCastException classCastException = new ClassCastException(pVar.getClass().getName().concat(" cannot be cast to kotlin.jvm.functions.Function2"));
            x(b.class.getName(), classCastException);
            throw classCastException;
        }
    }

    public static l.c d(int i2, int i3, float f2) {
        float f3;
        int i4 = i2 < i3 ? i3 : i2;
        int i5 = i2 > i3 ? i3 : i2;
        double dSqrt = Math.sqrt((i5 * i5) + (i4 * i4));
        float f4 = i4 / i5;
        ScreenDensityCalculator$DeviceType screenDensityCalculator$DeviceType = i2 < i3 ? ScreenDensityCalculator$DeviceType.PORTRAIT : ScreenDensityCalculator$DeviceType.LANDSCAPE;
        if (dSqrt < 800.0d) {
            f3 = 7.0f;
        } else if (dSqrt < 934.0d) {
            f3 = 8.0f;
        } else if (dSqrt < 1186.0d) {
            f3 = 9.0f;
        } else if (dSqrt < 1280.0d) {
            f3 = 10.0f;
        } else if (dSqrt < 1469.0d) {
            f3 = 10.2f;
        } else if (dSqrt < 2203.0d) {
            f3 = 11.0f;
        } else if (dSqrt < 2333.0d) {
            f3 = 12.0f;
        } else if (dSqrt < 2800.0d) {
            f3 = 15.0f;
        } else {
            f3 = dSqrt < 3200.0d ? 19.0f : 24.0f;
        }
        float f5 = f3;
        float f6 = ((float) (dSqrt / ((double) f5))) * f2;
        ScreenDensityCalculator$DeviceType screenDensityCalculator$DeviceType2 = ScreenDensityCalculator$DeviceType.PORTRAIT;
        if (screenDensityCalculator$DeviceType == screenDensityCalculator$DeviceType2) {
            f6 *= 0.75f;
        }
        float fK = screenDensityCalculator$DeviceType == screenDensityCalculator$DeviceType2 ? k(f6, 120.0f, 220.0f) : k(f6, 140.0f, 280.0f);
        float f7 = fK / 160.0f;
        return new l.c(i4, i5, screenDensityCalculator$DeviceType, f4, dSqrt, f5, fK, f7, f7 * 1.0f);
    }

    public static void e(Object obj) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException();
        x(b.class.getName(), nullPointerException);
        throw nullPointerException;
    }

    public static void f(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(str);
        x(b.class.getName(), nullPointerException);
        throw nullPointerException;
    }

    public static void g(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(str.concat(" must not be null"));
        x(b.class.getName(), nullPointerException);
        throw nullPointerException;
    }

    public static void h(Object obj, String str) {
        if (obj != null) {
            return;
        }
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[4];
        StringBuilder sbW = android.accessibilityservice.c.w("Parameter specified as non-null is null: method ", stackTraceElement.getClassName(), ".", stackTraceElement.getMethodName(), ", parameter ");
        sbW.append(str);
        NullPointerException nullPointerException = new NullPointerException(sbW.toString());
        x(b.class.getName(), nullPointerException);
        throw nullPointerException;
    }

    public static final void i(Closeable closeable, Throwable th) throws IOException {
        if (th == null) {
            closeable.close();
            return;
        }
        try {
            closeable.close();
        } catch (Throwable th2) {
            kotlin.a.a(th, th2);
        }
    }

    public static void j(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("param0", (i2 & 255) | 66560);
        SyuJniNative.f746a.syu_jni_command(251, bundle, null);
    }

    public static final float k(float f2, float f3, float f4) {
        if (f3 <= f4) {
            if (f2 < f3) {
                return f3;
            }
            return f2 > f4 ? f4 : f2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f4 + " is less than minimum " + f3 + '.');
    }

    public static void l(InputStream inputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        FileOutputStream fileOutputStream = new FileOutputStream("/sdcard/carlink/logo/car_log.png");
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int i2 = bufferedInputStream.read(bArr);
                if (!(i2 > 0)) {
                    break;
                } else {
                    fileOutputStream.write(bArr, 0, i2);
                }
            }
            inputStream.reset();
            String strV = v(inputStream);
            n.b.a("HDL", "copyFile  srcMd5: " + strV);
            fileOutputStream.flush();
            i(bufferedInputStream, null);
            try {
                fileOutputStream.close();
            } catch (Exception unused) {
            }
            String strV2 = v(new FileInputStream("/sdcard/carlink/logo/car_log.png"));
            n.b.a("HDL", "copyFile  dstMd5: ".concat(strV2));
            if (a(strV, strV2)) {
                SystemProperties.set("persist.lsec.cp.logo_md5", strV);
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                i(bufferedInputStream, th);
                throw th2;
            }
        }
    }

    public static final boolean m(char c2, char c3, boolean z2) {
        if (c2 == c3) {
            return true;
        }
        if (!z2) {
            return false;
        }
        char upperCase = Character.toUpperCase(c2);
        char upperCase2 = Character.toUpperCase(c3);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    public static final Class n(d0.c cVar) {
        h(cVar, "<this>");
        Class clsA = ((kotlin.jvm.internal.b) cVar).a();
        if (!clsA.isPrimitive()) {
            return clsA;
        }
        String name = clsA.getName();
        switch (name.hashCode()) {
            case -1325958191:
                return !name.equals("double") ? clsA : Double.class;
            case 104431:
                return !name.equals("int") ? clsA : Integer.class;
            case 3039496:
                return !name.equals("byte") ? clsA : Byte.class;
            case 3052374:
                return !name.equals("char") ? clsA : Character.class;
            case 3327612:
                return !name.equals("long") ? clsA : Long.class;
            case 3625364:
                return !name.equals("void") ? clsA : Void.class;
            case 64711720:
                return !name.equals(TypedValues.Custom.S_BOOLEAN) ? clsA : Boolean.class;
            case 97526364:
                return !name.equals(TypedValues.Custom.S_FLOAT) ? clsA : Float.class;
            case 109413500:
                return !name.equals("short") ? clsA : Short.class;
            default:
                return clsA;
        }
    }

    public static boolean o(String str, boolean z2) {
        Class cls = Boolean.TYPE;
        e(cls);
        Boolean bool = (Boolean) p.a.d("android.os.SystemProperties", null, "getBoolean", new Class[]{String.class, cls}, str, Boolean.valueOf(z2));
        return bool != null ? bool.booleanValue() : z2;
    }

    public static int p(int i2, String str) {
        Class cls = Integer.TYPE;
        e(cls);
        Integer num = (Integer) p.a.d("android.os.SystemProperties", null, "getInt", new Class[]{String.class, cls}, str, Integer.valueOf(i2));
        return num != null ? num.intValue() : i2;
    }

    public static String q(String str) {
        Object objE = p.a.e("android.os.SystemProperties", null, "get", str, "");
        g(objE, "invoke(\"android.os.Syste…erties\", \"get\", key, def)");
        return (String) objE;
    }

    public static final boolean r(char c2) {
        return Character.isWhitespace(c2) || Character.isSpaceChar(c2);
    }

    public static final List s(Object obj) {
        List listSingletonList = Collections.singletonList(obj);
        g(listSingletonList, "singletonList(element)");
        return listSingletonList;
    }

    public static final List t(Object... objArr) {
        if (objArr.length <= 0) {
            return EmptyList.INSTANCE;
        }
        List listAsList = Arrays.asList(objArr);
        g(listAsList, "asList(this)");
        return listAsList;
    }

    public static final int u(int i2) {
        if (i2 < 0) {
            return i2;
        }
        if (i2 < 3) {
            return i2 + 1;
        }
        if (i2 < 1073741824) {
            return (int) ((i2 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static String v(InputStream inputStream) throws IOException {
        String strE;
        byte[] bArr = new byte[1024];
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(KeyProperties.DIGEST_MD5);
            g(messageDigest, "getInstance(\"MD5\")");
            while (true) {
                int i2 = inputStream.read(bArr);
                if (i2 <= 0) {
                    break;
                }
                messageDigest.update(bArr, 0, i2);
            }
            byte[] bArrDigest = messageDigest.digest();
            g(bArrDigest, "md5.digest()");
            strE = E(bArrDigest);
        } catch (Exception unused) {
            strE = "null";
        } finally {
            inputStream.close();
        }
        return strE;
    }

    public static void w() {
        throw new UnsupportedOperationException("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }

    public static void x(String str, RuntimeException runtimeException) {
        StackTraceElement[] stackTrace = runtimeException.getStackTrace();
        int length = stackTrace.length;
        int i2 = -1;
        for (int i3 = 0; i3 < length; i3++) {
            if (str.equals(stackTrace[i3].getClassName())) {
                i2 = i3;
            }
        }
        runtimeException.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i2 + 1, length));
    }

    public static String y(Serializable serializable, String str) {
        return str + serializable;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x006a  */
    /* JADX WARN: Code duplicated, block: B:39:0x0075  */
    /* JADX WARN: Code duplicated, block: B:41:0x0079  */
    /* JADX WARN: Code duplicated, block: B:43:0x007d  */
    /* JADX WARN: Code duplicated, block: B:46:0x0089  */
    /* JADX WARN: Code duplicated, block: B:50:0x0098 A[LOOP:0: B:35:0x0068->B:50:0x0098, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:53:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:54:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:73:0x00a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x002f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x002f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x0096 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x0096 A[SYNTHETIC] */
    public static final long z(long j2, long j3, long j4, String str) {
        String property;
        byte b2;
        int i2;
        int i3;
        long j5;
        long j6;
        String str2;
        Long lValueOf;
        int iDigit;
        long j7;
        long j8;
        int i4 = h.f991a;
        try {
            property = System.getProperty(str);
        } catch (SecurityException unused) {
            property = null;
        }
        if (property == null) {
            return j2;
        }
        if (!(10 <= new c0.d(2, 36).c)) {
            throw new IllegalArgumentException("radix 10 was not in valid range " + new c0.d(2, 36));
        }
        int length = property.length();
        if (length != 0) {
            char cCharAt = property.charAt(0);
            if (cCharAt < '0') {
                b2 = -1;
            } else {
                b2 = cCharAt == '0' ? (byte) 0 : (byte) 1;
            }
            long j9 = -9223372036854775807L;
            if (b2 < 0) {
                if (length != 1) {
                    if (cCharAt == '-') {
                        j9 = Long.MIN_VALUE;
                        i2 = 1;
                    } else {
                        if (cCharAt == '+') {
                            i3 = 0;
                            i2 = 1;
                            j5 = 0;
                            j6 = -256204778801521550L;
                            while (true) {
                                if (i2 >= length) {
                                    str2 = property;
                                    if (i3 != 0) {
                                        lValueOf = Long.valueOf(j5);
                                    } else {
                                        lValueOf = Long.valueOf(-j5);
                                    }
                                } else {
                                    iDigit = Character.digit((int) property.charAt(i2), 10);
                                    if (iDigit >= 0) {
                                        if (j5 >= j6) {
                                            str2 = property;
                                        } else if (j6 == -256204778801521550L) {
                                            str2 = property;
                                            j6 = j9 / ((long) 10);
                                            if (j5 < j6) {
                                            }
                                        }
                                        j7 = j5 * ((long) 10);
                                        j8 = iDigit;
                                        if (j7 >= j9 + j8) {
                                            j5 = j7 - j8;
                                            i2++;
                                            property = str2;
                                            length = length;
                                        }
                                    }
                                }
                            }
                        }
                        lValueOf = null;
                    }
                }
                str2 = property;
                lValueOf = null;
            } else {
                i2 = 0;
            }
            i3 = i2;
            j5 = 0;
            j6 = -256204778801521550L;
            while (true) {
                if (i2 >= length) {
                    str2 = property;
                    if (i3 != 0) {
                        lValueOf = Long.valueOf(j5);
                    } else {
                        lValueOf = Long.valueOf(-j5);
                    }
                } else {
                    iDigit = Character.digit((int) property.charAt(i2), 10);
                    if (iDigit >= 0) {
                        if (j5 >= j6) {
                            if (j6 == -256204778801521550L) {
                                str2 = property;
                                j6 = j9 / ((long) 10);
                                if (j5 < j6) {
                                }
                            }
                            lValueOf = null;
                        } else {
                            str2 = property;
                        }
                        j7 = j5 * ((long) 10);
                        j8 = iDigit;
                        if (j7 >= j9 + j8) {
                            lValueOf = null;
                        } else {
                            j5 = j7 - j8;
                            i2++;
                            property = str2;
                            length = length;
                        }
                    }
                    str2 = property;
                    lValueOf = null;
                }
            }
        } else {
            str2 = property;
            lValueOf = null;
        }
        if (lValueOf == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + str2 + DateFormat.QUOTE).toString());
        }
        long jLongValue = lValueOf.longValue();
        if (j3 <= jLongValue && jLongValue <= j4) {
            return jLongValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j3 + ".." + j4 + ", but is '" + jLongValue + DateFormat.QUOTE).toString());
    }
}
