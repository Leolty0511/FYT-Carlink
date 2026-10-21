package com.android.ims.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.Surface;

/* JADX INFO: loaded from: classes2.dex */
public interface IVoWifiCall extends IInterface {

    public static abstract class Stub extends Binder implements IVoWifiCall {
        private static final String DESCRIPTOR = "com.android.ims.internal.IVoWifiCall";
        static final int TRANSACTION_cameraAttach = 28;
        static final int TRANSACTION_cameraDetach = 29;
        static final int TRANSACTION_captureStart = 32;
        static final int TRANSACTION_captureStop = 33;
        static final int TRANSACTION_captureStopAll = 34;
        static final int TRANSACTION_confAcceptInvite = 21;
        static final int TRANSACTION_confAddMembers = 20;
        static final int TRANSACTION_confCall = 15;
        static final int TRANSACTION_confHold = 18;
        static final int TRANSACTION_confInit = 16;
        static final int TRANSACTION_confKickMembers = 23;
        static final int TRANSACTION_confRelease = 26;
        static final int TRANSACTION_confResume = 19;
        static final int TRANSACTION_confSetLocalImageForTrans = 25;
        static final int TRANSACTION_confSetMute = 24;
        static final int TRANSACTION_confSetup = 17;
        static final int TRANSACTION_confTerm = 22;
        static final int TRANSACTION_confUpdateSRVCCResult = 27;
        static final int TRANSACTION_getDefaultVideoLevel = 42;
        static final int TRANSACTION_getMediaJitter = 46;
        static final int TRANSACTION_getMediaLostRatio = 45;
        static final int TRANSACTION_getMediaRtt = 47;
        static final int TRANSACTION_localRenderAdd = 38;
        static final int TRANSACTION_localRenderRemove = 40;
        static final int TRANSACTION_localRenderRotate = 36;
        static final int TRANSACTION_registerCallback = 1;
        static final int TRANSACTION_remoteRenderAdd = 37;
        static final int TRANSACTION_remoteRenderRemove = 39;
        static final int TRANSACTION_remoteRenderRotate = 35;
        static final int TRANSACTION_sendSessionModifyRequest = 43;
        static final int TRANSACTION_sendSessionModifyResponse = 44;
        static final int TRANSACTION_sendUSSDMessage = 48;
        static final int TRANSACTION_sessAnswer = 11;
        static final int TRANSACTION_sessCall = 5;
        static final int TRANSACTION_sessDtmf = 10;
        static final int TRANSACTION_sessHold = 8;
        static final int TRANSACTION_sessRelease = 13;
        static final int TRANSACTION_sessResume = 9;
        static final int TRANSACTION_sessSetMicMute = 6;
        static final int TRANSACTION_sessTerm = 7;
        static final int TRANSACTION_sessUpdate = 12;
        static final int TRANSACTION_sessUpdateSRVCCResult = 14;
        static final int TRANSACTION_setDefaultVideoLevel = 41;
        static final int TRANSACTION_startAudioStream = 3;
        static final int TRANSACTION_stopAudioStream = 4;
        static final int TRANSACTION_unregisterCallback = 2;
        static final int TRANSACTION_updateDataRouterState = 49;
        static final int TRANSACTION_videoStart = 30;
        static final int TRANSACTION_videoStop = 31;

