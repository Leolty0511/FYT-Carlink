package android.hardware.camera2.legacy;

import android.hardware.camera2.CaptureRequest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BurstHolder {
    private static final String TAG = "BurstHolder";
    private final boolean mRepeating;
    private final ArrayList<RequestHolder.Builder> mRequestBuilders = new ArrayList<>();
    private final int mRequestId;

    public BurstHolder(int i2, boolean z2, CaptureRequest[] captureRequestArr, Collection<Long> collection) {
        int i3 = 0;
        for (CaptureRequest captureRequest : captureRequestArr) {
            this.mRequestBuilders.add(new RequestHolder.Builder(i2, i3, captureRequest, z2, collection));
            i3++;
        }
        this.mRepeating = z2;
        this.mRequestId = i2;
    }

    public int getNumberOfRequests() {
        return this.mRequestBuilders.size();
    }

    public int getRequestId() {
        return this.mRequestId;
    }

    public boolean isRepeating() {
        return this.mRepeating;
    }

    public List<RequestHolder> produceRequestHolders(long j2) {
        ArrayList arrayList = new ArrayList();
        Iterator<RequestHolder.Builder> it = this.mRequestBuilders.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            arrayList.add(it.next().build(((long) i2) + j2));
            i2++;
        }
        return arrayList;
    }
}
