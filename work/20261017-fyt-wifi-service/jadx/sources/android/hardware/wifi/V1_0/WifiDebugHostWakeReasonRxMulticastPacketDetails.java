package android.hardware.wifi.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class WifiDebugHostWakeReasonRxMulticastPacketDetails {
    public int ipv4RxMulticastAddrCnt;
    public int ipv6RxMulticastAddrCnt;
    public int otherRxMulticastAddrCnt;

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != WifiDebugHostWakeReasonRxMulticastPacketDetails.class) {
            return false;
        }
        WifiDebugHostWakeReasonRxMulticastPacketDetails other = (WifiDebugHostWakeReasonRxMulticastPacketDetails) otherObject;
        if (this.ipv4RxMulticastAddrCnt == other.ipv4RxMulticastAddrCnt && this.ipv6RxMulticastAddrCnt == other.ipv6RxMulticastAddrCnt && this.otherRxMulticastAddrCnt == other.otherRxMulticastAddrCnt) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.ipv4RxMulticastAddrCnt))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.ipv6RxMulticastAddrCnt))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.otherRxMulticastAddrCnt))));
    }

    public final String toString() {
        return "{.ipv4RxMulticastAddrCnt = " + this.ipv4RxMulticastAddrCnt + ", .ipv6RxMulticastAddrCnt = " + this.ipv6RxMulticastAddrCnt + ", .otherRxMulticastAddrCnt = " + this.otherRxMulticastAddrCnt + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(12L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<WifiDebugHostWakeReasonRxMulticastPacketDetails> readVectorFromParcel(HwParcel parcel) {
        ArrayList<WifiDebugHostWakeReasonRxMulticastPacketDetails> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 12, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            WifiDebugHostWakeReasonRxMulticastPacketDetails _hidl_vec_element = new WifiDebugHostWakeReasonRxMulticastPacketDetails();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 12);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.ipv4RxMulticastAddrCnt = _hidl_blob.getInt32(0 + _hidl_offset);
        this.ipv6RxMulticastAddrCnt = _hidl_blob.getInt32(4 + _hidl_offset);
        this.otherRxMulticastAddrCnt = _hidl_blob.getInt32(8 + _hidl_offset);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(12);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<WifiDebugHostWakeReasonRxMulticastPacketDetails> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 12);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 12);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        _hidl_blob.putInt32(0 + _hidl_offset, this.ipv4RxMulticastAddrCnt);
        _hidl_blob.putInt32(4 + _hidl_offset, this.ipv6RxMulticastAddrCnt);
        _hidl_blob.putInt32(8 + _hidl_offset, this.otherRxMulticastAddrCnt);
    }
}
