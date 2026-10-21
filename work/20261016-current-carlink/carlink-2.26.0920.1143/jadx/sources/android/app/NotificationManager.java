package android.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ParceledListSlice;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.StrictMode;
import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import android.service.notification.ZenModeConfig;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class NotificationManager {
    public static final String ACTION_EFFECTS_SUPPRESSOR_CHANGED = "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED";
    public static final String ACTION_INTERRUPTION_FILTER_CHANGED = "android.app.action.INTERRUPTION_FILTER_CHANGED";
    public static final String ACTION_INTERRUPTION_FILTER_CHANGED_INTERNAL = "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL";
    public static final String ACTION_NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED = "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED";
    public static final String ACTION_NOTIFICATION_POLICY_CHANGED = "android.app.action.NOTIFICATION_POLICY_CHANGED";
    public static final int IMPORTANCE_DEFAULT = 3;
    public static final int IMPORTANCE_HIGH = 4;
    public static final int IMPORTANCE_LOW = 2;
    public static final int IMPORTANCE_MAX = 5;
    public static final int IMPORTANCE_MIN = 1;
    public static final int IMPORTANCE_NONE = 0;
    public static final int IMPORTANCE_UNSPECIFIED = -1000;
    public static final int INTERRUPTION_FILTER_ALARMS = 4;
    public static final int INTERRUPTION_FILTER_ALL = 1;
    public static final int INTERRUPTION_FILTER_NONE = 3;
    public static final int INTERRUPTION_FILTER_PRIORITY = 2;
    public static final int INTERRUPTION_FILTER_UNKNOWN = 0;
    private static String TAG = "NotificationManager";
    public static final int VISIBILITY_NO_OVERRIDE = -1000;
    private static boolean localLOGV = false;
    private static INotificationManager sService;
    private Context mContext;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Importance {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface InterruptionFilter {
    }

    public static class Policy implements Parcelable {
        private static final int[] ALL_PRIORITY_CATEGORIES = {1, 2, 4, 8, 16};
        private static final int[] ALL_SUPPRESSED_EFFECTS = {1, 2};
        public static final Parcelable.Creator<Policy> CREATOR = new Parcelable.Creator<Policy>() { // from class: android.app.NotificationManager.Policy.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Policy createFromParcel(Parcel parcel) {
                return new Policy(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Policy[] newArray(int i2) {
                return new Policy[i2];
            }
        };
        public static final int PRIORITY_CATEGORY_CALLS = 8;
        public static final int PRIORITY_CATEGORY_EVENTS = 2;
        public static final int PRIORITY_CATEGORY_MESSAGES = 4;
        public static final int PRIORITY_CATEGORY_REMINDERS = 1;
        public static final int PRIORITY_CATEGORY_REPEAT_CALLERS = 16;
        public static final int PRIORITY_SENDERS_ANY = 0;
        public static final int PRIORITY_SENDERS_CONTACTS = 1;
        public static final int PRIORITY_SENDERS_STARRED = 2;
        public static final int SUPPRESSED_EFFECTS_UNSET = -1;
        public static final int SUPPRESSED_EFFECT_SCREEN_OFF = 1;
        public static final int SUPPRESSED_EFFECT_SCREEN_ON = 2;
        public final int priorityCallSenders;
        public final int priorityCategories;
        public final int priorityMessageSenders;
        public final int suppressedVisualEffects;

        public Policy(int i2, int i3, int i4) {
            this(i2, i3, i4, -1);
        }

        private static String effectToString(int i2) {
            if (i2 == -1) {
                return "SUPPRESSED_EFFECTS_UNSET";
            }
            if (i2 != 1) {
                return i2 != 2 ? android.accessibilityservice.c.d("UNKNOWN_", i2) : "SUPPRESSED_EFFECT_SCREEN_ON";
            }
            return "SUPPRESSED_EFFECT_SCREEN_OFF";
        }

        public static String priorityCategoriesToString(int i2) {
            if (i2 == 0) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            int i3 = 0;
            while (true) {
                int[] iArr = ALL_PRIORITY_CATEGORIES;
                if (i3 >= iArr.length) {
                    break;
                }
                int i4 = iArr[i3];
                if ((i2 & i4) != 0) {
                    if (sb.length() > 0) {
                        sb.append(',');
                    }
                    sb.append(priorityCategoryToString(i4));
                }
                i2 &= ~i4;
                i3++;
            }
            if (i2 != 0) {
                if (sb.length() > 0) {
                    sb.append(',');
                }
                sb.append("PRIORITY_CATEGORY_UNKNOWN_");
                sb.append(i2);
            }
            return sb.toString();
        }

        private static String priorityCategoryToString(int i2) {
            if (i2 == 1) {
                return "PRIORITY_CATEGORY_REMINDERS";
            }
            if (i2 == 2) {
                return "PRIORITY_CATEGORY_EVENTS";
            }
            if (i2 == 4) {
                return "PRIORITY_CATEGORY_MESSAGES";
            }
            if (i2 != 8) {
                return i2 != 16 ? android.accessibilityservice.c.d("PRIORITY_CATEGORY_UNKNOWN_", i2) : "PRIORITY_CATEGORY_REPEAT_CALLERS";
            }
            return "PRIORITY_CATEGORY_CALLS";
        }

        public static String prioritySendersToString(int i2) {
            if (i2 == 0) {
                return "PRIORITY_SENDERS_ANY";
            }
            if (i2 != 1) {
                return i2 != 2 ? android.accessibilityservice.c.d("PRIORITY_SENDERS_UNKNOWN_", i2) : "PRIORITY_SENDERS_STARRED";
            }
            return "PRIORITY_SENDERS_CONTACTS";
        }

        public static String suppressedEffectsToString(int i2) {
            if (i2 <= 0) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            int i3 = 0;
            while (true) {
                int[] iArr = ALL_SUPPRESSED_EFFECTS;
                if (i3 >= iArr.length) {
                    break;
                }
                int i4 = iArr[i3];
                if ((i2 & i4) != 0) {
                    if (sb.length() > 0) {
                        sb.append(',');
                    }
                    sb.append(effectToString(i4));
                }
                i2 &= ~i4;
                i3++;
            }
            if (i2 != 0) {
                if (sb.length() > 0) {
                    sb.append(',');
                }
                sb.append("UNKNOWN_");
                sb.append(i2);
            }
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Policy)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            Policy policy = (Policy) obj;
            return policy.priorityCategories == this.priorityCategories && policy.priorityCallSenders == this.priorityCallSenders && policy.priorityMessageSenders == this.priorityMessageSenders && policy.suppressedVisualEffects == this.suppressedVisualEffects;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.priorityCategories), Integer.valueOf(this.priorityCallSenders), Integer.valueOf(this.priorityMessageSenders), Integer.valueOf(this.suppressedVisualEffects));
        }

        public String toString() {
            return "NotificationManager.Policy[priorityCategories=" + priorityCategoriesToString(this.priorityCategories) + ",priorityCallSenders=" + prioritySendersToString(this.priorityCallSenders) + ",priorityMessageSenders=" + prioritySendersToString(this.priorityMessageSenders) + ",suppressedVisualEffects=" + suppressedEffectsToString(this.suppressedVisualEffects) + "]";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.priorityCategories);
            parcel.writeInt(this.priorityCallSenders);
            parcel.writeInt(this.priorityMessageSenders);
            parcel.writeInt(this.suppressedVisualEffects);
        }

        public Policy(int i2, int i3, int i4, int i5) {
            this.priorityCategories = i2;
            this.priorityCallSenders = i3;
            this.priorityMessageSenders = i4;
            this.suppressedVisualEffects = i5;
        }

        public Policy(Parcel parcel) {
            this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }
    }

    public NotificationManager(Context context, Handler handler) {
        this.mContext = context;
    }

    private static void checkRequired(String str, Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException(android.accessibilityservice.c.D(str, " is required"));
        }
    }

    private void fixLegacySmallIcon(Notification notification, String str) {
        int i2;
        if (notification.getSmallIcon() != null || (i2 = notification.icon) == 0) {
            return;
        }
        notification.setSmallIcon(Icon.createWithResource(str, i2));
    }

    public static NotificationManager from(Context context) {
        return (NotificationManager) context.getSystemService(Context.NOTIFICATION_SERVICE);
    }

    public static INotificationManager getService() {
        INotificationManager iNotificationManager = sService;
        if (iNotificationManager != null) {
            return iNotificationManager;
        }
        INotificationManager iNotificationManagerAsInterface = INotificationManager.Stub.asInterface(ServiceManager.getService(Context.NOTIFICATION_SERVICE));
        sService = iNotificationManagerAsInterface;
        return iNotificationManagerAsInterface;
    }

    public static int zenModeFromInterruptionFilter(int i2, int i3) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 1;
        }
        if (i2 == 3) {
            return 2;
        }
        if (i2 != 4) {
            return i3;
        }
        return 3;
    }

    public static int zenModeToInterruptionFilter(int i2) {
        if (i2 == 0) {
            return 1;
        }
        if (i2 == 1) {
            return 2;
        }
        if (i2 != 2) {
            return i2 != 3 ? 0 : 4;
        }
        return 3;
    }

    public String addAutomaticZenRule(AutomaticZenRule automaticZenRule) {
        try {
            return getService().addAutomaticZenRule(automaticZenRule);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean areNotificationsEnabled() {
        try {
            return getService().areNotificationsEnabled(this.mContext.getPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void cancel(int i2) {
        cancel(null, i2);
    }

    public void cancelAll() {
        INotificationManager service = getService();
        String packageName = this.mContext.getPackageName();
        if (localLOGV) {
            Log.v(TAG, packageName + ": cancelAll()");
        }
        try {
            service.cancelAllNotifications(packageName, UserHandle.myUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void cancelAsUser(String str, int i2, UserHandle userHandle) {
        INotificationManager service = getService();
        String packageName = this.mContext.getPackageName();
        if (localLOGV) {
            Log.v(TAG, packageName + ": cancel(" + i2 + ")");
        }
        try {
            service.cancelNotificationWithTag(packageName, str, i2, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void createNotificationChannel(NotificationChannel notificationChannel) {
        createNotificationChannels(Arrays.asList(notificationChannel));
    }

    public void createNotificationChannelGroup(NotificationChannelGroup notificationChannelGroup) {
        createNotificationChannelGroups(Arrays.asList(notificationChannelGroup));
    }

    public void createNotificationChannelGroups(List<NotificationChannelGroup> list) {
        try {
            getService().createNotificationChannelGroups(this.mContext.getPackageName(), new ParceledListSlice(list));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void createNotificationChannels(List<NotificationChannel> list) {
        try {
            getService().createNotificationChannels(this.mContext.getPackageName(), new ParceledListSlice(list));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void deleteNotificationChannel(String str) {
        try {
            getService().deleteNotificationChannel(this.mContext.getPackageName(), str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void deleteNotificationChannelGroup(String str) {
        try {
            getService().deleteNotificationChannelGroup(this.mContext.getPackageName(), str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public StatusBarNotification[] getActiveNotifications() {
        try {
            List list = getService().getAppActiveNotifications(this.mContext.getPackageName(), UserHandle.myUserId()).getList();
            return (StatusBarNotification[]) list.toArray(new StatusBarNotification[list.size()]);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public AutomaticZenRule getAutomaticZenRule(String str) {
        try {
            return getService().getAutomaticZenRule(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Map<String, AutomaticZenRule> getAutomaticZenRules() {
        try {
            List<ZenModeConfig.ZenRule> zenRules = getService().getZenRules();
            HashMap map = new HashMap();
            for (ZenModeConfig.ZenRule zenRule : zenRules) {
                map.put(zenRule.id, new AutomaticZenRule(zenRule.name, zenRule.component, zenRule.conditionId, zenModeToInterruptionFilter(zenRule.zenMode), zenRule.enabled, zenRule.creationTime));
            }
            return map;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public final int getCurrentInterruptionFilter() {
        try {
            return zenModeToInterruptionFilter(getService().getZenMode());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public ComponentName getEffectsSuppressor() {
        try {
            return getService().getEffectsSuppressor();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<String> getEnabledNotificationListenerPackages() {
        try {
            return getService().getEnabledNotificationListenerPackages();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<ComponentName> getEnabledNotificationListeners(int i2) {
        try {
            return getService().getEnabledNotificationListeners(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getImportance() {
        try {
            return getService().getPackageImportance(this.mContext.getPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public NotificationChannel getNotificationChannel(String str) {
        try {
            return getService().getNotificationChannel(this.mContext.getPackageName(), str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<NotificationChannelGroup> getNotificationChannelGroups() {
        try {
            return getService().getNotificationChannelGroups(this.mContext.getPackageName()).getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<NotificationChannel> getNotificationChannels() {
        try {
            return getService().getNotificationChannels(this.mContext.getPackageName()).getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Policy getNotificationPolicy() {
        try {
            return getService().getNotificationPolicy(this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getRuleInstanceCount(ComponentName componentName) {
        try {
            return getService().getRuleInstanceCount(componentName);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getZenMode() {
        try {
            return getService().getZenMode();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public ZenModeConfig getZenModeConfig() {
        try {
            return getService().getZenModeConfig();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isNotificationAssistantAccessGranted(ComponentName componentName) {
        try {
            return getService().isNotificationAssistantAccessGranted(componentName);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isNotificationListenerAccessGranted(ComponentName componentName) {
        try {
            return getService().isNotificationListenerAccessGranted(componentName);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isNotificationPolicyAccessGranted() {
        try {
            return getService().isNotificationPolicyAccessGranted(this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isNotificationPolicyAccessGrantedForPackage(String str) {
        try {
            return getService().isNotificationPolicyAccessGrantedForPackage(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isSystemConditionProviderEnabled(String str) {
        try {
            return getService().isSystemConditionProviderEnabled(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean matchesCallFilter(Bundle bundle) {
        try {
            return getService().matchesCallFilter(bundle);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void notify(int i2, Notification notification) {
        notify(null, i2, notification);
    }

    public void notifyAsUser(String str, int i2, Notification notification, UserHandle userHandle) {
        INotificationManager service = getService();
        String packageName = this.mContext.getPackageName();
        Notification.addFieldsFromContext(this.mContext, notification);
        Uri uri = notification.sound;
        if (uri != null) {
            notification.sound = uri.getCanonicalUri();
            if (StrictMode.vmFileUriExposureEnabled()) {
                notification.sound.checkFileUriExposed("Notification.sound");
            }
        }
        fixLegacySmallIcon(notification, packageName);
        if (this.mContext.getApplicationInfo().targetSdkVersion > 22 && notification.getSmallIcon() == null) {
            throw new IllegalArgumentException("Invalid notification (no valid small icon): " + notification);
        }
        if (localLOGV) {
            Log.v(TAG, packageName + ": notify(" + i2 + ", " + notification + ")");
        }
        notification.reduceImageSizes(this.mContext);
        try {
            service.enqueueNotificationWithTag(packageName, this.mContext.getOpPackageName(), str, i2, Notification.Builder.maybeCloneStrippedForDelivery(notification, ((ActivityManager) this.mContext.getSystemService(Context.ACTIVITY_SERVICE)).isLowRamDevice()), userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean removeAutomaticZenRule(String str) {
        try {
            return getService().removeAutomaticZenRule(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean removeAutomaticZenRules(String str) {
        try {
            return getService().removeAutomaticZenRules(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public final void setInterruptionFilter(int i2) {
        try {
            getService().setInterruptionFilter(this.mContext.getOpPackageName(), i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setNotificationListenerAccessGranted(ComponentName componentName, boolean z2) {
        try {
            getService().setNotificationListenerAccessGranted(componentName, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setNotificationListenerAccessGrantedForUser(ComponentName componentName, int i2, boolean z2) {
        try {
            getService().setNotificationListenerAccessGrantedForUser(componentName, i2, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setNotificationPolicy(Policy policy) {
        checkRequired("policy", policy);
        try {
            getService().setNotificationPolicy(this.mContext.getOpPackageName(), policy);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setNotificationPolicyAccessGranted(String str, boolean z2) {
        try {
            getService().setNotificationPolicyAccessGranted(str, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setZenMode(int i2, Uri uri, String str) {
        try {
            getService().setZenMode(i2, uri, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean updateAutomaticZenRule(String str, AutomaticZenRule automaticZenRule) {
        try {
            return getService().updateAutomaticZenRule(str, automaticZenRule);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void cancel(String str, int i2) {
        cancelAsUser(str, i2, new UserHandle(UserHandle.myUserId()));
    }

    public void notify(String str, int i2, Notification notification) {
        notifyAsUser(str, i2, notification, new UserHandle(UserHandle.myUserId()));
    }
}
