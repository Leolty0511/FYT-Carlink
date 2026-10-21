package com.android.ims.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.renderscript.a;
import com.android.ims.ImsCallProfile;
import com.android.ims.ImsConferenceState;
import com.android.ims.ImsReasonInfo;
import com.android.ims.ImsStreamMediaProfile;
import com.android.ims.ImsSuppServiceNotification;

/* JADX INFO: loaded from: classes2.dex */
public interface IImsCallSessionListener extends IInterface {

    public static abstract class Stub extends Binder implements IImsCallSessionListener {
        private static final String DESCRIPTOR = "com.android.ims.internal.IImsCallSessionListener";
        static final int TRANSACTION_callSessionConferenceExtendFailed = 18;
        static final int TRANSACTION_callSessionConferenceExtendReceived = 19;
        static final int TRANSACTION_callSessionConferenceExtended = 17;
        static final int TRANSACTION_callSessionConferenceStateUpdated = 24;
        static final int TRANSACTION_callSessionHandover = 26;
        static final int TRANSACTION_callSessionHandoverFailed = 27;
        static final int TRANSACTION_callSessionHeld = 5;
        static final int TRANSACTION_callSessionHoldFailed = 6;
        static final int TRANSACTION_callSessionHoldReceived = 7;
        static final int TRANSACTION_callSessionInviteParticipantsRequestDelivered = 20;
        static final int TRANSACTION_callSessionInviteParticipantsRequestFailed = 21;
        static final int TRANSACTION_callSessionMayHandover = 28;
        static final int TRANSACTION_callSessionMergeComplete = 12;
        static final int TRANSACTION_callSessionMergeFailed = 13;
        static final int TRANSACTION_callSessionMergeStarted = 11;
        static final int TRANSACTION_callSessionMultipartyStateChanged = 30;
        static final int TRANSACTION_callSessionProgressing = 1;
        static final int TRANSACTION_callSessionRemoveParticipantsRequestDelivered = 22;
        static final int TRANSACTION_callSessionRemoveParticipantsRequestFailed = 23;
        static final int TRANSACTION_callSessionResumeFailed = 9;
        static final int TRANSACTION_callSessionResumeReceived = 10;
        static final int TRANSACTION_callSessionResumed = 8;
        static final int TRANSACTION_callSessionRttMessageReceived = 34;
        static final int TRANSACTION_callSessionRttModifyRequestReceived = 32;
        static final int TRANSACTION_callSessionRttModifyResponseReceived = 33;
        static final int TRANSACTION_callSessionStartFailed = 3;
        static final int TRANSACTION_callSessionStarted = 2;
        static final int TRANSACTION_callSessionSuppServiceReceived = 31;
        static final int TRANSACTION_callSessionTerminated = 4;
        static final int TRANSACTION_callSessionTtyModeReceived = 29;
        static final int TRANSACTION_callSessionUpdateFailed = 15;
        static final int TRANSACTION_callSessionUpdateReceived = 16;
        static final int TRANSACTION_callSessionUpdated = 14;
        static final int TRANSACTION_callSessionUssdMessageReceived = 25;

