package android.media;

import android.app.PendingIntent;
import android.bluetooth.BluetoothDevice;
import android.content.ComponentName;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes.dex */
public interface IAudioService extends IInterface {

    public static abstract class Stub extends Binder implements IAudioService {
        private static final String DESCRIPTOR = "android.media.IAudioService";
        public static final int TRANSACTION_abandonAudioFocus = 45;
        public static final int TRANSACTION_adjustLocalOrRemoteStreamVolume = 4;
        public static final int TRANSACTION_adjustMasterVolume = 7;
        public static final int TRANSACTION_adjustStreamVolume = 6;
        public static final int TRANSACTION_adjustSuggestedStreamVolume = 5;
        public static final int TRANSACTION_adjustVolume = 2;
        public static final int TRANSACTION_avrcpSupportsAbsoluteVolume = 37;
        public static final int TRANSACTION_dispatchMediaKeyEvent = 48;
        public static final int TRANSACTION_dispatchMediaKeyEventUnderWakelock = 49;
        public static final int TRANSACTION_forceVolumeControlStream = 70;
        public static final int TRANSACTION_getCurrentAudioFocus = 47;
        public static final int TRANSACTION_getLastAudibleMasterVolume = 21;
        public static final int TRANSACTION_getLastAudibleStreamVolume = 20;
        public static final int TRANSACTION_getMasterMaxVolume = 19;
        public static final int TRANSACTION_getMasterStreamType = 73;
        public static final int TRANSACTION_getMasterVolume = 17;
        public static final int TRANSACTION_getMode = 31;
        public static final int TRANSACTION_getRemoteStreamMaxVolume = 65;
        public static final int TRANSACTION_getRemoteStreamVolume = 66;
        public static final int TRANSACTION_getRingerMode = 23;
        public static final int TRANSACTION_getRingtonePlayer = 72;
        public static final int TRANSACTION_getStreamMaxVolume = 18;
        public static final int TRANSACTION_getStreamVolume = 16;
        public static final int TRANSACTION_getVibrateSetting = 25;
        public static final int TRANSACTION_isBluetoothA2dpOn = 43;
        public static final int TRANSACTION_isBluetoothScoOn = 41;
        public static final int TRANSACTION_isCameraSoundForced = 77;
        public static final int TRANSACTION_isLocalOrRemoteMusicActive = 3;
        public static final int TRANSACTION_isMasterMute = 15;
        public static final int TRANSACTION_isSpeakerphoneOn = 39;
        public static final int TRANSACTION_isStreamMute = 13;
        public static final int TRANSACTION_ismapapplication = 27;
        public static final int TRANSACTION_loadSoundEffects = 34;
        public static final int TRANSACTION_playSoundEffect = 32;
        public static final int TRANSACTION_playSoundEffectVolume = 33;
        public static final int TRANSACTION_procName = 28;
        public static final int TRANSACTION_registerMediaButtonEventReceiverForCalls = 52;
        public static final int TRANSACTION_registerMediaButtonIntent = 50;
        public static final int TRANSACTION_registerRemoteControlClient = 61;
        public static final int TRANSACTION_registerRemoteControlDisplay = 54;
        public static final int TRANSACTION_registerRemoteController = 55;
        public static final int TRANSACTION_registerRemoteVolumeObserverForRcc = 67;
        public static final int TRANSACTION_reloadAudioSettings = 36;
        public static final int TRANSACTION_remoteControlDisplayUsesBitmapSize = 57;
        public static final int TRANSACTION_remoteControlDisplayWantsPlaybackPositionSync = 58;
        public static final int TRANSACTION_requestAudioFocus = 44;
        public static final int TRANSACTION_sendToSyuServiceAudioInformation = 29;
        public static final int TRANSACTION_setBluetoothA2dpDeviceConnectionState = 75;
        public static final int TRANSACTION_setBluetoothA2dpOn = 42;
        public static final int TRANSACTION_setBluetoothScoOn = 40;
        public static final int TRANSACTION_setMasterMute = 14;
        public static final int TRANSACTION_setMasterVolume = 10;
        public static final int TRANSACTION_setMode = 30;
        public static final int TRANSACTION_setPlaybackInfoForRcc = 63;
        public static final int TRANSACTION_setPlaybackStateForRcc = 64;
        public static final int TRANSACTION_setRemoteControlClientPlaybackPosition = 59;
        public static final int TRANSACTION_setRemoteStreamVolume = 9;
        public static final int TRANSACTION_setRingerMode = 22;
        public static final int TRANSACTION_setRingtonePlayer = 71;
        public static final int TRANSACTION_setSpeakerphoneOn = 38;
        public static final int TRANSACTION_setStreamMute = 12;
        public static final int TRANSACTION_setStreamSolo = 11;
        public static final int TRANSACTION_setStreamVolume = 8;
        public static final int TRANSACTION_setVibrateSetting = 24;
        public static final int TRANSACTION_setWiredDeviceConnectionState = 74;
        public static final int TRANSACTION_shouldVibrate = 26;
        public static final int TRANSACTION_startBluetoothSco = 68;
        public static final int TRANSACTION_startWatchingRoutes = 76;
        public static final int TRANSACTION_stopBluetoothSco = 69;
        public static final int TRANSACTION_unloadSoundEffects = 35;
        public static final int TRANSACTION_unregisterAudioFocusClient = 46;
        public static final int TRANSACTION_unregisterMediaButtonEventReceiverForCalls = 53;
        public static final int TRANSACTION_unregisterMediaButtonIntent = 51;
        public static final int TRANSACTION_unregisterRemoteControlClient = 62;
        public static final int TRANSACTION_unregisterRemoteControlDisplay = 56;
        public static final int TRANSACTION_updateRemoteControlClientMetadata = 60;
        public static final int TRANSACTION_verifyX509CertChain = 1;