        public static class Proxy implements IVoWifiCall {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int cameraAttach(boolean z2, int i2, boolean z3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i3 = 1;
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    if (!z3) {
                        i3 = 0;
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int cameraDetach(boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int captureStart(boolean z2, int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(32, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int captureStop(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(33, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int captureStopAll() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(34, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int confAcceptInvite(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int confAddMembers(int i2, String[] strArr, int[] iArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStringArray(strArr);
                    parcelObtain.writeIntArray(iArr);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int confCall(String[] strArr, String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringArray(strArr);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int confHold(int i2) {
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

            @Override // com.android.ims.internal.IVoWifiCall
            public int confInit(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int confKickMembers(int i2, String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStringArray(strArr);
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int confRelease(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int confResume(int i2) {
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

            @Override // com.android.ims.internal.IVoWifiCall
            public int confSetLocalImageForTrans(int i2, String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int confSetMute(int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int confSetup(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int confTerm(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int confUpdateSRVCCResult(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int getDefaultVideoLevel() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(42, parcelObtain, parcelObtain2, 0);
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

            @Override // com.android.ims.internal.IVoWifiCall
            public int getMediaJitter(int i2, boolean z2, boolean z3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    int i3 = 1;
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!z3) {
                        i3 = 0;
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(46, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int getMediaLostRatio(int i2, boolean z2, boolean z3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    int i3 = 1;
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!z3) {
                        i3 = 0;
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(45, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int getMediaRtt(int i2, boolean z2, boolean z3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    int i3 = 1;
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!z3) {
                        i3 = 0;
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(47, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int localRenderAdd(Surface surface, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i2 = 1;
                    if (surface != null) {
                        parcelObtain.writeInt(1);
                        surface.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z2) {
                        i2 = 0;
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(38, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int localRenderRemove(Surface surface, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i2 = 1;
                    if (surface != null) {
                        parcelObtain.writeInt(1);
                        surface.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z2) {
                        i2 = 0;
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(40, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int localRenderRotate(boolean z2, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(36, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public void registerCallback(IVoWifiCallCallback iVoWifiCallCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVoWifiCallCallback != null ? iVoWifiCallCallback.asBinder() : null);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int remoteRenderAdd(Surface surface, boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i3 = 1;
                    if (surface != null) {
                        parcelObtain.writeInt(1);
                        surface.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z2) {
                        i3 = 0;
                    }
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(37, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int remoteRenderRemove(Surface surface, boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i3 = 1;
                    if (surface != null) {
                        parcelObtain.writeInt(1);
                        surface.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z2) {
                        i3 = 0;
                    }
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(39, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int remoteRenderRotate(boolean z2, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(35, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int sendSessionModifyRequest(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(43, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int sendSessionModifyResponse(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(44, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int sendUSSDMessage(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(48, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int sessAnswer(int i2, String str, boolean z2, boolean z3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    int i3 = 1;
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!z3) {
                        i3 = 0;
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int sessCall(String str, String str2, boolean z2, boolean z3, boolean z4, boolean z5) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    int i2 = 1;
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(z3 ? 1 : 0);
                    parcelObtain.writeInt(z4 ? 1 : 0);
                    if (!z5) {
                        i2 = 0;
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int sessDtmf(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int sessHold(int i2) {
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

            @Override // com.android.ims.internal.IVoWifiCall
            public int sessRelease(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int sessResume(int i2) {
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

            @Override // com.android.ims.internal.IVoWifiCall
            public int sessSetMicMute(int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int sessTerm(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int sessUpdate(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int sessUpdateSRVCCResult(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int setDefaultVideoLevel(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(41, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public void startAudioStream() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public void stopAudioStream() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public void unregisterCallback(IVoWifiCallCallback iVoWifiCallCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVoWifiCallCallback != null ? iVoWifiCallCallback.asBinder() : null);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int updateDataRouterState(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(49, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int videoStart(boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IVoWifiCall
            public int videoStop(boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(31, parcelObtain, parcelObtain2, 0);
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

        public static IVoWifiCall asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IVoWifiCall)) ? new Proxy(iBinder) : (IVoWifiCall) iInterfaceQueryLocalInterface;
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
                    registerCallback(IVoWifiCallCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCallback(IVoWifiCallCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    startAudioStream();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopAudioStream();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSessCall = sessCall(parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iSessCall);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSessSetMicMute = sessSetMicMute(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iSessSetMicMute);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSessTerm = sessTerm(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iSessTerm);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSessHold = sessHold(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iSessHold);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSessResume = sessResume(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iSessResume);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSessDtmf = sessDtmf(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iSessDtmf);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSessAnswer = sessAnswer(parcel.readInt(), parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iSessAnswer);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSessUpdate = sessUpdate(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iSessUpdate);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSessRelease = sessRelease(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iSessRelease);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSessUpdateSRVCCResult = sessUpdateSRVCCResult(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iSessUpdateSRVCCResult);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iConfCall = confCall(parcel.createStringArray(), parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iConfCall);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iConfInit = confInit(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iConfInit);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iConfSetup = confSetup(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iConfSetup);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iConfHold = confHold(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iConfHold);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iConfResume = confResume(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iConfResume);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iConfAddMembers = confAddMembers(parcel.readInt(), parcel.createStringArray(), parcel.createIntArray());
                    parcel2.writeNoException();
                    parcel2.writeInt(iConfAddMembers);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iConfAcceptInvite = confAcceptInvite(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iConfAcceptInvite);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iConfTerm = confTerm(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iConfTerm);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iConfKickMembers = confKickMembers(parcel.readInt(), parcel.createStringArray());
                    parcel2.writeNoException();
                    parcel2.writeInt(iConfKickMembers);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iConfSetMute = confSetMute(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iConfSetMute);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iConfSetLocalImageForTrans = confSetLocalImageForTrans(parcel.readInt(), parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iConfSetLocalImageForTrans);
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iConfRelease = confRelease(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iConfRelease);
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iConfUpdateSRVCCResult = confUpdateSRVCCResult(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iConfUpdateSRVCCResult);
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCameraAttach = cameraAttach(parcel.readInt() != 0, parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iCameraAttach);
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCameraDetach = cameraDetach(parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iCameraDetach);
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iVideoStart = videoStart(parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iVideoStart);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iVideoStop = videoStop(parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iVideoStop);
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCaptureStart = captureStart(parcel.readInt() != 0, parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iCaptureStart);
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCaptureStop = captureStop(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iCaptureStop);
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCaptureStopAll = captureStopAll();
                    parcel2.writeNoException();
                    parcel2.writeInt(iCaptureStopAll);
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iRemoteRenderRotate = remoteRenderRotate(parcel.readInt() != 0, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iRemoteRenderRotate);
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iLocalRenderRotate = localRenderRotate(parcel.readInt() != 0, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iLocalRenderRotate);
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iRemoteRenderAdd = remoteRenderAdd(parcel.readInt() != 0 ? Surface.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iRemoteRenderAdd);
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iLocalRenderAdd = localRenderAdd(parcel.readInt() != 0 ? Surface.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iLocalRenderAdd);
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iRemoteRenderRemove = remoteRenderRemove(parcel.readInt() != 0 ? Surface.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iRemoteRenderRemove);
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iLocalRenderRemove = localRenderRemove(parcel.readInt() != 0 ? Surface.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iLocalRenderRemove);
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    int defaultVideoLevel = setDefaultVideoLevel(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(defaultVideoLevel);
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    int defaultVideoLevel2 = getDefaultVideoLevel();
                    parcel2.writeNoException();
                    parcel2.writeInt(defaultVideoLevel2);
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSendSessionModifyRequest = sendSessionModifyRequest(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iSendSessionModifyRequest);
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSendSessionModifyResponse = sendSessionModifyResponse(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iSendSessionModifyResponse);
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    int mediaLostRatio = getMediaLostRatio(parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(mediaLostRatio);
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    int mediaJitter = getMediaJitter(parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(mediaJitter);
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    int mediaRtt = getMediaRtt(parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(mediaRtt);
                    return true;
                case 48:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSendUSSDMessage = sendUSSDMessage(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iSendUSSDMessage);
                    return true;
                case 49:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iUpdateDataRouterState = updateDataRouterState(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iUpdateDataRouterState);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    int cameraAttach(boolean z2, int i2, boolean z3);

    int cameraDetach(boolean z2, int i2);

    int captureStart(boolean z2, int i2, int i3, int i4);

    int captureStop(boolean z2);

    int captureStopAll();

    int confAcceptInvite(int i2);

    int confAddMembers(int i2, String[] strArr, int[] iArr);

    int confCall(String[] strArr, String str, boolean z2);

    int confHold(int i2);

    int confInit(boolean z2);

    int confKickMembers(int i2, String[] strArr);

    int confRelease(int i2);

    int confResume(int i2);

    int confSetLocalImageForTrans(int i2, String str, boolean z2);

    int confSetMute(int i2, boolean z2);

    int confSetup(int i2, String str);

    int confTerm(int i2, int i3);

    int confUpdateSRVCCResult(int i2, int i3);

    int getDefaultVideoLevel();

    int getMediaJitter(int i2, boolean z2, boolean z3);

    int getMediaLostRatio(int i2, boolean z2, boolean z3);

    int getMediaRtt(int i2, boolean z2, boolean z3);

    int localRenderAdd(Surface surface, boolean z2);

    int localRenderRemove(Surface surface, boolean z2);

    int localRenderRotate(boolean z2, int i2, int i3);

    void registerCallback(IVoWifiCallCallback iVoWifiCallCallback);

    int remoteRenderAdd(Surface surface, boolean z2, int i2);

    int remoteRenderRemove(Surface surface, boolean z2, int i2);

    int remoteRenderRotate(boolean z2, int i2, int i3);

    int sendSessionModifyRequest(int i2, int i3);

    int sendSessionModifyResponse(int i2, int i3);

    int sendUSSDMessage(int i2, String str);

    int sessAnswer(int i2, String str, boolean z2, boolean z3);

    int sessCall(String str, String str2, boolean z2, boolean z3, boolean z4, boolean z5);

    int sessDtmf(int i2, int i3);

    int sessHold(int i2);

    int sessRelease(int i2);

    int sessResume(int i2);

    int sessSetMicMute(int i2, boolean z2);

    int sessTerm(int i2, int i3);

    int sessUpdate(int i2, int i3);

    int sessUpdateSRVCCResult(int i2, int i3);

    int setDefaultVideoLevel(int i2);

    void startAudioStream();

    void stopAudioStream();

    void unregisterCallback(IVoWifiCallCallback iVoWifiCallCallback);

    int updateDataRouterState(int i2);

    int videoStart(boolean z2, int i2);

    int videoStop(boolean z2, int i2);
}
