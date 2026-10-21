package android.hardware.cas.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class HidlCasPluginDescriptor {
    public int caSystemId;
    public String name = new String();

    public static final ArrayList<HidlCasPluginDescriptor> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<HidlCasPluginDescriptor> arrayList = new ArrayList<>();
        HwBlob buffer = hwParcel.readBuffer(16L);
        int int32 = buffer.getInt32(8L);
        HwBlob embeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 24, buffer.handle(), 0L, true);
        arrayList.clear();
        for (int i2 = 0; i2 < int32; i2++) {
            HidlCasPluginDescriptor hidlCasPluginDescriptor = new HidlCasPluginDescriptor();
            hidlCasPluginDescriptor.readEmbeddedFromParcel(hwParcel, embeddedBuffer, i2 * 24);
            arrayList.add(hidlCasPluginDescriptor);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<HidlCasPluginDescriptor> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 24);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.get(i2).writeEmbeddedToBlob(hwBlob2, i2 * 24);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != HidlCasPluginDescriptor.class) {
            return false;
        }
        HidlCasPluginDescriptor hidlCasPluginDescriptor = (HidlCasPluginDescriptor) obj;
        return this.caSystemId == hidlCasPluginDescriptor.caSystemId && HidlSupport.deepEquals(this.name, hidlCasPluginDescriptor.name);
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.caSystemId))), Integer.valueOf(HidlSupport.deepHashCode(this.name)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j2) {
        this.caSystemId = hwBlob.getInt32(j2 + 0);
        long j3 = j2 + 8;
        String string = hwBlob.getString(j3);
        this.name = string;
        hwParcel.readEmbeddedBuffer(string.getBytes().length + 1, hwBlob.handle(), j3 + 0, false);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(24L), 0L);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{.caSystemId = ");
        sb.append(this.caSystemId);
        sb.append(", .name = ");
        return android.accessibilityservice.c.n(sb, this.name, "}");
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j2) {
        hwBlob.putInt32(0 + j2, this.caSystemId);
        hwBlob.putString(j2 + 8, this.name);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(24);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
