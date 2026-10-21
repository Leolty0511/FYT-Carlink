package android.hardware.wifi.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class NanEnableRequest {
    public byte hopCountMax;
    public boolean[] operateInBand = new boolean[2];
    public NanConfigRequest configParams = new NanConfigRequest();
    public NanDebugConfig debugConfigs = new NanDebugConfig();

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != NanEnableRequest.class) {
            return false;
        }
        NanEnableRequest other = (NanEnableRequest) otherObject;
        if (HidlSupport.deepEquals(this.operateInBand, other.operateInBand) && this.hopCountMax == other.hopCountMax && HidlSupport.deepEquals(this.configParams, other.configParams) && HidlSupport.deepEquals(this.debugConfigs, other.debugConfigs)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(this.operateInBand)), Integer.valueOf(HidlSupport.deepHashCode(Byte.valueOf(this.hopCountMax))), Integer.valueOf(HidlSupport.deepHashCode(this.configParams)), Integer.valueOf(HidlSupport.deepHashCode(this.debugConfigs)));
    }

    public final String toString() {
        return "{.operateInBand = " + Arrays.toString(this.operateInBand) + ", .hopCountMax = " + ((int) this.hopCountMax) + ", .configParams = " + this.configParams + ", .debugConfigs = " + this.debugConfigs + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(80L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<NanEnableRequest> readVectorFromParcel(HwParcel parcel) {
        ArrayList<NanEnableRequest> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 80, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            NanEnableRequest _hidl_vec_element = new NanEnableRequest();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 80);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        long _hidl_array_offset_0 = 0 + _hidl_offset;
        _hidl_blob.copyToBoolArray(_hidl_array_offset_0, this.operateInBand, 2);
        this.hopCountMax = _hidl_blob.getInt8(2 + _hidl_offset);
        this.configParams.readEmbeddedFromParcel(parcel, _hidl_blob, 4 + _hidl_offset);
        this.debugConfigs.readEmbeddedFromParcel(parcel, _hidl_blob, 36 + _hidl_offset);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(80);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<NanEnableRequest> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 80);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 80);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        long _hidl_array_offset_0 = 0 + _hidl_offset;
        boolean[] _hidl_array_item_0 = this.operateInBand;
        if (_hidl_array_item_0 == null || _hidl_array_item_0.length != 2) {
            throw new IllegalArgumentException("Array element is not of the expected length");
        }
        _hidl_blob.putBoolArray(_hidl_array_offset_0, _hidl_array_item_0);
        _hidl_blob.putInt8(2 + _hidl_offset, this.hopCountMax);
        this.configParams.writeEmbeddedToBlob(_hidl_blob, 4 + _hidl_offset);
        this.debugConfigs.writeEmbeddedToBlob(_hidl_blob, 36 + _hidl_offset);
    }
}
