package android.test;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import junit.framework.TestCase;

/* JADX INFO: loaded from: classes.dex */
public class AndroidTestCase extends TestCase {
    public Context mContext;
    private Context mTestContext;

    public void assertActivityRequiresPermission(String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setClassName(str, str2);
        intent.addFlags(268435456);
        try {
            getContext().startActivity(intent);
            TestCase.fail("expected security exception for " + str3);
        } catch (SecurityException e2) {
            TestCase.assertNotNull("security exception's error message.", e2.getMessage());
            TestCase.assertTrue("error message should contain " + str3 + ".", e2.getMessage().contains(str3));
        }
    }

    public void assertReadingContentUriRequiresPermission(Uri uri, String str) {
        try {
            getContext().getContentResolver().query(uri, null, null, null, null);
            TestCase.fail("expected SecurityException requiring " + str);
        } catch (SecurityException e2) {
            TestCase.assertNotNull("security exception's error message.", e2.getMessage());
            TestCase.assertTrue("error message should contain " + str + ".", e2.getMessage().contains(str));
        }
    }

    public void assertWritingContentUriRequiresPermission(Uri uri, String str) {
        try {
            getContext().getContentResolver().insert(uri, new ContentValues());
            TestCase.fail("expected SecurityException requiring " + str);
        } catch (SecurityException e2) {
            TestCase.assertNotNull("security exception's error message.", e2.getMessage());
            TestCase.assertTrue("error message should contain \"" + str + "\". Got: \"" + e2.getMessage() + "\".", e2.getMessage().contains(str));
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    public Context getTestContext() {
        return this.mTestContext;
    }

    public void scrubClass(Class<?> cls) {
        for (Field field : getClass().getDeclaredFields()) {
            if (!field.getType().isPrimitive() && !Modifier.isStatic(field.getModifiers())) {
                try {
                    field.setAccessible(true);
                    field.set(this, null);
                } catch (Exception unused) {
                    Log.d("TestCase", "Error: Could not nullify field!");
                }
                if (field.get(this) != null) {
                    Log.d("TestCase", "Error: Could not nullify field!");
                }
            }
        }
    }

    public void setContext(Context context) {
        this.mContext = context;
    }

    public void setTestContext(Context context) {
        this.mTestContext = context;
    }

    public void setUp() {
        super.setUp();
    }

    public void tearDown() {
        super.tearDown();
    }

    public void testAndroidTestCaseSetupProperly() {
        TestCase.assertNotNull("Context is null. setContext should be called before tests are run", this.mContext);
    }
}
