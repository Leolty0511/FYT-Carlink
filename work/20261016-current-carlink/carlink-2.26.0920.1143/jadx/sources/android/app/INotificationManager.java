package android.app;

import android.content.ComponentName;
import android.content.pm.ParceledListSlice;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.UserHandle;
import android.service.notification.Adjustment;
import android.service.notification.Condition;
import android.service.notification.IConditionProvider;
import android.service.notification.INotificationListener;
import android.service.notification.StatusBarNotification;
import android.service.notification.ZenModeConfig;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface INotificationManager extends IInterface {

    public static abstract class Stub extends Binder implements INotificationManager {
        private static final String DESCRIPTOR = "android.app.INotificationManager";
        static final int TRANSACTION_addAutomaticZenRule = 81;
        static final int TRANSACTION_applyAdjustmentFromAssistant = 54;
        static final int TRANSACTION_applyAdjustmentsFromAssistant = 55;
        static final int TRANSACTION_applyEnqueuedAdjustmentFromAssistant = 53;
        static final int TRANSACTION_applyRestore = 87;
        static final int TRANSACTION_areNotificationsEnabled = 11;
        static final int TRANSACTION_areNotificationsEnabledForPackage = 10;
        static final int TRANSACTION_canShowBadge = 8;
        static final int TRANSACTION_cancelAllNotifications = 1;
        static final int TRANSACTION_cancelNotificationFromListener = 33;
        static final int TRANSACTION_cancelNotificationWithTag = 6;
        static final int TRANSACTION_cancelNotificationsFromListener = 34;
        static final int TRANSACTION_cancelToast = 4;
        static final int TRANSACTION_clearData = 2;
        static final int TRANSACTION_createNotificationChannelGroups = 13;
        static final int TRANSACTION_createNotificationChannels = 14;
        static final int TRANSACTION_createNotificationChannelsForPackage = 15;
        static final int TRANSACTION_deleteNotificationChannel = 21;
        static final int TRANSACTION_deleteNotificationChannelGroup = 26;
        static final int TRANSACTION_enqueueNotificationWithTag = 5;
        static final int TRANSACTION_enqueueToast = 3;
        static final int TRANSACTION_getActiveNotifications = 29;
        static final int TRANSACTION_getActiveNotificationsFromListener = 42;
        static final int TRANSACTION_getAppActiveNotifications = 88;
        static final int TRANSACTION_getAutomaticZenRule = 79;
        static final int TRANSACTION_getBackupPayload = 86;
        static final int TRANSACTION_getDeletedChannelCount = 25;
        static final int TRANSACTION_getEffectsSuppressor = 57;
        static final int TRANSACTION_getEnabledNotificationListenerPackages = 67;
        static final int TRANSACTION_getEnabledNotificationListeners = 68;
        static final int TRANSACTION_getHintsFromListener = 45;
        static final int TRANSACTION_getHistoricalNotifications = 30;
        static final int TRANSACTION_getInterruptionFilterFromListener = 47;
        static final int TRANSACTION_getNotificationChannel = 19;
        static final int TRANSACTION_getNotificationChannelForPackage = 20;
        static final int TRANSACTION_getNotificationChannelGroupForPackage = 17;
        static final int TRANSACTION_getNotificationChannelGroups = 27;
        static final int TRANSACTION_getNotificationChannelGroupsForPackage = 16;
        static final int TRANSACTION_getNotificationChannelGroupsFromPrivilegedListener = 52;
        static final int TRANSACTION_getNotificationChannels = 22;
        static final int TRANSACTION_getNotificationChannelsForPackage = 23;
        static final int TRANSACTION_getNotificationChannelsFromPrivilegedListener = 51;
        static final int TRANSACTION_getNotificationPolicy = 74;
        static final int TRANSACTION_getNumNotificationChannelsForPackage = 24;
        static final int TRANSACTION_getPackageImportance = 12;
        static final int TRANSACTION_getRuleInstanceCount = 85;
        static final int TRANSACTION_getSnoozedNotificationsFromListener = 43;
        static final int TRANSACTION_getZenMode = 69;
        static final int TRANSACTION_getZenModeConfig = 70;
        static final int TRANSACTION_getZenRules = 80;
        static final int TRANSACTION_isNotificationAssistantAccessGranted = 62;
        static final int TRANSACTION_isNotificationListenerAccessGranted = 60;
        static final int TRANSACTION_isNotificationListenerAccessGrantedForUser = 61;
        static final int TRANSACTION_isNotificationPolicyAccessGranted = 73;
        static final int TRANSACTION_isNotificationPolicyAccessGrantedForPackage = 76;
        static final int TRANSACTION_isSystemConditionProviderEnabled = 59;
        static final int TRANSACTION_matchesCallFilter = 58;
        static final int TRANSACTION_notifyConditions = 72;
        static final int TRANSACTION_onlyHasDefaultChannel = 28;
        static final int TRANSACTION_registerListener = 31;
        static final int TRANSACTION_removeAutomaticZenRule = 83;
        static final int TRANSACTION_removeAutomaticZenRules = 84;
        static final int TRANSACTION_requestBindListener = 37;
        static final int TRANSACTION_requestBindProvider = 39;
        static final int TRANSACTION_requestHintsFromListener = 44;
        static final int TRANSACTION_requestInterruptionFilterFromListener = 46;
        static final int TRANSACTION_requestUnbindListener = 38;
        static final int TRANSACTION_requestUnbindProvider = 40;
        static final int TRANSACTION_setInterruptionFilter = 49;
        static final int TRANSACTION_setNotificationAssistantAccessGranted = 64;
        static final int TRANSACTION_setNotificationAssistantAccessGrantedForUser = 66;
        static final int TRANSACTION_setNotificationListenerAccessGranted = 63;
        static final int TRANSACTION_setNotificationListenerAccessGrantedForUser = 65;
        static final int TRANSACTION_setNotificationPolicy = 75;
        static final int TRANSACTION_setNotificationPolicyAccessGranted = 77;
        static final int TRANSACTION_setNotificationPolicyAccessGrantedForUser = 78;
        static final int TRANSACTION_setNotificationsEnabledForPackage = 9;
        static final int TRANSACTION_setNotificationsShownFromListener = 41;
        static final int TRANSACTION_setOnNotificationPostedTrimFromListener = 48;
        static final int TRANSACTION_setShowBadge = 7;
        static final int TRANSACTION_setZenMode = 71;
        static final int TRANSACTION_snoozeNotificationUntilContextFromListener = 35;
        static final int TRANSACTION_snoozeNotificationUntilFromListener = 36;
        static final int TRANSACTION_unregisterListener = 32;
        static final int TRANSACTION_unsnoozeNotificationFromAssistant = 56;
        static final int TRANSACTION_updateAutomaticZenRule = 82;
        static final int TRANSACTION_updateNotificationChannelForPackage = 18;
        static final int TRANSACTION_updateNotificationChannelFromPrivilegedListener = 50;

        public static class Proxy implements INotificationManager {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.app.INotificationManager
            public String addAutomaticZenRule(AutomaticZenRule automaticZenRule) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (automaticZenRule != null) {
                        parcelObtain.writeInt(1);
                        automaticZenRule.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(81, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void applyAdjustmentFromAssistant(INotificationListener iNotificationListener, Adjustment adjustment) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    if (adjustment != null) {
                        parcelObtain.writeInt(1);
                        adjustment.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(54, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void applyAdjustmentsFromAssistant(INotificationListener iNotificationListener, List<Adjustment> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    parcelObtain.writeTypedList(list);
                    this.mRemote.transact(55, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void applyEnqueuedAdjustmentFromAssistant(INotificationListener iNotificationListener, Adjustment adjustment) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    if (adjustment != null) {
                        parcelObtain.writeInt(1);
                        adjustment.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(53, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void applyRestore(byte[] bArr, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(87, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public boolean areNotificationsEnabled(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public boolean areNotificationsEnabledForPackage(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.app.INotificationManager
            public boolean canShowBadge(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void cancelAllNotifications(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void cancelNotificationFromListener(INotificationListener iNotificationListener, String str, String str2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(33, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void cancelNotificationWithTag(String str, String str2, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void cancelNotificationsFromListener(INotificationListener iNotificationListener, String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    parcelObtain.writeStringArray(strArr);
                    this.mRemote.transact(34, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void cancelToast(String str, ITransientNotification iTransientNotification) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iTransientNotification != null ? iTransientNotification.asBinder() : null);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void clearData(String str, int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void createNotificationChannelGroups(String str, ParceledListSlice parceledListSlice) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (parceledListSlice != null) {
                        parcelObtain.writeInt(1);
                        parceledListSlice.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void createNotificationChannels(String str, ParceledListSlice parceledListSlice) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (parceledListSlice != null) {
                        parcelObtain.writeInt(1);
                        parceledListSlice.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void createNotificationChannelsForPackage(String str, int i2, ParceledListSlice parceledListSlice) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    if (parceledListSlice != null) {
                        parcelObtain.writeInt(1);
                        parceledListSlice.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void deleteNotificationChannel(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void deleteNotificationChannelGroup(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void enqueueNotificationWithTag(String str, String str2, String str3, int i2, Notification notification, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(i2);
                    if (notification != null) {
                        parcelObtain.writeInt(1);
                        notification.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void enqueueToast(String str, ITransientNotification iTransientNotification, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iTransientNotification != null ? iTransientNotification.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public StatusBarNotification[] getActiveNotifications(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (StatusBarNotification[]) parcelObtain2.createTypedArray(StatusBarNotification.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public ParceledListSlice getActiveNotificationsFromListener(INotificationListener iNotificationListener, String[] strArr, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    parcelObtain.writeStringArray(strArr);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(42, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public ParceledListSlice getAppActiveNotifications(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(88, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public AutomaticZenRule getAutomaticZenRule(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(79, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? AutomaticZenRule.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public byte[] getBackupPayload(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(86, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createByteArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public int getDeletedChannelCount(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public ComponentName getEffectsSuppressor() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(57, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public List<String> getEnabledNotificationListenerPackages() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(67, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public List<ComponentName> getEnabledNotificationListeners(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(68, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ComponentName.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public int getHintsFromListener(INotificationListener iNotificationListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    this.mRemote.transact(45, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public StatusBarNotification[] getHistoricalNotifications(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (StatusBarNotification[]) parcelObtain2.createTypedArray(StatusBarNotification.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.app.INotificationManager
            public int getInterruptionFilterFromListener(INotificationListener iNotificationListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    this.mRemote.transact(47, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public NotificationChannel getNotificationChannel(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? NotificationChannel.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public NotificationChannel getNotificationChannelForPackage(String str, int i2, String str2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? NotificationChannel.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public NotificationChannelGroup getNotificationChannelGroupForPackage(String str, String str2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? NotificationChannelGroup.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public ParceledListSlice getNotificationChannelGroups(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public ParceledListSlice getNotificationChannelGroupsForPackage(String str, int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public ParceledListSlice getNotificationChannelGroupsFromPrivilegedListener(INotificationListener iNotificationListener, String str, UserHandle userHandle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    parcelObtain.writeString(str);
                    if (userHandle != null) {
                        parcelObtain.writeInt(1);
                        userHandle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(52, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public ParceledListSlice getNotificationChannels(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public ParceledListSlice getNotificationChannelsForPackage(String str, int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public ParceledListSlice getNotificationChannelsFromPrivilegedListener(INotificationListener iNotificationListener, String str, UserHandle userHandle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    parcelObtain.writeString(str);
                    if (userHandle != null) {
                        parcelObtain.writeInt(1);
                        userHandle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(51, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public NotificationManager.Policy getNotificationPolicy(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(74, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? NotificationManager.Policy.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public int getNumNotificationChannelsForPackage(String str, int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
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

            @Override // android.app.INotificationManager
            public int getPackageImportance(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public int getRuleInstanceCount(ComponentName componentName) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(85, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public ParceledListSlice getSnoozedNotificationsFromListener(INotificationListener iNotificationListener, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(43, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public int getZenMode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(69, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public ZenModeConfig getZenModeConfig() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(70, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ZenModeConfig.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public List<ZenModeConfig.ZenRule> getZenRules() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(80, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ZenModeConfig.ZenRule.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public boolean isNotificationAssistantAccessGranted(ComponentName componentName) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(62, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public boolean isNotificationListenerAccessGranted(ComponentName componentName) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(60, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public boolean isNotificationListenerAccessGrantedForUser(ComponentName componentName, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(61, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public boolean isNotificationPolicyAccessGranted(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(73, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public boolean isNotificationPolicyAccessGrantedForPackage(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(76, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public boolean isSystemConditionProviderEnabled(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(59, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public boolean matchesCallFilter(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(58, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void notifyConditions(String str, IConditionProvider iConditionProvider, Condition[] conditionArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iConditionProvider != null ? iConditionProvider.asBinder() : null);
                    parcelObtain.writeTypedArray(conditionArr, 0);
                    this.mRemote.transact(72, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public boolean onlyHasDefaultChannel(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void registerListener(INotificationListener iNotificationListener, ComponentName componentName, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(31, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public boolean removeAutomaticZenRule(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(83, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public boolean removeAutomaticZenRules(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(84, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void requestBindListener(ComponentName componentName) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(37, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void requestBindProvider(ComponentName componentName) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(39, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void requestHintsFromListener(INotificationListener iNotificationListener, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(44, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void requestInterruptionFilterFromListener(INotificationListener iNotificationListener, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(46, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void requestUnbindListener(INotificationListener iNotificationListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    this.mRemote.transact(38, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void requestUnbindProvider(IConditionProvider iConditionProvider) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iConditionProvider != null ? iConditionProvider.asBinder() : null);
                    this.mRemote.transact(40, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void setInterruptionFilter(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(49, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void setNotificationAssistantAccessGranted(ComponentName componentName, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i2 = 1;
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z2) {
                        i2 = 0;
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(64, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void setNotificationAssistantAccessGrantedForUser(ComponentName componentName, int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i3 = 1;
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    if (!z2) {
                        i3 = 0;
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(66, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void setNotificationListenerAccessGranted(ComponentName componentName, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i2 = 1;
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z2) {
                        i2 = 0;
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(63, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void setNotificationListenerAccessGrantedForUser(ComponentName componentName, int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i3 = 1;
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    if (!z2) {
                        i3 = 0;
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(65, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void setNotificationPolicy(String str, NotificationManager.Policy policy) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (policy != null) {
                        parcelObtain.writeInt(1);
                        policy.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(75, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void setNotificationPolicyAccessGranted(String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(77, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void setNotificationPolicyAccessGrantedForUser(String str, int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(78, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void setNotificationsEnabledForPackage(String str, int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void setNotificationsShownFromListener(INotificationListener iNotificationListener, String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    parcelObtain.writeStringArray(strArr);
                    this.mRemote.transact(41, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void setOnNotificationPostedTrimFromListener(INotificationListener iNotificationListener, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(48, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void setShowBadge(String str, int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void setZenMode(int i2, Uri uri, String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    this.mRemote.transact(71, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void snoozeNotificationUntilContextFromListener(INotificationListener iNotificationListener, String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(35, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void snoozeNotificationUntilFromListener(INotificationListener iNotificationListener, String str, long j2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeLong(j2);
                    this.mRemote.transact(36, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void unregisterListener(INotificationListener iNotificationListener, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(32, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void unsnoozeNotificationFromAssistant(INotificationListener iNotificationListener, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(56, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public boolean updateAutomaticZenRule(String str, AutomaticZenRule automaticZenRule) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (automaticZenRule != null) {
                        parcelObtain.writeInt(1);
                        automaticZenRule.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(82, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void updateNotificationChannelForPackage(String str, int i2, NotificationChannel notificationChannel) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    if (notificationChannel != null) {
                        parcelObtain.writeInt(1);
                        notificationChannel.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.INotificationManager
            public void updateNotificationChannelFromPrivilegedListener(INotificationListener iNotificationListener, String str, UserHandle userHandle, NotificationChannel notificationChannel) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iNotificationListener != null ? iNotificationListener.asBinder() : null);
                    parcelObtain.writeString(str);
                    if (userHandle != null) {
                        parcelObtain.writeInt(1);
                        userHandle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (notificationChannel != null) {
                        parcelObtain.writeInt(1);
                        notificationChannel.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(50, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static INotificationManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof INotificationManager)) ? new Proxy(iBinder) : (INotificationManager) iInterfaceQueryLocalInterface;
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
                    cancelAllNotifications(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearData(parcel.readString(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    enqueueToast(parcel.readString(), ITransientNotification.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancelToast(parcel.readString(), ITransientNotification.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    enqueueNotificationWithTag(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt() != 0 ? Notification.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancelNotificationWithTag(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    setShowBadge(parcel.readString(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zCanShowBadge = canShowBadge(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zCanShowBadge ? 1 : 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    setNotificationsEnabledForPackage(parcel.readString(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAreNotificationsEnabledForPackage = areNotificationsEnabledForPackage(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zAreNotificationsEnabledForPackage ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAreNotificationsEnabled = areNotificationsEnabled(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zAreNotificationsEnabled ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    int packageImportance = getPackageImportance(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(packageImportance);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    createNotificationChannelGroups(parcel.readString(), parcel.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    createNotificationChannels(parcel.readString(), parcel.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    createNotificationChannelsForPackage(parcel.readString(), parcel.readInt(), parcel.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice notificationChannelGroupsForPackage = getNotificationChannelGroupsForPackage(parcel.readString(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    if (notificationChannelGroupsForPackage != null) {
                        parcel2.writeInt(1);
                        notificationChannelGroupsForPackage.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    NotificationChannelGroup notificationChannelGroupForPackage = getNotificationChannelGroupForPackage(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (notificationChannelGroupForPackage != null) {
                        parcel2.writeInt(1);
                        notificationChannelGroupForPackage.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateNotificationChannelForPackage(parcel.readString(), parcel.readInt(), parcel.readInt() != 0 ? NotificationChannel.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    NotificationChannel notificationChannel = getNotificationChannel(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (notificationChannel != null) {
                        parcel2.writeInt(1);
                        notificationChannel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    NotificationChannel notificationChannelForPackage = getNotificationChannelForPackage(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    if (notificationChannelForPackage != null) {
                        parcel2.writeInt(1);
                        notificationChannelForPackage.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    deleteNotificationChannel(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice notificationChannels = getNotificationChannels(parcel.readString());
                    parcel2.writeNoException();
                    if (notificationChannels != null) {
                        parcel2.writeInt(1);
                        notificationChannels.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice notificationChannelsForPackage = getNotificationChannelsForPackage(parcel.readString(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    if (notificationChannelsForPackage != null) {
                        parcel2.writeInt(1);
                        notificationChannelsForPackage.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    int numNotificationChannelsForPackage = getNumNotificationChannelsForPackage(parcel.readString(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(numNotificationChannelsForPackage);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    int deletedChannelCount = getDeletedChannelCount(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(deletedChannelCount);
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    deleteNotificationChannelGroup(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice notificationChannelGroups = getNotificationChannelGroups(parcel.readString());
                    parcel2.writeNoException();
                    if (notificationChannelGroups != null) {
                        parcel2.writeInt(1);
                        notificationChannelGroups.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zOnlyHasDefaultChannel = onlyHasDefaultChannel(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zOnlyHasDefaultChannel ? 1 : 0);
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    StatusBarNotification[] activeNotifications = getActiveNotifications(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(activeNotifications, 1);
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    StatusBarNotification[] historicalNotifications = getHistoricalNotifications(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(historicalNotifications, 1);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerListener(INotificationListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterListener(INotificationListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancelNotificationFromListener(INotificationListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancelNotificationsFromListener(INotificationListener.Stub.asInterface(parcel.readStrongBinder()), parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    snoozeNotificationUntilContextFromListener(INotificationListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    snoozeNotificationUntilFromListener(INotificationListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestBindListener(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestUnbindListener(INotificationListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestBindProvider(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestUnbindProvider(IConditionProvider.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    setNotificationsShownFromListener(INotificationListener.Stub.asInterface(parcel.readStrongBinder()), parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice activeNotificationsFromListener = getActiveNotificationsFromListener(INotificationListener.Stub.asInterface(parcel.readStrongBinder()), parcel.createStringArray(), parcel.readInt());
                    parcel2.writeNoException();
                    if (activeNotificationsFromListener != null) {
                        parcel2.writeInt(1);
                        activeNotificationsFromListener.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice snoozedNotificationsFromListener = getSnoozedNotificationsFromListener(INotificationListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    if (snoozedNotificationsFromListener != null) {
                        parcel2.writeInt(1);
                        snoozedNotificationsFromListener.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestHintsFromListener(INotificationListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    int hintsFromListener = getHintsFromListener(INotificationListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(hintsFromListener);
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestInterruptionFilterFromListener(INotificationListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    int interruptionFilterFromListener = getInterruptionFilterFromListener(INotificationListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(interruptionFilterFromListener);
                    return true;
                case 48:
                    parcel.enforceInterface(DESCRIPTOR);
                    setOnNotificationPostedTrimFromListener(INotificationListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 49:
                    parcel.enforceInterface(DESCRIPTOR);
                    setInterruptionFilter(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 50:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateNotificationChannelFromPrivilegedListener(INotificationListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readInt() != 0 ? UserHandle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? NotificationChannel.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 51:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice notificationChannelsFromPrivilegedListener = getNotificationChannelsFromPrivilegedListener(INotificationListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readInt() != 0 ? UserHandle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (notificationChannelsFromPrivilegedListener != null) {
                        parcel2.writeInt(1);
                        notificationChannelsFromPrivilegedListener.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 52:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice notificationChannelGroupsFromPrivilegedListener = getNotificationChannelGroupsFromPrivilegedListener(INotificationListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readInt() != 0 ? UserHandle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (notificationChannelGroupsFromPrivilegedListener != null) {
                        parcel2.writeInt(1);
                        notificationChannelGroupsFromPrivilegedListener.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 53:
                    parcel.enforceInterface(DESCRIPTOR);
                    applyEnqueuedAdjustmentFromAssistant(INotificationListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? Adjustment.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 54:
                    parcel.enforceInterface(DESCRIPTOR);
                    applyAdjustmentFromAssistant(INotificationListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? Adjustment.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 55:
                    parcel.enforceInterface(DESCRIPTOR);
                    applyAdjustmentsFromAssistant(INotificationListener.Stub.asInterface(parcel.readStrongBinder()), parcel.createTypedArrayList(Adjustment.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 56:
                    parcel.enforceInterface(DESCRIPTOR);
                    unsnoozeNotificationFromAssistant(INotificationListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 57:
                    parcel.enforceInterface(DESCRIPTOR);
                    ComponentName effectsSuppressor = getEffectsSuppressor();
                    parcel2.writeNoException();
                    if (effectsSuppressor != null) {
                        parcel2.writeInt(1);
                        effectsSuppressor.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 58:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zMatchesCallFilter = matchesCallFilter(parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zMatchesCallFilter ? 1 : 0);
                    return true;
                case 59:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsSystemConditionProviderEnabled = isSystemConditionProviderEnabled(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSystemConditionProviderEnabled ? 1 : 0);
                    return true;
                case 60:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsNotificationListenerAccessGranted = isNotificationListenerAccessGranted(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsNotificationListenerAccessGranted ? 1 : 0);
                    return true;
                case 61:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsNotificationListenerAccessGrantedForUser = isNotificationListenerAccessGrantedForUser(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsNotificationListenerAccessGrantedForUser ? 1 : 0);
                    return true;
                case 62:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsNotificationAssistantAccessGranted = isNotificationAssistantAccessGranted(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsNotificationAssistantAccessGranted ? 1 : 0);
                    return true;
                case 63:
                    parcel.enforceInterface(DESCRIPTOR);
                    setNotificationListenerAccessGranted(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 64:
                    parcel.enforceInterface(DESCRIPTOR);
                    setNotificationAssistantAccessGranted(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 65:
                    parcel.enforceInterface(DESCRIPTOR);
                    setNotificationListenerAccessGrantedForUser(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 66:
                    parcel.enforceInterface(DESCRIPTOR);
                    setNotificationAssistantAccessGrantedForUser(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 67:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> enabledNotificationListenerPackages = getEnabledNotificationListenerPackages();
                    parcel2.writeNoException();
                    parcel2.writeStringList(enabledNotificationListenerPackages);
                    return true;
                case 68:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ComponentName> enabledNotificationListeners = getEnabledNotificationListeners(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(enabledNotificationListeners);
                    return true;
                case 69:
                    parcel.enforceInterface(DESCRIPTOR);
                    int zenMode = getZenMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(zenMode);
                    return true;
                case 70:
                    parcel.enforceInterface(DESCRIPTOR);
                    ZenModeConfig zenModeConfig = getZenModeConfig();
                    parcel2.writeNoException();
                    if (zenModeConfig != null) {
                        parcel2.writeInt(1);
                        zenModeConfig.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 71:
                    parcel.enforceInterface(DESCRIPTOR);
                    setZenMode(parcel.readInt(), parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, parcel.readString());
                    return true;
                case 72:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyConditions(parcel.readString(), IConditionProvider.Stub.asInterface(parcel.readStrongBinder()), (Condition[]) parcel.createTypedArray(Condition.CREATOR));
                    return true;
                case 73:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsNotificationPolicyAccessGranted = isNotificationPolicyAccessGranted(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsNotificationPolicyAccessGranted ? 1 : 0);
                    return true;
                case 74:
                    parcel.enforceInterface(DESCRIPTOR);
                    NotificationManager.Policy notificationPolicy = getNotificationPolicy(parcel.readString());
                    parcel2.writeNoException();
                    if (notificationPolicy != null) {
                        parcel2.writeInt(1);
                        notificationPolicy.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 75:
                    parcel.enforceInterface(DESCRIPTOR);
                    setNotificationPolicy(parcel.readString(), parcel.readInt() != 0 ? NotificationManager.Policy.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 76:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsNotificationPolicyAccessGrantedForPackage = isNotificationPolicyAccessGrantedForPackage(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsNotificationPolicyAccessGrantedForPackage ? 1 : 0);
                    return true;
                case 77:
                    parcel.enforceInterface(DESCRIPTOR);
                    setNotificationPolicyAccessGranted(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 78:
                    parcel.enforceInterface(DESCRIPTOR);
                    setNotificationPolicyAccessGrantedForUser(parcel.readString(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 79:
                    parcel.enforceInterface(DESCRIPTOR);
                    AutomaticZenRule automaticZenRule = getAutomaticZenRule(parcel.readString());
                    parcel2.writeNoException();
                    if (automaticZenRule != null) {
                        parcel2.writeInt(1);
                        automaticZenRule.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 80:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ZenModeConfig.ZenRule> zenRules = getZenRules();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(zenRules);
                    return true;
                case 81:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strAddAutomaticZenRule = addAutomaticZenRule(parcel.readInt() != 0 ? AutomaticZenRule.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeString(strAddAutomaticZenRule);
                    return true;
                case 82:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUpdateAutomaticZenRule = updateAutomaticZenRule(parcel.readString(), parcel.readInt() != 0 ? AutomaticZenRule.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zUpdateAutomaticZenRule ? 1 : 0);
                    return true;
                case 83:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRemoveAutomaticZenRule = removeAutomaticZenRule(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zRemoveAutomaticZenRule ? 1 : 0);
                    return true;
                case 84:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRemoveAutomaticZenRules = removeAutomaticZenRules(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zRemoveAutomaticZenRules ? 1 : 0);
                    return true;
                case 85:
                    parcel.enforceInterface(DESCRIPTOR);
                    int ruleInstanceCount = getRuleInstanceCount(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(ruleInstanceCount);
                    return true;
                case 86:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] backupPayload = getBackupPayload(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeByteArray(backupPayload);
                    return true;
                case 87:
                    parcel.enforceInterface(DESCRIPTOR);
                    applyRestore(parcel.createByteArray(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 88:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice appActiveNotifications = getAppActiveNotifications(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (appActiveNotifications != null) {
                        parcel2.writeInt(1);
                        appActiveNotifications.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    String addAutomaticZenRule(AutomaticZenRule automaticZenRule);

    void applyAdjustmentFromAssistant(INotificationListener iNotificationListener, Adjustment adjustment);

    void applyAdjustmentsFromAssistant(INotificationListener iNotificationListener, List<Adjustment> list);

    void applyEnqueuedAdjustmentFromAssistant(INotificationListener iNotificationListener, Adjustment adjustment);

    void applyRestore(byte[] bArr, int i2);

    boolean areNotificationsEnabled(String str);

    boolean areNotificationsEnabledForPackage(String str, int i2);

    boolean canShowBadge(String str, int i2);

    void cancelAllNotifications(String str, int i2);

    void cancelNotificationFromListener(INotificationListener iNotificationListener, String str, String str2, int i2);

    void cancelNotificationWithTag(String str, String str2, int i2, int i3);

    void cancelNotificationsFromListener(INotificationListener iNotificationListener, String[] strArr);

    void cancelToast(String str, ITransientNotification iTransientNotification);

    void clearData(String str, int i2, boolean z2);

    void createNotificationChannelGroups(String str, ParceledListSlice parceledListSlice);

    void createNotificationChannels(String str, ParceledListSlice parceledListSlice);

    void createNotificationChannelsForPackage(String str, int i2, ParceledListSlice parceledListSlice);

    void deleteNotificationChannel(String str, String str2);

    void deleteNotificationChannelGroup(String str, String str2);

    void enqueueNotificationWithTag(String str, String str2, String str3, int i2, Notification notification, int i3);

    void enqueueToast(String str, ITransientNotification iTransientNotification, int i2);

    StatusBarNotification[] getActiveNotifications(String str);

    ParceledListSlice getActiveNotificationsFromListener(INotificationListener iNotificationListener, String[] strArr, int i2);

    ParceledListSlice getAppActiveNotifications(String str, int i2);

    AutomaticZenRule getAutomaticZenRule(String str);

    byte[] getBackupPayload(int i2);

    int getDeletedChannelCount(String str, int i2);

    ComponentName getEffectsSuppressor();

    List<String> getEnabledNotificationListenerPackages();

    List<ComponentName> getEnabledNotificationListeners(int i2);

    int getHintsFromListener(INotificationListener iNotificationListener);

    StatusBarNotification[] getHistoricalNotifications(String str, int i2);

    int getInterruptionFilterFromListener(INotificationListener iNotificationListener);

    NotificationChannel getNotificationChannel(String str, String str2);

    NotificationChannel getNotificationChannelForPackage(String str, int i2, String str2, boolean z2);

    NotificationChannelGroup getNotificationChannelGroupForPackage(String str, String str2, int i2);

    ParceledListSlice getNotificationChannelGroups(String str);

    ParceledListSlice getNotificationChannelGroupsForPackage(String str, int i2, boolean z2);

    ParceledListSlice getNotificationChannelGroupsFromPrivilegedListener(INotificationListener iNotificationListener, String str, UserHandle userHandle);

    ParceledListSlice getNotificationChannels(String str);

    ParceledListSlice getNotificationChannelsForPackage(String str, int i2, boolean z2);

    ParceledListSlice getNotificationChannelsFromPrivilegedListener(INotificationListener iNotificationListener, String str, UserHandle userHandle);

    NotificationManager.Policy getNotificationPolicy(String str);

    int getNumNotificationChannelsForPackage(String str, int i2, boolean z2);

    int getPackageImportance(String str);

    int getRuleInstanceCount(ComponentName componentName);

    ParceledListSlice getSnoozedNotificationsFromListener(INotificationListener iNotificationListener, int i2);

    int getZenMode();

    ZenModeConfig getZenModeConfig();

    List<ZenModeConfig.ZenRule> getZenRules();

    boolean isNotificationAssistantAccessGranted(ComponentName componentName);

    boolean isNotificationListenerAccessGranted(ComponentName componentName);

    boolean isNotificationListenerAccessGrantedForUser(ComponentName componentName, int i2);

    boolean isNotificationPolicyAccessGranted(String str);

    boolean isNotificationPolicyAccessGrantedForPackage(String str);

    boolean isSystemConditionProviderEnabled(String str);

    boolean matchesCallFilter(Bundle bundle);

    void notifyConditions(String str, IConditionProvider iConditionProvider, Condition[] conditionArr);

    boolean onlyHasDefaultChannel(String str, int i2);

    void registerListener(INotificationListener iNotificationListener, ComponentName componentName, int i2);

    boolean removeAutomaticZenRule(String str);

    boolean removeAutomaticZenRules(String str);

    void requestBindListener(ComponentName componentName);

    void requestBindProvider(ComponentName componentName);

    void requestHintsFromListener(INotificationListener iNotificationListener, int i2);

    void requestInterruptionFilterFromListener(INotificationListener iNotificationListener, int i2);

    void requestUnbindListener(INotificationListener iNotificationListener);

    void requestUnbindProvider(IConditionProvider iConditionProvider);

    void setInterruptionFilter(String str, int i2);

    void setNotificationAssistantAccessGranted(ComponentName componentName, boolean z2);

    void setNotificationAssistantAccessGrantedForUser(ComponentName componentName, int i2, boolean z2);

    void setNotificationListenerAccessGranted(ComponentName componentName, boolean z2);

    void setNotificationListenerAccessGrantedForUser(ComponentName componentName, int i2, boolean z2);

    void setNotificationPolicy(String str, NotificationManager.Policy policy);

    void setNotificationPolicyAccessGranted(String str, boolean z2);

    void setNotificationPolicyAccessGrantedForUser(String str, int i2, boolean z2);

    void setNotificationsEnabledForPackage(String str, int i2, boolean z2);

    void setNotificationsShownFromListener(INotificationListener iNotificationListener, String[] strArr);

    void setOnNotificationPostedTrimFromListener(INotificationListener iNotificationListener, int i2);

    void setShowBadge(String str, int i2, boolean z2);

    void setZenMode(int i2, Uri uri, String str);

    void snoozeNotificationUntilContextFromListener(INotificationListener iNotificationListener, String str, String str2);

    void snoozeNotificationUntilFromListener(INotificationListener iNotificationListener, String str, long j2);

    void unregisterListener(INotificationListener iNotificationListener, int i2);

    void unsnoozeNotificationFromAssistant(INotificationListener iNotificationListener, String str);

    boolean updateAutomaticZenRule(String str, AutomaticZenRule automaticZenRule);

    void updateNotificationChannelForPackage(String str, int i2, NotificationChannel notificationChannel);

    void updateNotificationChannelFromPrivilegedListener(INotificationListener iNotificationListener, String str, UserHandle userHandle, NotificationChannel notificationChannel);
}
