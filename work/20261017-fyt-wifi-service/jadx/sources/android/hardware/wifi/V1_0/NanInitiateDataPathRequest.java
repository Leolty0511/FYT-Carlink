package android.hardware.wifi.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class NanInitiateDataPathRequest {
    public int channel;
    public int channelRequestType;
    public int peerId;
    public byte[] peerDiscMacAddr = new byte[6];
    public String ifaceName = new String();
    public NanDataPathSecurityConfig securityConfig = new NanDataPathSecurityConfig();
    public ArrayList<Byte> appInfo = new ArrayList<>();
    public ArrayList<Byte> serviceNameOutOfBand = new ArrayList<>();

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != NanInitiateDataPathRequest.class) {
            return false;
        }
        NanInitiateDataPathRequest other = (NanInitiateDataPathRequest) otherObject;
        if (this.peerId == other.peerId && HidlSupport.deepEquals(this.peerDiscMacAddr, other.peerDiscMacAddr) && this.channelRequestType == other.channelRequestType && this.channel == other.channel && HidlSupport.deepEquals(this.ifaceName, other.ifaceName) && HidlSupport.deepEquals(this.securityConfig, other.securityConfig) && HidlSupport.deepEquals(this.appInfo, other.appInfo) && HidlSupport.deepEquals(this.serviceNameOutOfBand, other.serviceNameOutOfBand)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.peerId))), Integer.valueOf(HidlSupport.deepHashCode(this.peerDiscMacAddr)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.channelRequestType))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.channel))), Integer.valueOf(HidlSupport.deepHashCode(this.ifaceName)), Integer.valueOf(HidlSupport.deepHashCode(this.securityConfig)), Integer.valueOf(HidlSupport.deepHashCode(this.appInfo)), Integer.valueOf(HidlSupport.deepHashCode(this.serviceNameOutOfBand)));
    }

    public final String toString() {
        return "{.peerId = " + this.peerId + ", .peerDiscMacAddr = " + Arrays.toString(this.peerDiscMacAddr) + ", .channelRequestType = " + NanDataPathChannelCfg.toString(this.channelRequestType) + ", .channel = " + this.channel + ", .ifaceName = " + this.ifaceName + ", .securityConfig = " + this.securityConfig + ", .appInfo = " + this.appInfo + ", .serviceNameOutOfBand = " + this.serviceNameOutOfBand + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(128L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<NanInitiateDataPathRequest> readVectorFromParcel(HwParcel parcel) {
        ArrayList<NanInitiateDataPathRequest> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 128, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            NanInitiateDataPathRequest _hidl_vec_element = new NanInitiateDataPathRequest();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 128);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.peerId = _hidl_blob.getInt32(_hidl_offset + 0);
        long _hidl_array_offset_0 = _hidl_offset + 4;
        _hidl_blob.copyToInt8Array(_hidl_array_offset_0, this.peerDiscMacAddr, 6);
        this.channelRequestType = _hidl_blob.getInt32(_hidl_offset + 12);
        this.channel = _hidl_blob.getInt32(_hidl_offset + 16);
        this.ifaceName = _hidl_blob.getString(_hidl_offset + 24);
        parcel.readEmbeddedBuffer(this.ifaceName.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 24 + 0, false);
        this.securityConfig.readEmbeddedFromParcel(parcel, _hidl_blob, _hidl_offset + 40);
        int _hidl_vec_size = _hidl_blob.getInt32(_hidl_offset + 96 + 8);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 1, _hidl_blob.handle(), _hidl_offset + 96 + 0, true);
        this.appInfo.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            byte _hidl_vec_element = childBlob.getInt8(_hidl_index_0 * 1);
            this.appInfo.add(Byte.valueOf(_hidl_vec_element));
        }
        int _hidl_vec_size2 = _hidl_blob.getInt32(_hidl_offset + 112 + 8);
        HwBlob childBlob2 = parcel.readEmbeddedBuffer(_hidl_vec_size2 * 1, _hidl_blob.handle(), _hidl_offset + 112 + 0, true);
        this.serviceNameOutOfBand.clear();
        for (int _hidl_index_1 = 0; _hidl_index_1 < _hidl_vec_size2; _hidl_index_1++) {
            byte _hidl_vec_element2 = childBlob2.getInt8(_hidl_index_1 * 1);
            this.serviceNameOutOfBand.add(Byte.valueOf(_hidl_vec_element2));
        }
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(128);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<NanInitiateDataPathRequest> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 128);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 128);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        _hidl_blob.putInt32(_hidl_offset + 0, this.peerId);
        long _hidl_array_offset_0 = _hidl_offset + 4;
        byte[] _hidl_array_item_0 = this.peerDiscMacAddr;
        if (_hidl_array_item_0 == null || _hidl_array_item_0.length != 6) {
            throw new IllegalArgumentException("Array element is not of the expected length");
        }
        _hidl_blob.putInt8Array(_hidl_array_offset_0, _hidl_array_item_0);
        _hidl_blob.putInt32(_hidl_offset + 12, this.channelRequestType);
        _hidl_blob.putInt32(_hidl_offset + 16, this.channel);
        _hidl_blob.putString(_hidl_offset + 24, this.ifaceName);
        this.securityConfig.writeEmbeddedToBlob(_hidl_blob, _hidl_offset + 40);
        int _hidl_vec_size = this.appInfo.size();
        _hidl_blob.putInt32(_hidl_offset + 96 + 8, _hidl_vec_size);
        _hidl_blob.putBool(_hidl_offset + 96 + 12, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 1);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            childBlob.putInt8(_hidl_index_0 * 1, this.appInfo.get(_hidl_index_0).byteValue());
        }
        _hidl_blob.putBlob(_hidl_offset + 96 + 0, childBlob);
        int _hidl_vec_size2 = this.serviceNameOutOfBand.size();
        _hidl_blob.putInt32(_hidl_offset + 112 + 8, _hidl_vec_size2);
        _hidl_blob.putBool(_hidl_offset + 112 + 12, false);
        HwBlob childBlob2 = new HwBlob(_hidl_vec_size2 * 1);
        for (int _hidl_index_1 = 0; _hidl_index_1 < _hidl_vec_size2; _hidl_index_1++) {
            childBlob2.putInt8(_hidl_index_1 * 1, this.serviceNameOutOfBand.get(_hidl_index_1).byteValue());
        }
        _hidl_blob.putBlob(_hidl_offset + 112 + 0, childBlob2);
    }
}
