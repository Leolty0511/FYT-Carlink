package android.media.midi;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class MidiDeviceStatus implements Parcelable {
    public static final Parcelable.Creator<MidiDeviceStatus> CREATOR = new Parcelable.Creator<MidiDeviceStatus>() { // from class: android.media.midi.MidiDeviceStatus.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MidiDeviceStatus createFromParcel(Parcel parcel) {
            return new MidiDeviceStatus((MidiDeviceInfo) parcel.readParcelable(MidiDeviceInfo.class.getClassLoader()), parcel.createBooleanArray(), parcel.createIntArray());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MidiDeviceStatus[] newArray(int i2) {
            return new MidiDeviceStatus[i2];
        }
    };
    private static final String TAG = "MidiDeviceStatus";
    private final MidiDeviceInfo mDeviceInfo;
    private final boolean[] mInputPortOpen;
    private final int[] mOutputPortOpenCount;

    public MidiDeviceStatus(MidiDeviceInfo midiDeviceInfo, boolean[] zArr, int[] iArr) {
        this.mDeviceInfo = midiDeviceInfo;
        boolean[] zArr2 = new boolean[zArr.length];
        this.mInputPortOpen = zArr2;
        System.arraycopy(zArr, 0, zArr2, 0, zArr.length);
        int[] iArr2 = new int[iArr.length];
        this.mOutputPortOpenCount = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public MidiDeviceInfo getDeviceInfo() {
        return this.mDeviceInfo;
    }

    public int getOutputPortOpenCount(int i2) {
        return this.mOutputPortOpenCount[i2];
    }

    public boolean isInputPortOpen(int i2) {
        return this.mInputPortOpen[i2];
    }

    public String toString() {
        int inputPortCount = this.mDeviceInfo.getInputPortCount();
        int outputPortCount = this.mDeviceInfo.getOutputPortCount();
        StringBuilder sb = new StringBuilder("mInputPortOpen=[");
        for (int i2 = 0; i2 < inputPortCount; i2++) {
            sb.append(this.mInputPortOpen[i2]);
            if (i2 < inputPortCount - 1) {
                sb.append(",");
            }
        }
        sb.append("] mOutputPortOpenCount=[");
        for (int i3 = 0; i3 < outputPortCount; i3++) {
            sb.append(this.mOutputPortOpenCount[i3]);
            if (i3 < outputPortCount - 1) {
                sb.append(",");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mDeviceInfo, i2);
        parcel.writeBooleanArray(this.mInputPortOpen);
        parcel.writeIntArray(this.mOutputPortOpenCount);
    }

    public MidiDeviceStatus(MidiDeviceInfo midiDeviceInfo) {
        this.mDeviceInfo = midiDeviceInfo;
        this.mInputPortOpen = new boolean[midiDeviceInfo.getInputPortCount()];
        this.mOutputPortOpenCount = new int[midiDeviceInfo.getOutputPortCount()];
    }
}
