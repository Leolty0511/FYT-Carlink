package android.hardware.wifi.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class WifiRateInfo {
    public int bitRateInKbps;
    public int bw;
    public int nss;
    public int preamble;
    public byte rateMcsIdx;

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != WifiRateInfo.class) {
            return false;
        }
        WifiRateInfo other = (WifiRateInfo) otherObject;
        if (this.preamble == other.preamble && this.nss == other.nss && this.bw == other.bw && this.rateMcsIdx == other.rateMcsIdx && this.bitRateInKbps == other.bitRateInKbps) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.preamble))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.nss))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.bw))), Integer.valueOf(HidlSupport.deepHashCode(Byte.valueOf(this.rateMcsIdx))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.bitRateInKbps))));
    }

    public final String toString() {
        return "{.preamble = " + WifiRatePreamble.toString(this.preamble) + ", .nss = " + WifiRateNss.toString(this.nss) + ", .bw = " + WifiChannelWidthInMhz.toString(this.bw) + ", .rateMcsIdx = " + ((int) this.rateMcsIdx) + ", .bitRateInKbps = " + this.bitRateInKbps + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(20L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<WifiRateInfo> readVectorFromParcel(HwParcel parcel) {
        ArrayList<WifiRateInfo> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 20, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            WifiRateInfo _hidl_vec_element = new WifiRateInfo();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 20);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.preamble = _hidl_blob.getInt32(0 + _hidl_offset);
        this.nss = _hidl_blob.getInt32(4 + _hidl_offset);
        this.bw = _hidl_blob.getInt32(8 + _hidl_offset);
        this.rateMcsIdx = _hidl_blob.getInt8(12 + _hidl_offset);
        this.bitRateInKbps = _hidl_blob.getInt32(16 + _hidl_offset);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(20);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<WifiRateInfo> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 20);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 20);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        _hidl_blob.putInt32(0 + _hidl_offset, this.preamble);
        _hidl_blob.putInt32(4 + _hidl_offset, this.nss);
        _hidl_blob.putInt32(8 + _hidl_offset, this.bw);
        _hidl_blob.putInt8(12 + _hidl_offset, this.rateMcsIdx);
        _hidl_blob.putInt32(16 + _hidl_offset, this.bitRateInKbps);
    }
}
