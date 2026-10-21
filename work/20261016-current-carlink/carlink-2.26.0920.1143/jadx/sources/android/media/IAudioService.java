package android.media;

import android.bluetooth.BluetoothDevice;
import android.media.audiopolicy.AudioPolicyConfig;
import android.media.audiopolicy.IAudioPolicyCallback;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IAudioService extends IInterface {

    public static abstract class Stub extends Binder implements IAudioService {
        private static final String DESCRIPTOR = "android.media.IAudioService";
        static final int TRANSACTION_abandonAudioFocus = 36;
        static final int TRANSACTION_adjustStreamVolume = 2;
        static final int TRANSACTION_adjustSuggestedStreamVolume = 1;
        static final int TRANSACTION_avrcpSupportsAbsoluteVolume = 28;
        static final int TRANSACTION_disableRingtoneSync = 73;
        static final int TRANSACTION_disableSafeMediaVolume = 55;
        static final int TRANSACTION_dispatchFocusChange = 75;
        static final int TRANSACTION_forceRemoteSubmixFullVolume = 5;
        static final int TRANSACTION_forceVolumeControlStream = 42;
        static final int TRANSACTION_getActivePlaybackConfigurations = 68;
        static final int TRANSACTION_getActiveRecordingConfigurations = 65;
        static final int TRANSACTION_getCurrentAudioFocus = 38;
        static final int TRANSACTION_getFocusRampTimeMs = 74;
        static final int TRANSACTION_getLastAudibleStreamVolume = 11;
        static final int TRANSACTION_getMode = 22;
        static final int TRANSACTION_getRingerModeExternal = 15;
        static final int TRANSACTION_getRingerModeInternal = 16;
        static final int TRANSACTION_getRingtonePlayer = 44;
        static final int TRANSACTION_getSafeMediaVolumeEnabled = 56;
        static final int TRANSACTION_getStreamMaxVolume = 10;
        static final int TRANSACTION_getStreamMinVolume = 9;
        static final int TRANSACTION_getStreamVolume = 8;
        static final int TRANSACTION_getUiSoundsStreamType = 45;
        static final int TRANSACTION_getVibrateSetting = 19;
        static final int TRANSACTION_handleBluetoothA2dpDeviceConfigChange = 48;
        static final int TRANSACTION_isBluetoothA2dpOn = 34;
        static final int TRANSACTION_isBluetoothScoOn = 32;
        static final int TRANSACTION_isCameraSoundForced = 50;
        static final int TRANSACTION_isHdmiSystemAudioSupported = 58;
        static final int TRANSACTION_isMasterMute = 6;
        static final int TRANSACTION_isSpeakerphoneOn = 30;
        static final int TRANSACTION_isStreamAffectedByMute = 54;
        static final int TRANSACTION_isStreamAffectedByRingerMode = 53;
        static final int TRANSACTION_isStreamMute = 4;
        static final int TRANSACTION_isValidRingerMode = 17;
        static final int TRANSACTION_loadSoundEffects = 25;
        static final int TRANSACTION_notifyVolumeControllerVisible = 52;
        static final int TRANSACTION_playSoundEffect = 23;
        static final int TRANSACTION_playSoundEffectVolume = 24;
        static final int TRANSACTION_playerAttributes = 70;
        static final int TRANSACTION_playerEvent = 71;
        static final int TRANSACTION_playerHasOpPlayAudio = 76;
        static final int TRANSACTION_registerAudioPolicy = 59;
        static final int TRANSACTION_registerPlaybackCallback = 66;
        static final int TRANSACTION_registerRecordingCallback = 63;
        static final int TRANSACTION_releasePlayer = 72;
        static final int TRANSACTION_reloadAudioSettings = 27;
        static final int TRANSACTION_requestAudioFocus = 35;
        static final int TRANSACTION_setAudioSwitch2iis = 78;
        static final int TRANSACTION_setBluetoothA2dpDeviceConnectionState = 47;
        static final int TRANSACTION_setBluetoothA2dpOn = 33;
        static final int TRANSACTION_setBluetoothScoOn = 31;
        static final int TRANSACTION_setFocusPropertiesForPolicy = 61;
        static final int TRANSACTION_setForceUseSpeaker = 77;
        static final int TRANSACTION_setHdmiSystemAudioSupported = 57;
        static final int TRANSACTION_setMasterMute = 7;
        static final int TRANSACTION_setMicrophoneMute = 12;
        static final int TRANSACTION_setMode = 21;
        static final int TRANSACTION_setRingerModeExternal = 13;
        static final int TRANSACTION_setRingerModeInternal = 14;
        static final int TRANSACTION_setRingtonePlayer = 43;
        static final int TRANSACTION_setSpeakerphoneOn = 29;
        static final int TRANSACTION_setStreamVolume = 3;
        static final int TRANSACTION_setVibrateSetting = 18;
        static final int TRANSACTION_setVoiceSwitch2iis = 79;
        static final int TRANSACTION_setVolumeController = 51;
        static final int TRANSACTION_setVolumePolicy = 62;
        static final int TRANSACTION_setWiredDeviceConnectionState = 46;
        static final int TRANSACTION_shouldVibrate = 20;
        static final int TRANSACTION_startBluetoothSco = 39;
        static final int TRANSACTION_startBluetoothScoVirtualCall = 40;
        static final int TRANSACTION_startWatchingRoutes = 49;
        static final int TRANSACTION_stopBluetoothSco = 41;
        static final int TRANSACTION_trackPlayer = 69;
        static final int TRANSACTION_unloadSoundEffects = 26;
        static final int TRANSACTION_unregisterAudioFocusClient = 37;
        static final int TRANSACTION_unregisterAudioPolicyAsync = 60;
        static final int TRANSACTION_unregisterPlaybackCallback = 67;
        static final int TRANSACTION_unregisterRecordingCallback = 64;

        public static class Proxy implements IAudioService {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.media.IAudioService
            public int abandonAudioFocus(IAudioFocusDispatcher iAudioFocusDispatcher, String str, AudioAttributes audioAttributes, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAudioFocusDispatcher != null ? iAudioFocusDispatcher.asBinder() : null);
                    parcelObtain.writeString(str);
                    if (audioAttributes != null) {
                        parcelObtain.writeInt(1);
                        audioAttributes.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(36, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void adjustStreamVolume(int i2, int i3, int i4, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void adjustSuggestedStreamVolume(int i2, int i3, int i4, String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.media.IAudioService
            public void avrcpSupportsAbsoluteVolume(String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(28, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void disableRingtoneSync(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(73, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void disableSafeMediaVolume(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(55, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int dispatchFocusChange(AudioFocusInfo audioFocusInfo, int i2, IAudioPolicyCallback iAudioPolicyCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (audioFocusInfo != null) {
                        parcelObtain.writeInt(1);
                        audioFocusInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iAudioPolicyCallback != null ? iAudioPolicyCallback.asBinder() : null);
                    this.mRemote.transact(75, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void forceRemoteSubmixFullVolume(boolean z2, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void forceVolumeControlStream(int i2, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(42, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public List<AudioPlaybackConfiguration> getActivePlaybackConfigurations() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(68, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(AudioPlaybackConfiguration.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public List<AudioRecordingConfiguration> getActiveRecordingConfigurations() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(65, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(AudioRecordingConfiguration.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getCurrentAudioFocus() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(38, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getFocusRampTimeMs(int i2, AudioAttributes audioAttributes) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    if (audioAttributes != null) {
                        parcelObtain.writeInt(1);
                        audioAttributes.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(74, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.media.IAudioService
            public int getLastAudibleStreamVolume(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getMode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getRingerModeExternal() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getRingerModeInternal() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public IRingtonePlayer getRingtonePlayer() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(44, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return IRingtonePlayer.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean getSafeMediaVolumeEnabled(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(56, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getStreamMaxVolume(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getStreamMinVolume(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getStreamVolume(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getUiSoundsStreamType() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(45, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getVibrateSetting(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void handleBluetoothA2dpDeviceConfigChange(BluetoothDevice bluetoothDevice) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bluetoothDevice != null) {
                        parcelObtain.writeInt(1);
                        bluetoothDevice.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(48, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isBluetoothA2dpOn() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(34, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isBluetoothScoOn() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(32, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isCameraSoundForced() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(50, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isHdmiSystemAudioSupported() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(58, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isMasterMute() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isSpeakerphoneOn() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isStreamAffectedByMute(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(54, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isStreamAffectedByRingerMode(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(53, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isStreamMute(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isValidRingerMode(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean loadSoundEffects() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void notifyVolumeControllerVisible(IVolumeController iVolumeController, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVolumeController != null ? iVolumeController.asBinder() : null);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(52, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void playSoundEffect(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(23, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void playSoundEffectVolume(int i2, float f2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeFloat(f2);
                    this.mRemote.transact(24, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void playerAttributes(int i2, AudioAttributes audioAttributes) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    if (audioAttributes != null) {
                        parcelObtain.writeInt(1);
                        audioAttributes.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(70, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void playerEvent(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(71, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void playerHasOpPlayAudio(int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(76, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public String registerAudioPolicy(AudioPolicyConfig audioPolicyConfig, IAudioPolicyCallback iAudioPolicyCallback, boolean z2, boolean z3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i2 = 1;
                    if (audioPolicyConfig != null) {
                        parcelObtain.writeInt(1);
                        audioPolicyConfig.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iAudioPolicyCallback != null ? iAudioPolicyCallback.asBinder() : null);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!z3) {
                        i2 = 0;
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(59, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerPlaybackCallback(IPlaybackConfigDispatcher iPlaybackConfigDispatcher) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iPlaybackConfigDispatcher != null ? iPlaybackConfigDispatcher.asBinder() : null);
                    this.mRemote.transact(66, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerRecordingCallback(IRecordingConfigDispatcher iRecordingConfigDispatcher) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRecordingConfigDispatcher != null ? iRecordingConfigDispatcher.asBinder() : null);
                    this.mRemote.transact(63, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void releasePlayer(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(72, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void reloadAudioSettings() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(27, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int requestAudioFocus(AudioAttributes audioAttributes, int i2, IBinder iBinder, IAudioFocusDispatcher iAudioFocusDispatcher, String str, String str2, int i3, IAudioPolicyCallback iAudioPolicyCallback, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (audioAttributes != null) {
                        parcelObtain.writeInt(1);
                        audioAttributes.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeStrongBinder(iAudioFocusDispatcher != null ? iAudioFocusDispatcher.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iAudioPolicyCallback != null ? iAudioPolicyCallback.asBinder() : null);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(35, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setAudioSwitch2iis(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(78, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int setBluetoothA2dpDeviceConnectionState(BluetoothDevice bluetoothDevice, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bluetoothDevice != null) {
                        parcelObtain.writeInt(1);
                        bluetoothDevice.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(47, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setBluetoothA2dpOn(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(33, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setBluetoothScoOn(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(31, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int setFocusPropertiesForPolicy(int i2, IAudioPolicyCallback iAudioPolicyCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iAudioPolicyCallback != null ? iAudioPolicyCallback.asBinder() : null);
                    this.mRemote.transact(61, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setForceUseSpeaker(int i2, boolean z2, IBinder iBinder, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(77, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int setHdmiSystemAudioSupported(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(57, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setMasterMute(boolean z2, int i2, String str, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setMicrophoneMute(boolean z2, String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setMode(int i2, IBinder iBinder, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setRingerModeExternal(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setRingerModeInternal(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setRingtonePlayer(IRingtonePlayer iRingtonePlayer) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRingtonePlayer != null ? iRingtonePlayer.asBinder() : null);
                    this.mRemote.transact(43, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setSpeakerphoneOn(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setStreamVolume(int i2, int i3, int i4, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setVibrateSetting(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setVoiceSwitch2iis(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(79, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setVolumeController(IVolumeController iVolumeController) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVolumeController != null ? iVolumeController.asBinder() : null);
                    this.mRemote.transact(51, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setVolumePolicy(VolumePolicy volumePolicy) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (volumePolicy != null) {
                        parcelObtain.writeInt(1);
                        volumePolicy.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(62, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setWiredDeviceConnectionState(int i2, int i3, String str, String str2, String str3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    this.mRemote.transact(46, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean shouldVibrate(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void startBluetoothSco(IBinder iBinder, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(39, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void startBluetoothScoVirtualCall(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(40, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public AudioRoutesInfo startWatchingRoutes(IAudioRoutesObserver iAudioRoutesObserver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAudioRoutesObserver != null ? iAudioRoutesObserver.asBinder() : null);
                    this.mRemote.transact(49, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? AudioRoutesInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void stopBluetoothSco(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(41, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int trackPlayer(PlayerBase.PlayerIdCard playerIdCard) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (playerIdCard != null) {
                        parcelObtain.writeInt(1);
                        playerIdCard.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(69, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unloadSoundEffects() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(26, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterAudioFocusClient(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(37, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterAudioPolicyAsync(IAudioPolicyCallback iAudioPolicyCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAudioPolicyCallback != null ? iAudioPolicyCallback.asBinder() : null);
                    this.mRemote.transact(60, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterPlaybackCallback(IPlaybackConfigDispatcher iPlaybackConfigDispatcher) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iPlaybackConfigDispatcher != null ? iPlaybackConfigDispatcher.asBinder() : null);
                    this.mRemote.transact(67, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterRecordingCallback(IRecordingConfigDispatcher iRecordingConfigDispatcher) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRecordingConfigDispatcher != null ? iRecordingConfigDispatcher.asBinder() : null);
                    this.mRemote.transact(64, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAudioService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAudioService)) ? new Proxy(iBinder) : (IAudioService) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    adjustSuggestedStreamVolume(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString());
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    adjustStreamVolume(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    setStreamVolume(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsStreamMute = isStreamMute(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsStreamMute ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    forceRemoteSubmixFullVolume(parcel.readInt() != 0, parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsMasterMute = isMasterMute();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsMasterMute ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMasterMute(parcel.readInt() != 0, parcel.readInt(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int streamVolume = getStreamVolume(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(streamVolume);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int streamMinVolume = getStreamMinVolume(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(streamMinVolume);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    int streamMaxVolume = getStreamMaxVolume(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(streamMaxVolume);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int lastAudibleStreamVolume = getLastAudibleStreamVolume(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(lastAudibleStreamVolume);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMicrophoneMute(parcel.readInt() != 0, parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    setRingerModeExternal(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    setRingerModeInternal(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    int ringerModeExternal = getRingerModeExternal();
                    parcel2.writeNoException();
                    parcel2.writeInt(ringerModeExternal);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    int ringerModeInternal = getRingerModeInternal();
                    parcel2.writeNoException();
                    parcel2.writeInt(ringerModeInternal);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsValidRingerMode = isValidRingerMode(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsValidRingerMode ? 1 : 0);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVibrateSetting(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    int vibrateSetting = getVibrateSetting(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(vibrateSetting);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zShouldVibrate = shouldVibrate(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zShouldVibrate ? 1 : 0);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMode(parcel.readInt(), parcel.readStrongBinder(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    int mode = getMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(mode);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    playSoundEffect(parcel.readInt());
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    playSoundEffectVolume(parcel.readInt(), parcel.readFloat());
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zLoadSoundEffects = loadSoundEffects();
                    parcel2.writeNoException();
                    parcel2.writeInt(zLoadSoundEffects ? 1 : 0);
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    unloadSoundEffects();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    reloadAudioSettings();
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    avrcpSupportsAbsoluteVolume(parcel.readString(), parcel.readInt() != 0);
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSpeakerphoneOn(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsSpeakerphoneOn = isSpeakerphoneOn();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSpeakerphoneOn ? 1 : 0);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    setBluetoothScoOn(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsBluetoothScoOn = isBluetoothScoOn();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsBluetoothScoOn ? 1 : 0);
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    setBluetoothA2dpOn(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsBluetoothA2dpOn = isBluetoothA2dpOn();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsBluetoothA2dpOn ? 1 : 0);
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iRequestAudioFocus = requestAudioFocus(parcel.readInt() != 0 ? AudioAttributes.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readStrongBinder(), IAudioFocusDispatcher.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readInt(), IAudioPolicyCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iRequestAudioFocus);
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAbandonAudioFocus = abandonAudioFocus(IAudioFocusDispatcher.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readInt() != 0 ? AudioAttributes.CREATOR.createFromParcel(parcel) : null, parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAbandonAudioFocus);
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAudioFocusClient(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    int currentAudioFocus = getCurrentAudioFocus();
                    parcel2.writeNoException();
                    parcel2.writeInt(currentAudioFocus);
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    startBluetoothSco(parcel.readStrongBinder(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    startBluetoothScoVirtualCall(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopBluetoothSco(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    forceVolumeControlStream(parcel.readInt(), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    setRingtonePlayer(IRingtonePlayer.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    IRingtonePlayer ringtonePlayer = getRingtonePlayer();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(ringtonePlayer != null ? ringtonePlayer.asBinder() : null);
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    int uiSoundsStreamType = getUiSoundsStreamType();
                    parcel2.writeNoException();
                    parcel2.writeInt(uiSoundsStreamType);
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWiredDeviceConnectionState(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    int bluetoothA2dpDeviceConnectionState = setBluetoothA2dpDeviceConnectionState(parcel.readInt() != 0 ? BluetoothDevice.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(bluetoothA2dpDeviceConnectionState);
                    return true;
                case 48:
                    parcel.enforceInterface(DESCRIPTOR);
                    handleBluetoothA2dpDeviceConfigChange(parcel.readInt() != 0 ? BluetoothDevice.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 49:
                    parcel.enforceInterface(DESCRIPTOR);
                    AudioRoutesInfo audioRoutesInfoStartWatchingRoutes = startWatchingRoutes(IAudioRoutesObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (audioRoutesInfoStartWatchingRoutes != null) {
                        parcel2.writeInt(1);
                        audioRoutesInfoStartWatchingRoutes.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 50:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsCameraSoundForced = isCameraSoundForced();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsCameraSoundForced ? 1 : 0);
                    return true;
                case 51:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVolumeController(IVolumeController.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 52:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyVolumeControllerVisible(IVolumeController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 53:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsStreamAffectedByRingerMode = isStreamAffectedByRingerMode(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsStreamAffectedByRingerMode ? 1 : 0);
                    return true;
                case 54:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsStreamAffectedByMute = isStreamAffectedByMute(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsStreamAffectedByMute ? 1 : 0);
                    return true;
                case 55:
                    parcel.enforceInterface(DESCRIPTOR);
                    disableSafeMediaVolume(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 56:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean safeMediaVolumeEnabled = getSafeMediaVolumeEnabled(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(safeMediaVolumeEnabled ? 1 : 0);
                    return true;
                case 57:
                    parcel.enforceInterface(DESCRIPTOR);
                    int hdmiSystemAudioSupported = setHdmiSystemAudioSupported(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(hdmiSystemAudioSupported);
                    return true;
                case 58:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsHdmiSystemAudioSupported = isHdmiSystemAudioSupported();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsHdmiSystemAudioSupported ? 1 : 0);
                    return true;
                case 59:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strRegisterAudioPolicy = registerAudioPolicy(parcel.readInt() != 0 ? AudioPolicyConfig.CREATOR.createFromParcel(parcel) : null, IAudioPolicyCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeString(strRegisterAudioPolicy);
                    return true;
                case 60:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAudioPolicyAsync(IAudioPolicyCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 61:
                    parcel.enforceInterface(DESCRIPTOR);
                    int focusPropertiesForPolicy = setFocusPropertiesForPolicy(parcel.readInt(), IAudioPolicyCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(focusPropertiesForPolicy);
                    return true;
                case 62:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVolumePolicy(parcel.readInt() != 0 ? VolumePolicy.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 63:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerRecordingCallback(IRecordingConfigDispatcher.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 64:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterRecordingCallback(IRecordingConfigDispatcher.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 65:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<AudioRecordingConfiguration> activeRecordingConfigurations = getActiveRecordingConfigurations();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(activeRecordingConfigurations);
                    return true;
                case 66:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerPlaybackCallback(IPlaybackConfigDispatcher.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 67:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterPlaybackCallback(IPlaybackConfigDispatcher.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 68:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<AudioPlaybackConfiguration> activePlaybackConfigurations = getActivePlaybackConfigurations();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(activePlaybackConfigurations);
                    return true;
                case 69:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iTrackPlayer = trackPlayer(parcel.readInt() != 0 ? PlayerBase.PlayerIdCard.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(iTrackPlayer);
                    return true;
                case 70:
                    parcel.enforceInterface(DESCRIPTOR);
                    playerAttributes(parcel.readInt(), parcel.readInt() != 0 ? AudioAttributes.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 71:
                    parcel.enforceInterface(DESCRIPTOR);
                    playerEvent(parcel.readInt(), parcel.readInt());
                    return true;
                case 72:
                    parcel.enforceInterface(DESCRIPTOR);
                    releasePlayer(parcel.readInt());
                    return true;
                case 73:
                    parcel.enforceInterface(DESCRIPTOR);
                    disableRingtoneSync(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 74:
                    parcel.enforceInterface(DESCRIPTOR);
                    int focusRampTimeMs = getFocusRampTimeMs(parcel.readInt(), parcel.readInt() != 0 ? AudioAttributes.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(focusRampTimeMs);
                    return true;
                case 75:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iDispatchFocusChange = dispatchFocusChange(parcel.readInt() != 0 ? AudioFocusInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), IAudioPolicyCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(iDispatchFocusChange);
                    return true;
                case 76:
                    parcel.enforceInterface(DESCRIPTOR);
                    playerHasOpPlayAudio(parcel.readInt(), parcel.readInt() != 0);
                    return true;
                case 77:
                    parcel.enforceInterface(DESCRIPTOR);
                    setForceUseSpeaker(parcel.readInt(), parcel.readInt() != 0, parcel.readStrongBinder(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 78:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAudioSwitch2iis(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 79:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVoiceSwitch2iis(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    int abandonAudioFocus(IAudioFocusDispatcher iAudioFocusDispatcher, String str, AudioAttributes audioAttributes, String str2);

    void adjustStreamVolume(int i2, int i3, int i4, String str);

    void adjustSuggestedStreamVolume(int i2, int i3, int i4, String str, String str2);

    void avrcpSupportsAbsoluteVolume(String str, boolean z2);

    void disableRingtoneSync(int i2);

    void disableSafeMediaVolume(String str);

    int dispatchFocusChange(AudioFocusInfo audioFocusInfo, int i2, IAudioPolicyCallback iAudioPolicyCallback);

    void forceRemoteSubmixFullVolume(boolean z2, IBinder iBinder);

    void forceVolumeControlStream(int i2, IBinder iBinder);

    List<AudioPlaybackConfiguration> getActivePlaybackConfigurations();

    List<AudioRecordingConfiguration> getActiveRecordingConfigurations();

    int getCurrentAudioFocus();

    int getFocusRampTimeMs(int i2, AudioAttributes audioAttributes);

    int getLastAudibleStreamVolume(int i2);

    int getMode();

    int getRingerModeExternal();

    int getRingerModeInternal();

    IRingtonePlayer getRingtonePlayer();

    boolean getSafeMediaVolumeEnabled(String str);

    int getStreamMaxVolume(int i2);

    int getStreamMinVolume(int i2);

    int getStreamVolume(int i2);

    int getUiSoundsStreamType();

    int getVibrateSetting(int i2);

    void handleBluetoothA2dpDeviceConfigChange(BluetoothDevice bluetoothDevice);

    boolean isBluetoothA2dpOn();

    boolean isBluetoothScoOn();

    boolean isCameraSoundForced();

    boolean isHdmiSystemAudioSupported();

    boolean isMasterMute();

    boolean isSpeakerphoneOn();

    boolean isStreamAffectedByMute(int i2);

    boolean isStreamAffectedByRingerMode(int i2);

    boolean isStreamMute(int i2);

    boolean isValidRingerMode(int i2);

    boolean loadSoundEffects();

    void notifyVolumeControllerVisible(IVolumeController iVolumeController, boolean z2);

    void playSoundEffect(int i2);

    void playSoundEffectVolume(int i2, float f2);

    void playerAttributes(int i2, AudioAttributes audioAttributes);

    void playerEvent(int i2, int i3);

    void playerHasOpPlayAudio(int i2, boolean z2);

    String registerAudioPolicy(AudioPolicyConfig audioPolicyConfig, IAudioPolicyCallback iAudioPolicyCallback, boolean z2, boolean z3);

    void registerPlaybackCallback(IPlaybackConfigDispatcher iPlaybackConfigDispatcher);

    void registerRecordingCallback(IRecordingConfigDispatcher iRecordingConfigDispatcher);

    void releasePlayer(int i2);

    void reloadAudioSettings();

    int requestAudioFocus(AudioAttributes audioAttributes, int i2, IBinder iBinder, IAudioFocusDispatcher iAudioFocusDispatcher, String str, String str2, int i3, IAudioPolicyCallback iAudioPolicyCallback, int i4);

    void setAudioSwitch2iis(boolean z2);

    int setBluetoothA2dpDeviceConnectionState(BluetoothDevice bluetoothDevice, int i2, int i3);

    void setBluetoothA2dpOn(boolean z2);

    void setBluetoothScoOn(boolean z2);

    int setFocusPropertiesForPolicy(int i2, IAudioPolicyCallback iAudioPolicyCallback);

    void setForceUseSpeaker(int i2, boolean z2, IBinder iBinder, String str);

    int setHdmiSystemAudioSupported(boolean z2);

    void setMasterMute(boolean z2, int i2, String str, int i3);

    void setMicrophoneMute(boolean z2, String str, int i2);

    void setMode(int i2, IBinder iBinder, String str);

    void setRingerModeExternal(int i2, String str);

    void setRingerModeInternal(int i2, String str);

    void setRingtonePlayer(IRingtonePlayer iRingtonePlayer);

    void setSpeakerphoneOn(boolean z2);

    void setStreamVolume(int i2, int i3, int i4, String str);

    void setVibrateSetting(int i2, int i3);

    void setVoiceSwitch2iis(boolean z2);

    void setVolumeController(IVolumeController iVolumeController);

    void setVolumePolicy(VolumePolicy volumePolicy);

    void setWiredDeviceConnectionState(int i2, int i3, String str, String str2, String str3);

    boolean shouldVibrate(int i2);

    void startBluetoothSco(IBinder iBinder, int i2);

    void startBluetoothScoVirtualCall(IBinder iBinder);

    AudioRoutesInfo startWatchingRoutes(IAudioRoutesObserver iAudioRoutesObserver);

    void stopBluetoothSco(IBinder iBinder);

    int trackPlayer(PlayerBase.PlayerIdCard playerIdCard);

    void unloadSoundEffects();

    void unregisterAudioFocusClient(String str);

    void unregisterAudioPolicyAsync(IAudioPolicyCallback iAudioPolicyCallback);

    void unregisterPlaybackCallback(IPlaybackConfigDispatcher iPlaybackConfigDispatcher);

    void unregisterRecordingCallback(IRecordingConfigDispatcher iRecordingConfigDispatcher);
}
