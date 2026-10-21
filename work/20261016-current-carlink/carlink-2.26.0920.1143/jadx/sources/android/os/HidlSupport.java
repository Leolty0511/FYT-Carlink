package android.os;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.IntPredicate;
import java.util.function.Predicate;
import java.util.stream.IntStream;

/* JADX INFO: loaded from: classes.dex */
public class HidlSupport {
    /* JADX WARN: Type inference failed for: r0v3, types: [android.os.d] */
    /* JADX WARN: Type inference failed for: r3v3, types: [android.os.c] */
    public static boolean deepEquals(Object obj, Object obj2) {
        Class<?> cls;
        Class<?> cls2;
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null || (cls = obj.getClass()) != (cls2 = obj2.getClass())) {
            return false;
        }
        if (cls.isArray()) {
            Class<?> componentType = cls.getComponentType();
            if (componentType != cls2.getComponentType()) {
                return false;
            }
            if (componentType.isPrimitive()) {
                return Objects.deepEquals(obj, obj2);
            }
            final Object[] objArr = (Object[]) obj;
            final Object[] objArr2 = (Object[]) obj2;
            return objArr.length == objArr2.length && IntStream.range(0, objArr.length).allMatch(new IntPredicate() { // from class: android.os.c
                @Override // java.util.function.IntPredicate
                public final boolean test(int i2) {
                    return HidlSupport.lambda$deepEquals$0(objArr, objArr2, i2);
                }
            });
        }
        if (!(obj instanceof List)) {
            throwErrorIfUnsupportedType(obj);
            return obj.equals(obj2);
        }
        List list = (List) obj;
        List list2 = (List) obj2;
        if (list.size() != list2.size()) {
            return false;
        }
        final Iterator it = list.iterator();
        return list2.stream().allMatch(new Predicate() { // from class: android.os.d
            @Override // java.util.function.Predicate
            public final boolean test(Object obj3) {
                return HidlSupport.lambda$deepEquals$1(it, obj3);
            }
        });
    }

    public static int deepHashCode(Object obj) {
        if (obj == null) {
            return 0;
        }
        Class<?> cls = obj.getClass();
        if (cls.isArray()) {
            return cls.getComponentType().isPrimitive() ? primitiveArrayHashCode(obj) : Arrays.hashCode(Arrays.stream((Object[]) obj).mapToInt(new android.hardware.radio.b(2)).toArray());
        }
        if (obj instanceof List) {
            return Arrays.hashCode(((List) obj).stream().mapToInt(new android.hardware.radio.b(3)).toArray());
        }
        throwErrorIfUnsupportedType(obj);
        return obj.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$deepEquals$0(Object[] objArr, Object[] objArr2, int i2) {
        return deepEquals(objArr[i2], objArr2[i2]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$deepEquals$1(Iterator it, Object obj) {
        return deepEquals(it.next(), obj);
    }

    private static int primitiveArrayHashCode(Object obj) {
        Class<?> componentType = obj.getClass().getComponentType();
        if (componentType == Boolean.TYPE) {
            return Arrays.hashCode((boolean[]) obj);
        }
        if (componentType == Byte.TYPE) {
            return Arrays.hashCode((byte[]) obj);
        }
        if (componentType == Character.TYPE) {
            return Arrays.hashCode((char[]) obj);
        }
        if (componentType == Double.TYPE) {
            return Arrays.hashCode((double[]) obj);
        }
        if (componentType == Float.TYPE) {
            return Arrays.hashCode((float[]) obj);
        }
        if (componentType == Integer.TYPE) {
            return Arrays.hashCode((int[]) obj);
        }
        if (componentType == Long.TYPE) {
            return Arrays.hashCode((long[]) obj);
        }
        if (componentType == Short.TYPE) {
            return Arrays.hashCode((short[]) obj);
        }
        throw new UnsupportedOperationException();
    }

    private static void throwErrorIfUnsupportedType(Object obj) {
        if ((obj instanceof Collection) && !(obj instanceof List)) {
            throw new UnsupportedOperationException("Cannot check equality on collections other than lists: ".concat(obj.getClass().getName()));
        }
        if (obj instanceof Map) {
            throw new UnsupportedOperationException("Cannot check equality on maps");
        }
    }
}
