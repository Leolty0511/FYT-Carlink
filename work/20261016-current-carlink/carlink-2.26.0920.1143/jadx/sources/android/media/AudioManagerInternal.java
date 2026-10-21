package android.media;

import android.util.IntArray;

/* JADX INFO: loaded from: classes.dex */
public abstract class AudioManagerInternal {

    public interface RingerModeDelegate {
        boolean canVolumeDownEnterSilent();

        int getRingerModeAffectedStreams(int i2);

        int onSetRingerModeExternal(int i2, int i3, String str, int i4, VolumePolicy volumePolicy);

        int onSetRingerModeInternal(int i2, int i3, String str, int i4, VolumePolicy volumePolicy);
    }

    public abstract void adjustStreamVolumeForUid(int i2, int i3, int i4, String str, int i5);

    public abstract void adjustSuggestedStreamVolumeForUid(int i2, int i3, int i4, String str, int i5);

    public abstract int getRingerModeInternal();

    public abstract void setAccessibilityServiceUids(IntArray intArray);

    public abstract void setRingerModeDelegate(RingerModeDelegate ringerModeDelegate);

    public abstract void setRingerModeInternal(int i2, String str);

    public abstract void setStreamVolumeForUid(int i2, int i3, int i4, String str, int i5);

    public abstract void updateRingerModeAffectedStreamsInternal();
}
