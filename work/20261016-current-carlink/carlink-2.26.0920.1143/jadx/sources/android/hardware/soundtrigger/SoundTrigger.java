package android.hardware.soundtrigger;

import android.accessibilityservice.c;
import android.media.AudioFormat;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.system.OsConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class SoundTrigger {
    public static final int RECOGNITION_MODE_USER_AUTHENTICATION = 4;
    public static final int RECOGNITION_MODE_USER_IDENTIFICATION = 2;
    public static final int RECOGNITION_MODE_VOICE_TRIGGER = 1;
    public static final int RECOGNITION_STATUS_ABORT = 1;
    public static final int RECOGNITION_STATUS_FAILURE = 2;
    public static final int RECOGNITION_STATUS_SUCCESS = 0;
    public static final int SERVICE_STATE_DISABLED = 1;
    public static final int SERVICE_STATE_ENABLED = 0;
    public static final int SOUNDMODEL_STATUS_UPDATED = 0;
    public static final int STATUS_ERROR = Integer.MIN_VALUE;
    public static final int STATUS_OK = 0;
    public static final int STATUS_PERMISSION_DENIED = -OsConstants.EPERM;
    public static final int STATUS_NO_INIT = -OsConstants.ENODEV;
    public static final int STATUS_BAD_VALUE = -OsConstants.EINVAL;
    public static final int STATUS_DEAD_OBJECT = -OsConstants.EPIPE;
    public static final int STATUS_INVALID_OPERATION = -OsConstants.ENOSYS;

    public static class ConfidenceLevel implements Parcelable {
        public static final Parcelable.Creator<ConfidenceLevel> CREATOR = new Parcelable.Creator<ConfidenceLevel>() { // from class: android.hardware.soundtrigger.SoundTrigger.ConfidenceLevel.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ConfidenceLevel createFromParcel(Parcel parcel) {
                return ConfidenceLevel.fromParcel(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ConfidenceLevel[] newArray(int i2) {
                return new ConfidenceLevel[i2];
            }
        };
        public final int confidenceLevel;
        public final int userId;

        public ConfidenceLevel(int i2, int i3) {
            this.userId = i2;
            this.confidenceLevel = i3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static ConfidenceLevel fromParcel(Parcel parcel) {
            return new ConfidenceLevel(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            ConfidenceLevel confidenceLevel = (ConfidenceLevel) obj;
            return this.confidenceLevel == confidenceLevel.confidenceLevel && this.userId == confidenceLevel.userId;
        }

        public int hashCode() {
            return ((this.confidenceLevel + 31) * 31) + this.userId;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ConfidenceLevel [userId=");
            sb.append(this.userId);
            sb.append(", confidenceLevel=");
            return c.m(sb, this.confidenceLevel, "]");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.userId);
            parcel.writeInt(this.confidenceLevel);
        }
    }

    public static class GenericRecognitionEvent extends RecognitionEvent {
        public static final Parcelable.Creator<GenericRecognitionEvent> CREATOR = new Parcelable.Creator<GenericRecognitionEvent>() { // from class: android.hardware.soundtrigger.SoundTrigger.GenericRecognitionEvent.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public GenericRecognitionEvent createFromParcel(Parcel parcel) {
                return GenericRecognitionEvent.fromParcelForGeneric(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public GenericRecognitionEvent[] newArray(int i2) {
                return new GenericRecognitionEvent[i2];
            }
        };

        public GenericRecognitionEvent(int i2, int i3, boolean z2, int i4, int i5, int i6, boolean z3, AudioFormat audioFormat, byte[] bArr) {
            super(i2, i3, z2, i4, i5, i6, z3, audioFormat, bArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static GenericRecognitionEvent fromParcelForGeneric(Parcel parcel) {
            RecognitionEvent recognitionEventFromParcel = RecognitionEvent.fromParcel(parcel);
            return new GenericRecognitionEvent(recognitionEventFromParcel.status, recognitionEventFromParcel.soundModelHandle, recognitionEventFromParcel.captureAvailable, recognitionEventFromParcel.captureSession, recognitionEventFromParcel.captureDelayMs, recognitionEventFromParcel.capturePreambleMs, recognitionEventFromParcel.triggerInData, recognitionEventFromParcel.captureFormat, recognitionEventFromParcel.data);
        }

        @Override // android.hardware.soundtrigger.SoundTrigger.RecognitionEvent
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return super.equals(obj);
        }

        @Override // android.hardware.soundtrigger.SoundTrigger.RecognitionEvent
        public String toString() {
            return "GenericRecognitionEvent ::" + super.toString();
        }
    }

    public static class GenericSoundModel extends SoundModel implements Parcelable {
        public static final Parcelable.Creator<GenericSoundModel> CREATOR = new Parcelable.Creator<GenericSoundModel>() { // from class: android.hardware.soundtrigger.SoundTrigger.GenericSoundModel.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public GenericSoundModel createFromParcel(Parcel parcel) {
                return GenericSoundModel.fromParcel(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public GenericSoundModel[] newArray(int i2) {
                return new GenericSoundModel[i2];
            }
        };

        public GenericSoundModel(UUID uuid, UUID uuid2, byte[] bArr) {
            super(uuid, uuid2, 1, bArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static GenericSoundModel fromParcel(Parcel parcel) {
            return new GenericSoundModel(UUID.fromString(parcel.readString()), parcel.readInt() >= 0 ? UUID.fromString(parcel.readString()) : null, parcel.readBlob());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("GenericSoundModel [uuid=");
            sb.append(this.uuid);
            sb.append(", vendorUuid=");
            sb.append(this.vendorUuid);
            sb.append(", type=");
            sb.append(this.type);
            sb.append(", data=");
            byte[] bArr = this.data;
            return c.m(sb, bArr == null ? 0 : bArr.length, "]");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.uuid.toString());
            UUID uuid = this.vendorUuid;
            if (uuid == null) {
                parcel.writeInt(-1);
            } else {
                parcel.writeInt(uuid.toString().length());
                parcel.writeString(this.vendorUuid.toString());
            }
            parcel.writeBlob(this.data);
        }
    }

    public static class Keyphrase implements Parcelable {
        public static final Parcelable.Creator<Keyphrase> CREATOR = new Parcelable.Creator<Keyphrase>() { // from class: android.hardware.soundtrigger.SoundTrigger.Keyphrase.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Keyphrase createFromParcel(Parcel parcel) {
                return Keyphrase.fromParcel(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Keyphrase[] newArray(int i2) {
                return new Keyphrase[i2];
            }
        };
        public final int id;
        public final String locale;
        public final int recognitionModes;
        public final String text;
        public final int[] users;

        public Keyphrase(int i2, int i3, String str, String str2, int[] iArr) {
            this.id = i2;
            this.recognitionModes = i3;
            this.locale = str;
            this.text = str2;
            this.users = iArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Keyphrase fromParcel(Parcel parcel) {
            int[] iArr;
            int i2 = parcel.readInt();
            int i3 = parcel.readInt();
            String string = parcel.readString();
            String string2 = parcel.readString();
            int i4 = parcel.readInt();
            if (i4 >= 0) {
                int[] iArr2 = new int[i4];
                parcel.readIntArray(iArr2);
                iArr = iArr2;
            } else {
                iArr = null;
            }
            return new Keyphrase(i2, i3, string, string2, iArr);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Keyphrase keyphrase = (Keyphrase) obj;
            String str = this.text;
            if (str == null) {
                if (keyphrase.text != null) {
                    return false;
                }
            } else if (!str.equals(keyphrase.text)) {
                return false;
            }
            if (this.id != keyphrase.id) {
                return false;
            }
            String str2 = this.locale;
            if (str2 == null) {
                if (keyphrase.locale != null) {
                    return false;
                }
            } else if (!str2.equals(keyphrase.locale)) {
                return false;
            }
            return this.recognitionModes == keyphrase.recognitionModes && Arrays.equals(this.users, keyphrase.users);
        }

        public int hashCode() {
            String str = this.text;
            int iHashCode = ((((str == null ? 0 : str.hashCode()) + 31) * 31) + this.id) * 31;
            String str2 = this.locale;
            return Arrays.hashCode(this.users) + ((((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.recognitionModes) * 31);
        }

        public String toString() {
            return "Keyphrase [id=" + this.id + ", recognitionModes=" + this.recognitionModes + ", locale=" + this.locale + ", text=" + this.text + ", users=" + Arrays.toString(this.users) + "]";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.id);
            parcel.writeInt(this.recognitionModes);
            parcel.writeString(this.locale);
            parcel.writeString(this.text);
            int[] iArr = this.users;
            if (iArr == null) {
                parcel.writeInt(-1);
            } else {
                parcel.writeInt(iArr.length);
                parcel.writeIntArray(this.users);
            }
        }
    }

    public static class KeyphraseRecognitionEvent extends RecognitionEvent {
        public static final Parcelable.Creator<KeyphraseRecognitionEvent> CREATOR = new Parcelable.Creator<KeyphraseRecognitionEvent>() { // from class: android.hardware.soundtrigger.SoundTrigger.KeyphraseRecognitionEvent.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public KeyphraseRecognitionEvent createFromParcel(Parcel parcel) {
                return KeyphraseRecognitionEvent.fromParcelForKeyphrase(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public KeyphraseRecognitionEvent[] newArray(int i2) {
                return new KeyphraseRecognitionEvent[i2];
            }
        };
        public final KeyphraseRecognitionExtra[] keyphraseExtras;

        public KeyphraseRecognitionEvent(int i2, int i3, boolean z2, int i4, int i5, int i6, boolean z3, AudioFormat audioFormat, byte[] bArr, KeyphraseRecognitionExtra[] keyphraseRecognitionExtraArr) {
            super(i2, i3, z2, i4, i5, i6, z3, audioFormat, bArr);
            this.keyphraseExtras = keyphraseRecognitionExtraArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static KeyphraseRecognitionEvent fromParcelForKeyphrase(Parcel parcel) {
            AudioFormat audioFormatBuild;
            int i2 = parcel.readInt();
            int i3 = parcel.readInt();
            boolean z2 = parcel.readByte() == 1;
            int i4 = parcel.readInt();
            int i5 = parcel.readInt();
            int i6 = parcel.readInt();
            boolean z3 = parcel.readByte() == 1;
            if (parcel.readByte() == 1) {
                audioFormatBuild = new AudioFormat.Builder().setChannelMask(parcel.readInt()).setEncoding(parcel.readInt()).setSampleRate(parcel.readInt()).build();
            } else {
                audioFormatBuild = null;
            }
            return new KeyphraseRecognitionEvent(i2, i3, z2, i4, i5, i6, z3, audioFormatBuild, parcel.readBlob(), (KeyphraseRecognitionExtra[]) parcel.createTypedArray(KeyphraseRecognitionExtra.CREATOR));
        }

        @Override // android.hardware.soundtrigger.SoundTrigger.RecognitionEvent, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.hardware.soundtrigger.SoundTrigger.RecognitionEvent
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return super.equals(obj) && getClass() == obj.getClass() && Arrays.equals(this.keyphraseExtras, ((KeyphraseRecognitionEvent) obj).keyphraseExtras);
        }

        @Override // android.hardware.soundtrigger.SoundTrigger.RecognitionEvent
        public int hashCode() {
            return (super.hashCode() * 31) + Arrays.hashCode(this.keyphraseExtras);
        }

        @Override // android.hardware.soundtrigger.SoundTrigger.RecognitionEvent
        public String toString() {
            String str;
            String str2;
            StringBuilder sb = new StringBuilder("KeyphraseRecognitionEvent [keyphraseExtras=");
            sb.append(Arrays.toString(this.keyphraseExtras));
            sb.append(", status=");
            sb.append(this.status);
            sb.append(", soundModelHandle=");
            sb.append(this.soundModelHandle);
            sb.append(", captureAvailable=");
            sb.append(this.captureAvailable);
            sb.append(", captureSession=");
            sb.append(this.captureSession);
            sb.append(", captureDelayMs=");
            sb.append(this.captureDelayMs);
            sb.append(", capturePreambleMs=");
            sb.append(this.capturePreambleMs);
            sb.append(", triggerInData=");
            sb.append(this.triggerInData);
            String str3 = "";
            if (this.captureFormat == null) {
                str = "";
            } else {
                str = ", sampleRate=" + this.captureFormat.getSampleRate();
            }
            sb.append(str);
            if (this.captureFormat == null) {
                str2 = "";
            } else {
                str2 = ", encoding=" + this.captureFormat.getEncoding();
            }
            sb.append(str2);
            if (this.captureFormat != null) {
                str3 = ", channelMask=" + this.captureFormat.getChannelMask();
            }
            sb.append(str3);
            sb.append(", data=");
            byte[] bArr = this.data;
            return c.m(sb, bArr == null ? 0 : bArr.length, "]");
        }

        @Override // android.hardware.soundtrigger.SoundTrigger.RecognitionEvent, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.status);
            parcel.writeInt(this.soundModelHandle);
            parcel.writeByte(this.captureAvailable ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.captureSession);
            parcel.writeInt(this.captureDelayMs);
            parcel.writeInt(this.capturePreambleMs);
            parcel.writeByte(this.triggerInData ? (byte) 1 : (byte) 0);
            if (this.captureFormat != null) {
                parcel.writeByte((byte) 1);
                parcel.writeInt(this.captureFormat.getSampleRate());
                parcel.writeInt(this.captureFormat.getEncoding());
                parcel.writeInt(this.captureFormat.getChannelMask());
            } else {
                parcel.writeByte((byte) 0);
            }
            parcel.writeBlob(this.data);
            parcel.writeTypedArray(this.keyphraseExtras, i2);
        }
    }

    public static class KeyphraseRecognitionExtra implements Parcelable {
        public static final Parcelable.Creator<KeyphraseRecognitionExtra> CREATOR = new Parcelable.Creator<KeyphraseRecognitionExtra>() { // from class: android.hardware.soundtrigger.SoundTrigger.KeyphraseRecognitionExtra.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public KeyphraseRecognitionExtra createFromParcel(Parcel parcel) {
                return KeyphraseRecognitionExtra.fromParcel(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public KeyphraseRecognitionExtra[] newArray(int i2) {
                return new KeyphraseRecognitionExtra[i2];
            }
        };
        public final int coarseConfidenceLevel;
        public final ConfidenceLevel[] confidenceLevels;
        public final int id;
        public final int recognitionModes;

        public KeyphraseRecognitionExtra(int i2, int i3, int i4, ConfidenceLevel[] confidenceLevelArr) {
            this.id = i2;
            this.recognitionModes = i3;
            this.coarseConfidenceLevel = i4;
            this.confidenceLevels = confidenceLevelArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static KeyphraseRecognitionExtra fromParcel(Parcel parcel) {
            return new KeyphraseRecognitionExtra(parcel.readInt(), parcel.readInt(), parcel.readInt(), (ConfidenceLevel[]) parcel.createTypedArray(ConfidenceLevel.CREATOR));
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            KeyphraseRecognitionExtra keyphraseRecognitionExtra = (KeyphraseRecognitionExtra) obj;
            return Arrays.equals(this.confidenceLevels, keyphraseRecognitionExtra.confidenceLevels) && this.id == keyphraseRecognitionExtra.id && this.recognitionModes == keyphraseRecognitionExtra.recognitionModes && this.coarseConfidenceLevel == keyphraseRecognitionExtra.coarseConfidenceLevel;
        }

        public int hashCode() {
            return ((((((Arrays.hashCode(this.confidenceLevels) + 31) * 31) + this.id) * 31) + this.recognitionModes) * 31) + this.coarseConfidenceLevel;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("KeyphraseRecognitionExtra [id=");
            sb.append(this.id);
            sb.append(", recognitionModes=");
            sb.append(this.recognitionModes);
            sb.append(", coarseConfidenceLevel=");
            sb.append(this.coarseConfidenceLevel);
            sb.append(", confidenceLevels=");
            return c.n(sb, Arrays.toString(this.confidenceLevels), "]");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.id);
            parcel.writeInt(this.recognitionModes);
            parcel.writeInt(this.coarseConfidenceLevel);
            parcel.writeTypedArray(this.confidenceLevels, i2);
        }
    }

    public static class KeyphraseSoundModel extends SoundModel implements Parcelable {
        public static final Parcelable.Creator<KeyphraseSoundModel> CREATOR = new Parcelable.Creator<KeyphraseSoundModel>() { // from class: android.hardware.soundtrigger.SoundTrigger.KeyphraseSoundModel.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public KeyphraseSoundModel createFromParcel(Parcel parcel) {
                return KeyphraseSoundModel.fromParcel(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public KeyphraseSoundModel[] newArray(int i2) {
                return new KeyphraseSoundModel[i2];
            }
        };
        public final Keyphrase[] keyphrases;

        public KeyphraseSoundModel(UUID uuid, UUID uuid2, byte[] bArr, Keyphrase[] keyphraseArr) {
            super(uuid, uuid2, 0, bArr);
            this.keyphrases = keyphraseArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static KeyphraseSoundModel fromParcel(Parcel parcel) {
            return new KeyphraseSoundModel(UUID.fromString(parcel.readString()), parcel.readInt() >= 0 ? UUID.fromString(parcel.readString()) : null, parcel.readBlob(), (Keyphrase[]) parcel.createTypedArray(Keyphrase.CREATOR));
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.hardware.soundtrigger.SoundTrigger.SoundModel
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return super.equals(obj) && (obj instanceof KeyphraseSoundModel) && Arrays.equals(this.keyphrases, ((KeyphraseSoundModel) obj).keyphrases);
        }

        @Override // android.hardware.soundtrigger.SoundTrigger.SoundModel
        public int hashCode() {
            return (super.hashCode() * 31) + Arrays.hashCode(this.keyphrases);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("KeyphraseSoundModel [keyphrases=");
            sb.append(Arrays.toString(this.keyphrases));
            sb.append(", uuid=");
            sb.append(this.uuid);
            sb.append(", vendorUuid=");
            sb.append(this.vendorUuid);
            sb.append(", type=");
            sb.append(this.type);
            sb.append(", data=");
            byte[] bArr = this.data;
            return c.m(sb, bArr == null ? 0 : bArr.length, "]");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.uuid.toString());
            UUID uuid = this.vendorUuid;
            if (uuid == null) {
                parcel.writeInt(-1);
            } else {
                parcel.writeInt(uuid.toString().length());
                parcel.writeString(this.vendorUuid.toString());
            }
            parcel.writeBlob(this.data);
            parcel.writeTypedArray(this.keyphrases, i2);
        }
    }

    public static class ModuleProperties implements Parcelable {
        public static final Parcelable.Creator<ModuleProperties> CREATOR = new Parcelable.Creator<ModuleProperties>() { // from class: android.hardware.soundtrigger.SoundTrigger.ModuleProperties.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ModuleProperties createFromParcel(Parcel parcel) {
                return ModuleProperties.fromParcel(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ModuleProperties[] newArray(int i2) {
                return new ModuleProperties[i2];
            }
        };
        public final String description;
        public final int id;
        public final String implementor;
        public final int maxBufferMs;
        public final int maxKeyphrases;
        public final int maxSoundModels;
        public final int maxUsers;
        public final int powerConsumptionMw;
        public final int recognitionModes;
        public final boolean returnsTriggerInEvent;
        public final boolean supportsCaptureTransition;
        public final boolean supportsConcurrentCapture;
        public final UUID uuid;
        public final int version;

        public ModuleProperties(int i2, String str, String str2, String str3, int i3, int i4, int i5, int i6, int i7, boolean z2, int i8, boolean z3, int i9, boolean z4) {
            this.id = i2;
            this.implementor = str;
            this.description = str2;
            this.uuid = UUID.fromString(str3);
            this.version = i3;
            this.maxSoundModels = i4;
            this.maxKeyphrases = i5;
            this.maxUsers = i6;
            this.recognitionModes = i7;
            this.supportsCaptureTransition = z2;
            this.maxBufferMs = i8;
            this.supportsConcurrentCapture = z3;
            this.powerConsumptionMw = i9;
            this.returnsTriggerInEvent = z4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static ModuleProperties fromParcel(Parcel parcel) {
            return new ModuleProperties(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readByte() == 1, parcel.readInt(), parcel.readByte() == 1, parcel.readInt(), parcel.readByte() == 1);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ModuleProperties [id=");
            sb.append(this.id);
            sb.append(", implementor=");
            sb.append(this.implementor);
            sb.append(", description=");
            sb.append(this.description);
            sb.append(", uuid=");
            sb.append(this.uuid);
            sb.append(", version=");
            sb.append(this.version);
            sb.append(", maxSoundModels=");
            sb.append(this.maxSoundModels);
            sb.append(", maxKeyphrases=");
            sb.append(this.maxKeyphrases);
            sb.append(", maxUsers=");
            sb.append(this.maxUsers);
            sb.append(", recognitionModes=");
            sb.append(this.recognitionModes);
            sb.append(", supportsCaptureTransition=");
            sb.append(this.supportsCaptureTransition);
            sb.append(", maxBufferMs=");
            sb.append(this.maxBufferMs);
            sb.append(", supportsConcurrentCapture=");
            sb.append(this.supportsConcurrentCapture);
            sb.append(", powerConsumptionMw=");
            sb.append(this.powerConsumptionMw);
            sb.append(", returnsTriggerInEvent=");
            return c.o(sb, this.returnsTriggerInEvent, "]");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.id);
            parcel.writeString(this.implementor);
            parcel.writeString(this.description);
            parcel.writeString(this.uuid.toString());
            parcel.writeInt(this.version);
            parcel.writeInt(this.maxSoundModels);
            parcel.writeInt(this.maxKeyphrases);
            parcel.writeInt(this.maxUsers);
            parcel.writeInt(this.recognitionModes);
            parcel.writeByte(this.supportsCaptureTransition ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.maxBufferMs);
            parcel.writeByte(this.supportsConcurrentCapture ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.powerConsumptionMw);
            parcel.writeByte(this.returnsTriggerInEvent ? (byte) 1 : (byte) 0);
        }
    }

    public static class RecognitionConfig implements Parcelable {
        public static final Parcelable.Creator<RecognitionConfig> CREATOR = new Parcelable.Creator<RecognitionConfig>() { // from class: android.hardware.soundtrigger.SoundTrigger.RecognitionConfig.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RecognitionConfig createFromParcel(Parcel parcel) {
                return RecognitionConfig.fromParcel(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RecognitionConfig[] newArray(int i2) {
                return new RecognitionConfig[i2];
            }
        };
        public final boolean allowMultipleTriggers;
        public final boolean captureRequested;
        public final byte[] data;
        public final KeyphraseRecognitionExtra[] keyphrases;

        public RecognitionConfig(boolean z2, boolean z3, KeyphraseRecognitionExtra[] keyphraseRecognitionExtraArr, byte[] bArr) {
            this.captureRequested = z2;
            this.allowMultipleTriggers = z3;
            this.keyphrases = keyphraseRecognitionExtraArr;
            this.data = bArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static RecognitionConfig fromParcel(Parcel parcel) {
            return new RecognitionConfig(parcel.readByte() == 1, parcel.readByte() == 1, (KeyphraseRecognitionExtra[]) parcel.createTypedArray(KeyphraseRecognitionExtra.CREATOR), parcel.readBlob());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "RecognitionConfig [captureRequested=" + this.captureRequested + ", allowMultipleTriggers=" + this.allowMultipleTriggers + ", keyphrases=" + Arrays.toString(this.keyphrases) + ", data=" + Arrays.toString(this.data) + "]";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeByte(this.captureRequested ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.allowMultipleTriggers ? (byte) 1 : (byte) 0);
            parcel.writeTypedArray(this.keyphrases, i2);
            parcel.writeBlob(this.data);
        }
    }

    public static class RecognitionEvent implements Parcelable {
        public static final Parcelable.Creator<RecognitionEvent> CREATOR = new Parcelable.Creator<RecognitionEvent>() { // from class: android.hardware.soundtrigger.SoundTrigger.RecognitionEvent.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RecognitionEvent createFromParcel(Parcel parcel) {
                return RecognitionEvent.fromParcel(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RecognitionEvent[] newArray(int i2) {
                return new RecognitionEvent[i2];
            }
        };
        public final boolean captureAvailable;
        public final int captureDelayMs;
        public AudioFormat captureFormat;
        public final int capturePreambleMs;
        public final int captureSession;
        public final byte[] data;
        public final int soundModelHandle;
        public final int status;
        public final boolean triggerInData;

        public RecognitionEvent(int i2, int i3, boolean z2, int i4, int i5, int i6, boolean z3, AudioFormat audioFormat, byte[] bArr) {
            this.status = i2;
            this.soundModelHandle = i3;
            this.captureAvailable = z2;
            this.captureSession = i4;
            this.captureDelayMs = i5;
            this.capturePreambleMs = i6;
            this.triggerInData = z3;
            this.captureFormat = audioFormat;
            this.data = bArr;
        }

        public static RecognitionEvent fromParcel(Parcel parcel) {
            AudioFormat audioFormatBuild;
            int i2 = parcel.readInt();
            int i3 = parcel.readInt();
            boolean z2 = parcel.readByte() == 1;
            int i4 = parcel.readInt();
            int i5 = parcel.readInt();
            int i6 = parcel.readInt();
            boolean z3 = parcel.readByte() == 1;
            if (parcel.readByte() == 1) {
                audioFormatBuild = new AudioFormat.Builder().setChannelMask(parcel.readInt()).setEncoding(parcel.readInt()).setSampleRate(parcel.readInt()).build();
            } else {
                audioFormatBuild = null;
            }
            return new RecognitionEvent(i2, i3, z2, i4, i5, i6, z3, audioFormatBuild, parcel.readBlob());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            RecognitionEvent recognitionEvent = (RecognitionEvent) obj;
            if (this.captureAvailable != recognitionEvent.captureAvailable || this.captureDelayMs != recognitionEvent.captureDelayMs || this.capturePreambleMs != recognitionEvent.capturePreambleMs || this.captureSession != recognitionEvent.captureSession || !Arrays.equals(this.data, recognitionEvent.data) || this.soundModelHandle != recognitionEvent.soundModelHandle || this.status != recognitionEvent.status || this.triggerInData != recognitionEvent.triggerInData) {
                return false;
            }
            AudioFormat audioFormat = this.captureFormat;
            if (audioFormat == null) {
                if (recognitionEvent.captureFormat != null) {
                    return false;
                }
            } else if (recognitionEvent.captureFormat == null || audioFormat.getSampleRate() != recognitionEvent.captureFormat.getSampleRate() || this.captureFormat.getEncoding() != recognitionEvent.captureFormat.getEncoding() || this.captureFormat.getChannelMask() != recognitionEvent.captureFormat.getChannelMask()) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            int encoding = (((((((((this.captureAvailable ? 1231 : 1237) + 31) * 31) + this.captureDelayMs) * 31) + this.capturePreambleMs) * 31) + this.captureSession) * 31) + (this.triggerInData ? 1231 : 1237);
            AudioFormat audioFormat = this.captureFormat;
            if (audioFormat != null) {
                encoding = ((this.captureFormat.getEncoding() + ((audioFormat.getSampleRate() + (encoding * 31)) * 31)) * 31) + this.captureFormat.getChannelMask();
            }
            return ((((Arrays.hashCode(this.data) + (encoding * 31)) * 31) + this.soundModelHandle) * 31) + this.status;
        }

        public String toString() {
            String str;
            String str2;
            StringBuilder sb = new StringBuilder("RecognitionEvent [status=");
            sb.append(this.status);
            sb.append(", soundModelHandle=");
            sb.append(this.soundModelHandle);
            sb.append(", captureAvailable=");
            sb.append(this.captureAvailable);
            sb.append(", captureSession=");
            sb.append(this.captureSession);
            sb.append(", captureDelayMs=");
            sb.append(this.captureDelayMs);
            sb.append(", capturePreambleMs=");
            sb.append(this.capturePreambleMs);
            sb.append(", triggerInData=");
            sb.append(this.triggerInData);
            String str3 = "";
            if (this.captureFormat == null) {
                str = "";
            } else {
                str = ", sampleRate=" + this.captureFormat.getSampleRate();
            }
            sb.append(str);
            if (this.captureFormat == null) {
                str2 = "";
            } else {
                str2 = ", encoding=" + this.captureFormat.getEncoding();
            }
            sb.append(str2);
            if (this.captureFormat != null) {
                str3 = ", channelMask=" + this.captureFormat.getChannelMask();
            }
            sb.append(str3);
            sb.append(", data=");
            byte[] bArr = this.data;
            return c.m(sb, bArr == null ? 0 : bArr.length, "]");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.status);
            parcel.writeInt(this.soundModelHandle);
            parcel.writeByte(this.captureAvailable ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.captureSession);
            parcel.writeInt(this.captureDelayMs);
            parcel.writeInt(this.capturePreambleMs);
            parcel.writeByte(this.triggerInData ? (byte) 1 : (byte) 0);
            if (this.captureFormat != null) {
                parcel.writeByte((byte) 1);
                parcel.writeInt(this.captureFormat.getSampleRate());
                parcel.writeInt(this.captureFormat.getEncoding());
                parcel.writeInt(this.captureFormat.getChannelMask());
            } else {
                parcel.writeByte((byte) 0);
            }
            parcel.writeBlob(this.data);
        }
    }

    public static class SoundModel {
        public static final int TYPE_GENERIC_SOUND = 1;
        public static final int TYPE_KEYPHRASE = 0;
        public static final int TYPE_UNKNOWN = -1;
        public final byte[] data;
        public final int type;
        public final UUID uuid;
        public final UUID vendorUuid;

        public SoundModel(UUID uuid, UUID uuid2, int i2, byte[] bArr) {
            this.uuid = uuid;
            this.vendorUuid = uuid2;
            this.type = i2;
            this.data = bArr;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof SoundModel)) {
                return false;
            }
            SoundModel soundModel = (SoundModel) obj;
            if (!Arrays.equals(this.data, soundModel.data) || this.type != soundModel.type) {
                return false;
            }
            UUID uuid = this.uuid;
            if (uuid == null) {
                if (soundModel.uuid != null) {
                    return false;
                }
            } else if (!uuid.equals(soundModel.uuid)) {
                return false;
            }
            UUID uuid2 = this.vendorUuid;
            if (uuid2 == null) {
                if (soundModel.vendorUuid != null) {
                    return false;
                }
            } else if (!uuid2.equals(soundModel.vendorUuid)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            int iHashCode = (((Arrays.hashCode(this.data) + 31) * 31) + this.type) * 31;
            UUID uuid = this.uuid;
            int iHashCode2 = (iHashCode + (uuid == null ? 0 : uuid.hashCode())) * 31;
            UUID uuid2 = this.vendorUuid;
            return iHashCode2 + (uuid2 != null ? uuid2.hashCode() : 0);
        }
    }

    public static class SoundModelEvent implements Parcelable {
        public static final Parcelable.Creator<SoundModelEvent> CREATOR = new Parcelable.Creator<SoundModelEvent>() { // from class: android.hardware.soundtrigger.SoundTrigger.SoundModelEvent.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SoundModelEvent createFromParcel(Parcel parcel) {
                return SoundModelEvent.fromParcel(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SoundModelEvent[] newArray(int i2) {
                return new SoundModelEvent[i2];
            }
        };
        public final byte[] data;
        public final int soundModelHandle;
        public final int status;

        public SoundModelEvent(int i2, int i3, byte[] bArr) {
            this.status = i2;
            this.soundModelHandle = i3;
            this.data = bArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static SoundModelEvent fromParcel(Parcel parcel) {
            return new SoundModelEvent(parcel.readInt(), parcel.readInt(), parcel.readBlob());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            SoundModelEvent soundModelEvent = (SoundModelEvent) obj;
            return Arrays.equals(this.data, soundModelEvent.data) && this.soundModelHandle == soundModelEvent.soundModelHandle && this.status == soundModelEvent.status;
        }

        public int hashCode() {
            return ((((Arrays.hashCode(this.data) + 31) * 31) + this.soundModelHandle) * 31) + this.status;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("SoundModelEvent [status=");
            sb.append(this.status);
            sb.append(", soundModelHandle=");
            sb.append(this.soundModelHandle);
            sb.append(", data=");
            byte[] bArr = this.data;
            return c.m(sb, bArr == null ? 0 : bArr.length, "]");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.status);
            parcel.writeInt(this.soundModelHandle);
            parcel.writeBlob(this.data);
        }
    }

    public interface StatusListener {
        void onRecognition(RecognitionEvent recognitionEvent);

        void onServiceDied();

        void onServiceStateChange(int i2);

        void onSoundModelUpdate(SoundModelEvent soundModelEvent);
    }

    public static SoundTriggerModule attachModule(int i2, StatusListener statusListener, Handler handler) {
        if (statusListener == null) {
            return null;
        }
        return new SoundTriggerModule(i2, statusListener, handler);
    }

    public static native int listModules(ArrayList<ModuleProperties> arrayList);
}
