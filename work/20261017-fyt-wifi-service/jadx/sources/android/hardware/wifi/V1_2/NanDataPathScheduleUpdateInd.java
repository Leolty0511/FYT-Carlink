package android.hardware.wifi.V1_2;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class NanDataPathScheduleUpdateInd {
    public byte[] peerDiscoveryAddress = new byte[6];
    public ArrayList<NanDataPathChannelInfo> channelInfo = new ArrayList<>();
    public ArrayList<Integer> ndpInstanceIds = new ArrayList<>();

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != NanDataPathScheduleUpdateInd.class) {
            return false;
        }
        NanDataPathScheduleUpdateInd other = (NanDataPathScheduleUpdateInd) otherObject;
        if (HidlSupport.deepEquals(this.peerDiscoveryAddress, other.peerDiscoveryAddress) && HidlSupport.deepEquals(this.channelInfo, other.channelInfo) && HidlSupport.deepEquals(this.ndpInstanceIds, other.ndpInstanceIds)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(this.peerDiscoveryAddress)), Integer.valueOf(HidlSupport.deepHashCode(this.channelInfo)), Integer.valueOf(HidlSupport.deepHashCode(this.ndpInstanceIds)));
    }

    public final String toString() {
        return "{.peerDiscoveryAddress = " + Arrays.toString(this.peerDiscoveryAddress) + ", .channelInfo = " + this.channelInfo + ", .ndpInstanceIds = " + this.ndpInstanceIds + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(40L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<NanDataPathScheduleUpdateInd> readVectorFromParcel(HwParcel parcel) {
        ArrayList<NanDataPathScheduleUpdateInd> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 40, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            NanDataPathScheduleUpdateInd _hidl_vec_element = new NanDataPathScheduleUpdateInd();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 40);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        long _hidl_array_offset_0 = _hidl_offset + 0;
        _hidl_blob.copyToInt8Array(_hidl_array_offset_0, this.peerDiscoveryAddress, 6);
        int _hidl_vec_size = _hidl_blob.getInt32(_hidl_offset + 8 + 8);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 12, _hidl_blob.handle(), _hidl_offset + 8 + 0, true);
        this.channelInfo.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            NanDataPathChannelInfo _hidl_vec_element = new NanDataPathChannelInfo();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 12);
            this.channelInfo.add(_hidl_vec_element);
        }
        int _hidl_vec_size2 = _hidl_blob.getInt32(_hidl_offset + 24 + 8);
        HwBlob childBlob2 = parcel.readEmbeddedBuffer(_hidl_vec_size2 * 4, _hidl_blob.handle(), _hidl_offset + 24 + 0, true);
        this.ndpInstanceIds.clear();
        for (int _hidl_index_1 = 0; _hidl_index_1 < _hidl_vec_size2; _hidl_index_1++) {
            this.ndpInstanceIds.add(Integer.valueOf(childBlob2.getInt32(_hidl_index_1 * 4)));
        }
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(40);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<NanDataPathScheduleUpdateInd> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 40);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 40);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        long _hidl_array_offset_0 = _hidl_offset + 0;
        byte[] _hidl_array_item_0 = this.peerDiscoveryAddress;
        if (_hidl_array_item_0 == null || _hidl_array_item_0.length != 6) {
            throw new IllegalArgumentException("Array element is not of the expected length");
        }
        _hidl_blob.putInt8Array(_hidl_array_offset_0, _hidl_array_item_0);
        int _hidl_vec_size = this.channelInfo.size();
        _hidl_blob.putInt32(_hidl_offset + 8 + 8, _hidl_vec_size);
        _hidl_blob.putBool(_hidl_offset + 8 + 12, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 12);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            this.channelInfo.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 12);
        }
        _hidl_blob.putBlob(_hidl_offset + 8 + 0, childBlob);
        int _hidl_vec_size2 = this.ndpInstanceIds.size();
        _hidl_blob.putInt32(_hidl_offset + 24 + 8, _hidl_vec_size2);
        _hidl_blob.putBool(_hidl_offset + 24 + 12, false);
        HwBlob childBlob2 = new HwBlob(_hidl_vec_size2 * 4);
        for (int _hidl_index_1 = 0; _hidl_index_1 < _hidl_vec_size2; _hidl_index_1++) {
            childBlob2.putInt32(_hidl_index_1 * 4, this.ndpInstanceIds.get(_hidl_index_1).intValue());
        }
        _hidl_blob.putBlob(_hidl_offset + 24 + 0, childBlob2);
    }
}
