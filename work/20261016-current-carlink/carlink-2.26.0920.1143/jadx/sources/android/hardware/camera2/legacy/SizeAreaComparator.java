package android.hardware.camera2.legacy;

import android.hardware.Camera;
import com.android.internal.util.Preconditions;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SizeAreaComparator implements Comparator<Camera.Size> {
    public static Camera.Size findLargestByArea(List<Camera.Size> list) {
        Preconditions.checkNotNull(list, "sizes must not be null");
        return (Camera.Size) Collections.max(list, new SizeAreaComparator());
    }

    @Override // java.util.Comparator
    public int compare(Camera.Size size, Camera.Size size2) {
        Preconditions.checkNotNull(size, "size must not be null");
        Preconditions.checkNotNull(size2, "size2 must not be null");
        if (size.equals(size2)) {
            return 0;
        }
        long j2 = size.width;
        long j3 = size2.width;
        long j4 = ((long) size.height) * j2;
        long j5 = ((long) size2.height) * j3;
        if (j4 == j5) {
            return j2 > j3 ? 1 : -1;
        }
        return j4 > j5 ? 1 : -1;
    }
}