        public static class Proxy implements IImsCallSessionListener {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionConferenceExtendFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsReasonInfo != null) {
                        parcelObtain.writeInt(1);
                        imsReasonInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(18, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionConferenceExtendReceived(IImsCallSession iImsCallSession, IImsCallSession iImsCallSession2, ImsCallProfile imsCallProfile) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    parcelObtain.writeStrongBinder(iImsCallSession2 != null ? iImsCallSession2.asBinder() : null);
                    if (imsCallProfile != null) {
                        parcelObtain.writeInt(1);
                        imsCallProfile.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(19, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionConferenceExtended(IImsCallSession iImsCallSession, IImsCallSession iImsCallSession2, ImsCallProfile imsCallProfile) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    parcelObtain.writeStrongBinder(iImsCallSession2 != null ? iImsCallSession2.asBinder() : null);
                    if (imsCallProfile != null) {
                        parcelObtain.writeInt(1);
                        imsCallProfile.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(17, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionConferenceStateUpdated(IImsCallSession iImsCallSession, ImsConferenceState imsConferenceState) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsConferenceState != null) {
                        parcelObtain.writeInt(1);
                        imsConferenceState.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(24, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionHandover(IImsCallSession iImsCallSession, int i2, int i3, ImsReasonInfo imsReasonInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (imsReasonInfo != null) {
                        parcelObtain.writeInt(1);
                        imsReasonInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(26, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionHandoverFailed(IImsCallSession iImsCallSession, int i2, int i3, ImsReasonInfo imsReasonInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (imsReasonInfo != null) {
                        parcelObtain.writeInt(1);
                        imsReasonInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(27, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionHeld(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsCallProfile != null) {
                        parcelObtain.writeInt(1);
                        imsCallProfile.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionHoldFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsReasonInfo != null) {
                        parcelObtain.writeInt(1);
                        imsReasonInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionHoldReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsCallProfile != null) {
                        parcelObtain.writeInt(1);
                        imsCallProfile.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionInviteParticipantsRequestDelivered(IImsCallSession iImsCallSession) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    this.mRemote.transact(20, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionInviteParticipantsRequestFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsReasonInfo != null) {
                        parcelObtain.writeInt(1);
                        imsReasonInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(21, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionMayHandover(IImsCallSession iImsCallSession, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(28, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionMergeComplete(IImsCallSession iImsCallSession) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    this.mRemote.transact(12, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionMergeFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsReasonInfo != null) {
                        parcelObtain.writeInt(1);
                        imsReasonInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(13, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionMergeStarted(IImsCallSession iImsCallSession, IImsCallSession iImsCallSession2, ImsCallProfile imsCallProfile) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    parcelObtain.writeStrongBinder(iImsCallSession2 != null ? iImsCallSession2.asBinder() : null);
                    if (imsCallProfile != null) {
                        parcelObtain.writeInt(1);
                        imsCallProfile.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(11, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionMultipartyStateChanged(IImsCallSession iImsCallSession, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(30, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionProgressing(IImsCallSession iImsCallSession, ImsStreamMediaProfile imsStreamMediaProfile) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsStreamMediaProfile != null) {
                        parcelObtain.writeInt(1);
                        imsStreamMediaProfile.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionRemoveParticipantsRequestDelivered(IImsCallSession iImsCallSession) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    this.mRemote.transact(22, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionRemoveParticipantsRequestFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsReasonInfo != null) {
                        parcelObtain.writeInt(1);
                        imsReasonInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(23, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionResumeFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsReasonInfo != null) {
                        parcelObtain.writeInt(1);
                        imsReasonInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(9, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionResumeReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsCallProfile != null) {
                        parcelObtain.writeInt(1);
                        imsCallProfile.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(10, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionResumed(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsCallProfile != null) {
                        parcelObtain.writeInt(1);
                        imsCallProfile.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionRttMessageReceived(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(34, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionRttModifyRequestReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsCallProfile != null) {
                        parcelObtain.writeInt(1);
                        imsCallProfile.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(32, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionRttModifyResponseReceived(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(33, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionStartFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsReasonInfo != null) {
                        parcelObtain.writeInt(1);
                        imsReasonInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionStarted(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsCallProfile != null) {
                        parcelObtain.writeInt(1);
                        imsCallProfile.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionSuppServiceReceived(IImsCallSession iImsCallSession, ImsSuppServiceNotification imsSuppServiceNotification) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsSuppServiceNotification != null) {
                        parcelObtain.writeInt(1);
                        imsSuppServiceNotification.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(31, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionTerminated(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsReasonInfo != null) {
                        parcelObtain.writeInt(1);
                        imsReasonInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionTtyModeReceived(IImsCallSession iImsCallSession, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(29, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionUpdateFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsReasonInfo != null) {
                        parcelObtain.writeInt(1);
                        imsReasonInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(15, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionUpdateReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsCallProfile != null) {
                        parcelObtain.writeInt(1);
                        imsCallProfile.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(16, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionUpdated(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    if (imsCallProfile != null) {
                        parcelObtain.writeInt(1);
                        imsCallProfile.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(14, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.ims.internal.IImsCallSessionListener
            public void callSessionUssdMessageReceived(IImsCallSession iImsCallSession, int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iImsCallSession != null ? iImsCallSession.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(25, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IImsCallSessionListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IImsCallSessionListener)) ? new Proxy(iBinder) : (IImsCallSessionListener) iInterfaceQueryLocalInterface;
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
                    callSessionProgressing(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsStreamMediaProfile.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 2:
                    callSessionStarted(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsCallProfile.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 3:
                    callSessionStartFailed(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsReasonInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 4:
                    callSessionTerminated(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsReasonInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 5:
                    callSessionHeld(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsCallProfile.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 6:
                    callSessionHoldFailed(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsReasonInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 7:
                    callSessionHoldReceived(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsCallProfile.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 8:
                    callSessionResumed(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsCallProfile.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 9:
                    callSessionResumeFailed(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsReasonInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 10:
                    callSessionResumeReceived(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsCallProfile.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 11:
                    callSessionMergeStarted(a.b(parcel, DESCRIPTOR), IImsCallSession.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? ImsCallProfile.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    callSessionMergeComplete(IImsCallSession.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 13:
                    callSessionMergeFailed(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsReasonInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 14:
                    callSessionUpdated(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsCallProfile.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 15:
                    callSessionUpdateFailed(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsReasonInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 16:
                    callSessionUpdateReceived(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsCallProfile.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 17:
                    callSessionConferenceExtended(a.b(parcel, DESCRIPTOR), IImsCallSession.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? ImsCallProfile.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 18:
                    callSessionConferenceExtendFailed(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsReasonInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 19:
                    callSessionConferenceExtendReceived(a.b(parcel, DESCRIPTOR), IImsCallSession.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? ImsCallProfile.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    callSessionInviteParticipantsRequestDelivered(IImsCallSession.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 21:
                    callSessionInviteParticipantsRequestFailed(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsReasonInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    callSessionRemoveParticipantsRequestDelivered(IImsCallSession.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 23:
                    callSessionRemoveParticipantsRequestFailed(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsReasonInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 24:
                    callSessionConferenceStateUpdated(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsConferenceState.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 25:
                    callSessionUssdMessageReceived(a.b(parcel, DESCRIPTOR), parcel.readInt(), parcel.readString());
                    return true;
                case 26:
                    callSessionHandover(a.b(parcel, DESCRIPTOR), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? ImsReasonInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 27:
                    callSessionHandoverFailed(a.b(parcel, DESCRIPTOR), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? ImsReasonInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 28:
                    callSessionMayHandover(a.b(parcel, DESCRIPTOR), parcel.readInt(), parcel.readInt());
                    return true;
                case 29:
                    callSessionTtyModeReceived(a.b(parcel, DESCRIPTOR), parcel.readInt());
                    return true;
                case 30:
                    callSessionMultipartyStateChanged(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0);
                    return true;
                case 31:
                    callSessionSuppServiceReceived(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsSuppServiceNotification.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 32:
                    callSessionRttModifyRequestReceived(a.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? ImsCallProfile.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    callSessionRttModifyResponseReceived(parcel.readInt());
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    callSessionRttMessageReceived(parcel.readString());
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void callSessionConferenceExtendFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo);

    void callSessionConferenceExtendReceived(IImsCallSession iImsCallSession, IImsCallSession iImsCallSession2, ImsCallProfile imsCallProfile);

    void callSessionConferenceExtended(IImsCallSession iImsCallSession, IImsCallSession iImsCallSession2, ImsCallProfile imsCallProfile);

    void callSessionConferenceStateUpdated(IImsCallSession iImsCallSession, ImsConferenceState imsConferenceState);

    void callSessionHandover(IImsCallSession iImsCallSession, int i2, int i3, ImsReasonInfo imsReasonInfo);

    void callSessionHandoverFailed(IImsCallSession iImsCallSession, int i2, int i3, ImsReasonInfo imsReasonInfo);

    void callSessionHeld(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile);

    void callSessionHoldFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo);

    void callSessionHoldReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile);

    void callSessionInviteParticipantsRequestDelivered(IImsCallSession iImsCallSession);

    void callSessionInviteParticipantsRequestFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo);

    void callSessionMayHandover(IImsCallSession iImsCallSession, int i2, int i3);

    void callSessionMergeComplete(IImsCallSession iImsCallSession);

    void callSessionMergeFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo);

    void callSessionMergeStarted(IImsCallSession iImsCallSession, IImsCallSession iImsCallSession2, ImsCallProfile imsCallProfile);

    void callSessionMultipartyStateChanged(IImsCallSession iImsCallSession, boolean z2);

    void callSessionProgressing(IImsCallSession iImsCallSession, ImsStreamMediaProfile imsStreamMediaProfile);

    void callSessionRemoveParticipantsRequestDelivered(IImsCallSession iImsCallSession);

    void callSessionRemoveParticipantsRequestFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo);

    void callSessionResumeFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo);

    void callSessionResumeReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile);

    void callSessionResumed(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile);

    void callSessionRttMessageReceived(String str);

    void callSessionRttModifyRequestReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile);

    void callSessionRttModifyResponseReceived(int i2);

    void callSessionStartFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo);

    void callSessionStarted(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile);

    void callSessionSuppServiceReceived(IImsCallSession iImsCallSession, ImsSuppServiceNotification imsSuppServiceNotification);

    void callSessionTerminated(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo);

    void callSessionTtyModeReceived(IImsCallSession iImsCallSession, int i2);

    void callSessionUpdateFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo);

    void callSessionUpdateReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile);

    void callSessionUpdated(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile);

    void callSessionUssdMessageReceived(IImsCallSession iImsCallSession, int i2, String str);
}
