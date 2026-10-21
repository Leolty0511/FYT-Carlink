package android.media.session;

import android.accessibilityservice.c;
import android.content.ComponentName;
import android.content.Context;
import android.media.IRemoteVolumeController;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.Log;
import android.view.KeyEvent;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MediaSessionManager {
    public static final int RESULT_MEDIA_KEY_HANDLED = 1;
    public static final int RESULT_MEDIA_KEY_NOT_HANDLED = 0;
    private static final String TAG = "SessionManager";
    private CallbackImpl mCallback;
    private Context mContext;
    private OnMediaKeyListenerImpl mOnMediaKeyListener;
    private OnVolumeKeyLongPressListenerImpl mOnVolumeKeyLongPressListener;
    private final ArrayMap<OnActiveSessionsChangedListener, SessionsChangedWrapper> mListeners = new ArrayMap<>();
    private final Object mLock = new Object();
    private final ISessionManager mService = ISessionManager.Stub.asInterface(ServiceManager.getService(Context.MEDIA_SESSION_SERVICE));

    public static abstract class Callback {
        public abstract void onAddressedPlayerChanged(ComponentName componentName);

        public abstract void onAddressedPlayerChanged(MediaSession.Token token);

        public abstract void onMediaKeyEventDispatched(KeyEvent keyEvent, ComponentName componentName);

        public abstract void onMediaKeyEventDispatched(KeyEvent keyEvent, MediaSession.Token token);
    }

    public static final class CallbackImpl extends ICallback.Stub {
        private final Callback mCallback;
        private final Handler mHandler;

        public CallbackImpl(Callback callback, Handler handler) {
            this.mCallback = callback;
            this.mHandler = handler;
        }

        @Override // android.media.session.ICallback
        public void onAddressedPlayerChangedToMediaButtonReceiver(final ComponentName componentName) {
            this.mHandler.post(new Runnable() { // from class: android.media.session.MediaSessionManager.CallbackImpl.4
                @Override // java.lang.Runnable
                public void run() {
                    CallbackImpl.this.mCallback.onAddressedPlayerChanged(componentName);
                }
            });
        }

        @Override // android.media.session.ICallback
        public void onAddressedPlayerChangedToMediaSession(final MediaSession.Token token) {
            this.mHandler.post(new Runnable() { // from class: android.media.session.MediaSessionManager.CallbackImpl.3
                @Override // java.lang.Runnable
                public void run() {
                    CallbackImpl.this.mCallback.onAddressedPlayerChanged(token);
                }
            });
        }

        @Override // android.media.session.ICallback
        public void onMediaKeyEventDispatchedToMediaButtonReceiver(final KeyEvent keyEvent, final ComponentName componentName) {
            this.mHandler.post(new Runnable() { // from class: android.media.session.MediaSessionManager.CallbackImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    CallbackImpl.this.mCallback.onMediaKeyEventDispatched(keyEvent, componentName);
                }
            });
        }

        @Override // android.media.session.ICallback
        public void onMediaKeyEventDispatchedToMediaSession(final KeyEvent keyEvent, final MediaSession.Token token) {
            this.mHandler.post(new Runnable() { // from class: android.media.session.MediaSessionManager.CallbackImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    CallbackImpl.this.mCallback.onMediaKeyEventDispatched(keyEvent, token);
                }
            });
        }
    }

    public interface OnActiveSessionsChangedListener {
        void onActiveSessionsChanged(List<MediaController> list);
    }

    public interface OnMediaKeyListener {
        boolean onMediaKey(KeyEvent keyEvent);
    }

    public static final class OnMediaKeyListenerImpl extends IOnMediaKeyListener.Stub {
        private Handler mHandler;
        private OnMediaKeyListener mListener;

        public OnMediaKeyListenerImpl(OnMediaKeyListener onMediaKeyListener, Handler handler) {
            this.mListener = onMediaKeyListener;
            this.mHandler = handler;
        }

        @Override // android.media.session.IOnMediaKeyListener
        public void onMediaKey(final KeyEvent keyEvent, final ResultReceiver resultReceiver) {
            Handler handler;
            if (this.mListener == null || (handler = this.mHandler) == null) {
                Log.w(MediaSessionManager.TAG, "Failed to call media key listener. Either mListener or mHandler is null");
            } else {
                handler.post(new Runnable() { // from class: android.media.session.MediaSessionManager.OnMediaKeyListenerImpl.1
                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                     */
                    @Override // java.lang.Runnable
                    public void run() {
                        boolean zOnMediaKey = OnMediaKeyListenerImpl.this.mListener.onMediaKey(keyEvent);
                        c.z("The media key listener is returned ", zOnMediaKey, MediaSessionManager.TAG);
                        ResultReceiver resultReceiver2 = resultReceiver;
                        if (resultReceiver2 != null) {
                            resultReceiver2.send(zOnMediaKey ? 1 : 0, null);
                        }
                    }
                });
            }
        }
    }

    public interface OnVolumeKeyLongPressListener {
        void onVolumeKeyLongPress(KeyEvent keyEvent);
    }

    public static final class OnVolumeKeyLongPressListenerImpl extends IOnVolumeKeyLongPressListener.Stub {
        private Handler mHandler;
        private OnVolumeKeyLongPressListener mListener;

        public OnVolumeKeyLongPressListenerImpl(OnVolumeKeyLongPressListener onVolumeKeyLongPressListener, Handler handler) {
            this.mListener = onVolumeKeyLongPressListener;
            this.mHandler = handler;
        }

        @Override // android.media.session.IOnVolumeKeyLongPressListener
        public void onVolumeKeyLongPress(final KeyEvent keyEvent) {
            Handler handler;
            if (this.mListener == null || (handler = this.mHandler) == null) {
                Log.w(MediaSessionManager.TAG, "Failed to call volume key long-press listener. Either mListener or mHandler is null");
            } else {
                handler.post(new Runnable() { // from class: android.media.session.MediaSessionManager.OnVolumeKeyLongPressListenerImpl.1
                    @Override // java.lang.Runnable
                    public void run() {
                        OnVolumeKeyLongPressListenerImpl.this.mListener.onVolumeKeyLongPress(keyEvent);
                    }
                });
            }
        }
    }

    public static final class SessionsChangedWrapper {
        private Context mContext;
        private Handler mHandler;
        private OnActiveSessionsChangedListener mListener;
        private final IActiveSessionsListener.Stub mStub = new IActiveSessionsListener.Stub() { // from class: android.media.session.MediaSessionManager.SessionsChangedWrapper.1
            @Override // android.media.session.IActiveSessionsListener
            public void onActiveSessionsChanged(final List<MediaSession.Token> list) {
                Handler handler = SessionsChangedWrapper.this.mHandler;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: android.media.session.MediaSessionManager.SessionsChangedWrapper.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Context context = SessionsChangedWrapper.this.mContext;
                            if (context != null) {
                                ArrayList arrayList = new ArrayList();
                                int size = list.size();
                                for (int i2 = 0; i2 < size; i2++) {
                                    arrayList.add(new MediaController(context, (MediaSession.Token) list.get(i2)));
                                }
                                OnActiveSessionsChangedListener onActiveSessionsChangedListener = SessionsChangedWrapper.this.mListener;
                                if (onActiveSessionsChangedListener != null) {
                                    onActiveSessionsChangedListener.onActiveSessionsChanged(arrayList);
                                }
                            }
                        }
                    });
                }
            }
        };

        public SessionsChangedWrapper(Context context, OnActiveSessionsChangedListener onActiveSessionsChangedListener, Handler handler) {
            this.mContext = context;
            this.mListener = onActiveSessionsChangedListener;
            this.mHandler = handler;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void release() {
            this.mListener = null;
            this.mContext = null;
            this.mHandler = null;
        }
    }

    public MediaSessionManager(Context context) {
        this.mContext = context;
    }

    public void addOnActiveSessionsChangedListener(OnActiveSessionsChangedListener onActiveSessionsChangedListener, ComponentName componentName) {
        addOnActiveSessionsChangedListener(onActiveSessionsChangedListener, componentName, null);
    }

    public ISession createSession(MediaSession.CallbackStub callbackStub, String str, int i2) {
        return this.mService.createSession(this.mContext.getPackageName(), callbackStub, str, i2);
    }

    public void dispatchAdjustVolume(int i2, int i3, int i4) {
        try {
            this.mService.dispatchAdjustVolume(i2, i3, i4);
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to send adjust volume.", e2);
        }
    }

    public void dispatchMediaKeyEvent(KeyEvent keyEvent) {
        dispatchMediaKeyEvent(keyEvent, false);
    }

    public void dispatchVolumeKeyEvent(KeyEvent keyEvent, int i2, boolean z2) {
        try {
            this.mService.dispatchVolumeKeyEvent(keyEvent, i2, z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to send volume key event.", e2);
        }
    }

    public List<MediaController> getActiveSessions(ComponentName componentName) {
        return getActiveSessionsForUser(componentName, UserHandle.myUserId());
    }

    public List<MediaController> getActiveSessionsForUser(ComponentName componentName, int i2) {
        ArrayList arrayList = new ArrayList();
        try {
            List<IBinder> sessions = this.mService.getSessions(componentName, i2);
            int size = sessions.size();
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(new MediaController(this.mContext, ISessionController.Stub.asInterface(sessions.get(i3))));
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to get active sessions: ", e2);
        }
        return arrayList;
    }

    public boolean isGlobalPriorityActive() {
        try {
            return this.mService.isGlobalPriorityActive();
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to check if the global priority is active.", e2);
            return false;
        }
    }

    public void removeOnActiveSessionsChangedListener(OnActiveSessionsChangedListener onActiveSessionsChangedListener) {
        if (onActiveSessionsChangedListener == null) {
            throw new IllegalArgumentException("listener may not be null");
        }
        synchronized (this.mLock) {
            SessionsChangedWrapper sessionsChangedWrapperRemove = this.mListeners.remove(onActiveSessionsChangedListener);
            if (sessionsChangedWrapperRemove != null) {
                try {
                    try {
                        this.mService.removeSessionsListener(sessionsChangedWrapperRemove.mStub);
                    } catch (RemoteException e2) {
                        Log.e(TAG, "Error in removeOnActiveSessionsChangedListener.", e2);
                    }
                    sessionsChangedWrapperRemove.release();
                } catch (Throwable th) {
                    sessionsChangedWrapperRemove.release();
                    throw th;
                }
            }
        }
    }

    public void setCallback(Callback callback, Handler handler) {
        synchronized (this.mLock) {
            try {
                try {
                    if (callback == null) {
                        this.mCallback = null;
                        this.mService.setCallback(null);
                    } else {
                        if (handler == null) {
                            handler = new Handler();
                        }
                        CallbackImpl callbackImpl = new CallbackImpl(callback, handler);
                        this.mCallback = callbackImpl;
                        this.mService.setCallback(callbackImpl);
                    }
                } catch (RemoteException e2) {
                    Log.e(TAG, "Failed to set media key callback", e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setOnMediaKeyListener(OnMediaKeyListener onMediaKeyListener, Handler handler) {
        synchronized (this.mLock) {
            try {
                try {
                    if (onMediaKeyListener == null) {
                        this.mOnMediaKeyListener = null;
                        this.mService.setOnMediaKeyListener(null);
                    } else {
                        if (handler == null) {
                            handler = new Handler();
                        }
                        OnMediaKeyListenerImpl onMediaKeyListenerImpl = new OnMediaKeyListenerImpl(onMediaKeyListener, handler);
                        this.mOnMediaKeyListener = onMediaKeyListenerImpl;
                        this.mService.setOnMediaKeyListener(onMediaKeyListenerImpl);
                    }
                } catch (RemoteException e2) {
                    Log.e(TAG, "Failed to set media key listener", e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setOnVolumeKeyLongPressListener(OnVolumeKeyLongPressListener onVolumeKeyLongPressListener, Handler handler) {
        synchronized (this.mLock) {
            try {
                try {
                    if (onVolumeKeyLongPressListener == null) {
                        this.mOnVolumeKeyLongPressListener = null;
                        this.mService.setOnVolumeKeyLongPressListener(null);
                    } else {
                        if (handler == null) {
                            handler = new Handler();
                        }
                        OnVolumeKeyLongPressListenerImpl onVolumeKeyLongPressListenerImpl = new OnVolumeKeyLongPressListenerImpl(onVolumeKeyLongPressListener, handler);
                        this.mOnVolumeKeyLongPressListener = onVolumeKeyLongPressListenerImpl;
                        this.mService.setOnVolumeKeyLongPressListener(onVolumeKeyLongPressListenerImpl);
                    }
                } catch (RemoteException e2) {
                    Log.e(TAG, "Failed to set volume key long press listener", e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setRemoteVolumeController(IRemoteVolumeController iRemoteVolumeController) {
        try {
            this.mService.setRemoteVolumeController(iRemoteVolumeController);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error in setRemoteVolumeController.", e2);
        }
    }

    public void addOnActiveSessionsChangedListener(OnActiveSessionsChangedListener onActiveSessionsChangedListener, ComponentName componentName, Handler handler) {
        addOnActiveSessionsChangedListener(onActiveSessionsChangedListener, componentName, UserHandle.myUserId(), handler);
    }

    public void dispatchMediaKeyEvent(KeyEvent keyEvent, boolean z2) {
        try {
            this.mService.dispatchMediaKeyEvent(keyEvent, z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to send key event.", e2);
        }
    }

    public void addOnActiveSessionsChangedListener(OnActiveSessionsChangedListener onActiveSessionsChangedListener, ComponentName componentName, int i2, Handler handler) {
        if (onActiveSessionsChangedListener != null) {
            if (handler == null) {
                handler = new Handler();
            }
            synchronized (this.mLock) {
                if (this.mListeners.get(onActiveSessionsChangedListener) != null) {
                    Log.w(TAG, "Attempted to add session listener twice, ignoring.");
                    return;
                }
                SessionsChangedWrapper sessionsChangedWrapper = new SessionsChangedWrapper(this.mContext, onActiveSessionsChangedListener, handler);
                try {
                    this.mService.addSessionsListener(sessionsChangedWrapper.mStub, componentName, i2);
                    this.mListeners.put(onActiveSessionsChangedListener, sessionsChangedWrapper);
                } catch (RemoteException e2) {
                    Log.e(TAG, "Error in addOnActiveSessionsChangedListener.", e2);
                }
                return;
            }
        }
        throw new IllegalArgumentException("listener may not be null");
    }
}
