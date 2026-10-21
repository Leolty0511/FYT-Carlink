package android.content.pm;

import com.android.internal.util.ArrayUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class PackageBackwardCompatibility {
    private static final String ANDROID_TEST_MOCK = "android.test.mock";
    private static final String ANDROID_TEST_RUNNER = "android.test.runner";

    public static void modifySharedLibraries(PackageParser.Package r6) {
        ArrayList<String> arrayList = r6.usesLibraries;
        ArrayList<String> arrayList2 = r6.usesOptionalLibraries;
        ArrayList<String> arrayListOrgApacheHttpLegacy = orgApacheHttpLegacy(arrayList);
        ArrayList<String> arrayListOrgApacheHttpLegacy2 = orgApacheHttpLegacy(arrayList2);
        boolean z2 = ArrayUtils.contains(arrayListOrgApacheHttpLegacy, ANDROID_TEST_MOCK) || ArrayUtils.contains(arrayListOrgApacheHttpLegacy2, ANDROID_TEST_MOCK);
        if (ArrayUtils.contains(arrayListOrgApacheHttpLegacy, ANDROID_TEST_RUNNER) && !z2) {
            arrayListOrgApacheHttpLegacy.add(ANDROID_TEST_MOCK);
        }
        if (ArrayUtils.contains(arrayListOrgApacheHttpLegacy2, ANDROID_TEST_RUNNER) && !z2) {
            arrayListOrgApacheHttpLegacy2.add(ANDROID_TEST_MOCK);
        }
        r6.usesLibraries = arrayListOrgApacheHttpLegacy;
        r6.usesOptionalLibraries = arrayListOrgApacheHttpLegacy2;
    }

    private static ArrayList<String> orgApacheHttpLegacy(ArrayList<String> arrayList) {
        return ArrayUtils.remove(arrayList, "org.apache.http.legacy");
    }
}