        public static class Proxy implements IAudioService {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.media.IAudioService
            public int abandonAudioFocus(IAudioFocusDispatcher iAudioFocusDispatcher, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAudioFocusDispatcher != null ? iAudioFocusDispatcher.asBinder() : null);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(45, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void adjustLocalOrRemoteStreamVolume(int i2, int i3, String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void adjustMasterVolume(int i2, int i3, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
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
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void adjustSuggestedStreamVolume(int i2, int i3, int i4, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void adjustVolume(int i2, int i3, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
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
                    this.mRemote.transact(37, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void dispatchMediaKeyEvent(KeyEvent keyEvent) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (keyEvent != null) {
                        parcelObtain.writeInt(1);
                        keyEvent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(48, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void dispatchMediaKeyEventUnderWakelock(KeyEvent keyEvent) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (keyEvent != null) {
                        parcelObtain.writeInt(1);
                        keyEvent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(49, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(70, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
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
                    this.mRemote.transact(47, parcelObtain, parcelObtain2, 0);
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
            public int getLastAudibleMasterVolume() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getLastAudibleStreamVolume(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getMasterMaxVolume() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getMasterStreamType() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(73, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getMasterVolume() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(31, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getRemoteStreamMaxVolume() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(65, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getRemoteStreamVolume() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(66, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int getRingerMode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(72, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return IRingtonePlayer.Stub.asInterface(parcelObtain2.readStrongBinder());
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
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
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
                    this.mRemote.transact(43, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(41, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(77, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean isLocalOrRemoteMusicActive() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(39, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int ismapapplication(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
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
                    this.mRemote.transact(34, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
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
                    this.mRemote.transact(32, parcelObtain, null, 1);
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
                    this.mRemote.transact(33, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public String procName(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerMediaButtonEventReceiverForCalls(ComponentName componentName) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(52, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerMediaButtonIntent(PendingIntent pendingIntent, ComponentName componentName, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (pendingIntent != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(50, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int registerRemoteControlClient(PendingIntent pendingIntent, IRemoteControlClient iRemoteControlClient, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (pendingIntent != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iRemoteControlClient != null ? iRemoteControlClient.asBinder() : null);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(61, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean registerRemoteControlDisplay(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRemoteControlDisplay != null ? iRemoteControlDisplay.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(54, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public boolean registerRemoteController(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3, ComponentName componentName) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRemoteControlDisplay != null ? iRemoteControlDisplay.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(55, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void registerRemoteVolumeObserverForRcc(int i2, IRemoteVolumeObserver iRemoteVolumeObserver) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iRemoteVolumeObserver != null ? iRemoteVolumeObserver.asBinder() : null);
                    this.mRemote.transact(67, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void reloadAudioSettings() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(36, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void remoteControlDisplayUsesBitmapSize(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRemoteControlDisplay != null ? iRemoteControlDisplay.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(57, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void remoteControlDisplayWantsPlaybackPositionSync(IRemoteControlDisplay iRemoteControlDisplay, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRemoteControlDisplay != null ? iRemoteControlDisplay.asBinder() : null);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(58, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int requestAudioFocus(int i2, int i3, IBinder iBinder, IAudioFocusDispatcher iAudioFocusDispatcher, String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeStrongBinder(iAudioFocusDispatcher != null ? iAudioFocusDispatcher.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(44, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void sendToSyuServiceAudioInformation(int i2, int[] iArr, float[] fArr, String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeIntArray(iArr);
                    parcelObtain.writeFloatArray(fArr);
                    parcelObtain.writeStringArray(strArr);
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int setBluetoothA2dpDeviceConnectionState(BluetoothDevice bluetoothDevice, int i2) {
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
                    this.mRemote.transact(75, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(42, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(40, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setMasterMute(boolean z2, int i2, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setMasterVolume(int i2, int i3, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setMode(int i2, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setPlaybackInfoForRcc(int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(63, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setPlaybackStateForRcc(int i2, int i3, long j2, float f2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeFloat(f2);
                    this.mRemote.transact(64, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setRemoteControlClientPlaybackPosition(int i2, long j2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    this.mRemote.transact(59, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setRemoteStreamVolume(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(9, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setRingerMode(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(71, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(38, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setStreamMute(int i2, boolean z2, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setStreamSolo(int i2, boolean z2, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void setWiredDeviceConnectionState(int i2, int i3, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(74, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(26, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(68, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(76, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(69, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
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
                    this.mRemote.transact(35, parcelObtain, null, 1);
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
                    this.mRemote.transact(46, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterMediaButtonEventReceiverForCalls() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(53, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterMediaButtonIntent(PendingIntent pendingIntent) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (pendingIntent != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(51, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterRemoteControlClient(PendingIntent pendingIntent, IRemoteControlClient iRemoteControlClient) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (pendingIntent != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iRemoteControlClient != null ? iRemoteControlClient.asBinder() : null);
                    this.mRemote.transact(62, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void unregisterRemoteControlDisplay(IRemoteControlDisplay iRemoteControlDisplay) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRemoteControlDisplay != null ? iRemoteControlDisplay.asBinder() : null);
                    this.mRemote.transact(56, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public void updateRemoteControlClientMetadata(int i2, int i3, Rating rating) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (rating != null) {
                        parcelObtain.writeInt(1);
                        rating.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(60, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.media.IAudioService
            public int verifyX509CertChain(int i2, byte[] bArr, String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
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
                    int iVerifyX509CertChain = verifyX509CertChain(parcel.readInt(), parcel.createByteArray(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iVerifyX509CertChain);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    adjustVolume(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsLocalOrRemoteMusicActive = isLocalOrRemoteMusicActive();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsLocalOrRemoteMusicActive ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    adjustLocalOrRemoteStreamVolume(parcel.readInt(), parcel.readInt(), parcel.readString());
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    adjustSuggestedStreamVolume(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    adjustStreamVolume(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    adjustMasterVolume(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    setStreamVolume(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    setRemoteStreamVolume(parcel.readInt());
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMasterVolume(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    setStreamSolo(parcel.readInt(), parcel.readInt() != 0, parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    setStreamMute(parcel.readInt(), parcel.readInt() != 0, parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsStreamMute = isStreamMute(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsStreamMute ? 1 : 0);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMasterMute(parcel.readInt() != 0, parcel.readInt(), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsMasterMute = isMasterMute();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsMasterMute ? 1 : 0);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    int streamVolume = getStreamVolume(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(streamVolume);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    int masterVolume = getMasterVolume();
                    parcel2.writeNoException();
                    parcel2.writeInt(masterVolume);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    int streamMaxVolume = getStreamMaxVolume(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(streamMaxVolume);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    int masterMaxVolume = getMasterMaxVolume();
                    parcel2.writeNoException();
                    parcel2.writeInt(masterMaxVolume);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    int lastAudibleStreamVolume = getLastAudibleStreamVolume(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(lastAudibleStreamVolume);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    int lastAudibleMasterVolume = getLastAudibleMasterVolume();
                    parcel2.writeNoException();
                    parcel2.writeInt(lastAudibleMasterVolume);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    setRingerMode(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    int ringerMode = getRingerMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(ringerMode);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVibrateSetting(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    int vibrateSetting = getVibrateSetting(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(vibrateSetting);
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zShouldVibrate = shouldVibrate(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zShouldVibrate ? 1 : 0);
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iIsmapapplication = ismapapplication(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iIsmapapplication);
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strProcName = procName(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(strProcName);
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendToSyuServiceAudioInformation(parcel.readInt(), parcel.createIntArray(), parcel.createFloatArray(), parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMode(parcel.readInt(), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    int mode = getMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(mode);
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    playSoundEffect(parcel.readInt());
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    playSoundEffectVolume(parcel.readInt(), parcel.readFloat());
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zLoadSoundEffects = loadSoundEffects();
                    parcel2.writeNoException();
                    parcel2.writeInt(zLoadSoundEffects ? 1 : 0);
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    unloadSoundEffects();
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    reloadAudioSettings();
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    avrcpSupportsAbsoluteVolume(parcel.readString(), parcel.readInt() != 0);
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSpeakerphoneOn(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsSpeakerphoneOn = isSpeakerphoneOn();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSpeakerphoneOn ? 1 : 0);
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    setBluetoothScoOn(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsBluetoothScoOn = isBluetoothScoOn();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsBluetoothScoOn ? 1 : 0);
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    setBluetoothA2dpOn(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsBluetoothA2dpOn = isBluetoothA2dpOn();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsBluetoothA2dpOn ? 1 : 0);
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iRequestAudioFocus = requestAudioFocus(parcel.readInt(), parcel.readInt(), parcel.readStrongBinder(), IAudioFocusDispatcher.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iRequestAudioFocus);
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAbandonAudioFocus = abandonAudioFocus(IAudioFocusDispatcher.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAbandonAudioFocus);
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAudioFocusClient(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    int currentAudioFocus = getCurrentAudioFocus();
                    parcel2.writeNoException();
                    parcel2.writeInt(currentAudioFocus);
                    return true;
                case 48:
                    parcel.enforceInterface(DESCRIPTOR);
                    dispatchMediaKeyEvent(parcel.readInt() != 0 ? KeyEvent.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 49:
                    parcel.enforceInterface(DESCRIPTOR);
                    dispatchMediaKeyEventUnderWakelock(parcel.readInt() != 0 ? KeyEvent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 50:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerMediaButtonIntent(parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 51:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterMediaButtonIntent(parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 52:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerMediaButtonEventReceiverForCalls(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 53:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterMediaButtonEventReceiverForCalls();
                    return true;
                case 54:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRegisterRemoteControlDisplay = registerRemoteControlDisplay(IRemoteControlDisplay.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zRegisterRemoteControlDisplay ? 1 : 0);
                    return true;
                case 55:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRegisterRemoteController = registerRemoteController(IRemoteControlDisplay.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zRegisterRemoteController ? 1 : 0);
                    return true;
                case 56:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterRemoteControlDisplay(IRemoteControlDisplay.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 57:
                    parcel.enforceInterface(DESCRIPTOR);
                    remoteControlDisplayUsesBitmapSize(IRemoteControlDisplay.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    return true;
                case 58:
                    parcel.enforceInterface(DESCRIPTOR);
                    remoteControlDisplayWantsPlaybackPositionSync(IRemoteControlDisplay.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0);
                    return true;
                case 59:
                    parcel.enforceInterface(DESCRIPTOR);
                    setRemoteControlClientPlaybackPosition(parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 60:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateRemoteControlClientMetadata(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? Rating.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 61:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iRegisterRemoteControlClient = registerRemoteControlClient(parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null, IRemoteControlClient.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iRegisterRemoteControlClient);
                    return true;
                case 62:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterRemoteControlClient(parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null, IRemoteControlClient.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 63:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPlaybackInfoForRcc(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 64:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPlaybackStateForRcc(parcel.readInt(), parcel.readInt(), parcel.readLong(), parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case 65:
                    parcel.enforceInterface(DESCRIPTOR);
                    int remoteStreamMaxVolume = getRemoteStreamMaxVolume();
                    parcel2.writeNoException();
                    parcel2.writeInt(remoteStreamMaxVolume);
                    return true;
                case 66:
                    parcel.enforceInterface(DESCRIPTOR);
                    int remoteStreamVolume = getRemoteStreamVolume();
                    parcel2.writeNoException();
                    parcel2.writeInt(remoteStreamVolume);
                    return true;
                case 67:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerRemoteVolumeObserverForRcc(parcel.readInt(), IRemoteVolumeObserver.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 68:
                    parcel.enforceInterface(DESCRIPTOR);
                    startBluetoothSco(parcel.readStrongBinder(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 69:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopBluetoothSco(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 70:
                    parcel.enforceInterface(DESCRIPTOR);
                    forceVolumeControlStream(parcel.readInt(), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 71:
                    parcel.enforceInterface(DESCRIPTOR);
                    setRingtonePlayer(IRingtonePlayer.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 72:
                    parcel.enforceInterface(DESCRIPTOR);
                    IRingtonePlayer ringtonePlayer = getRingtonePlayer();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(ringtonePlayer != null ? ringtonePlayer.asBinder() : null);
                    return true;
                case 73:
                    parcel.enforceInterface(DESCRIPTOR);
                    int masterStreamType = getMasterStreamType();
                    parcel2.writeNoException();
                    parcel2.writeInt(masterStreamType);
                    return true;
                case 74:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWiredDeviceConnectionState(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 75:
                    parcel.enforceInterface(DESCRIPTOR);
                    int bluetoothA2dpDeviceConnectionState = setBluetoothA2dpDeviceConnectionState(parcel.readInt() != 0 ? BluetoothDevice.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(bluetoothA2dpDeviceConnectionState);
                    return true;
                case 76:
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
                case 77:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsCameraSoundForced = isCameraSoundForced();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsCameraSoundForced ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    int abandonAudioFocus(IAudioFocusDispatcher iAudioFocusDispatcher, String str);

    void adjustLocalOrRemoteStreamVolume(int i2, int i3, String str);

    void adjustMasterVolume(int i2, int i3, String str);

    void adjustStreamVolume(int i2, int i3, int i4, String str);

    void adjustSuggestedStreamVolume(int i2, int i3, int i4, String str);

    void adjustVolume(int i2, int i3, String str);

    void avrcpSupportsAbsoluteVolume(String str, boolean z2);

    void dispatchMediaKeyEvent(KeyEvent keyEvent);

    void dispatchMediaKeyEventUnderWakelock(KeyEvent keyEvent);

    void forceVolumeControlStream(int i2, IBinder iBinder);

    int getCurrentAudioFocus();

    int getLastAudibleMasterVolume();

    int getLastAudibleStreamVolume(int i2);

    int getMasterMaxVolume();

    int getMasterStreamType();

    int getMasterVolume();

    int getMode();

    int getRemoteStreamMaxVolume();

    int getRemoteStreamVolume();

    int getRingerMode();

    IRingtonePlayer getRingtonePlayer();

    int getStreamMaxVolume(int i2);

    int getStreamVolume(int i2);

    int getVibrateSetting(int i2);

    boolean isBluetoothA2dpOn();

    boolean isBluetoothScoOn();

    boolean isCameraSoundForced();

    boolean isLocalOrRemoteMusicActive();

    boolean isMasterMute();

    boolean isSpeakerphoneOn();

    boolean isStreamMute(int i2);

    int ismapapplication(int i2);

    boolean loadSoundEffects();

    void playSoundEffect(int i2);

    void playSoundEffectVolume(int i2, float f2);

    String procName(int i2);

    void registerMediaButtonEventReceiverForCalls(ComponentName componentName);

    void registerMediaButtonIntent(PendingIntent pendingIntent, ComponentName componentName, IBinder iBinder);

    int registerRemoteControlClient(PendingIntent pendingIntent, IRemoteControlClient iRemoteControlClient, String str);

    boolean registerRemoteControlDisplay(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3);

    boolean registerRemoteController(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3, ComponentName componentName);

    void registerRemoteVolumeObserverForRcc(int i2, IRemoteVolumeObserver iRemoteVolumeObserver);

    void reloadAudioSettings();

    void remoteControlDisplayUsesBitmapSize(IRemoteControlDisplay iRemoteControlDisplay, int i2, int i3);

    void remoteControlDisplayWantsPlaybackPositionSync(IRemoteControlDisplay iRemoteControlDisplay, boolean z2);

    int requestAudioFocus(int i2, int i3, IBinder iBinder, IAudioFocusDispatcher iAudioFocusDispatcher, String str, String str2);

    void sendToSyuServiceAudioInformation(int i2, int[] iArr, float[] fArr, String[] strArr);

    int setBluetoothA2dpDeviceConnectionState(BluetoothDevice bluetoothDevice, int i2);

    void setBluetoothA2dpOn(boolean z2);

    void setBluetoothScoOn(boolean z2);

    void setMasterMute(boolean z2, int i2, IBinder iBinder);

    void setMasterVolume(int i2, int i3, String str);

    void setMode(int i2, IBinder iBinder);

    void setPlaybackInfoForRcc(int i2, int i3, int i4);

    void setPlaybackStateForRcc(int i2, int i3, long j2, float f2);

    void setRemoteControlClientPlaybackPosition(int i2, long j2);

    void setRemoteStreamVolume(int i2);

    void setRingerMode(int i2);

    void setRingtonePlayer(IRingtonePlayer iRingtonePlayer);

    void setSpeakerphoneOn(boolean z2);

    void setStreamMute(int i2, boolean z2, IBinder iBinder);

    void setStreamSolo(int i2, boolean z2, IBinder iBinder);

    void setStreamVolume(int i2, int i3, int i4, String str);

    void setVibrateSetting(int i2, int i3);

    void setWiredDeviceConnectionState(int i2, int i3, String str);

    boolean shouldVibrate(int i2);

    void startBluetoothSco(IBinder iBinder, int i2);

    AudioRoutesInfo startWatchingRoutes(IAudioRoutesObserver iAudioRoutesObserver);

    void stopBluetoothSco(IBinder iBinder);

    void unloadSoundEffects();

    void unregisterAudioFocusClient(String str);

    void unregisterMediaButtonEventReceiverForCalls();

    void unregisterMediaButtonIntent(PendingIntent pendingIntent);

    void unregisterRemoteControlClient(PendingIntent pendingIntent, IRemoteControlClient iRemoteControlClient);

    void unregisterRemoteControlDisplay(IRemoteControlDisplay iRemoteControlDisplay);

    void updateRemoteControlClientMetadata(int i2, int i3, Rating rating);

    int verifyX509CertChain(int i2, byte[] bArr, String str, String str2);
}
