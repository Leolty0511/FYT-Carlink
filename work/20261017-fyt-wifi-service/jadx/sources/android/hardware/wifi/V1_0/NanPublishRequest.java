package android.hardware.wifi.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import com.android.server.wifi.WifiConfigManager;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class NanPublishRequest {
    public boolean autoAcceptDataPathRequests;
    public NanDiscoveryCommonConfig baseConfigs = new NanDiscoveryCommonConfig();
    public int publishType;
    public int txType;

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != NanPublishRequest.class) {
            return false;
        }
        NanPublishRequest other = (NanPublishRequest) otherObject;
        if (HidlSupport.deepEquals(this.baseConfigs, other.baseConfigs) && this.publishType == other.publishType && this.txType == other.txType && this.autoAcceptDataPathRequests == other.autoAcceptDataPathRequests) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(this.baseConfigs)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.publishType))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.txType))), Integer.valueOf(HidlSupport.deepHashCode(Boolean.valueOf(this.autoAcceptDataPathRequests))));
    }

    public final String toString() {
        return "{.baseConfigs = " + this.baseConfigs + ", .publishType = " + NanPublishType.toString(this.publishType) + ", .txType = " + NanTxType.toString(this.txType) + ", .autoAcceptDataPathRequests = " + this.autoAcceptDataPathRequests + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(192L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<NanPublishRequest> readVectorFromParcel(HwParcel parcel) {
        ArrayList<NanPublishRequest> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * WifiConfigManager.SCAN_CACHE_ENTRIES_MAX_SIZE, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            NanPublishRequest _hidl_vec_element = new NanPublishRequest();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * WifiConfigManager.SCAN_CACHE_ENTRIES_MAX_SIZE);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.baseConfigs.readEmbeddedFromParcel(parcel, _hidl_blob, 0 + _hidl_offset);
        this.publishType = _hidl_blob.getInt32(176 + _hidl_offset);
        this.txType = _hidl_blob.getInt32(180 + _hidl_offset);
        this.autoAcceptDataPathRequests = _hidl_blob.getBool(184 + _hidl_offset);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(WifiConfigManager.SCAN_CACHE_ENTRIES_MAX_SIZE);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<NanPublishRequest> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * WifiConfigManager.SCAN_CACHE_ENTRIES_MAX_SIZE);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * WifiConfigManager.SCAN_CACHE_ENTRIES_MAX_SIZE);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        this.baseConfigs.writeEmbeddedToBlob(_hidl_blob, 0 + _hidl_offset);
        _hidl_blob.putInt32(176 + _hidl_offset, this.publishType);
        _hidl_blob.putInt32(180 + _hidl_offset, this.txType);
        _hidl_blob.putBool(184 + _hidl_offset, this.autoAcceptDataPathRequests);
    }
}
