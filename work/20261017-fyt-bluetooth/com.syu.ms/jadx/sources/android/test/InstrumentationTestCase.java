package android.test;

import android.app.Activity;
import android.app.Instrumentation;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import junit.framework.TestCase;

/* JADX INFO: loaded from: classes.dex */
public class InstrumentationTestCase extends TestCase {
    private Instrumentation mInstrumentation;

    private void runMethod(Method method, int i2) throws Throwable {
        runMethod(method, i2, false);
    }

    public Instrumentation getInstrumentation() {
        return this.mInstrumentation;
    }

    @Deprecated
    public void injectInsrumentation(Instrumentation instrumentation) {
        injectInstrumentation(instrumentation);
    }

    public void injectInstrumentation(Instrumentation instrumentation) {
        this.mInstrumentation = instrumentation;
    }

    public final <T extends Activity> T launchActivity(String str, Class<T> cls, Bundle bundle) {
        Intent intent = new Intent(Intent.ACTION_MAIN);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        return (T) launchActivityWithIntent(str, cls, intent);
    }

    public final <T extends Activity> T launchActivityWithIntent(String str, Class<T> cls, Intent intent) {
        intent.setClassName(str, cls.getName());
        intent.addFlags(268435456);
        T t2 = (T) getInstrumentation().startActivitySync(intent);
        getInstrumentation().waitForIdleSync();
        return t2;
    }

    public void runTest() throws Throwable {
        final boolean z2;
        final int iNumIterations;
        String name = getName();
        TestCase.assertNotNull(name);
        Method method = null;
        try {
            method = getClass().getMethod(name, null);
        } catch (NoSuchMethodException unused) {
            TestCase.fail("Method \"" + name + "\" not found");
        }
        final Method method2 = method;
        if (!Modifier.isPublic(method2.getModifiers())) {
            TestCase.fail("Method \"" + name + "\" should be public");
        }
        if (method2.isAnnotationPresent(FlakyTest.class)) {
            iNumIterations = ((FlakyTest) method2.getAnnotation(FlakyTest.class)).tolerance();
            z2 = false;
        } else if (method2.isAnnotationPresent(RepetitiveTest.class)) {
            iNumIterations = ((RepetitiveTest) method2.getAnnotation(RepetitiveTest.class)).numIterations();
            z2 = true;
        } else {
            z2 = false;
            iNumIterations = 1;
        }
        if (!method2.isAnnotationPresent(UiThreadTest.class)) {
            runMethod(method2, iNumIterations, z2);
            return;
        }
        final Throwable[] thArr = new Throwable[1];
        getInstrumentation().runOnMainSync(new Runnable() { // from class: android.test.InstrumentationTestCase.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    InstrumentationTestCase.this.runMethod(method2, iNumIterations, z2);
                } catch (Throwable th) {
                    thArr[0] = th;
                }
            }
        });
        if (thArr[0] != null) {
            throw thArr[0];
        }
    }

    public void runTestOnUiThread(final Runnable runnable) throws Throwable {
        final Throwable[] thArr = new Throwable[1];
        getInstrumentation().runOnMainSync(new Runnable() { // from class: android.test.InstrumentationTestCase.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    runnable.run();
                } catch (Throwable th) {
                    thArr[0] = th;
                }
            }
        });
        if (thArr[0] != null) {
            throw thArr[0];
        }
    }

    public void sendKeys(String str) {
        int i2;
        String[] strArrSplit = str.split(" ");
        Instrumentation instrumentation = getInstrumentation();
        for (String strSubstring : strArrSplit) {
            int iIndexOf = strSubstring.indexOf(42);
            if (iIndexOf == -1) {
                i2 = 1;
            } else {
                try {
                    i2 = Integer.parseInt(strSubstring.substring(0, iIndexOf));
                } catch (NumberFormatException unused) {
                    Log.w("ActivityTestCase", "Invalid repeat count: " + strSubstring);
                }
            }
            if (iIndexOf != -1) {
                strSubstring = strSubstring.substring(iIndexOf + 1);
            }
            for (int i3 = 0; i3 < i2; i3++) {
                try {
                    try {
                        instrumentation.sendKeyDownUpSync(KeyEvent.class.getField("KEYCODE_" + strSubstring).getInt(null));
                    } catch (SecurityException unused2) {
                    }
                } catch (IllegalAccessException unused3) {
                    Log.w("ActivityTestCase", "Unknown keycode: KEYCODE_" + strSubstring);
                } catch (NoSuchFieldException unused4) {
                    Log.w("ActivityTestCase", "Unknown keycode: KEYCODE_" + strSubstring);
                }
            }
        }
        instrumentation.waitForIdleSync();
    }

    public void sendRepeatedKeys(int... iArr) {
        int length = iArr.length;
        if ((length & 1) == 1) {
            throw new IllegalArgumentException("The size of the keys array must be a multiple of 2");
        }
        Instrumentation instrumentation = getInstrumentation();
        for (int i2 = 0; i2 < length; i2 += 2) {
            int i3 = iArr[i2];
            int i4 = iArr[i2 + 1];
            for (int i5 = 0; i5 < i3; i5++) {
                try {
                    instrumentation.sendKeyDownUpSync(i4);
                } catch (SecurityException unused) {
                }
            }
        }
        instrumentation.waitForIdleSync();
    }

    public void tearDown() {
        Runtime.getRuntime().gc();
        Runtime.getRuntime().runFinalization();
        Runtime.getRuntime().gc();
        super.tearDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runMethod(Method method, int i2, boolean z2) throws Throwable {
        Throwable th;
        Bundle bundle;
        int i3 = 0;
        while (true) {
            th = null;
            Throwable th2 = null;
            try {
                try {
                    method.invoke(this, null);
                    i3++;
                    if (z2) {
                        bundle = new Bundle();
                        bundle.putInt("currentiterations", i3);
                        getInstrumentation().sendStatus(2, bundle);
                        th = th2;
                    }
                } catch (IllegalAccessException e2) {
                    e2.fillInStackTrace();
                    i3++;
                    th = e2;
                    if (z2) {
                        bundle = new Bundle();
                        th2 = e2;
                    }
                } catch (InvocationTargetException e3) {
                    e3.fillInStackTrace();
                    Throwable targetException = e3.getTargetException();
                    i3++;
                    th = targetException;
                    if (z2) {
                        bundle = new Bundle();
                        th2 = targetException;
                    }
                }
                if (i3 >= i2 || (!z2 && th == null)) {
                    break;
                }
            } catch (Throwable th3) {
                int i4 = i3 + 1;
                if (z2) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("currentiterations", i4);
                    getInstrumentation().sendStatus(2, bundle2);
                }
                throw th3;
            }
        }
        if (th != null) {
            throw th;
        }
    }

    public void sendKeys(int... iArr) {
        Instrumentation instrumentation = getInstrumentation();
        for (int i2 : iArr) {
            try {
                instrumentation.sendKeyDownUpSync(i2);
            } catch (SecurityException unused) {
            }
        }
        instrumentation.waitForIdleSync();
    }
}
