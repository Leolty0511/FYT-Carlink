package android.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.net.ProxyProperties;
import android.net.http.CharArrayBuffers;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class ViewDebug {
    private static final int CAPTURE_TIMEOUT = 4000;
    public static final boolean DEBUG_DRAG = false;
    private static final String REMOTE_COMMAND_CAPTURE = "CAPTURE";
    private static final String REMOTE_COMMAND_CAPTURE_LAYERS = "CAPTURE_LAYERS";
    private static final String REMOTE_COMMAND_DUMP = "DUMP";
    private static final String REMOTE_COMMAND_INVALIDATE = "INVALIDATE";
    private static final String REMOTE_COMMAND_OUTPUT_DISPLAYLIST = "OUTPUT_DISPLAYLIST";
    private static final String REMOTE_COMMAND_REQUEST_LAYOUT = "REQUEST_LAYOUT";
    private static final String REMOTE_PROFILE = "PROFILE";

    @Deprecated
    public static final boolean TRACE_HIERARCHY = false;

    @Deprecated
    public static final boolean TRACE_RECYCLER = false;
    private static HashMap<Class<?>, Field[]> mCapturedViewFieldsForClasses;
    private static HashMap<Class<?>, Method[]> mCapturedViewMethodsForClasses;
    private static HashMap<AccessibleObject, ExportedProperty> sAnnotations;
    private static HashMap<Class<?>, Field[]> sFieldsForClasses;
    private static HashMap<Class<?>, Method[]> sMethodsForClasses;

    @Target({ElementType.FIELD, ElementType.METHOD})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface CapturedViewProperty {
        boolean retrieveReturn() default false;
    }

    @Target({ElementType.FIELD, ElementType.METHOD})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface ExportedProperty {
        String category() default "";

        boolean deepExport() default false;

        FlagToString[] flagMapping() default {};

        IntToString[] indexMapping() default {};

        IntToString[] mapping() default {};

        String prefix() default "";

        boolean resolveId() default false;
    }

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface FlagToString {
        int equals();

        int mask();

        String name();

        boolean outputIf() default true;
    }

    public interface HierarchyHandler {
        void dumpViewHierarchyWithProperties(BufferedWriter bufferedWriter, int i2);

        View findHierarchyView(String str, int i2);
    }

    @Deprecated
    public enum HierarchyTraceType {
        INVALIDATE,
        INVALIDATE_CHILD,
        INVALIDATE_CHILD_IN_PARENT,
        REQUEST_LAYOUT,
        ON_LAYOUT,
        ON_MEASURE,
        DRAW,
        BUILD_CACHE
    }

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface IntToString {
        int from();

        String to();
    }

    @Deprecated
    public enum RecyclerTraceType {
        NEW_VIEW,
        BIND_VIEW,
        RECYCLE_FROM_ACTIVE_HEAP,
        RECYCLE_FROM_SCRAP_HEAP,
        MOVE_TO_SCRAP_HEAP,
        MOVE_FROM_ACTIVE_TO_SCRAP_HEAP
    }

    public interface ViewOperation<T> {
        void post(T... tArr);

        T[] pre();

        void run(T... tArr);
    }

    private static Object callMethodOnAppropriateTheadBlocking(final Method method, Object obj) throws IllegalAccessException, InvocationTargetException {
        if (!(obj instanceof View)) {
            return method.invoke(obj, null);
        }
        final View view = (View) obj;
        FutureTask futureTask = new FutureTask(new Callable<Object>() { // from class: android.view.ViewDebug.7
            @Override // java.util.concurrent.Callable
            public Object call() {
                return method.invoke(view, null);
            }
        });
        Handler handler = view.getHandler();
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.post(futureTask);
        while (true) {
            try {
                return futureTask.get(4000L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException unused) {
            } catch (CancellationException e2) {
                throw new RuntimeException("Unexpected cancellation exception", e2);
            } catch (ExecutionException e3) {
                Throwable cause = e3.getCause();
                if (cause instanceof IllegalAccessException) {
                    throw ((IllegalAccessException) cause);
                }
                if (cause instanceof InvocationTargetException) {
                    throw ((InvocationTargetException) cause);
                }
                throw new RuntimeException("Unexpected exception", cause);
            }
        }
    }

    private static void capture(View view, OutputStream outputStream, String str) throws Throwable {
        capture(view, outputStream, findView(view, str));
    }

    public static void captureLayers(View view, DataOutputStream dataOutputStream) {
        try {
            Rect rect = new Rect();
            try {
                View.AttachInfo attachInfo = view.mAttachInfo;
                attachInfo.mSession.getDisplayFrame(attachInfo.mWindow, rect);
            } catch (RemoteException unused) {
            }
            dataOutputStream.writeInt(rect.width());
            dataOutputStream.writeInt(rect.height());
            captureViewLayer(view, dataOutputStream, true);
            dataOutputStream.write(2);
        } finally {
            dataOutputStream.close();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v3 */
    private static void captureViewLayer(View view, DataOutputStream dataOutputStream, boolean z2) throws IOException {
        ?? r8 = (view.getVisibility() == 0 && z2) ? 1 : 0;
        if ((view.mPrivateFlags & 128) != 128) {
            int id = view.getId();
            String simpleName = view.getClass().getSimpleName();
            if (id != -1) {
                simpleName = resolveId(view.getContext(), id).toString();
            }
            dataOutputStream.write(1);
            dataOutputStream.writeUTF(simpleName);
            dataOutputStream.writeByte(r8);
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            dataOutputStream.writeInt(iArr[0]);
            dataOutputStream.writeInt(iArr[1]);
            dataOutputStream.flush();
            Bitmap bitmapPerformViewCapture = performViewCapture(view, true);
            if (bitmapPerformViewCapture != null) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bitmapPerformViewCapture.getWidth() * bitmapPerformViewCapture.getHeight() * 2);
                bitmapPerformViewCapture.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                dataOutputStream.writeInt(byteArrayOutputStream.size());
                byteArrayOutputStream.writeTo(dataOutputStream);
            }
            dataOutputStream.flush();
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                captureViewLayer(viewGroup.getChildAt(i2), dataOutputStream, r8);
            }
        }
        if (view.mOverlay != null) {
            captureViewLayer(view.getOverlay().mOverlayViewGroup, dataOutputStream, r8);
        }
    }

    private static String capturedViewExportFields(Object obj, Class<?> cls, String str) {
        if (obj == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        for (Field field : capturedViewGetPropertyFields(cls)) {
            try {
                Object obj2 = field.get(obj);
                sb.append(str);
                sb.append(field.getName());
                sb.append("=");
                if (obj2 != null) {
                    sb.append(obj2.toString().replace("\n", "\\n"));
                } else {
                    sb.append("null");
                }
                sb.append(CharArrayBuffers.uppercaseAddon);
            } catch (IllegalAccessException unused) {
            }
        }
        return sb.toString();
    }

    private static String capturedViewExportMethods(Object obj, Class<?> cls, String str) {
        if (obj == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        for (Method method : capturedViewGetPropertyMethods(cls)) {
            try {
                Object objInvoke = method.invoke(obj, null);
                Class<?> returnType = method.getReturnType();
                if (((CapturedViewProperty) method.getAnnotation(CapturedViewProperty.class)).retrieveReturn()) {
                    sb.append(capturedViewExportMethods(objInvoke, returnType, method.getName() + "#"));
                } else {
                    sb.append(str);
                    sb.append(method.getName());
                    sb.append("()=");
                    if (objInvoke != null) {
                        sb.append(objInvoke.toString().replace("\n", "\\n"));
                    } else {
                        sb.append("null");
                    }
                    sb.append("; ");
                }
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        return sb.toString();
    }

    private static Field[] capturedViewGetPropertyFields(Class<?> cls) {
        if (mCapturedViewFieldsForClasses == null) {
            mCapturedViewFieldsForClasses = new HashMap<>();
        }
        HashMap<Class<?>, Field[]> map = mCapturedViewFieldsForClasses;
        Field[] fieldArr = map.get(cls);
        if (fieldArr != null) {
            return fieldArr;
        }
        ArrayList arrayList = new ArrayList();
        for (Field field : cls.getFields()) {
            if (field.isAnnotationPresent(CapturedViewProperty.class)) {
                field.setAccessible(true);
                arrayList.add(field);
            }
        }
        Field[] fieldArr2 = (Field[]) arrayList.toArray(new Field[arrayList.size()]);
        map.put(cls, fieldArr2);
        return fieldArr2;
    }

    private static Method[] capturedViewGetPropertyMethods(Class<?> cls) {
        if (mCapturedViewMethodsForClasses == null) {
            mCapturedViewMethodsForClasses = new HashMap<>();
        }
        HashMap<Class<?>, Method[]> map = mCapturedViewMethodsForClasses;
        Method[] methodArr = map.get(cls);
        if (methodArr != null) {
            return methodArr;
        }
        ArrayList arrayList = new ArrayList();
        for (Method method : cls.getMethods()) {
            if (method.getParameterTypes().length == 0 && method.isAnnotationPresent(CapturedViewProperty.class) && method.getReturnType() != Void.class) {
                method.setAccessible(true);
                arrayList.add(method);
            }
        }
        Method[] methodArr2 = (Method[]) arrayList.toArray(new Method[arrayList.size()]);
        map.put(cls, methodArr2);
        return methodArr2;
    }

    public static void dispatchCommand(View view, String str, String str2, OutputStream outputStream) throws Throwable {
        View rootView = view.getRootView();
        if (REMOTE_COMMAND_DUMP.equalsIgnoreCase(str)) {
            dump(rootView, false, true, outputStream);
            return;
        }
        if (REMOTE_COMMAND_CAPTURE_LAYERS.equalsIgnoreCase(str)) {
            captureLayers(rootView, new DataOutputStream(outputStream));
            return;
        }
        String[] strArrSplit = str2.split(" ");
        if (REMOTE_COMMAND_CAPTURE.equalsIgnoreCase(str)) {
            capture(rootView, outputStream, strArrSplit[0]);
            return;
        }
        if (REMOTE_COMMAND_OUTPUT_DISPLAYLIST.equalsIgnoreCase(str)) {
            outputDisplayList(rootView, strArrSplit[0]);
            return;
        }
        if (REMOTE_COMMAND_INVALIDATE.equalsIgnoreCase(str)) {
            invalidate(rootView, strArrSplit[0]);
        } else if (REMOTE_COMMAND_REQUEST_LAYOUT.equalsIgnoreCase(str)) {
            requestLayout(rootView, strArrSplit[0]);
        } else if (REMOTE_PROFILE.equalsIgnoreCase(str)) {
            profile(rootView, outputStream, strArrSplit[0]);
        }
    }

    public static void dump(View view, boolean z2, boolean z3, OutputStream outputStream) throws Throwable {
        BufferedWriter bufferedWriter = null;
        try {
            try {
                BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(outputStream, "utf-8"), 32768);
                try {
                    View rootView = view.getRootView();
                    if (rootView instanceof ViewGroup) {
                        ViewGroup viewGroup = (ViewGroup) rootView;
                        dumpViewHierarchy(viewGroup.getContext(), viewGroup, bufferedWriter2, 0, z2, z3);
                    }
                    bufferedWriter2.write("DONE.");
                    bufferedWriter2.newLine();
                    bufferedWriter2.close();
                } catch (Exception e2) {
                    e = e2;
                    bufferedWriter = bufferedWriter2;
                    Log.w(View.VIEW_LOG_TAG, "Problem dumping the view:", e);
                    if (bufferedWriter != null) {
                        bufferedWriter.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedWriter = bufferedWriter2;
                    if (bufferedWriter != null) {
                        bufferedWriter.close();
                    }
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void dumpCapturedView(String str, Object obj) {
        Class<?> cls = obj.getClass();
        StringBuilder sb = new StringBuilder(cls.getName() + ": ");
        sb.append(capturedViewExportFields(obj, cls, ProxyProperties.LOCAL_EXCL_LIST));
        sb.append(capturedViewExportMethods(obj, cls, ProxyProperties.LOCAL_EXCL_LIST));
        Log.d(str, sb.toString());
    }

    private static boolean dumpView(Context context, View view, BufferedWriter bufferedWriter, int i2, boolean z2) {
        for (int i3 = 0; i3 < i2; i3++) {
            try {
                bufferedWriter.write(32);
            } catch (IOException unused) {
                Log.w(View.VIEW_LOG_TAG, "Error while dumping hierarchy tree");
                return false;
            }
        }
        String name = view.getClass().getName();
        if (name.equals("android.view.ViewOverlay$OverlayViewGroup")) {
            name = "ViewOverlay";
        }
        bufferedWriter.write(name);
        bufferedWriter.write(64);
        bufferedWriter.write(Integer.toHexString(view.hashCode()));
        bufferedWriter.write(32);
        if (z2) {
            dumpViewProperties(context, view, bufferedWriter);
        }
        bufferedWriter.newLine();
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void dumpViewHierarchy(Context context, ViewGroup viewGroup, BufferedWriter bufferedWriter, int i2, boolean z2, boolean z3) {
        if (dumpView(context, viewGroup, bufferedWriter, i2, z3) && !z2) {
            int childCount = viewGroup.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = viewGroup.getChildAt(i3);
                if (childAt instanceof ViewGroup) {
                    dumpViewHierarchy(context, (ViewGroup) childAt, bufferedWriter, i2 + 1, z2, z3);
                } else {
                    dumpView(context, childAt, bufferedWriter, i2 + 1, z3);
                }
                if (childAt.mOverlay != null) {
                    dumpViewHierarchy(context, childAt.getOverlay().mOverlayViewGroup, bufferedWriter, i2 + 2, z2, z3);
                }
            }
            if (viewGroup instanceof HierarchyHandler) {
                ((HierarchyHandler) viewGroup).dumpViewHierarchyWithProperties(bufferedWriter, i2 + 1);
            }
        }
    }

    private static void dumpViewProperties(Context context, Object obj, BufferedWriter bufferedWriter) throws IOException {
        dumpViewProperties(context, obj, bufferedWriter, ProxyProperties.LOCAL_EXCL_LIST);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0107 A[Catch: IllegalAccessException -> 0x0121, TryCatch #0 {IllegalAccessException -> 0x0121, blocks: (B:5:0x0012, B:8:0x002a, B:10:0x0041, B:12:0x0047, B:17:0x0050, B:19:0x007d, B:21:0x0083, B:23:0x0089, B:44:0x0107, B:45:0x010b, B:25:0x00a7, B:28:0x00af, B:29:0x00b8, B:31:0x00bf, B:32:0x00df, B:34:0x00e6, B:36:0x00ee, B:38:0x00f6, B:42:0x0101, B:39:0x00fb), top: B:49:0x0012 }] */
    private static void exportFields(Context context, Object obj, BufferedWriter bufferedWriter, Class<?> cls, String str) throws IOException {
        Object objValueOf;
        for (Field field : getExportedPropertyFields(cls)) {
            try {
                Class<?> type = field.getType();
                ExportedProperty exportedProperty = sAnnotations.get(field);
                String str2 = exportedProperty.category().length() != 0 ? exportedProperty.category() + ":" : ProxyProperties.LOCAL_EXCL_LIST;
                if (type == Integer.TYPE || type == Byte.TYPE) {
                    if (!exportedProperty.resolveId() || context == null) {
                        FlagToString[] flagToStringArrFlagMapping = exportedProperty.flagMapping();
                        if (flagToStringArrFlagMapping.length > 0) {
                            exportUnrolledFlags(bufferedWriter, flagToStringArrFlagMapping, field.getInt(obj), str2 + str + field.getName() + '_');
                        }
                        IntToString[] intToStringArrMapping = exportedProperty.mapping();
                        if (intToStringArrMapping.length > 0) {
                            int i2 = field.getInt(obj);
                            int length = intToStringArrMapping.length;
                            int i3 = 0;
                            while (true) {
                                if (i3 >= length) {
                                    objValueOf = null;
                                    break;
                                }
                                IntToString intToString = intToStringArrMapping[i3];
                                if (intToString.from() == i2) {
                                    objValueOf = intToString.to();
                                    break;
                                }
                                i3++;
                            }
                            if (objValueOf == null) {
                                objValueOf = Integer.valueOf(i2);
                            }
                        }
                    } else {
                        objValueOf = resolveId(context, field.getInt(obj));
                    }
                    if (objValueOf == null) {
                        objValueOf = field.get(obj);
                    }
                    writeEntry(bufferedWriter, str2 + str, field.getName(), ProxyProperties.LOCAL_EXCL_LIST, objValueOf);
                } else {
                    if (type == int[].class) {
                        exportUnrolledArray(context, bufferedWriter, exportedProperty, (int[]) field.get(obj), str2 + str + field.getName() + '_', ProxyProperties.LOCAL_EXCL_LIST);
                        return;
                    }
                    if (!type.isPrimitive() && exportedProperty.deepExport()) {
                        dumpViewProperties(context, field.get(obj), bufferedWriter, str + exportedProperty.prefix());
                    }
                }
                objValueOf = null;
                if (objValueOf == null) {
                    objValueOf = field.get(obj);
                }
                writeEntry(bufferedWriter, str2 + str, field.getName(), ProxyProperties.LOCAL_EXCL_LIST, objValueOf);
            } catch (IllegalAccessException unused) {
            }
        }
    }

    private static void exportMethods(Context context, Object obj, BufferedWriter bufferedWriter, Class<?> cls, String str) {
        boolean z2;
        for (Method method : getExportedPropertyMethods(cls)) {
            try {
                Object objCallMethodOnAppropriateTheadBlocking = callMethodOnAppropriateTheadBlocking(method, obj);
                Class<?> returnType = method.getReturnType();
                ExportedProperty exportedProperty = sAnnotations.get(method);
                String str2 = exportedProperty.category().length() != 0 ? exportedProperty.category() + ":" : ProxyProperties.LOCAL_EXCL_LIST;
                if (returnType != Integer.TYPE) {
                    if (returnType == int[].class) {
                        exportUnrolledArray(context, bufferedWriter, exportedProperty, (int[]) objCallMethodOnAppropriateTheadBlocking, str2 + str + method.getName() + '_', "()");
                        return;
                    }
                    if (!returnType.isPrimitive() && exportedProperty.deepExport()) {
                        dumpViewProperties(context, objCallMethodOnAppropriateTheadBlocking, bufferedWriter, str + exportedProperty.prefix());
                    }
                } else if (!exportedProperty.resolveId() || context == null) {
                    FlagToString[] flagToStringArrFlagMapping = exportedProperty.flagMapping();
                    if (flagToStringArrFlagMapping.length > 0) {
                        exportUnrolledFlags(bufferedWriter, flagToStringArrFlagMapping, ((Integer) objCallMethodOnAppropriateTheadBlocking).intValue(), str2 + str + method.getName() + '_');
                    }
                    IntToString[] intToStringArrMapping = exportedProperty.mapping();
                    if (intToStringArrMapping.length > 0) {
                        int iIntValue = ((Integer) objCallMethodOnAppropriateTheadBlocking).intValue();
                        int length = intToStringArrMapping.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= length) {
                                z2 = false;
                                break;
                            }
                            IntToString intToString = intToStringArrMapping[i2];
                            if (intToString.from() == iIntValue) {
                                objCallMethodOnAppropriateTheadBlocking = intToString.to();
                                z2 = true;
                                break;
                            }
                            i2++;
                        }
                        if (!z2) {
                            objCallMethodOnAppropriateTheadBlocking = Integer.valueOf(iIntValue);
                        }
                    }
                } else {
                    objCallMethodOnAppropriateTheadBlocking = resolveId(context, ((Integer) objCallMethodOnAppropriateTheadBlocking).intValue());
                }
                writeEntry(bufferedWriter, str2 + str, method.getName(), "()", objCallMethodOnAppropriateTheadBlocking);
            } catch (IllegalAccessException | InvocationTargetException | TimeoutException unused) {
            }
        }
    }

    private static void exportUnrolledArray(Context context, BufferedWriter bufferedWriter, ExportedProperty exportedProperty, int[] iArr, String str, String str2) throws IOException {
        IntToString[] intToStringArrIndexMapping = exportedProperty.indexMapping();
        boolean z2 = intToStringArrIndexMapping.length > 0;
        IntToString[] intToStringArrMapping = exportedProperty.mapping();
        boolean z3 = intToStringArrMapping.length > 0;
        boolean z4 = exportedProperty.resolveId() && context != null;
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            String strValueOf = null;
            int i3 = iArr[i2];
            String strValueOf2 = String.valueOf(i2);
            if (z2) {
                for (IntToString intToString : intToStringArrIndexMapping) {
                    if (intToString.from() == i2) {
                        strValueOf2 = intToString.to();
                        break;
                    }
                }
            }
            if (z3) {
                for (IntToString intToString2 : intToStringArrMapping) {
                    if (intToString2.from() == i3) {
                        strValueOf = intToString2.to();
                        break;
                    }
                }
            }
            if (!z4) {
                strValueOf = String.valueOf(i3);
            } else if (strValueOf == null) {
                strValueOf = (String) resolveId(context, i3);
            }
            writeEntry(bufferedWriter, str, strValueOf2, str2, strValueOf);
        }
    }

    private static void exportUnrolledFlags(BufferedWriter bufferedWriter, FlagToString[] flagToStringArr, int i2, String str) throws IOException {
        for (FlagToString flagToString : flagToStringArr) {
            boolean zOutputIf = flagToString.outputIf();
            int iMask = flagToString.mask() & i2;
            boolean z2 = iMask == flagToString.equals();
            if ((z2 && zOutputIf) || (!z2 && !zOutputIf)) {
                writeEntry(bufferedWriter, str, flagToString.name(), ProxyProperties.LOCAL_EXCL_LIST, "0x" + Integer.toHexString(iMask));
            }
        }
    }

    public static View findView(View view, String str) {
        if (str.indexOf(64) == -1) {
            return view.getRootView().findViewById(view.getResources().getIdentifier(str, null, null));
        }
        String[] strArrSplit = str.split("@");
        String str2 = strArrSplit[0];
        int i2 = (int) Long.parseLong(strArrSplit[1], 16);
        View rootView = view.getRootView();
        if (rootView instanceof ViewGroup) {
            return findView((ViewGroup) rootView, str2, i2);
        }
        return null;
    }

    private static Field[] getExportedPropertyFields(Class<?> cls) {
        if (sFieldsForClasses == null) {
            sFieldsForClasses = new HashMap<>();
        }
        if (sAnnotations == null) {
            sAnnotations = new HashMap<>(512);
        }
        HashMap<Class<?>, Field[]> map = sFieldsForClasses;
        Field[] fieldArr = map.get(cls);
        if (fieldArr != null) {
            return fieldArr;
        }
        ArrayList arrayList = new ArrayList();
        for (Field field : cls.getDeclaredFields()) {
            if (field.isAnnotationPresent(ExportedProperty.class)) {
                field.setAccessible(true);
                arrayList.add(field);
                sAnnotations.put(field, (ExportedProperty) field.getAnnotation(ExportedProperty.class));
            }
        }
        Field[] fieldArr2 = (Field[]) arrayList.toArray(new Field[arrayList.size()]);
        map.put(cls, fieldArr2);
        return fieldArr2;
    }

    private static Method[] getExportedPropertyMethods(Class<?> cls) {
        if (sMethodsForClasses == null) {
            sMethodsForClasses = new HashMap<>(100);
        }
        if (sAnnotations == null) {
            sAnnotations = new HashMap<>(512);
        }
        HashMap<Class<?>, Method[]> map = sMethodsForClasses;
        Method[] methodArr = map.get(cls);
        if (methodArr != null) {
            return methodArr;
        }
        ArrayList arrayList = new ArrayList();
        for (Method method : cls.getDeclaredMethods()) {
            if (method.getParameterTypes().length == 0 && method.isAnnotationPresent(ExportedProperty.class) && method.getReturnType() != Void.class) {
                method.setAccessible(true);
                arrayList.add(method);
                sAnnotations.put(method, (ExportedProperty) method.getAnnotation(ExportedProperty.class));
            }
        }
        Method[] methodArr2 = (Method[]) arrayList.toArray(new Method[arrayList.size()]);
        map.put(cls, methodArr2);
        return methodArr2;
    }

    public static long getViewInstanceCount() {
        return Debug.countInstancesOfClass(View.class);
    }

    public static long getViewRootImplCount() {
        return Debug.countInstancesOfClass(ViewRootImpl.class);
    }

    private static void invalidate(View view, String str) {
        View viewFindView = findView(view, str);
        if (viewFindView != null) {
            viewFindView.postInvalidate();
        }
    }

    public static Object invokeViewMethod(final View view, final Method method, final Object[] objArr) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicReference atomicReference2 = new AtomicReference();
        view.post(new Runnable() { // from class: android.view.ViewDebug.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    atomicReference.set(method.invoke(view, objArr));
                } catch (InvocationTargetException e2) {
                    atomicReference2.set(e2.getCause());
                } catch (Exception e3) {
                    atomicReference2.set(e3);
                }
                countDownLatch.countDown();
            }
        });
        try {
            countDownLatch.await();
            if (atomicReference2.get() == null) {
                return atomicReference.get();
            }
            throw new RuntimeException((Throwable) atomicReference2.get());
        } catch (InterruptedException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static boolean isRequestedView(View view, String str, int i2) {
        if (view.hashCode() != i2) {
            return false;
        }
        String name = view.getClass().getName();
        return str.equals("ViewOverlay") ? name.equals("android.view.ViewOverlay$OverlayViewGroup") : str.equals(name);
    }

    private static void outputDisplayList(View view, String str) {
        View viewFindView = findView(view, str);
        viewFindView.getViewRootImpl().outputDisplayList(viewFindView);
    }

    private static Bitmap performViewCapture(final View view, final boolean z2) {
        if (view == null) {
            return null;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Bitmap[] bitmapArr = new Bitmap[1];
        view.post(new Runnable() { // from class: android.view.ViewDebug.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    try {
                        bitmapArr[0] = view.createSnapshot(Bitmap.Config.ARGB_8888, 0, z2);
                    } catch (OutOfMemoryError unused) {
                        Log.w(View.VIEW_LOG_TAG, "Out of memory for bitmap");
                    }
                } finally {
                    countDownLatch.countDown();
                }
            }
        });
        try {
            countDownLatch.await(4000L, TimeUnit.MILLISECONDS);
            return bitmapArr[0];
        } catch (InterruptedException unused) {
            Log.w(View.VIEW_LOG_TAG, "Could not complete the capture of the view " + view);
            Thread.currentThread().interrupt();
            return null;
        }
    }

    private static void profile(View view, OutputStream outputStream, String str) throws Throwable {
        View viewFindView = findView(view, str);
        BufferedWriter bufferedWriter = null;
        try {
            try {
                BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(outputStream), 32768);
                try {
                    if (viewFindView != null) {
                        profileViewAndChildren(viewFindView, bufferedWriter2);
                    } else {
                        bufferedWriter2.write("-1 -1 -1");
                        bufferedWriter2.newLine();
                    }
                    bufferedWriter2.write("DONE.");
                    bufferedWriter2.newLine();
                    bufferedWriter2.close();
                } catch (Exception e2) {
                    e = e2;
                    bufferedWriter = bufferedWriter2;
                    Log.w(View.VIEW_LOG_TAG, "Problem profiling the view:", e);
                    if (bufferedWriter != null) {
                        bufferedWriter.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedWriter = bufferedWriter2;
                    if (bufferedWriter != null) {
                        bufferedWriter.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    public static void profileViewAndChildren(View view, BufferedWriter bufferedWriter) throws IOException {
        profileViewAndChildren(view, bufferedWriter, true);
    }

    private static <T> long profileViewOperation(View view, final ViewOperation<T> viewOperation) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final long[] jArr = new long[1];
        view.post(new Runnable() { // from class: android.view.ViewDebug.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Object[] objArrPre = viewOperation.pre();
                    long jThreadCpuTimeNanos = Debug.threadCpuTimeNanos();
                    viewOperation.run(objArrPre);
                    jArr[0] = Debug.threadCpuTimeNanos() - jThreadCpuTimeNanos;
                    viewOperation.post(objArrPre);
                } finally {
                    countDownLatch.countDown();
                }
            }
        });
        try {
            if (countDownLatch.await(4000L, TimeUnit.MILLISECONDS)) {
                return jArr[0];
            }
            Log.w(View.VIEW_LOG_TAG, "Could not complete the profiling of the view " + view);
            return -1L;
        } catch (InterruptedException unused) {
            Log.w(View.VIEW_LOG_TAG, "Could not complete the profiling of the view " + view);
            Thread.currentThread().interrupt();
            return -1L;
        }
    }

    private static void requestLayout(View view, String str) {
        final View viewFindView = findView(view, str);
        if (viewFindView != null) {
            view.post(new Runnable() { // from class: android.view.ViewDebug.1
                @Override // java.lang.Runnable
                public void run() {
                    viewFindView.requestLayout();
                }
            });
        }
    }

    public static Object resolveId(Context context, int i2) {
        Resources resources = context.getResources();
        if (i2 < 0) {
            return "NO_ID";
        }
        try {
            return resources.getResourceTypeName(i2) + '/' + resources.getResourceEntryName(i2);
        } catch (Resources.NotFoundException unused) {
            return "id/0x" + Integer.toHexString(i2);
        }
    }

    public static void setLayoutParameter(final View view, String str, int i2) throws IllegalAccessException, NoSuchFieldException {
        final ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Field field = layoutParams.getClass().getField(str);
        if (field.getType() == Integer.TYPE) {
            field.set(layoutParams, Integer.valueOf(i2));
            view.post(new Runnable() { // from class: android.view.ViewDebug.9
                @Override // java.lang.Runnable
                public void run() {
                    view.setLayoutParams(layoutParams);
                }
            });
            return;
        }
        throw new RuntimeException("Only integer layout parameters can be set. Field " + str + " is of type " + field.getType().getSimpleName());
    }

    @Deprecated
    public static void startHierarchyTracing(String str, View view) {
    }

    @Deprecated
    public static void startRecyclerTracing(String str, View view) {
    }

    @Deprecated
    public static void stopHierarchyTracing() {
    }

    @Deprecated
    public static void stopRecyclerTracing() {
    }

    @Deprecated
    public static void trace(View view, HierarchyTraceType hierarchyTraceType) {
    }

    @Deprecated
    public static void trace(View view, RecyclerTraceType recyclerTraceType, int... iArr) {
    }

    private static void writeEntry(BufferedWriter bufferedWriter, String str, String str2, String str3, Object obj) throws IOException {
        bufferedWriter.write(str);
        bufferedWriter.write(str2);
        bufferedWriter.write(str3);
        bufferedWriter.write("=");
        writeValue(bufferedWriter, obj);
        bufferedWriter.write(32);
    }

    private static void writeValue(BufferedWriter bufferedWriter, Object obj) {
        if (obj == null) {
            bufferedWriter.write("4,null");
            return;
        }
        try {
            String strReplace = obj.toString().replace("\n", "\\n");
            bufferedWriter.write(String.valueOf(strReplace.length()));
            bufferedWriter.write(",");
            bufferedWriter.write(strReplace);
        } catch (Throwable th) {
            bufferedWriter.write(String.valueOf(11));
            bufferedWriter.write(",");
            bufferedWriter.write("[EXCEPTION]");
            throw th;
        }
    }

    private static void dumpViewProperties(Context context, Object obj, BufferedWriter bufferedWriter, String str) throws IOException {
        if (obj == null) {
            bufferedWriter.write(str + "=4,null ");
            return;
        }
        Class<?> superclass = obj.getClass();
        do {
            exportFields(context, obj, bufferedWriter, superclass, str);
            exportMethods(context, obj, bufferedWriter, superclass, str);
            superclass = superclass.getSuperclass();
        } while (superclass != Object.class);
    }

    private static void profileViewAndChildren(final View view, BufferedWriter bufferedWriter, boolean z2) throws IOException {
        long jProfileViewOperation = (z2 || (view.mPrivateFlags & 2048) != 0) ? profileViewOperation(view, new ViewOperation<Void>() { // from class: android.view.ViewDebug.2
            private void forceLayout(View view2) {
                view2.forceLayout();
                if (view2 instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view2;
                    int childCount = viewGroup.getChildCount();
                    for (int i2 = 0; i2 < childCount; i2++) {
                        forceLayout(viewGroup.getChildAt(i2));
                    }
                }
            }

            @Override // android.view.ViewDebug.ViewOperation
            public void post(Void... voidArr) {
            }

            @Override // android.view.ViewDebug.ViewOperation
            public Void[] pre() {
                forceLayout(view);
                return null;
            }

            @Override // android.view.ViewDebug.ViewOperation
            public void run(Void... voidArr) {
                View view2 = view;
                view2.measure(view2.mOldWidthMeasureSpec, view2.mOldHeightMeasureSpec);
            }
        }) : 0L;
        long jProfileViewOperation2 = (z2 || (view.mPrivateFlags & 8192) != 0) ? profileViewOperation(view, new ViewOperation<Void>() { // from class: android.view.ViewDebug.3
            @Override // android.view.ViewDebug.ViewOperation
            public void post(Void... voidArr) {
            }

            @Override // android.view.ViewDebug.ViewOperation
            public Void[] pre() {
                return null;
            }

            @Override // android.view.ViewDebug.ViewOperation
            public void run(Void... voidArr) {
                View view2 = view;
                view2.layout(view2.mLeft, view2.mTop, view2.mRight, view2.mBottom);
            }
        }) : 0L;
        long jProfileViewOperation3 = (!z2 && view.willNotDraw() && (view.mPrivateFlags & 32) == 0) ? 0L : profileViewOperation(view, new ViewOperation<Object>() { // from class: android.view.ViewDebug.4
            @Override // android.view.ViewDebug.ViewOperation
            public void post(Object... objArr) {
                if (objArr[1] != null) {
                    ((Canvas) objArr[1]).setBitmap(null);
                }
                if (objArr[0] != null) {
                    ((Bitmap) objArr[0]).recycle();
                }
            }

            @Override // android.view.ViewDebug.ViewOperation
            public Object[] pre() {
                View view2 = view;
                DisplayMetrics displayMetrics = (view2 == null || view2.getResources() == null) ? null : view.getResources().getDisplayMetrics();
                Bitmap bitmapCreateBitmap = displayMetrics != null ? Bitmap.createBitmap(displayMetrics, displayMetrics.widthPixels, displayMetrics.heightPixels, Bitmap.Config.RGB_565) : null;
                return new Object[]{bitmapCreateBitmap, bitmapCreateBitmap != null ? new Canvas(bitmapCreateBitmap) : null};
            }

            @Override // android.view.ViewDebug.ViewOperation
            public void run(Object... objArr) {
                if (objArr[1] != null) {
                    view.draw((Canvas) objArr[1]);
                }
            }
        });
        bufferedWriter.write(String.valueOf(jProfileViewOperation));
        bufferedWriter.write(32);
        bufferedWriter.write(String.valueOf(jProfileViewOperation2));
        bufferedWriter.write(32);
        bufferedWriter.write(String.valueOf(jProfileViewOperation3));
        bufferedWriter.newLine();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                profileViewAndChildren(viewGroup.getChildAt(i2), bufferedWriter, false);
            }
        }
    }

    public static void capture(View view, OutputStream outputStream, View view2) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        Throwable th;
        Bitmap bitmapPerformViewCapture = performViewCapture(view2, false);
        if (bitmapPerformViewCapture == null) {
            Log.w(View.VIEW_LOG_TAG, "Failed to create capture bitmap!");
            bitmapPerformViewCapture = Bitmap.createBitmap(view.getResources().getDisplayMetrics(), 1, 1, Bitmap.Config.ARGB_8888);
        }
        try {
            bufferedOutputStream = new BufferedOutputStream(outputStream, 32768);
            try {
                bitmapPerformViewCapture.compress(Bitmap.CompressFormat.PNG, 100, bufferedOutputStream);
                bufferedOutputStream.flush();
                bufferedOutputStream.close();
                bitmapPerformViewCapture.recycle();
            } catch (Throwable th2) {
                th = th2;
                if (bufferedOutputStream != null) {
                    bufferedOutputStream.close();
                }
                bitmapPerformViewCapture.recycle();
                throw th;
            }
        } catch (Throwable th3) {
            bufferedOutputStream = null;
            th = th3;
        }
    }

    public static void outputDisplayList(View view, View view2) {
        view.getViewRootImpl().outputDisplayList(view2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static View findView(ViewGroup viewGroup, String str, int i2) {
        View viewFindHierarchyView;
        View viewFindView;
        if (isRequestedView(viewGroup, str, i2)) {
            return viewGroup;
        }
        int childCount = viewGroup.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = viewGroup.getChildAt(i3);
            if (childAt instanceof ViewGroup) {
                View viewFindView2 = findView((ViewGroup) childAt, str, i2);
                if (viewFindView2 != null) {
                    return viewFindView2;
                }
            } else if (isRequestedView(childAt, str, i2)) {
                return childAt;
            }
            ViewOverlay viewOverlay = childAt.mOverlay;
            if (viewOverlay != null && (viewFindView = findView(viewOverlay.mOverlayViewGroup, str, i2)) != null) {
                return viewFindView;
            }
            if ((childAt instanceof HierarchyHandler) && (viewFindHierarchyView = ((HierarchyHandler) childAt).findHierarchyView(str, i2)) != null) {
                return viewFindHierarchyView;
            }
        }
        return null;
    }
}
