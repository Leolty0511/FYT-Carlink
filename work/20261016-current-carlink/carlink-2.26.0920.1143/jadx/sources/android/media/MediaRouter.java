package android.media;

import android.Manifest;
import android.accessibilityservice.c;
import android.app.ActivityThread;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.hardware.display.WifiDisplay;
import android.hardware.display.WifiDisplayStatus;
import android.media.session.MediaSession;
import android.os.Handler;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.provider.SettingsStringUtil;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import com.android.internal.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class MediaRouter {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int AVAILABILITY_FLAG_IGNORE_DEFAULT_ROUTE = 1;
    public static final int CALLBACK_FLAG_PASSIVE_DISCOVERY = 8;
    public static final int CALLBACK_FLAG_PERFORM_ACTIVE_SCAN = 1;
    public static final int CALLBACK_FLAG_REQUEST_DISCOVERY = 4;
    public static final int CALLBACK_FLAG_UNFILTERED_EVENTS = 2;
    static final int ROUTE_TYPE_ANY = 8388615;
    public static final int ROUTE_TYPE_LIVE_AUDIO = 1;
    public static final int ROUTE_TYPE_LIVE_VIDEO = 2;
    public static final int ROUTE_TYPE_REMOTE_DISPLAY = 4;
    public static final int ROUTE_TYPE_USER = 8388608;
    static Static sStatic;
    private static final String TAG = "MediaRouter";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);
    static final HashMap<Context, MediaRouter> sRouters = new HashMap<>();

    public static abstract class Callback {
        public abstract void onRouteAdded(MediaRouter mediaRouter, RouteInfo routeInfo);

        public abstract void onRouteChanged(MediaRouter mediaRouter, RouteInfo routeInfo);

        public abstract void onRouteGrouped(MediaRouter mediaRouter, RouteInfo routeInfo, RouteGroup routeGroup, int i2);

        public void onRoutePresentationDisplayChanged(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        public abstract void onRouteRemoved(MediaRouter mediaRouter, RouteInfo routeInfo);

        public abstract void onRouteSelected(MediaRouter mediaRouter, int i2, RouteInfo routeInfo);

        public abstract void onRouteUngrouped(MediaRouter mediaRouter, RouteInfo routeInfo, RouteGroup routeGroup);

        public abstract void onRouteUnselected(MediaRouter mediaRouter, int i2, RouteInfo routeInfo);

        public abstract void onRouteVolumeChanged(MediaRouter mediaRouter, RouteInfo routeInfo);
    }

    public static class CallbackInfo {
        public final Callback cb;
        public int flags;
        public final MediaRouter router;
        public int type;

        public CallbackInfo(Callback callback, int i2, int i3, MediaRouter mediaRouter) {
            this.cb = callback;
            this.type = i2;
            this.flags = i3;
            this.router = mediaRouter;
        }

        public boolean filterRouteEvent(RouteInfo routeInfo) {
            return filterRouteEvent(routeInfo.mSupportedTypes);
        }

        public boolean filterRouteEvent(int i2) {
            return ((this.flags & 2) == 0 && (i2 & this.type) == 0) ? false : true;
        }
    }

    public static class RouteCategory {
        final boolean mGroupable;
        boolean mIsSystem;
        CharSequence mName;
        int mNameResId;
        int mTypes;

        public RouteCategory(CharSequence charSequence, int i2, boolean z2) {
            this.mName = charSequence;
            this.mTypes = i2;
            this.mGroupable = z2;
        }

        public CharSequence getName() {
            return getName(MediaRouter.sStatic.mResources);
        }

        public List<RouteInfo> getRoutes(List<RouteInfo> list) {
            if (list == null) {
                list = new ArrayList<>();
            } else {
                list.clear();
            }
            int routeCountStatic = MediaRouter.getRouteCountStatic();
            for (int i2 = 0; i2 < routeCountStatic; i2++) {
                RouteInfo routeAtStatic = MediaRouter.getRouteAtStatic(i2);
                if (routeAtStatic.mCategory == this) {
                    list.add(routeAtStatic);
                }
            }
            return list;
        }

        public int getSupportedTypes() {
            return this.mTypes;
        }

        public boolean isGroupable() {
            return this.mGroupable;
        }

        public boolean isSystem() {
            return this.mIsSystem;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("RouteCategory{ name=");
            sb.append((Object) getName());
            sb.append(" types=");
            sb.append(MediaRouter.typesToString(this.mTypes));
            sb.append(" groupable=");
            return c.o(sb, this.mGroupable, " }");
        }

        public CharSequence getName(Context context) {
            return getName(context.getResources());
        }

        public CharSequence getName(Resources resources) {
            int i2 = this.mNameResId;
            if (i2 != 0) {
                return resources.getText(i2);
            }
            return this.mName;
        }

        public RouteCategory(int i2, int i3, boolean z2) {
            this.mNameResId = i2;
            this.mTypes = i3;
            this.mGroupable = z2;
        }
    }

    public static class RouteInfo {
        public static final int DEVICE_TYPE_BLUETOOTH = 3;
        public static final int DEVICE_TYPE_SPEAKER = 2;
        public static final int DEVICE_TYPE_TV = 1;
        public static final int DEVICE_TYPE_UNKNOWN = 0;
        public static final int PLAYBACK_TYPE_LOCAL = 0;
        public static final int PLAYBACK_TYPE_REMOTE = 1;
        public static final int PLAYBACK_VOLUME_FIXED = 0;
        public static final int PLAYBACK_VOLUME_VARIABLE = 1;
        public static final int STATUS_AVAILABLE = 3;
        public static final int STATUS_CONNECTED = 6;
        public static final int STATUS_CONNECTING = 2;
        public static final int STATUS_IN_USE = 5;
        public static final int STATUS_NONE = 0;
        public static final int STATUS_NOT_AVAILABLE = 4;
        public static final int STATUS_SCANNING = 1;
        final RouteCategory mCategory;
        CharSequence mDescription;
        String mDeviceAddress;
        String mGlobalRouteId;
        RouteGroup mGroup;
        Drawable mIcon;
        CharSequence mName;
        int mNameResId;
        Display mPresentationDisplay;
        private int mRealStatusCode;
        private int mResolvedStatusCode;
        private CharSequence mStatus;
        int mSupportedTypes;
        private Object mTag;
        VolumeCallbackInfo mVcb;
        int mPlaybackType = 0;
        int mVolumeMax = 15;
        int mVolume = 15;
        int mVolumeHandling = 1;
        int mPlaybackStream = 3;
        int mPresentationDisplayId = -1;
        boolean mEnabled = true;
        final IRemoteVolumeObserver.Stub mRemoteVolObserver = new IRemoteVolumeObserver.Stub() { // from class: android.media.MediaRouter.RouteInfo.1
            @Override // android.media.IRemoteVolumeObserver
            public void dispatchRemoteVolumeUpdate(final int i2, final int i3) {
                MediaRouter.sStatic.mHandler.post(new Runnable() { // from class: android.media.MediaRouter.RouteInfo.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        VolumeCallbackInfo volumeCallbackInfo = RouteInfo.this.mVcb;
                        if (volumeCallbackInfo != null) {
                            int i4 = i2;
                            if (i4 != 0) {
                                volumeCallbackInfo.vcb.onVolumeUpdateRequest(volumeCallbackInfo.route, i4);
                            } else {
                                volumeCallbackInfo.vcb.onVolumeSetRequest(volumeCallbackInfo.route, i3);
                            }
                        }
                    }
                });
            }
        };
        int mDeviceType = 0;

        @Retention(RetentionPolicy.SOURCE)
        public @interface DeviceType {
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface PlaybackType {
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface PlaybackVolume {
        }

        public RouteInfo(RouteCategory routeCategory) {
            this.mCategory = routeCategory;
        }

        private Display choosePresentationDisplay() {
            if ((this.mSupportedTypes & 2) != 0) {
                Display[] allPresentationDisplays = MediaRouter.sStatic.getAllPresentationDisplays();
                int i2 = 0;
                if (this.mPresentationDisplayId >= 0) {
                    int length = allPresentationDisplays.length;
                    while (i2 < length) {
                        Display display = allPresentationDisplays[i2];
                        if (display.getDisplayId() == this.mPresentationDisplayId) {
                            return display;
                        }
                        i2++;
                    }
                    return null;
                }
                if (this.mDeviceAddress != null) {
                    int length2 = allPresentationDisplays.length;
                    while (i2 < length2) {
                        Display display2 = allPresentationDisplays[i2];
                        if (display2.getType() == 3 && this.mDeviceAddress.equals(display2.getAddress())) {
                            return display2;
                        }
                        i2++;
                    }
                    return null;
                }
                if (this == MediaRouter.sStatic.mDefaultAudioVideo && allPresentationDisplays.length > 0) {
                    return allPresentationDisplays[0];
                }
            }
            return null;
        }

        public RouteCategory getCategory() {
            return this.mCategory;
        }

        public CharSequence getDescription() {
            return this.mDescription;
        }

        public String getDeviceAddress() {
            return this.mDeviceAddress;
        }

        public int getDeviceType() {
            return this.mDeviceType;
        }

        public RouteGroup getGroup() {
            return this.mGroup;
        }

        public Drawable getIconDrawable() {
            return this.mIcon;
        }

        public CharSequence getName() {
            return getName(MediaRouter.sStatic.mResources);
        }

        public int getPlaybackStream() {
            return this.mPlaybackStream;
        }

        public int getPlaybackType() {
            return this.mPlaybackType;
        }

        public Display getPresentationDisplay() {
            return this.mPresentationDisplay;
        }

        public CharSequence getStatus() {
            return this.mStatus;
        }

        public int getStatusCode() {
            return this.mResolvedStatusCode;
        }

        public int getSupportedTypes() {
            return this.mSupportedTypes;
        }

        public Object getTag() {
            return this.mTag;
        }

        public int getVolume() {
            if (this.mPlaybackType != 0) {
                return this.mVolume;
            }
            try {
                return MediaRouter.sStatic.mAudioService.getStreamVolume(this.mPlaybackStream);
            } catch (RemoteException e2) {
                Log.e(MediaRouter.TAG, "Error getting local stream volume", e2);
                return 0;
            }
        }

        public int getVolumeHandling() {
            return this.mVolumeHandling;
        }

        public int getVolumeMax() {
            if (this.mPlaybackType != 0) {
                return this.mVolumeMax;
            }
            try {
                return MediaRouter.sStatic.mAudioService.getStreamMaxVolume(this.mPlaybackStream);
            } catch (RemoteException e2) {
                Log.e(MediaRouter.TAG, "Error getting local stream volume", e2);
                return 0;
            }
        }

        public boolean isBluetooth() {
            return this == MediaRouter.sStatic.mBluetoothA2dpRoute;
        }

        public boolean isConnecting() {
            return this.mResolvedStatusCode == 2;
        }

        public boolean isDefault() {
            return this == MediaRouter.sStatic.mDefaultAudioVideo;
        }

        public boolean isEnabled() {
            return this.mEnabled;
        }

        public boolean isSelected() {
            return this == MediaRouter.sStatic.mSelectedRoute;
        }

        public boolean matchesTypes(int i2) {
            return (i2 & this.mSupportedTypes) != 0;
        }

        public void requestSetVolume(int i2) {
            if (this.mPlaybackType != 0) {
                MediaRouter.sStatic.requestSetVolume(this, i2);
                return;
            }
            try {
                MediaRouter.sStatic.mAudioService.setStreamVolume(this.mPlaybackStream, i2, 0, ActivityThread.currentPackageName());
            } catch (RemoteException e2) {
                Log.e(MediaRouter.TAG, "Error setting local stream volume", e2);
            }
        }

        public void requestUpdateVolume(int i2) {
            if (this.mPlaybackType != 0) {
                MediaRouter.sStatic.requestUpdateVolume(this, i2);
                return;
            }
            try {
                MediaRouter.sStatic.mAudioService.setStreamVolume(this.mPlaybackStream, Math.max(0, Math.min(getVolume() + i2, getVolumeMax())), 0, ActivityThread.currentPackageName());
            } catch (RemoteException e2) {
                Log.e(MediaRouter.TAG, "Error setting local stream volume", e2);
            }
        }

        public boolean resolveStatusCode() {
            int i2 = this.mRealStatusCode;
            if (isSelected() && (i2 == 1 || i2 == 3)) {
                i2 = 2;
            }
            int i3 = 0;
            if (this.mResolvedStatusCode == i2) {
                return false;
            }
            this.mResolvedStatusCode = i2;
            if (i2 == 1) {
                i3 = R.string.media_route_status_scanning;
            } else if (i2 == 2) {
                i3 = R.string.media_route_status_connecting;
            } else if (i2 == 3) {
                i3 = R.string.media_route_status_available;
            } else if (i2 == 4) {
                i3 = R.string.media_route_status_not_available;
            } else if (i2 == 5) {
                i3 = R.string.media_route_status_in_use;
            }
            this.mStatus = i3 != 0 ? MediaRouter.sStatic.mResources.getText(i3) : null;
            return true;
        }

        public void routeUpdated() {
            MediaRouter.updateRoute(this);
        }

        public void select() {
            MediaRouter.selectRouteStatic(this.mSupportedTypes, this, true);
        }

        public boolean setRealStatusCode(int i2) {
            if (this.mRealStatusCode == i2) {
                return false;
            }
            this.mRealStatusCode = i2;
            return resolveStatusCode();
        }

        public void setStatusInt(CharSequence charSequence) {
            if (charSequence.equals(this.mStatus)) {
                return;
            }
            this.mStatus = charSequence;
            RouteGroup routeGroup = this.mGroup;
            if (routeGroup != null) {
                routeGroup.memberStatusChanged(this, charSequence);
            }
            routeUpdated();
        }

        public void setTag(Object obj) {
            this.mTag = obj;
            routeUpdated();
        }

        public String toString() {
            return getClass().getSimpleName() + "{ name=" + ((Object) getName()) + ", description=" + ((Object) getDescription()) + ", status=" + ((Object) getStatus()) + ", category=" + getCategory() + ", supportedTypes=" + MediaRouter.typesToString(getSupportedTypes()) + ", presentationDisplay=" + this.mPresentationDisplay + " }";
        }

        public boolean updatePresentationDisplay() {
            Display displayChoosePresentationDisplay = choosePresentationDisplay();
            if (this.mPresentationDisplay == displayChoosePresentationDisplay) {
                return false;
            }
            this.mPresentationDisplay = displayChoosePresentationDisplay;
            return true;
        }

        public CharSequence getName(Context context) {
            return getName(context.getResources());
        }

        public CharSequence getName(Resources resources) {
            int i2 = this.mNameResId;
            if (i2 != 0) {
                return resources.getText(i2);
            }
            return this.mName;
        }
    }

    public static class SimpleCallback extends Callback {
        @Override // android.media.MediaRouter.Callback
        public void onRouteAdded(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteChanged(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteGrouped(MediaRouter mediaRouter, RouteInfo routeInfo, RouteGroup routeGroup, int i2) {
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteRemoved(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteSelected(MediaRouter mediaRouter, int i2, RouteInfo routeInfo) {
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteUngrouped(MediaRouter mediaRouter, RouteInfo routeInfo, RouteGroup routeGroup) {
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteUnselected(MediaRouter mediaRouter, int i2, RouteInfo routeInfo) {
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteVolumeChanged(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }
    }

    public static class Static implements DisplayManager.DisplayListener {
        boolean mActivelyScanningWifiDisplays;
        RouteInfo mBluetoothA2dpRoute;
        final boolean mCanConfigureWifiDisplays;
        IMediaRouterClient mClient;
        MediaRouterClientState mClientState;
        RouteInfo mDefaultAudioVideo;
        boolean mDiscoverRequestActiveScan;
        int mDiscoveryRequestRouteTypes;
        final DisplayManager mDisplayService;
        final Handler mHandler;
        final String mPackageName;
        String mPreviousActiveWifiDisplayAddress;
        final Resources mResources;
        RouteInfo mSelectedRoute;
        final RouteCategory mSystemCategory;
        final CopyOnWriteArrayList<CallbackInfo> mCallbacks = new CopyOnWriteArrayList<>();
        final ArrayList<RouteInfo> mRoutes = new ArrayList<>();
        final ArrayList<RouteCategory> mCategories = new ArrayList<>();
        final AudioRoutesInfo mCurAudioRoutesInfo = new AudioRoutesInfo();
        int mCurrentUserId = -1;
        final IAudioRoutesObserver.Stub mAudioRoutesObserver = new IAudioRoutesObserver.Stub() { // from class: android.media.MediaRouter.Static.1
            @Override // android.media.IAudioRoutesObserver
            public void dispatchAudioRoutesChanged(final AudioRoutesInfo audioRoutesInfo) {
                Static.this.mHandler.post(new Runnable() { // from class: android.media.MediaRouter.Static.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Static.this.updateAudioRoutes(audioRoutesInfo);
                    }
                });
            }
        };
        final IAudioService mAudioService = IAudioService.Stub.asInterface(ServiceManager.getService("audio"));
        final IMediaRouterService mMediaRouterService = IMediaRouterService.Stub.asInterface(ServiceManager.getService(Context.MEDIA_ROUTER_SERVICE));

        public final class Client extends IMediaRouterClient.Stub {
            public Client() {
            }

            @Override // android.media.IMediaRouterClient
            public void onRestoreRoute() {
                Static.this.mHandler.post(new Runnable() { // from class: android.media.MediaRouter.Static.Client.2
                    @Override // java.lang.Runnable
                    public void run() {
                        RouteInfo routeInfo;
                        Client client = Client.this;
                        Static r1 = Static.this;
                        if (client != r1.mClient || (routeInfo = r1.mSelectedRoute) == null) {
                            return;
                        }
                        if (routeInfo == r1.mDefaultAudioVideo || routeInfo == r1.mBluetoothA2dpRoute) {
                            Log.v(MediaRouter.TAG, "onRestoreRoute() : route=" + Static.this.mSelectedRoute);
                            Static.this.mSelectedRoute.select();
                        }
                    }
                });
            }

            @Override // android.media.IMediaRouterClient
            public void onStateChanged() {
                Static.this.mHandler.post(new Runnable() { // from class: android.media.MediaRouter.Static.Client.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Client client = Client.this;
                        Static r1 = Static.this;
                        if (client == r1.mClient) {
                            r1.updateClientState();
                        }
                    }
                });
            }
        }

        public Static(Context context) {
            this.mPackageName = context.getPackageName();
            this.mResources = context.getResources();
            this.mHandler = new Handler(context.getMainLooper());
            this.mDisplayService = (DisplayManager) context.getSystemService(Context.DISPLAY_SERVICE);
            RouteCategory routeCategory = new RouteCategory(R.string.default_audio_route_category_name, 3, false);
            this.mSystemCategory = routeCategory;
            routeCategory.mIsSystem = true;
            this.mCanConfigureWifiDisplays = context.checkPermission(Manifest.permission.CONFIGURE_WIFI_DISPLAY, Process.myPid(), Process.myUid()) == 0;
        }

        private void updatePresentationDisplays(int i2) {
            Display display;
            int size = this.mRoutes.size();
            for (int i3 = 0; i3 < size; i3++) {
                RouteInfo routeInfo = this.mRoutes.get(i3);
                if (routeInfo.updatePresentationDisplay() || ((display = routeInfo.mPresentationDisplay) != null && display.getDisplayId() == i2)) {
                    MediaRouter.dispatchRoutePresentationDisplayChanged(routeInfo);
                }
            }
        }

        public RouteInfo findGlobalRoute(String str) {
            int size = this.mRoutes.size();
            for (int i2 = 0; i2 < size; i2++) {
                RouteInfo routeInfo = this.mRoutes.get(i2);
                if (str.equals(routeInfo.mGlobalRouteId)) {
                    return routeInfo;
                }
            }
            return null;
        }

        public Display[] getAllPresentationDisplays() {
            return this.mDisplayService.getDisplays("android.hardware.display.category.PRESENTATION");
        }

        public boolean isBluetoothA2dpOn() {
            try {
                return this.mBluetoothA2dpRoute != null && this.mAudioService.isBluetoothA2dpOn();
            } catch (RemoteException e2) {
                Log.e(MediaRouter.TAG, "Error querying Bluetooth A2DP state", e2);
                return false;
            }
        }

        public boolean isPlaybackActive() {
            IMediaRouterClient iMediaRouterClient = this.mClient;
            if (iMediaRouterClient == null) {
                return false;
            }
            try {
                return this.mMediaRouterService.isPlaybackActive(iMediaRouterClient);
            } catch (RemoteException e2) {
                Log.e(MediaRouter.TAG, "Unable to retrieve playback active state.", e2);
                return false;
            }
        }

        public RouteInfo makeGlobalRoute(MediaRouterClientState.RouteInfo routeInfo) {
            RouteInfo routeInfo2 = new RouteInfo(this.mSystemCategory);
            routeInfo2.mGlobalRouteId = routeInfo.id;
            routeInfo2.mName = routeInfo.name;
            routeInfo2.mDescription = routeInfo.description;
            routeInfo2.mSupportedTypes = routeInfo.supportedTypes;
            routeInfo2.mDeviceType = routeInfo.deviceType;
            routeInfo2.mEnabled = routeInfo.enabled;
            routeInfo2.setRealStatusCode(routeInfo.statusCode);
            routeInfo2.mPlaybackType = routeInfo.playbackType;
            routeInfo2.mPlaybackStream = routeInfo.playbackStream;
            routeInfo2.mVolume = routeInfo.volume;
            routeInfo2.mVolumeMax = routeInfo.volumeMax;
            routeInfo2.mVolumeHandling = routeInfo.volumeHandling;
            routeInfo2.mPresentationDisplayId = routeInfo.presentationDisplayId;
            routeInfo2.updatePresentationDisplay();
            return routeInfo2;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i2) {
            updatePresentationDisplays(i2);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i2) {
            updatePresentationDisplays(i2);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i2) {
            updatePresentationDisplays(i2);
        }

        public void publishClientDiscoveryRequest() {
            IMediaRouterClient iMediaRouterClient = this.mClient;
            if (iMediaRouterClient != null) {
                try {
                    this.mMediaRouterService.setDiscoveryRequest(iMediaRouterClient, this.mDiscoveryRequestRouteTypes, this.mDiscoverRequestActiveScan);
                } catch (RemoteException e2) {
                    Log.e(MediaRouter.TAG, "Unable to publish media router client discovery request.", e2);
                }
            }
        }

        public void publishClientSelectedRoute(boolean z2) {
            IMediaRouterClient iMediaRouterClient = this.mClient;
            if (iMediaRouterClient != null) {
                try {
                    IMediaRouterService iMediaRouterService = this.mMediaRouterService;
                    RouteInfo routeInfo = this.mSelectedRoute;
                    iMediaRouterService.setSelectedRoute(iMediaRouterClient, routeInfo != null ? routeInfo.mGlobalRouteId : null, z2);
                } catch (RemoteException e2) {
                    Log.e(MediaRouter.TAG, "Unable to publish media router client selected route.", e2);
                }
            }
        }

        public void rebindAsUser(int i2) {
            if (this.mCurrentUserId != i2 || i2 < 0 || this.mClient == null) {
                IMediaRouterClient iMediaRouterClient = this.mClient;
                if (iMediaRouterClient != null) {
                    try {
                        this.mMediaRouterService.unregisterClient(iMediaRouterClient);
                    } catch (RemoteException e2) {
                        Log.e(MediaRouter.TAG, "Unable to unregister media router client.", e2);
                    }
                    this.mClient = null;
                }
                this.mCurrentUserId = i2;
                try {
                    Client client = new Client();
                    this.mMediaRouterService.registerClientAsUser(client, this.mPackageName, i2);
                    this.mClient = client;
                } catch (RemoteException e3) {
                    Log.e(MediaRouter.TAG, "Unable to register media router client.", e3);
                }
                publishClientDiscoveryRequest();
                publishClientSelectedRoute(false);
                updateClientState();
            }
        }

        public void requestSetVolume(RouteInfo routeInfo, int i2) {
            IMediaRouterClient iMediaRouterClient;
            String str = routeInfo.mGlobalRouteId;
            if (str == null || (iMediaRouterClient = this.mClient) == null) {
                return;
            }
            try {
                this.mMediaRouterService.requestSetVolume(iMediaRouterClient, str, i2);
            } catch (RemoteException e2) {
                Log.w(MediaRouter.TAG, "Unable to request volume change.", e2);
            }
        }

        public void requestUpdateVolume(RouteInfo routeInfo, int i2) {
            IMediaRouterClient iMediaRouterClient;
            String str = routeInfo.mGlobalRouteId;
            if (str == null || (iMediaRouterClient = this.mClient) == null) {
                return;
            }
            try {
                this.mMediaRouterService.requestUpdateVolume(iMediaRouterClient, str, i2);
            } catch (RemoteException e2) {
                Log.w(MediaRouter.TAG, "Unable to request volume change.", e2);
            }
        }

        public void setSelectedRoute(RouteInfo routeInfo, boolean z2) {
            this.mSelectedRoute = routeInfo;
            publishClientSelectedRoute(z2);
        }

        public void startMonitoringRoutes(Context context) {
            AudioRoutesInfo audioRoutesInfoStartWatchingRoutes;
            RouteInfo routeInfo = new RouteInfo(this.mSystemCategory);
            this.mDefaultAudioVideo = routeInfo;
            routeInfo.mNameResId = R.string.default_audio_route_name;
            routeInfo.mSupportedTypes = 3;
            routeInfo.updatePresentationDisplay();
            if (((AudioManager) context.getSystemService("audio")).isVolumeFixed()) {
                this.mDefaultAudioVideo.mVolumeHandling = 0;
            }
            MediaRouter.addRouteStatic(this.mDefaultAudioVideo);
            MediaRouter.updateWifiDisplayStatus(this.mDisplayService.getWifiDisplayStatus());
            context.registerReceiver(new WifiDisplayStatusChangedReceiver(), new IntentFilter(DisplayManager.ACTION_WIFI_DISPLAY_STATUS_CHANGED));
            context.registerReceiver(new VolumeChangeReceiver(), new IntentFilter(AudioManager.VOLUME_CHANGED_ACTION));
            this.mDisplayService.registerDisplayListener(this, this.mHandler);
            try {
                audioRoutesInfoStartWatchingRoutes = this.mAudioService.startWatchingRoutes(this.mAudioRoutesObserver);
            } catch (RemoteException unused) {
                audioRoutesInfoStartWatchingRoutes = null;
            }
            if (audioRoutesInfoStartWatchingRoutes != null) {
                updateAudioRoutes(audioRoutesInfoStartWatchingRoutes);
            }
            rebindAsUser(UserHandle.myUserId());
            if (this.mSelectedRoute == null) {
                MediaRouter.selectDefaultRouteStatic();
            }
        }

        public void updateAudioRoutes(AudioRoutesInfo audioRoutesInfo) {
            boolean z2;
            boolean z3;
            RouteInfo routeInfo;
            int i2;
            int i3 = audioRoutesInfo.mainType;
            AudioRoutesInfo audioRoutesInfo2 = this.mCurAudioRoutesInfo;
            if (i3 != audioRoutesInfo2.mainType) {
                audioRoutesInfo2.mainType = i3;
                int i4 = audioRoutesInfo.mainType;
                if ((i4 & 2) != 0 || (i4 & 1) != 0) {
                    i2 = R.string.default_audio_route_name_headphones;
                } else if ((i4 & 4) != 0) {
                    i2 = R.string.default_audio_route_name_dock_speakers;
                } else {
                    i2 = (i4 & 8) != 0 ? R.string.default_media_route_name_hdmi : R.string.default_audio_route_name;
                }
                RouteInfo routeInfo2 = this.mDefaultAudioVideo;
                routeInfo2.mNameResId = i2;
                MediaRouter.dispatchRouteChanged(routeInfo2);
                z2 = (audioRoutesInfo.mainType & 19) != 0;
                z3 = true;
            } else {
                z2 = false;
                z3 = false;
            }
            if (!TextUtils.equals(audioRoutesInfo.bluetoothName, this.mCurAudioRoutesInfo.bluetoothName)) {
                AudioRoutesInfo audioRoutesInfo3 = this.mCurAudioRoutesInfo;
                CharSequence charSequence = audioRoutesInfo.bluetoothName;
                audioRoutesInfo3.bluetoothName = charSequence;
                if (charSequence != null) {
                    RouteInfo routeInfo3 = this.mBluetoothA2dpRoute;
                    if (routeInfo3 == null) {
                        RouteInfo routeInfo4 = new RouteInfo(this.mSystemCategory);
                        routeInfo4.mName = this.mCurAudioRoutesInfo.bluetoothName;
                        routeInfo4.mDescription = this.mResources.getText(R.string.bluetooth_a2dp_audio_route_name);
                        routeInfo4.mSupportedTypes = 1;
                        routeInfo4.mDeviceType = 3;
                        this.mBluetoothA2dpRoute = routeInfo4;
                        MediaRouter.addRouteStatic(routeInfo4);
                    } else {
                        routeInfo3.mName = charSequence;
                        MediaRouter.dispatchRouteChanged(routeInfo3);
                    }
                } else {
                    RouteInfo routeInfo5 = this.mBluetoothA2dpRoute;
                    if (routeInfo5 != null) {
                        MediaRouter.removeRouteStatic(routeInfo5);
                        this.mBluetoothA2dpRoute = null;
                    }
                }
                z3 = true;
                z2 = false;
            }
            if (z3) {
                Log.v(MediaRouter.TAG, "Audio routes updated: " + audioRoutesInfo + ", a2dp=" + isBluetoothA2dpOn());
                RouteInfo routeInfo6 = this.mSelectedRoute;
                if (routeInfo6 == null || routeInfo6 == this.mDefaultAudioVideo || routeInfo6 == this.mBluetoothA2dpRoute) {
                    if (z2 || (routeInfo = this.mBluetoothA2dpRoute) == null) {
                        MediaRouter.selectRouteStatic(1, this.mDefaultAudioVideo, false);
                    } else {
                        MediaRouter.selectRouteStatic(1, routeInfo, false);
                    }
                }
            }
        }

        public void updateClientState() {
            this.mClientState = null;
            IMediaRouterClient iMediaRouterClient = this.mClient;
            if (iMediaRouterClient != null) {
                try {
                    this.mClientState = this.mMediaRouterService.getState(iMediaRouterClient);
                } catch (RemoteException e2) {
                    Log.e(MediaRouter.TAG, "Unable to retrieve media router client state.", e2);
                }
            }
            MediaRouterClientState mediaRouterClientState = this.mClientState;
            ArrayList<MediaRouterClientState.RouteInfo> arrayList = mediaRouterClientState != null ? mediaRouterClientState.routes : null;
            int size = arrayList != null ? arrayList.size() : 0;
            for (int i2 = 0; i2 < size; i2++) {
                MediaRouterClientState.RouteInfo routeInfo = arrayList.get(i2);
                RouteInfo routeInfoFindGlobalRoute = findGlobalRoute(routeInfo.id);
                if (routeInfoFindGlobalRoute == null) {
                    MediaRouter.addRouteStatic(makeGlobalRoute(routeInfo));
                } else {
                    updateGlobalRoute(routeInfoFindGlobalRoute, routeInfo);
                }
            }
            int size2 = this.mRoutes.size();
            while (true) {
                int i3 = size2 - 1;
                if (size2 <= 0) {
                    return;
                }
                RouteInfo routeInfo2 = this.mRoutes.get(i3);
                String str = routeInfo2.mGlobalRouteId;
                if (str != null) {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= size) {
                            MediaRouter.removeRouteStatic(routeInfo2);
                            break;
                        } else if (str.equals(arrayList.get(i4).id)) {
                            break;
                        } else {
                            i4++;
                        }
                    }
                }
                size2 = i3;
            }
        }

        public void updateDiscoveryRequest() {
            int size = this.mCallbacks.size();
            int i2 = 0;
            boolean z2 = false;
            int i3 = 0;
            boolean z3 = false;
            for (int i4 = 0; i4 < size; i4++) {
                CallbackInfo callbackInfo = this.mCallbacks.get(i4);
                int i5 = callbackInfo.flags;
                if ((i5 & 5) == 0 && (i5 & 8) != 0) {
                    i3 |= callbackInfo.type;
                } else {
                    int i6 = callbackInfo.type;
                    i2 |= i6;
                }
                if ((i5 & 1) != 0) {
                    if ((callbackInfo.type & 4) != 0) {
                        z2 = true;
                        z3 = true;
                    } else {
                        z2 = true;
                    }
                }
            }
            if (i2 != 0 || z2) {
                i2 |= i3;
            }
            if (this.mCanConfigureWifiDisplays) {
                RouteInfo routeInfo = this.mSelectedRoute;
                if (routeInfo != null && routeInfo.matchesTypes(4)) {
                    z3 = false;
                }
                if (z3) {
                    if (!this.mActivelyScanningWifiDisplays) {
                        this.mActivelyScanningWifiDisplays = true;
                        this.mDisplayService.startWifiDisplayScan();
                    }
                } else if (this.mActivelyScanningWifiDisplays) {
                    this.mActivelyScanningWifiDisplays = false;
                    this.mDisplayService.stopWifiDisplayScan();
                }
            }
            if (i2 == this.mDiscoveryRequestRouteTypes && z2 == this.mDiscoverRequestActiveScan) {
                return;
            }
            this.mDiscoveryRequestRouteTypes = i2;
            this.mDiscoverRequestActiveScan = z2;
            publishClientDiscoveryRequest();
        }

        public void updateGlobalRoute(RouteInfo routeInfo, MediaRouterClientState.RouteInfo routeInfo2) {
            boolean z2;
            boolean z3;
            boolean z4 = true;
            boolean z5 = false;
            if (Objects.equals(routeInfo.mName, routeInfo2.name)) {
                z2 = false;
            } else {
                routeInfo.mName = routeInfo2.name;
                z2 = true;
            }
            if (!Objects.equals(routeInfo.mDescription, routeInfo2.description)) {
                routeInfo.mDescription = routeInfo2.description;
                z2 = true;
            }
            int i2 = routeInfo.mSupportedTypes;
            int i3 = routeInfo2.supportedTypes;
            if (i2 != i3) {
                routeInfo.mSupportedTypes = i3;
                z2 = true;
            }
            boolean z6 = routeInfo.mEnabled;
            boolean z7 = routeInfo2.enabled;
            if (z6 != z7) {
                routeInfo.mEnabled = z7;
                z2 = true;
            }
            int i4 = routeInfo.mRealStatusCode;
            int i5 = routeInfo2.statusCode;
            if (i4 != i5) {
                routeInfo.setRealStatusCode(i5);
                z2 = true;
            }
            int i6 = routeInfo.mPlaybackType;
            int i7 = routeInfo2.playbackType;
            if (i6 != i7) {
                routeInfo.mPlaybackType = i7;
                z2 = true;
            }
            int i8 = routeInfo.mPlaybackStream;
            int i9 = routeInfo2.playbackStream;
            if (i8 != i9) {
                routeInfo.mPlaybackStream = i9;
                z2 = true;
            }
            int i10 = routeInfo.mVolume;
            int i11 = routeInfo2.volume;
            if (i10 != i11) {
                routeInfo.mVolume = i11;
                z2 = true;
                z3 = true;
            } else {
                z3 = false;
            }
            int i12 = routeInfo.mVolumeMax;
            int i13 = routeInfo2.volumeMax;
            if (i12 != i13) {
                routeInfo.mVolumeMax = i13;
                z2 = true;
                z3 = true;
            }
            int i14 = routeInfo.mVolumeHandling;
            int i15 = routeInfo2.volumeHandling;
            if (i14 != i15) {
                routeInfo.mVolumeHandling = i15;
                z2 = true;
                z3 = true;
            }
            int i16 = routeInfo.mPresentationDisplayId;
            int i17 = routeInfo2.presentationDisplayId;
            if (i16 != i17) {
                routeInfo.mPresentationDisplayId = i17;
                routeInfo.updatePresentationDisplay();
                z5 = true;
            } else {
                z4 = z2;
            }
            if (z4) {
                MediaRouter.dispatchRouteChanged(routeInfo, i2);
            }
            if (z3) {
                MediaRouter.dispatchRouteVolumeChanged(routeInfo);
            }
            if (z5) {
                MediaRouter.dispatchRoutePresentationDisplayChanged(routeInfo);
            }
        }
    }

    public static abstract class VolumeCallback {
        public abstract void onVolumeSetRequest(RouteInfo routeInfo, int i2);

        public abstract void onVolumeUpdateRequest(RouteInfo routeInfo, int i2);
    }

    public static class VolumeCallbackInfo {
        public final RouteInfo route;
        public final VolumeCallback vcb;

        public VolumeCallbackInfo(VolumeCallback volumeCallback, RouteInfo routeInfo) {
            this.vcb = volumeCallback;
            this.route = routeInfo;
        }
    }

    public static class VolumeChangeReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int intExtra;
            if (intent.getAction().equals(AudioManager.VOLUME_CHANGED_ACTION) && intent.getIntExtra(AudioManager.EXTRA_VOLUME_STREAM_TYPE, -1) == 3 && (intExtra = intent.getIntExtra(AudioManager.EXTRA_VOLUME_STREAM_VALUE, 0)) != intent.getIntExtra(AudioManager.EXTRA_PREV_VOLUME_STREAM_VALUE, 0)) {
                MediaRouter.systemVolumeChanged(intExtra);
            }
        }
    }

    public static class WifiDisplayStatusChangedReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals(DisplayManager.ACTION_WIFI_DISPLAY_STATUS_CHANGED)) {
                MediaRouter.updateWifiDisplayStatus((WifiDisplayStatus) intent.getParcelableExtra(DisplayManager.EXTRA_WIFI_DISPLAY_STATUS));
            }
        }
    }

    public MediaRouter(Context context) {
        synchronized (Static.class) {
            if (sStatic == null) {
                Context applicationContext = context.getApplicationContext();
                Static r1 = new Static(applicationContext);
                sStatic = r1;
                r1.startMonitoringRoutes(applicationContext);
            }
        }
    }

    public static void addRouteStatic(RouteInfo routeInfo) {
        Log.v(TAG, "Adding route: " + routeInfo);
        RouteCategory category = routeInfo.getCategory();
        if (!sStatic.mCategories.contains(category)) {
            sStatic.mCategories.add(category);
        }
        if (!category.isGroupable() || (routeInfo instanceof RouteGroup)) {
            sStatic.mRoutes.add(routeInfo);
            dispatchRouteAdded(routeInfo);
            return;
        }
        RouteGroup routeGroup = new RouteGroup(routeInfo.getCategory());
        routeGroup.mSupportedTypes = routeInfo.mSupportedTypes;
        sStatic.mRoutes.add(routeGroup);
        dispatchRouteAdded(routeGroup);
        routeGroup.addRoute(routeInfo);
    }

    public static void dispatchRouteAdded(RouteInfo routeInfo) {
        for (CallbackInfo callbackInfo : sStatic.mCallbacks) {
            if (callbackInfo.filterRouteEvent(routeInfo)) {
                callbackInfo.cb.onRouteAdded(callbackInfo.router, routeInfo);
            }
        }
    }

    public static void dispatchRouteChanged(RouteInfo routeInfo) {
        dispatchRouteChanged(routeInfo, routeInfo.mSupportedTypes);
    }

    public static void dispatchRouteGrouped(RouteInfo routeInfo, RouteGroup routeGroup, int i2) {
        for (CallbackInfo callbackInfo : sStatic.mCallbacks) {
            if (callbackInfo.filterRouteEvent(routeGroup)) {
                callbackInfo.cb.onRouteGrouped(callbackInfo.router, routeInfo, routeGroup, i2);
            }
        }
    }

    public static void dispatchRoutePresentationDisplayChanged(RouteInfo routeInfo) {
        for (CallbackInfo callbackInfo : sStatic.mCallbacks) {
            if (callbackInfo.filterRouteEvent(routeInfo)) {
                callbackInfo.cb.onRoutePresentationDisplayChanged(callbackInfo.router, routeInfo);
            }
        }
    }

    public static void dispatchRouteRemoved(RouteInfo routeInfo) {
        for (CallbackInfo callbackInfo : sStatic.mCallbacks) {
            if (callbackInfo.filterRouteEvent(routeInfo)) {
                callbackInfo.cb.onRouteRemoved(callbackInfo.router, routeInfo);
            }
        }
    }

    public static void dispatchRouteSelected(int i2, RouteInfo routeInfo) {
        for (CallbackInfo callbackInfo : sStatic.mCallbacks) {
            if (callbackInfo.filterRouteEvent(routeInfo)) {
                callbackInfo.cb.onRouteSelected(callbackInfo.router, i2, routeInfo);
            }
        }
    }

    public static void dispatchRouteUngrouped(RouteInfo routeInfo, RouteGroup routeGroup) {
        for (CallbackInfo callbackInfo : sStatic.mCallbacks) {
            if (callbackInfo.filterRouteEvent(routeGroup)) {
                callbackInfo.cb.onRouteUngrouped(callbackInfo.router, routeInfo, routeGroup);
            }
        }
    }

    public static void dispatchRouteUnselected(int i2, RouteInfo routeInfo) {
        for (CallbackInfo callbackInfo : sStatic.mCallbacks) {
            if (callbackInfo.filterRouteEvent(routeInfo)) {
                callbackInfo.cb.onRouteUnselected(callbackInfo.router, i2, routeInfo);
            }
        }
    }

    public static void dispatchRouteVolumeChanged(RouteInfo routeInfo) {
        for (CallbackInfo callbackInfo : sStatic.mCallbacks) {
            if (callbackInfo.filterRouteEvent(routeInfo)) {
                callbackInfo.cb.onRouteVolumeChanged(callbackInfo.router, routeInfo);
            }
        }
    }

    private int findCallbackInfo(Callback callback) {
        int size = sStatic.mCallbacks.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (sStatic.mCallbacks.get(i2).cb == callback) {
                return i2;
            }
        }
        return -1;
    }

    private static WifiDisplay findWifiDisplay(WifiDisplay[] wifiDisplayArr, String str) {
        for (WifiDisplay wifiDisplay : wifiDisplayArr) {
            if (wifiDisplay.getDeviceAddress().equals(str)) {
                return wifiDisplay;
            }
        }
        return null;
    }

    private static RouteInfo findWifiDisplayRoute(WifiDisplay wifiDisplay) {
        int size = sStatic.mRoutes.size();
        for (int i2 = 0; i2 < size; i2++) {
            RouteInfo routeInfo = sStatic.mRoutes.get(i2);
            if (wifiDisplay.getDeviceAddress().equals(routeInfo.mDeviceAddress)) {
                return routeInfo;
            }
        }
        return null;
    }

    public static RouteInfo getRouteAtStatic(int i2) {
        return sStatic.mRoutes.get(i2);
    }

    public static int getRouteCountStatic() {
        return sStatic.mRoutes.size();
    }

    public static int getWifiDisplayStatusCode(WifiDisplay wifiDisplay, WifiDisplayStatus wifiDisplayStatus) {
        int i2;
        if (wifiDisplayStatus.getScanState() == 1) {
            i2 = 1;
        } else if (wifiDisplay.isAvailable()) {
            i2 = wifiDisplay.canConnect() ? 3 : 5;
        } else {
            i2 = 4;
        }
        if (!wifiDisplay.equals(wifiDisplayStatus.getActiveDisplay())) {
            return i2;
        }
        int activeDisplayState = wifiDisplayStatus.getActiveDisplayState();
        if (activeDisplayState == 0) {
            Log.e(TAG, "Active display is not connected!");
            return i2;
        }
        if (activeDisplayState == 1) {
            return 2;
        }
        if (activeDisplayState != 2) {
            return i2;
        }
        return 6;
    }

    public static boolean isWifiDisplayEnabled(WifiDisplay wifiDisplay, WifiDisplayStatus wifiDisplayStatus) {
        return wifiDisplay.isAvailable() && (wifiDisplay.canConnect() || wifiDisplay.equals(wifiDisplayStatus.getActiveDisplay()));
    }

    public static RouteInfo makeWifiDisplayRoute(WifiDisplay wifiDisplay, WifiDisplayStatus wifiDisplayStatus) {
        RouteInfo routeInfo = new RouteInfo(sStatic.mSystemCategory);
        routeInfo.mDeviceAddress = wifiDisplay.getDeviceAddress();
        routeInfo.mSupportedTypes = 7;
        routeInfo.mVolumeHandling = 0;
        routeInfo.mPlaybackType = 1;
        routeInfo.setRealStatusCode(getWifiDisplayStatusCode(wifiDisplay, wifiDisplayStatus));
        routeInfo.mEnabled = isWifiDisplayEnabled(wifiDisplay, wifiDisplayStatus);
        routeInfo.mName = wifiDisplay.getFriendlyDisplayName();
        routeInfo.mDescription = sStatic.mResources.getText(R.string.wireless_display_route_description);
        routeInfo.updatePresentationDisplay();
        routeInfo.mDeviceType = 1;
        return routeInfo;
    }

    public static boolean matchesDeviceAddress(WifiDisplay wifiDisplay, RouteInfo routeInfo) {
        boolean z2 = (routeInfo == null || routeInfo.mDeviceAddress == null) ? false : true;
        if (wifiDisplay == null && !z2) {
            return true;
        }
        if (wifiDisplay == null || !z2) {
            return false;
        }
        return wifiDisplay.getDeviceAddress().equals(routeInfo.mDeviceAddress);
    }

    public static void removeRouteStatic(RouteInfo routeInfo) {
        Log.v(TAG, "Removing route: " + routeInfo);
        if (sStatic.mRoutes.remove(routeInfo)) {
            RouteCategory category = routeInfo.getCategory();
            int size = sStatic.mRoutes.size();
            boolean z2 = false;
            for (int i2 = 0; i2 < size; i2++) {
                if (category == sStatic.mRoutes.get(i2).getCategory()) {
                    z2 = true;
                    break;
                }
            }
            if (routeInfo.isSelected()) {
                selectDefaultRouteStatic();
            }
            if (!z2) {
                sStatic.mCategories.remove(category);
            }
            dispatchRouteRemoved(routeInfo);
        }
    }

    public static void selectDefaultRouteStatic() {
        Static r0 = sStatic;
        if (r0.mSelectedRoute == r0.mBluetoothA2dpRoute || !r0.isBluetoothA2dpOn()) {
            selectRouteStatic(8388615, sStatic.mDefaultAudioVideo, false);
        } else {
            selectRouteStatic(8388615, sStatic.mBluetoothA2dpRoute, false);
        }
    }

    public static void selectRouteStatic(int i2, RouteInfo routeInfo, boolean z2) {
        Log.v(TAG, "Selecting route: " + routeInfo);
        Static r0 = sStatic;
        RouteInfo routeInfo2 = r0.mSelectedRoute;
        RouteInfo routeInfo3 = r0.isBluetoothA2dpOn() ? sStatic.mBluetoothA2dpRoute : sStatic.mDefaultAudioVideo;
        Static r3 = sStatic;
        boolean z3 = routeInfo2 == r3.mDefaultAudioVideo || routeInfo2 == r3.mBluetoothA2dpRoute;
        if (routeInfo2 != routeInfo || (z3 && routeInfo != routeInfo3)) {
            if (!routeInfo.matchesTypes(i2)) {
                Log.w(TAG, "selectRoute ignored; cannot select route with supported types " + typesToString(routeInfo.getSupportedTypes()) + " into route types " + typesToString(i2));
                return;
            }
            Static r1 = sStatic;
            RouteInfo routeInfo4 = r1.mBluetoothA2dpRoute;
            if (r1.isPlaybackActive() && routeInfo4 != null && (i2 & 1) != 0 && (routeInfo == routeInfo4 || routeInfo == sStatic.mDefaultAudioVideo)) {
                try {
                    sStatic.mAudioService.setBluetoothA2dpOn(routeInfo == routeInfo4);
                    if (routeInfo != routeInfo4) {
                        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
                        StringBuffer stringBuffer = new StringBuffer();
                        for (int i3 = 3; i3 < stackTrace.length; i3++) {
                            StackTraceElement stackTraceElement = stackTrace[i3];
                            stringBuffer.append(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + SettingsStringUtil.DELIMITER + stackTraceElement.getLineNumber());
                            stringBuffer.append("  ");
                        }
                        Log.w(TAG, "Default route is selected while a BT route is available: pkgName=" + sStatic.mPackageName + ", callers=" + stringBuffer.toString());
                    }
                } catch (RemoteException e2) {
                    Log.e(TAG, "Error changing Bluetooth A2DP state", e2);
                }
            }
            WifiDisplay activeDisplay = sStatic.mDisplayService.getWifiDisplayStatus().getActiveDisplay();
            boolean z4 = (routeInfo2 == null || routeInfo2.mDeviceAddress == null) ? false : true;
            boolean z5 = routeInfo.mDeviceAddress != null;
            if (activeDisplay != null || z4 || z5) {
                if (z5 && !matchesDeviceAddress(activeDisplay, routeInfo)) {
                    Static r2 = sStatic;
                    if (r2.mCanConfigureWifiDisplays) {
                        r2.mDisplayService.connectWifiDisplay(routeInfo.mDeviceAddress);
                    } else {
                        Log.e(TAG, "Cannot connect to wifi displays because this process is not allowed to do so.");
                    }
                } else if (activeDisplay != null && !z5) {
                    sStatic.mDisplayService.disconnectWifiDisplay();
                }
            }
            sStatic.setSelectedRoute(routeInfo, z2);
            if (routeInfo2 != null) {
                dispatchRouteUnselected(routeInfo2.getSupportedTypes() & i2, routeInfo2);
                if (routeInfo2.resolveStatusCode()) {
                    dispatchRouteChanged(routeInfo2);
                }
            }
            if (routeInfo.resolveStatusCode()) {
                dispatchRouteChanged(routeInfo);
            }
            dispatchRouteSelected(i2 & routeInfo.getSupportedTypes(), routeInfo);
            sStatic.updateDiscoveryRequest();
        }
    }

    private static boolean shouldShowWifiDisplay(WifiDisplay wifiDisplay, WifiDisplay wifiDisplay2) {
        return wifiDisplay.isRemembered() || wifiDisplay.equals(wifiDisplay2);
    }

    public static void systemVolumeChanged(int i2) {
        RouteInfo routeInfo;
        Static r3 = sStatic;
        RouteInfo routeInfo2 = r3.mSelectedRoute;
        if (routeInfo2 == null) {
            return;
        }
        RouteInfo routeInfo3 = r3.mBluetoothA2dpRoute;
        if (routeInfo2 == routeInfo3 || routeInfo2 == (routeInfo = r3.mDefaultAudioVideo)) {
            dispatchRouteVolumeChanged(routeInfo2);
            return;
        }
        if (routeInfo3 == null) {
            dispatchRouteVolumeChanged(routeInfo);
            return;
        }
        try {
            dispatchRouteVolumeChanged(r3.mAudioService.isBluetoothA2dpOn() ? sStatic.mBluetoothA2dpRoute : sStatic.mDefaultAudioVideo);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error checking Bluetooth A2DP state to report volume change", e2);
        }
    }

    public static String typesToString(int i2) {
        StringBuilder sb = new StringBuilder();
        if ((i2 & 1) != 0) {
            sb.append("ROUTE_TYPE_LIVE_AUDIO ");
        }
        if ((i2 & 2) != 0) {
            sb.append("ROUTE_TYPE_LIVE_VIDEO ");
        }
        if ((i2 & 4) != 0) {
            sb.append("ROUTE_TYPE_REMOTE_DISPLAY ");
        }
        if ((i2 & 8388608) != 0) {
            sb.append("ROUTE_TYPE_USER ");
        }
        return sb.toString();
    }

    public static void updateRoute(RouteInfo routeInfo) {
        dispatchRouteChanged(routeInfo);
    }

    private static void updateWifiDisplayRoute(RouteInfo routeInfo, WifiDisplay wifiDisplay, WifiDisplayStatus wifiDisplayStatus, boolean z2) {
        boolean z3;
        String friendlyDisplayName = wifiDisplay.getFriendlyDisplayName();
        if (routeInfo.getName().equals(friendlyDisplayName)) {
            z3 = false;
        } else {
            routeInfo.mName = friendlyDisplayName;
            z3 = true;
        }
        boolean zIsWifiDisplayEnabled = isWifiDisplayEnabled(wifiDisplay, wifiDisplayStatus);
        boolean z4 = routeInfo.mEnabled != zIsWifiDisplayEnabled;
        routeInfo.mEnabled = zIsWifiDisplayEnabled;
        if (routeInfo.setRealStatusCode(getWifiDisplayStatusCode(wifiDisplay, wifiDisplayStatus)) | z3 | z4) {
            dispatchRouteChanged(routeInfo);
        }
        if ((!zIsWifiDisplayEnabled || z2) && routeInfo.isSelected()) {
            selectDefaultRouteStatic();
        }
    }

    public static void updateWifiDisplayStatus(WifiDisplayStatus wifiDisplayStatus) {
        WifiDisplay[] displays;
        WifiDisplay activeDisplay;
        WifiDisplay wifiDisplayFindWifiDisplay;
        if (wifiDisplayStatus.getFeatureState() == 3) {
            displays = wifiDisplayStatus.getDisplays();
            activeDisplay = wifiDisplayStatus.getActiveDisplay();
            if (!sStatic.mCanConfigureWifiDisplays) {
                displays = activeDisplay != null ? new WifiDisplay[]{activeDisplay} : WifiDisplay.EMPTY_ARRAY;
            }
        } else {
            displays = WifiDisplay.EMPTY_ARRAY;
            activeDisplay = null;
        }
        String deviceAddress = activeDisplay != null ? activeDisplay.getDeviceAddress() : null;
        for (WifiDisplay wifiDisplay : displays) {
            if (shouldShowWifiDisplay(wifiDisplay, activeDisplay)) {
                RouteInfo routeInfoFindWifiDisplayRoute = findWifiDisplayRoute(wifiDisplay);
                if (routeInfoFindWifiDisplayRoute == null) {
                    routeInfoFindWifiDisplayRoute = makeWifiDisplayRoute(wifiDisplay, wifiDisplayStatus);
                    addRouteStatic(routeInfoFindWifiDisplayRoute);
                } else {
                    String deviceAddress2 = wifiDisplay.getDeviceAddress();
                    updateWifiDisplayRoute(routeInfoFindWifiDisplayRoute, wifiDisplay, wifiDisplayStatus, !deviceAddress2.equals(deviceAddress) && deviceAddress2.equals(sStatic.mPreviousActiveWifiDisplayAddress));
                }
                if (wifiDisplay.equals(activeDisplay)) {
                    selectRouteStatic(routeInfoFindWifiDisplayRoute.getSupportedTypes(), routeInfoFindWifiDisplayRoute, false);
                }
            }
        }
        int size = sStatic.mRoutes.size();
        while (true) {
            int i2 = size - 1;
            if (size <= 0) {
                sStatic.mPreviousActiveWifiDisplayAddress = deviceAddress;
                return;
            }
            RouteInfo routeInfo = sStatic.mRoutes.get(i2);
            String str = routeInfo.mDeviceAddress;
            if (str != null && ((wifiDisplayFindWifiDisplay = findWifiDisplay(displays, str)) == null || !shouldShowWifiDisplay(wifiDisplayFindWifiDisplay, activeDisplay))) {
                removeRouteStatic(routeInfo);
            }
            size = i2;
        }
    }

    public void addCallback(int i2, Callback callback) {
        addCallback(i2, callback, 0);
    }

    public void addRouteInt(RouteInfo routeInfo) {
        addRouteStatic(routeInfo);
    }

    public void addUserRoute(UserRouteInfo userRouteInfo) {
        addRouteStatic(userRouteInfo);
    }

    public void clearUserRoutes() {
        int i2 = 0;
        while (i2 < sStatic.mRoutes.size()) {
            RouteInfo routeInfo = sStatic.mRoutes.get(i2);
            if ((routeInfo instanceof UserRouteInfo) || (routeInfo instanceof RouteGroup)) {
                removeRouteStatic(routeInfo);
                i2--;
            }
            i2++;
        }
    }

    public RouteCategory createRouteCategory(CharSequence charSequence, boolean z2) {
        return new RouteCategory(charSequence, 8388608, z2);
    }

    public UserRouteInfo createUserRoute(RouteCategory routeCategory) {
        return new UserRouteInfo(routeCategory);
    }

    public RouteCategory getCategoryAt(int i2) {
        return sStatic.mCategories.get(i2);
    }

    public int getCategoryCount() {
        return sStatic.mCategories.size();
    }

    public RouteInfo getDefaultRoute() {
        return sStatic.mDefaultAudioVideo;
    }

    public RouteInfo getFallbackRoute() {
        Static r0 = sStatic;
        RouteInfo routeInfo = r0.mBluetoothA2dpRoute;
        return routeInfo != null ? routeInfo : r0.mDefaultAudioVideo;
    }

    public RouteInfo getRouteAt(int i2) {
        return sStatic.mRoutes.get(i2);
    }

    public int getRouteCount() {
        return sStatic.mRoutes.size();
    }

    public RouteInfo getSelectedRoute() {
        return getSelectedRoute(8388615);
    }

    public RouteCategory getSystemCategory() {
        return sStatic.mSystemCategory;
    }

    public boolean isRouteAvailable(int i2, int i3) {
        int size = sStatic.mRoutes.size();
        for (int i4 = 0; i4 < size; i4++) {
            RouteInfo routeInfo = sStatic.mRoutes.get(i4);
            if (routeInfo.matchesTypes(i2) && ((i3 & 1) == 0 || routeInfo != sStatic.mDefaultAudioVideo)) {
                return true;
            }
        }
        return false;
    }

    public void rebindAsUser(int i2) {
        sStatic.rebindAsUser(i2);
    }

    public void removeCallback(Callback callback) {
        int iFindCallbackInfo = findCallbackInfo(callback);
        if (iFindCallbackInfo >= 0) {
            sStatic.mCallbacks.remove(iFindCallbackInfo);
            sStatic.updateDiscoveryRequest();
        } else {
            Log.w(TAG, "removeCallback(" + callback + "): callback not registered");
        }
    }

    public void removeRouteInt(RouteInfo routeInfo) {
        removeRouteStatic(routeInfo);
    }

    public void removeUserRoute(UserRouteInfo userRouteInfo) {
        removeRouteStatic(userRouteInfo);
    }

    public void selectRoute(int i2, RouteInfo routeInfo) {
        if (routeInfo == null) {
            throw new IllegalArgumentException("Route cannot be null.");
        }
        selectRouteStatic(i2, routeInfo, true);
    }

    public void selectRouteInt(int i2, RouteInfo routeInfo, boolean z2) {
        selectRouteStatic(i2, routeInfo, z2);
    }

    public static void dispatchRouteChanged(RouteInfo routeInfo, int i2) {
        if (DEBUG) {
            Log.d(TAG, "Dispatching route change: " + routeInfo);
        }
        int i3 = routeInfo.mSupportedTypes;
        for (CallbackInfo callbackInfo : sStatic.mCallbacks) {
            boolean zFilterRouteEvent = callbackInfo.filterRouteEvent(i2);
            boolean zFilterRouteEvent2 = callbackInfo.filterRouteEvent(i3);
            if (!zFilterRouteEvent && zFilterRouteEvent2) {
                callbackInfo.cb.onRouteAdded(callbackInfo.router, routeInfo);
                if (routeInfo.isSelected()) {
                    callbackInfo.cb.onRouteSelected(callbackInfo.router, i3, routeInfo);
                }
            }
            if (zFilterRouteEvent || zFilterRouteEvent2) {
                callbackInfo.cb.onRouteChanged(callbackInfo.router, routeInfo);
            }
            if (zFilterRouteEvent && !zFilterRouteEvent2) {
                if (routeInfo.isSelected()) {
                    callbackInfo.cb.onRouteUnselected(callbackInfo.router, i2, routeInfo);
                }
                callbackInfo.cb.onRouteRemoved(callbackInfo.router, routeInfo);
            }
        }
    }

    public void addCallback(int i2, Callback callback, int i3) {
        int iFindCallbackInfo = findCallbackInfo(callback);
        if (iFindCallbackInfo >= 0) {
            CallbackInfo callbackInfo = sStatic.mCallbacks.get(iFindCallbackInfo);
            callbackInfo.type = i2 | callbackInfo.type;
            callbackInfo.flags |= i3;
        } else {
            sStatic.mCallbacks.add(new CallbackInfo(callback, i2, i3, this));
        }
        sStatic.updateDiscoveryRequest();
    }

    public RouteCategory createRouteCategory(int i2, boolean z2) {
        return new RouteCategory(i2, 8388608, z2);
    }

    public RouteInfo getSelectedRoute(int i2) {
        Static r0 = sStatic;
        RouteInfo routeInfo = r0.mSelectedRoute;
        if (routeInfo != null && (routeInfo.mSupportedTypes & i2) != 0) {
            return routeInfo;
        }
        if (i2 == 8388608) {
            return null;
        }
        return r0.mDefaultAudioVideo;
    }

    public static class UserRouteInfo extends RouteInfo {
        RemoteControlClient mRcc;
        SessionVolumeProvider mSvp;

        public class SessionVolumeProvider extends VolumeProvider {
            public SessionVolumeProvider(int i2, int i3, int i4) {
                super(i2, i3, i4);
            }

            @Override // android.media.VolumeProvider
            public void onAdjustVolume(final int i2) {
                MediaRouter.sStatic.mHandler.post(new Runnable() { // from class: android.media.MediaRouter.UserRouteInfo.SessionVolumeProvider.2
                    @Override // java.lang.Runnable
                    public void run() {
                        VolumeCallbackInfo volumeCallbackInfo = UserRouteInfo.this.mVcb;
                        if (volumeCallbackInfo != null) {
                            volumeCallbackInfo.vcb.onVolumeUpdateRequest(volumeCallbackInfo.route, i2);
                        }
                    }
                });
            }

            @Override // android.media.VolumeProvider
            public void onSetVolumeTo(final int i2) {
                MediaRouter.sStatic.mHandler.post(new Runnable() { // from class: android.media.MediaRouter.UserRouteInfo.SessionVolumeProvider.1
                    @Override // java.lang.Runnable
                    public void run() {
                        VolumeCallbackInfo volumeCallbackInfo = UserRouteInfo.this.mVcb;
                        if (volumeCallbackInfo != null) {
                            volumeCallbackInfo.vcb.onVolumeSetRequest(volumeCallbackInfo.route, i2);
                        }
                    }
                });
            }
        }

        public UserRouteInfo(RouteCategory routeCategory) {
            super(routeCategory);
            this.mSupportedTypes = 8388608;
            this.mPlaybackType = 1;
            this.mVolumeHandling = 0;
        }

        private void configureSessionVolume() {
            RemoteControlClient remoteControlClient = this.mRcc;
            if (remoteControlClient == null) {
                if (MediaRouter.DEBUG) {
                    Log.d(MediaRouter.TAG, "No Rcc to configure volume for route " + ((Object) getName()));
                    return;
                }
                return;
            }
            MediaSession mediaSession = remoteControlClient.getMediaSession();
            if (mediaSession == null) {
                if (MediaRouter.DEBUG) {
                    Log.d(MediaRouter.TAG, "Rcc has no session to configure volume");
                    return;
                }
                return;
            }
            if (this.mPlaybackType != 1) {
                AudioAttributes.Builder builder = new AudioAttributes.Builder();
                builder.setLegacyStreamType(this.mPlaybackStream);
                mediaSession.setPlaybackToLocal(builder.build());
                this.mSvp = null;
                return;
            }
            int i2 = this.mVolumeHandling != 1 ? 0 : 2;
            SessionVolumeProvider sessionVolumeProvider = this.mSvp;
            if (sessionVolumeProvider != null && sessionVolumeProvider.getVolumeControl() == i2 && this.mSvp.getMaxVolume() == this.mVolumeMax) {
                return;
            }
            SessionVolumeProvider sessionVolumeProvider2 = new SessionVolumeProvider(i2, this.mVolumeMax, this.mVolume);
            this.mSvp = sessionVolumeProvider2;
            mediaSession.setPlaybackToRemote(sessionVolumeProvider2);
        }

        private void updatePlaybackInfoOnRcc() {
            configureSessionVolume();
        }

        public RemoteControlClient getRemoteControlClient() {
            return this.mRcc;
        }

        @Override // android.media.MediaRouter.RouteInfo
        public void requestSetVolume(int i2) {
            if (this.mVolumeHandling == 1) {
                VolumeCallbackInfo volumeCallbackInfo = this.mVcb;
                if (volumeCallbackInfo == null) {
                    Log.e(MediaRouter.TAG, "Cannot requestSetVolume on user route - no volume callback set");
                } else {
                    volumeCallbackInfo.vcb.onVolumeSetRequest(this, i2);
                }
            }
        }

        @Override // android.media.MediaRouter.RouteInfo
        public void requestUpdateVolume(int i2) {
            if (this.mVolumeHandling == 1) {
                VolumeCallbackInfo volumeCallbackInfo = this.mVcb;
                if (volumeCallbackInfo == null) {
                    Log.e(MediaRouter.TAG, "Cannot requestChangeVolume on user route - no volumec callback set");
                } else {
                    volumeCallbackInfo.vcb.onVolumeUpdateRequest(this, i2);
                }
            }
        }

        public void setDescription(CharSequence charSequence) {
            this.mDescription = charSequence;
            routeUpdated();
        }

        public void setIconDrawable(Drawable drawable) {
            this.mIcon = drawable;
        }

        public void setIconResource(int i2) {
            setIconDrawable(MediaRouter.sStatic.mResources.getDrawable(i2));
        }

        public void setName(CharSequence charSequence) {
            this.mNameResId = 0;
            this.mName = charSequence;
            routeUpdated();
        }

        public void setPlaybackStream(int i2) {
            if (this.mPlaybackStream != i2) {
                this.mPlaybackStream = i2;
                configureSessionVolume();
            }
        }

        public void setPlaybackType(int i2) {
            if (this.mPlaybackType != i2) {
                this.mPlaybackType = i2;
                configureSessionVolume();
            }
        }

        public void setRemoteControlClient(RemoteControlClient remoteControlClient) {
            this.mRcc = remoteControlClient;
            updatePlaybackInfoOnRcc();
        }

        public void setStatus(CharSequence charSequence) {
            setStatusInt(charSequence);
        }

        public void setVolume(int i2) {
            int iMax = Math.max(0, Math.min(i2, getVolumeMax()));
            if (this.mVolume != iMax) {
                this.mVolume = iMax;
                SessionVolumeProvider sessionVolumeProvider = this.mSvp;
                if (sessionVolumeProvider != null) {
                    sessionVolumeProvider.setCurrentVolume(iMax);
                }
                MediaRouter.dispatchRouteVolumeChanged(this);
                RouteGroup routeGroup = this.mGroup;
                if (routeGroup != null) {
                    routeGroup.memberVolumeChanged(this);
                }
            }
        }

        public void setVolumeCallback(VolumeCallback volumeCallback) {
            this.mVcb = new VolumeCallbackInfo(volumeCallback, this);
        }

        public void setVolumeHandling(int i2) {
            if (this.mVolumeHandling != i2) {
                this.mVolumeHandling = i2;
                configureSessionVolume();
            }
        }

        public void setVolumeMax(int i2) {
            if (this.mVolumeMax != i2) {
                this.mVolumeMax = i2;
                configureSessionVolume();
            }
        }

        public void setName(int i2) {
            this.mNameResId = i2;
            this.mName = null;
            routeUpdated();
        }
    }

    public static class RouteGroup extends RouteInfo {
        final ArrayList<RouteInfo> mRoutes;
        private boolean mUpdateName;

        public RouteGroup(RouteCategory routeCategory) {
            super(routeCategory);
            this.mRoutes = new ArrayList<>();
            this.mGroup = this;
            this.mVolumeHandling = 0;
        }

        public void addRoute(RouteInfo routeInfo) {
            if (routeInfo.getGroup() != null) {
                throw new IllegalStateException("Route " + routeInfo + " is already part of a group.");
            }
            if (routeInfo.getCategory() != this.mCategory) {
                throw new IllegalArgumentException("Route cannot be added to a group with a different category. (Route category=" + routeInfo.getCategory() + " group category=" + this.mCategory + ")");
            }
            int size = this.mRoutes.size();
            this.mRoutes.add(routeInfo);
            routeInfo.mGroup = this;
            this.mUpdateName = true;
            updateVolume();
            routeUpdated();
            MediaRouter.dispatchRouteGrouped(routeInfo, this, size);
        }

        @Override // android.media.MediaRouter.RouteInfo
        public CharSequence getName(Resources resources) {
            if (this.mUpdateName) {
                updateName();
            }
            return super.getName(resources);
        }

        public RouteInfo getRouteAt(int i2) {
            return this.mRoutes.get(i2);
        }

        public int getRouteCount() {
            return this.mRoutes.size();
        }

        public void memberNameChanged(RouteInfo routeInfo, CharSequence charSequence) {
            this.mUpdateName = true;
            routeUpdated();
        }

        public void memberStatusChanged(RouteInfo routeInfo, CharSequence charSequence) {
            setStatusInt(charSequence);
        }

        public void memberVolumeChanged(RouteInfo routeInfo) {
            updateVolume();
        }

        public void removeRoute(RouteInfo routeInfo) {
            if (routeInfo.getGroup() != this) {
                throw new IllegalArgumentException("Route " + routeInfo + " is not a member of this group.");
            }
            this.mRoutes.remove(routeInfo);
            routeInfo.mGroup = null;
            this.mUpdateName = true;
            updateVolume();
            MediaRouter.dispatchRouteUngrouped(routeInfo, this);
            routeUpdated();
        }

        @Override // android.media.MediaRouter.RouteInfo
        public void requestSetVolume(int i2) {
            int volumeMax = getVolumeMax();
            if (volumeMax == 0) {
                return;
            }
            float f2 = i2 / volumeMax;
            int routeCount = getRouteCount();
            for (int i3 = 0; i3 < routeCount; i3++) {
                RouteInfo routeAt = getRouteAt(i3);
                routeAt.requestSetVolume((int) (routeAt.getVolumeMax() * f2));
            }
            if (i2 != this.mVolume) {
                this.mVolume = i2;
                MediaRouter.dispatchRouteVolumeChanged(this);
            }
        }

        @Override // android.media.MediaRouter.RouteInfo
        public void requestUpdateVolume(int i2) {
            if (getVolumeMax() == 0) {
                return;
            }
            int routeCount = getRouteCount();
            int i3 = 0;
            for (int i4 = 0; i4 < routeCount; i4++) {
                RouteInfo routeAt = getRouteAt(i4);
                routeAt.requestUpdateVolume(i2);
                int volume = routeAt.getVolume();
                if (volume > i3) {
                    i3 = volume;
                }
            }
            if (i3 != this.mVolume) {
                this.mVolume = i3;
                MediaRouter.dispatchRouteVolumeChanged(this);
            }
        }

        @Override // android.media.MediaRouter.RouteInfo
        public void routeUpdated() {
            int size = this.mRoutes.size();
            if (size == 0) {
                MediaRouter.removeRouteStatic(this);
                return;
            }
            int i2 = 1;
            int i3 = 1;
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < size; i6++) {
                RouteInfo routeInfo = this.mRoutes.get(i6);
                i4 |= routeInfo.mSupportedTypes;
                int volumeMax = routeInfo.getVolumeMax();
                if (volumeMax > i5) {
                    i5 = volumeMax;
                }
                i2 &= routeInfo.getPlaybackType() == 0 ? 1 : 0;
                i3 &= routeInfo.getVolumeHandling() == 0 ? 1 : 0;
            }
            this.mPlaybackType = i2 ^ 1;
            this.mVolumeHandling = i3 ^ 1;
            this.mSupportedTypes = i4;
            this.mVolumeMax = i5;
            this.mIcon = size == 1 ? this.mRoutes.get(0).getIconDrawable() : null;
            super.routeUpdated();
        }

        public void setIconDrawable(Drawable drawable) {
            this.mIcon = drawable;
        }

        public void setIconResource(int i2) {
            setIconDrawable(MediaRouter.sStatic.mResources.getDrawable(i2));
        }

        @Override // android.media.MediaRouter.RouteInfo
        public String toString() {
            StringBuilder sb = new StringBuilder(super.toString());
            sb.append('[');
            int size = this.mRoutes.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (i2 > 0) {
                    sb.append(", ");
                }
                sb.append(this.mRoutes.get(i2));
            }
            sb.append(']');
            return sb.toString();
        }

        public void updateName() {
            StringBuilder sb = new StringBuilder();
            int size = this.mRoutes.size();
            for (int i2 = 0; i2 < size; i2++) {
                RouteInfo routeInfo = this.mRoutes.get(i2);
                if (i2 > 0) {
                    sb.append(", ");
                }
                sb.append(routeInfo.getName());
            }
            this.mName = sb.toString();
            this.mUpdateName = false;
        }

        public void updateVolume() {
            int routeCount = getRouteCount();
            int i2 = 0;
            for (int i3 = 0; i3 < routeCount; i3++) {
                int volume = getRouteAt(i3).getVolume();
                if (volume > i2) {
                    i2 = volume;
                }
            }
            if (i2 != this.mVolume) {
                this.mVolume = i2;
                MediaRouter.dispatchRouteVolumeChanged(this);
            }
        }

        public void removeRoute(int i2) {
            RouteInfo routeInfoRemove = this.mRoutes.remove(i2);
            routeInfoRemove.mGroup = null;
            this.mUpdateName = true;
            updateVolume();
            MediaRouter.dispatchRouteUngrouped(routeInfoRemove, this);
            routeUpdated();
        }

        public void addRoute(RouteInfo routeInfo, int i2) {
            if (routeInfo.getGroup() == null) {
                if (routeInfo.getCategory() == this.mCategory) {
                    this.mRoutes.add(i2, routeInfo);
                    routeInfo.mGroup = this;
                    this.mUpdateName = true;
                    updateVolume();
                    routeUpdated();
                    MediaRouter.dispatchRouteGrouped(routeInfo, this, i2);
                    return;
                }
                throw new IllegalArgumentException("Route cannot be added to a group with a different category. (Route category=" + routeInfo.getCategory() + " group category=" + this.mCategory + ")");
            }
            throw new IllegalStateException("Route " + routeInfo + " is already part of a group.");
        }
    }
}
