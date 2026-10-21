package android.media;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class AudioRecordingConfiguration implements Parcelable {
    private final AudioFormat mClientFormat;
    private final String mClientPackageName;
    private final int mClientSource;
    private final int mClientUid;
    private final AudioFormat mDeviceFormat;
    private final int mPatchHandle;
    private final int mSessionId;
    private static final String TAG = new String("AudioRecordingConfiguration");
    public static final Parcelable.Creator<AudioRecordingConfiguration> CREATOR = new Parcelable.Creator<AudioRecordingConfiguration>() { // from class: android.media.AudioRecordingConfiguration.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AudioRecordingConfiguration createFromParcel(Parcel parcel) {
            return new AudioRecordingConfiguration(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AudioRecordingConfiguration[] newArray(int i2) {
            return new AudioRecordingConfiguration[i2];
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    public @interface AudioSource {
    }

    public static AudioRecordingConfiguration anonymizedCopy(AudioRecordingConfiguration audioRecordingConfiguration) {
        return new AudioRecordingConfiguration(-1, audioRecordingConfiguration.mSessionId, audioRecordingConfiguration.mClientSource, audioRecordingConfiguration.mClientFormat, audioRecordingConfiguration.mDeviceFormat, audioRecordingConfiguration.mPatchHandle, "");
    }

    public static String toLogFriendlyString(AudioRecordingConfiguration audioRecordingConfiguration) {
        return new String("session:" + audioRecordingConfiguration.mSessionId + " -- source:" + MediaRecorder.toLogFriendlyAudioSource(audioRecordingConfiguration.mClientSource) + " -- uid:" + audioRecordingConfiguration.mClientUid + " -- patch:" + audioRecordingConfiguration.mPatchHandle + " -- pack:" + audioRecordingConfiguration.mClientPackageName + " -- format client=" + audioRecordingConfiguration.mClientFormat.toLogFriendlyString() + ", dev=" + audioRecordingConfiguration.mDeviceFormat.toLogFriendlyString());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("  " + toLogFriendlyString(this));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AudioRecordingConfiguration)) {
            return false;
        }
        AudioRecordingConfiguration audioRecordingConfiguration = (AudioRecordingConfiguration) obj;
        return this.mClientUid == audioRecordingConfiguration.mClientUid && this.mSessionId == audioRecordingConfiguration.mSessionId && this.mClientSource == audioRecordingConfiguration.mClientSource && this.mPatchHandle == audioRecordingConfiguration.mPatchHandle && this.mClientFormat.equals(audioRecordingConfiguration.mClientFormat) && this.mDeviceFormat.equals(audioRecordingConfiguration.mDeviceFormat) && this.mClientPackageName.equals(audioRecordingConfiguration.mClientPackageName);
    }

    public AudioDeviceInfo getAudioDevice() {
        ArrayList arrayList = new ArrayList();
        if (AudioManager.listAudioPatches(arrayList) != 0) {
            Log.e(TAG, "Error retrieving list of audio patches");
            return null;
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            AudioPatch audioPatch = (AudioPatch) arrayList.get(i2);
            if (audioPatch.id() == this.mPatchHandle) {
                AudioPortConfig[] audioPortConfigArrSources = audioPatch.sources();
                if (audioPortConfigArrSources == null || audioPortConfigArrSources.length <= 0) {
                    break;
                    break;
                }
                int iId = audioPortConfigArrSources[0].port().id();
                AudioDeviceInfo[] devicesStatic = AudioManager.getDevicesStatic(1);
                for (int i3 = 0; i3 < devicesStatic.length; i3++) {
                    if (devicesStatic[i3].getId() == iId) {
                        return devicesStatic[i3];
                    }
                }
                break;
            }
        }
        Log.e(TAG, "Couldn't find device for recording, did recording end already?");
        return null;
    }

    public int getClientAudioSessionId() {
        return this.mSessionId;
    }

    public int getClientAudioSource() {
        return this.mClientSource;
    }

    public AudioFormat getClientFormat() {
        return this.mClientFormat;
    }

    public String getClientPackageName() {
        return this.mClientPackageName;
    }

    public int getClientUid() {
        return this.mClientUid;
    }

    public AudioFormat getFormat() {
        return this.mDeviceFormat;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mSessionId), Integer.valueOf(this.mClientSource));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mSessionId);
        parcel.writeInt(this.mClientSource);
        this.mClientFormat.writeToParcel(parcel, 0);
        this.mDeviceFormat.writeToParcel(parcel, 0);
        parcel.writeInt(this.mPatchHandle);
        parcel.writeString(this.mClientPackageName);
        parcel.writeInt(this.mClientUid);
    }

    public AudioRecordingConfiguration(int i2, int i3, int i4, AudioFormat audioFormat, AudioFormat audioFormat2, int i5, String str) {
        this.mClientUid = i2;
        this.mSessionId = i3;
        this.mClientSource = i4;
        this.mClientFormat = audioFormat;
        this.mDeviceFormat = audioFormat2;
        this.mPatchHandle = i5;
        this.mClientPackageName = str;
    }

    private AudioRecordingConfiguration(Parcel parcel) {
        this.mSessionId = parcel.readInt();
        this.mClientSource = parcel.readInt();
        Parcelable.Creator<AudioFormat> creator = AudioFormat.CREATOR;
        this.mClientFormat = creator.createFromParcel(parcel);
        this.mDeviceFormat = creator.createFromParcel(parcel);
        this.mPatchHandle = parcel.readInt();
        this.mClientPackageName = parcel.readString();
        this.mClientUid = parcel.readInt();
    }
}
