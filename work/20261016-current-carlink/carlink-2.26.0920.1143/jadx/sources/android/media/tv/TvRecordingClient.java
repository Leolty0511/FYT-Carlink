package android.media.tv;

import android.app.m;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import java.util.ArrayDeque;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
public class TvRecordingClient {
    private static final boolean DEBUG = false;
    private static final String TAG = "TvRecordingClient";
    private final RecordingCallback mCallback;
    private final Handler mHandler;
    private boolean mIsRecordingStarted;
    private boolean mIsTuned;
    private final Queue<Pair<String, Bundle>> mPendingAppPrivateCommands = new ArrayDeque();
    private TvInputManager.Session mSession;
    private MySessionCallback mSessionCallback;
    private final TvInputManager mTvInputManager;

    public class MySessionCallback extends TvInputManager.SessionCallback {
        Uri mChannelUri;
        Bundle mConnectionParams;
        final String mInputId;

        public MySessionCallback(String str, Uri uri, Bundle bundle) {
            this.mInputId = str;
            this.mChannelUri = uri;
            this.mConnectionParams = bundle;
        }

        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onError(TvInputManager.Session session, int i2) {
            if (this != TvRecordingClient.this.mSessionCallback) {
                Log.w(TvRecordingClient.TAG, "onError - session not created");
            } else {
                TvRecordingClient.this.mCallback.onError(i2);
            }
        }

        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onRecordingStopped(TvInputManager.Session session, Uri uri) {
            if (this != TvRecordingClient.this.mSessionCallback) {
                Log.w(TvRecordingClient.TAG, "onRecordingStopped - session not created");
            } else {
                TvRecordingClient.this.mIsRecordingStarted = false;
                TvRecordingClient.this.mCallback.onRecordingStopped(uri);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onSessionCreated(TvInputManager.Session session) {
            if (this != TvRecordingClient.this.mSessionCallback) {
                Log.w(TvRecordingClient.TAG, "onSessionCreated - session already created");
                if (session != null) {
                    session.release();
                    return;
                }
                return;
            }
            TvRecordingClient.this.mSession = session;
            if (session == null) {
                TvRecordingClient.this.mSessionCallback = null;
                if (TvRecordingClient.this.mCallback != null) {
                    TvRecordingClient.this.mCallback.onConnectionFailed(this.mInputId);
                    return;
                }
                return;
            }
            for (Pair pair : TvRecordingClient.this.mPendingAppPrivateCommands) {
                TvRecordingClient.this.mSession.sendAppPrivateCommand((String) pair.first, (Bundle) pair.second);
            }
            TvRecordingClient.this.mPendingAppPrivateCommands.clear();
            TvRecordingClient.this.mSession.tune(this.mChannelUri, this.mConnectionParams);
        }

        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onSessionEvent(TvInputManager.Session session, String str, Bundle bundle) {
            if (this != TvRecordingClient.this.mSessionCallback) {
                Log.w(TvRecordingClient.TAG, "onSessionEvent - session not created");
            } else if (TvRecordingClient.this.mCallback != null) {
                TvRecordingClient.this.mCallback.onEvent(this.mInputId, str, bundle);
            }
        }

        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onSessionReleased(TvInputManager.Session session) {
            if (this != TvRecordingClient.this.mSessionCallback) {
                Log.w(TvRecordingClient.TAG, "onSessionReleased - session not created");
                return;
            }
            TvRecordingClient.this.mIsTuned = false;
            TvRecordingClient.this.mIsRecordingStarted = false;
            TvRecordingClient.this.mSessionCallback = null;
            TvRecordingClient.this.mSession = null;
            if (TvRecordingClient.this.mCallback != null) {
                TvRecordingClient.this.mCallback.onDisconnected(this.mInputId);
            }
        }

        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onTuned(TvInputManager.Session session, Uri uri) {
            if (this != TvRecordingClient.this.mSessionCallback) {
                Log.w(TvRecordingClient.TAG, "onTuned - session not created");
            } else {
                TvRecordingClient.this.mIsTuned = true;
                TvRecordingClient.this.mCallback.onTuned(uri);
            }
        }
    }

    public static abstract class RecordingCallback {
        public void onConnectionFailed(String str) {
        }

        public void onDisconnected(String str) {
        }

        public void onError(int i2) {
        }

        public void onEvent(String str, String str2, Bundle bundle) {
        }

        public void onRecordingStopped(Uri uri) {
        }

        public void onTuned(Uri uri) {
        }
    }

    public TvRecordingClient(Context context, String str, RecordingCallback recordingCallback, Handler handler) {
        this.mCallback = recordingCallback;
        this.mHandler = handler == null ? new Handler(Looper.getMainLooper()) : handler;
        this.mTvInputManager = (TvInputManager) context.getSystemService(Context.TV_INPUT_SERVICE);
    }

    private void resetInternal() {
        this.mSessionCallback = null;
        this.mPendingAppPrivateCommands.clear();
        TvInputManager.Session session = this.mSession;
        if (session != null) {
            session.release();
            this.mSession = null;
        }
    }

    public void release() {
        resetInternal();
    }

    public void sendAppPrivateCommand(String str, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("action cannot be null or an empty string");
        }
        TvInputManager.Session session = this.mSession;
        if (session != null) {
            session.sendAppPrivateCommand(str, bundle);
        } else {
            m.s("sendAppPrivateCommand - session not yet created (action \"", str, "\" pending)", TAG);
            this.mPendingAppPrivateCommands.add(Pair.create(str, bundle));
        }
    }

    public void startRecording(Uri uri) {
        if (!this.mIsTuned) {
            throw new IllegalStateException("startRecording failed - not yet tuned");
        }
        TvInputManager.Session session = this.mSession;
        if (session != null) {
            session.startRecording(uri);
            this.mIsRecordingStarted = true;
        }
    }

    public void stopRecording() {
        if (!this.mIsRecordingStarted) {
            Log.w(TAG, "stopRecording failed - recording not yet started");
        }
        TvInputManager.Session session = this.mSession;
        if (session != null) {
            session.stopRecording();
        }
    }

    public void tune(String str, Uri uri) {
        tune(str, uri, null);
    }

    public void tune(String str, Uri uri, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("inputId cannot be null or an empty string");
        }
        if (this.mIsRecordingStarted) {
            throw new IllegalStateException("tune failed - recording already started");
        }
        MySessionCallback mySessionCallback = this.mSessionCallback;
        if (mySessionCallback == null || !TextUtils.equals(mySessionCallback.mInputId, str)) {
            resetInternal();
            MySessionCallback mySessionCallback2 = new MySessionCallback(str, uri, bundle);
            this.mSessionCallback = mySessionCallback2;
            TvInputManager tvInputManager = this.mTvInputManager;
            if (tvInputManager != null) {
                tvInputManager.createRecordingSession(str, mySessionCallback2, this.mHandler);
                return;
            }
            return;
        }
        TvInputManager.Session session = this.mSession;
        if (session != null) {
            session.tune(uri, bundle);
            return;
        }
        MySessionCallback mySessionCallback3 = this.mSessionCallback;
        mySessionCallback3.mChannelUri = uri;
        mySessionCallback3.mConnectionParams = bundle;
    }
}
