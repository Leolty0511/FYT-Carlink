package android.app.usage;

import android.accessibilityservice.c;
import android.app.m;
import android.content.Context;
import android.net.DataUsageRequest;
import android.net.INetworkStatsService;
import android.net.NetworkIdentity;
import android.net.NetworkTemplate;
import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public class NetworkStatsManager {
    public static final int CALLBACK_LIMIT_REACHED = 0;
    public static final int CALLBACK_RELEASED = 1;
    private static final boolean DBG = false;
    public static final int FLAG_AUGMENT_WITH_SUBSCRIPTION_PLAN = 2;
    public static final int FLAG_POLL_ON_OPEN = 1;
    private static final String TAG = "NetworkStatsManager";
    private final Context mContext;
    private int mFlags;
    private final INetworkStatsService mService = INetworkStatsService.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.NETWORK_STATS_SERVICE));

    public static class CallbackHandler extends Handler {
        private UsageCallback mCallback;
        private final int mNetworkType;
        private final String mSubscriberId;

        public CallbackHandler(Looper looper, int i2, String str, UsageCallback usageCallback) {
            super(looper);
            this.mNetworkType = i2;
            this.mSubscriberId = str;
            this.mCallback = usageCallback;
        }

        private static Object getObject(Message message, String str) {
            return message.getData().getParcelable(str);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            DataUsageRequest dataUsageRequest = (DataUsageRequest) getObject(message, DataUsageRequest.PARCELABLE_KEY);
            int i2 = message.what;
            if (i2 != 0) {
                if (i2 != 1) {
                    return;
                }
                this.mCallback = null;
                return;
            }
            UsageCallback usageCallback = this.mCallback;
            if (usageCallback != null) {
                usageCallback.onThresholdReached(this.mNetworkType, this.mSubscriberId);
                return;
            }
            Log.e(NetworkStatsManager.TAG, "limit reached with released callback for " + dataUsageRequest);
        }
    }

    public static abstract class UsageCallback {
        private DataUsageRequest request;

        public abstract void onThresholdReached(int i2, String str);
    }

    public NetworkStatsManager(Context context) {
        this.mContext = context;
        setPollOnOpen(true);
    }

    private static NetworkTemplate createTemplate(int i2, String str) {
        if (i2 == 0) {
            return NetworkTemplate.buildTemplateMobileAll(str);
        }
        if (i2 == 1) {
            return NetworkTemplate.buildTemplateWifiWildcard();
        }
        StringBuilder sbS = c.s("Cannot create template for network type ", i2, ", subscriberId '");
        sbS.append(NetworkIdentity.scrubSubscriberId(str));
        sbS.append("'.");
        throw new IllegalArgumentException(sbS.toString());
    }

    public NetworkStats queryDetails(int i2, String str, long j2, long j3) {
        try {
            NetworkStats networkStats = new NetworkStats(this.mContext, createTemplate(i2, str), this.mFlags, j2, j3);
            networkStats.startUserUidEnumeration();
            return networkStats;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public NetworkStats queryDetailsForUid(int i2, String str, long j2, long j3, int i3) {
        return queryDetailsForUidTag(i2, str, j2, j3, i3, 0);
    }

    public NetworkStats queryDetailsForUidTag(int i2, String str, long j2, long j3, int i3, int i4) {
        try {
            NetworkStats networkStats = new NetworkStats(this.mContext, createTemplate(i2, str), this.mFlags, j2, j3);
            networkStats.startHistoryEnumeration(i3, i4);
            return networkStats;
        } catch (RemoteException e2) {
            Log.e(TAG, m.e("Error while querying stats for uid=", i3, " tag=", i4), e2);
            return null;
        }
    }

    public NetworkStats querySummary(int i2, String str, long j2, long j3) {
        try {
            NetworkStats networkStats = new NetworkStats(this.mContext, createTemplate(i2, str), this.mFlags, j2, j3);
            networkStats.startSummaryEnumeration();
            return networkStats;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public NetworkStats.Bucket querySummaryForDevice(int i2, String str, long j2, long j3) {
        try {
            NetworkStats networkStats = new NetworkStats(this.mContext, createTemplate(i2, str), this.mFlags, j2, j3);
            NetworkStats.Bucket deviceSummaryForNetwork = networkStats.getDeviceSummaryForNetwork();
            networkStats.close();
            return deviceSummaryForNetwork;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public NetworkStats.Bucket querySummaryForUser(int i2, String str, long j2, long j3) {
        try {
            NetworkStats networkStats = new NetworkStats(this.mContext, createTemplate(i2, str), this.mFlags, j2, j3);
            networkStats.startSummaryEnumeration();
            networkStats.close();
            return networkStats.getSummaryAggregate();
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public void registerUsageCallback(int i2, String str, long j2, UsageCallback usageCallback) {
        registerUsageCallback(i2, str, j2, usageCallback, null);
    }

    public void setAugmentWithSubscriptionPlan(boolean z2) {
        if (z2) {
            this.mFlags |= 2;
        } else {
            this.mFlags &= -3;
        }
    }

    public void setPollOnOpen(boolean z2) {
        if (z2) {
            this.mFlags |= 1;
        } else {
            this.mFlags &= -2;
        }
    }

    public void unregisterUsageCallback(UsageCallback usageCallback) {
        if (usageCallback == null || usageCallback.request == null || usageCallback.request.requestId == 0) {
            throw new IllegalArgumentException("Invalid UsageCallback");
        }
        try {
            this.mService.unregisterUsageRequest(usageCallback.request);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void registerUsageCallback(int i2, String str, long j2, UsageCallback usageCallback, Handler handler) {
        Preconditions.checkNotNull(usageCallback, "UsageCallback cannot be null");
        Looper looperMyLooper = handler == null ? Looper.myLooper() : handler.getLooper();
        try {
            usageCallback.request = this.mService.registerUsageCallback(this.mContext.getOpPackageName(), new DataUsageRequest(0, createTemplate(i2, str), j2), new Messenger(new CallbackHandler(looperMyLooper, i2, str, usageCallback)), new Binder());
            if (usageCallback.request == null) {
                Log.e(TAG, "Request from callback is null; should not happen");
            }
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }
}
