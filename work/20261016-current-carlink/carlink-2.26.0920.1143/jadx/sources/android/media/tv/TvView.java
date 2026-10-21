package android.media.tv;

import android.Manifest;
import android.app.m;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.media.PlaybackParams;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewRootImpl;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
public class TvView extends ViewGroup {
    private static final boolean DEBUG = false;
    private static final WeakReference<TvView> NULL_TV_VIEW;
    private static final String TAG = "TvView";
    private static final int ZORDER_MEDIA = 0;
    private static final int ZORDER_MEDIA_OVERLAY = 1;
    private static final int ZORDER_ON_TOP = 2;
    private static WeakReference<TvView> sMainTvView;
    private static final Object sMainTvViewLock;
    private final AttributeSet mAttrs;
    private TvInputCallback mCallback;
    private Boolean mCaptionEnabled;
    private final int mDefStyleAttr;
    private final TvInputManager.Session.FinishedInputEventCallback mFinishedInputEventCallback;
    private final Handler mHandler;
    private OnUnhandledInputEventListener mOnUnhandledInputEventListener;
    private boolean mOverlayViewCreated;
    private Rect mOverlayViewFrame;
    private final Queue<Pair<String, Bundle>> mPendingAppPrivateCommands;
    private TvInputManager.Session mSession;
    private MySessionCallback mSessionCallback;
    private Float mStreamVolume;
    private Surface mSurface;
    private boolean mSurfaceChanged;
    private int mSurfaceFormat;
    private int mSurfaceHeight;
    private final SurfaceHolder.Callback mSurfaceHolderCallback;
    private SurfaceView mSurfaceView;
    private int mSurfaceViewBottom;
    private int mSurfaceViewLeft;
    private int mSurfaceViewRight;
    private int mSurfaceViewTop;
    private int mSurfaceWidth;
    private TimeShiftPositionCallback mTimeShiftPositionCallback;
    private final TvInputManager mTvInputManager;
    private boolean mUseRequestedSurfaceLayout;
    private int mWindowZOrder;

    public interface OnUnhandledInputEventListener {
        boolean onUnhandledInputEvent(InputEvent inputEvent);
    }

    public static abstract class TimeShiftPositionCallback {
        public void onTimeShiftCurrentPositionChanged(String str, long j2) {
        }

        public void onTimeShiftStartPositionChanged(String str, long j2) {
        }
    }

    public static abstract class TvInputCallback {
        public void onChannelRetuned(String str, Uri uri) {
        }

        public void onConnectionFailed(String str) {
        }

        public void onContentAllowed(String str) {
        }

        public void onContentBlocked(String str, TvContentRating tvContentRating) {
        }

        public void onDisconnected(String str) {
        }

        public void onEvent(String str, String str2, Bundle bundle) {
        }

        public void onTimeShiftStatusChanged(String str, int i2) {
        }

        public void onTrackSelected(String str, int i2, String str2) {
        }

        public void onTracksChanged(String str, List<TvTrackInfo> list) {
        }

        public void onVideoAvailable(String str) {
        }

        public void onVideoSizeChanged(String str, int i2, int i3) {
        }

        public void onVideoUnavailable(String str, int i2) {
        }
    }

    static {
        WeakReference<TvView> weakReference = new WeakReference<>(null);
        NULL_TV_VIEW = weakReference;
        sMainTvViewLock = new Object();
        sMainTvView = weakReference;
    }

    public TvView(Context context) {
        this(context, null, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkChangeHdmiCecActiveSourcePermission() {
        return getContext().checkSelfPermission(Manifest.permission.CHANGE_HDMI_CEC_ACTIVE_SOURCE) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createSessionOverlayView() {
        if (this.mSession == null || !isAttachedToWindow() || this.mOverlayViewCreated || this.mWindowZOrder != 0) {
            return;
        }
        Rect viewFrameOnScreen = getViewFrameOnScreen();
        this.mOverlayViewFrame = viewFrameOnScreen;
        this.mSession.createOverlayView(this, viewFrameOnScreen);
        this.mOverlayViewCreated = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchSurfaceChanged(int i2, int i3, int i4) {
        TvInputManager.Session session = this.mSession;
        if (session == null) {
            return;
        }
        session.dispatchSurfaceChanged(i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ensurePositionTracking() {
        TvInputManager.Session session = this.mSession;
        if (session == null) {
            return;
        }
        session.timeShiftEnablePositionTracking(this.mTimeShiftPositionCallback != null);
    }

    private Rect getViewFrameOnScreen() {
        Rect rect = new Rect();
        getGlobalVisibleRect(rect);
        RectF rectF = new RectF(rect);
        getMatrix().mapRect(rectF);
        rectF.round(rect);
        return rect;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void relayoutSessionOverlayView() {
        if (this.mSession != null && isAttachedToWindow() && this.mOverlayViewCreated && this.mWindowZOrder == 0) {
            Rect viewFrameOnScreen = getViewFrameOnScreen();
            if (viewFrameOnScreen.equals(this.mOverlayViewFrame)) {
                return;
            }
            this.mSession.relayoutOverlayView(viewFrameOnScreen);
            this.mOverlayViewFrame = viewFrameOnScreen;
        }
    }

    private void removeSessionOverlayView() {
        TvInputManager.Session session = this.mSession;
        if (session == null || !this.mOverlayViewCreated) {
            return;
        }
        session.removeOverlayView();
        this.mOverlayViewCreated = false;
        this.mOverlayViewFrame = null;
    }

    private void resetInternal() {
        this.mSessionCallback = null;
        this.mPendingAppPrivateCommands.clear();
        if (this.mSession != null) {
            setSessionSurface(null);
            removeSessionOverlayView();
            this.mUseRequestedSurfaceLayout = false;
            this.mSession.release();
            this.mSession = null;
            resetSurfaceView();
        }
    }

    private void resetSurfaceView() {
        SurfaceView surfaceView = this.mSurfaceView;
        if (surfaceView != null) {
            surfaceView.getHolder().removeCallback(this.mSurfaceHolderCallback);
            removeView(this.mSurfaceView);
        }
        this.mSurface = null;
        SurfaceView surfaceView2 = new SurfaceView(getContext(), this.mAttrs, this.mDefStyleAttr) { // from class: android.media.tv.TvView.3
            @Override // android.view.SurfaceView
            public void updateSurface() throws Throwable {
                super.updateSurface();
                TvView.this.relayoutSessionOverlayView();
            }
        };
        this.mSurfaceView = surfaceView2;
        surfaceView2.setSecure(true);
        this.mSurfaceView.getHolder().addCallback(this.mSurfaceHolderCallback);
        int i2 = this.mWindowZOrder;
        if (i2 == 1) {
            this.mSurfaceView.setZOrderMediaOverlay(true);
        } else if (i2 == 2) {
            this.mSurfaceView.setZOrderOnTop(true);
        }
        addView(this.mSurfaceView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSessionSurface(Surface surface) {
        TvInputManager.Session session = this.mSession;
        if (session == null) {
            return;
        }
        session.setSurface(surface);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.mWindowZOrder != 2) {
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if (super.dispatchGenericMotionEvent(motionEvent)) {
            return true;
        }
        if (this.mSession == null) {
            return false;
        }
        MotionEvent motionEventCopy = motionEvent.copy();
        return this.mSession.dispatchInputEvent(motionEventCopy, motionEventCopy, this.mFinishedInputEventCallback, this.mHandler) != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        if (this.mSession == null) {
            return false;
        }
        KeyEvent keyEventCopy = keyEvent.copy();
        return this.mSession.dispatchInputEvent(keyEventCopy, keyEventCopy, this.mFinishedInputEventCallback, this.mHandler) != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (super.dispatchTouchEvent(motionEvent)) {
            return true;
        }
        if (this.mSession == null) {
            return false;
        }
        MotionEvent motionEventCopy = motionEvent.copy();
        return this.mSession.dispatchInputEvent(motionEventCopy, motionEventCopy, this.mFinishedInputEventCallback, this.mHandler) != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        if (super.dispatchTrackballEvent(motionEvent)) {
            return true;
        }
        if (this.mSession == null) {
            return false;
        }
        MotionEvent motionEventCopy = motionEvent.copy();
        return this.mSession.dispatchInputEvent(motionEventCopy, motionEventCopy, this.mFinishedInputEventCallback, this.mHandler) != 0;
    }

    public boolean dispatchUnhandledInputEvent(InputEvent inputEvent) {
        OnUnhandledInputEventListener onUnhandledInputEventListener = this.mOnUnhandledInputEventListener;
        if (onUnhandledInputEventListener == null || !onUnhandledInputEventListener.onUnhandledInputEvent(inputEvent)) {
            return onUnhandledInputEvent(inputEvent);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchWindowFocusChanged(boolean z2) {
        super.dispatchWindowFocusChanged(z2);
        synchronized (sMainTvViewLock) {
            if (z2) {
                if (this == sMainTvView.get() && this.mSession != null && checkChangeHdmiCecActiveSourcePermission()) {
                    this.mSession.setMain();
                }
            }
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.mWindowZOrder != 2) {
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        super.draw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean gatherTransparentRegion(Region region) {
        if (this.mWindowZOrder != 2 && region != null) {
            int width = getWidth();
            int height = getHeight();
            if (width > 0 && height > 0) {
                int[] iArr = new int[2];
                getLocationInWindow(iArr);
                int i2 = iArr[0];
                int i3 = iArr[1];
                region.op(i2, i3, i2 + width, i3 + height, Region.Op.UNION);
            }
        }
        return super.gatherTransparentRegion(region);
    }

    public String getSelectedTrack(int i2) {
        TvInputManager.Session session = this.mSession;
        if (session == null) {
            return null;
        }
        return session.getSelectedTrack(i2);
    }

    public List<TvTrackInfo> getTracks(int i2) {
        TvInputManager.Session session = this.mSession;
        if (session == null) {
            return null;
        }
        return session.getTracks(i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        createSessionOverlayView();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeSessionOverlayView();
        super.onDetachedFromWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        if (this.mUseRequestedSurfaceLayout) {
            this.mSurfaceView.layout(this.mSurfaceViewLeft, this.mSurfaceViewTop, this.mSurfaceViewRight, this.mSurfaceViewBottom);
        } else {
            this.mSurfaceView.layout(0, 0, i4 - i2, i5 - i3);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        this.mSurfaceView.measure(i2, i3);
        int measuredWidth = this.mSurfaceView.getMeasuredWidth();
        int measuredHeight = this.mSurfaceView.getMeasuredHeight();
        int measuredState = this.mSurfaceView.getMeasuredState();
        setMeasuredDimension(View.resolveSizeAndState(measuredWidth, i2, measuredState), View.resolveSizeAndState(measuredHeight, i3, measuredState << 16));
    }

    public boolean onUnhandledInputEvent(InputEvent inputEvent) {
        return false;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) throws Throwable {
        super.onVisibilityChanged(view, i2);
        this.mSurfaceView.setVisibility(i2);
        if (i2 == 0) {
            createSessionOverlayView();
        } else {
            removeSessionOverlayView();
        }
    }

    public void requestUnblockContent(TvContentRating tvContentRating) {
        unblockContent(tvContentRating);
    }

    public void reset() {
        synchronized (sMainTvViewLock) {
            if (this == sMainTvView.get()) {
                sMainTvView = NULL_TV_VIEW;
            }
        }
        resetInternal();
    }

    public void selectTrack(int i2, String str) {
        TvInputManager.Session session = this.mSession;
        if (session != null) {
            session.selectTrack(i2, str);
        }
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

    public void setCallback(TvInputCallback tvInputCallback) {
        this.mCallback = tvInputCallback;
    }

    public void setCaptionEnabled(boolean z2) {
        this.mCaptionEnabled = Boolean.valueOf(z2);
        TvInputManager.Session session = this.mSession;
        if (session != null) {
            session.setCaptionEnabled(z2);
        }
    }

    public void setMain() {
        TvInputManager.Session session;
        synchronized (sMainTvViewLock) {
            sMainTvView = new WeakReference<>(this);
            if (hasWindowFocus() && (session = this.mSession) != null) {
                session.setMain();
            }
        }
    }

    public void setOnUnhandledInputEventListener(OnUnhandledInputEventListener onUnhandledInputEventListener) {
        this.mOnUnhandledInputEventListener = onUnhandledInputEventListener;
    }

    public void setStreamVolume(float f2) {
        this.mStreamVolume = Float.valueOf(f2);
        TvInputManager.Session session = this.mSession;
        if (session == null) {
            return;
        }
        session.setStreamVolume(f2);
    }

    public void setTimeShiftPositionCallback(TimeShiftPositionCallback timeShiftPositionCallback) {
        this.mTimeShiftPositionCallback = timeShiftPositionCallback;
        ensurePositionTracking();
    }

    public void setZOrderMediaOverlay(boolean z2) {
        if (z2) {
            this.mWindowZOrder = 1;
            removeSessionOverlayView();
        } else {
            this.mWindowZOrder = 0;
            createSessionOverlayView();
        }
        SurfaceView surfaceView = this.mSurfaceView;
        if (surfaceView != null) {
            surfaceView.setZOrderOnTop(false);
            this.mSurfaceView.setZOrderMediaOverlay(z2);
        }
    }

    public void setZOrderOnTop(boolean z2) {
        if (z2) {
            this.mWindowZOrder = 2;
            removeSessionOverlayView();
        } else {
            this.mWindowZOrder = 0;
            createSessionOverlayView();
        }
        SurfaceView surfaceView = this.mSurfaceView;
        if (surfaceView != null) {
            surfaceView.setZOrderMediaOverlay(false);
            this.mSurfaceView.setZOrderOnTop(z2);
        }
    }

    public void timeShiftPause() {
        TvInputManager.Session session = this.mSession;
        if (session != null) {
            session.timeShiftPause();
        }
    }

    public void timeShiftPlay(String str, Uri uri) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("inputId cannot be null or an empty string");
        }
        synchronized (sMainTvViewLock) {
            if (sMainTvView.get() == null) {
                sMainTvView = new WeakReference<>(this);
            }
        }
        MySessionCallback mySessionCallback = this.mSessionCallback;
        if (mySessionCallback != null && TextUtils.equals(mySessionCallback.mInputId, str)) {
            TvInputManager.Session session = this.mSession;
            if (session != null) {
                session.timeShiftPlay(uri);
                return;
            } else {
                this.mSessionCallback.mRecordedProgramUri = uri;
                return;
            }
        }
        resetInternal();
        MySessionCallback mySessionCallback2 = new MySessionCallback(str, uri);
        this.mSessionCallback = mySessionCallback2;
        TvInputManager tvInputManager = this.mTvInputManager;
        if (tvInputManager != null) {
            tvInputManager.createSession(str, mySessionCallback2, this.mHandler);
        }
    }

    public void timeShiftResume() {
        TvInputManager.Session session = this.mSession;
        if (session != null) {
            session.timeShiftResume();
        }
    }

    public void timeShiftSeekTo(long j2) {
        TvInputManager.Session session = this.mSession;
        if (session != null) {
            session.timeShiftSeekTo(j2);
        }
    }

    public void timeShiftSetPlaybackParams(PlaybackParams playbackParams) {
        TvInputManager.Session session = this.mSession;
        if (session != null) {
            session.timeShiftSetPlaybackParams(playbackParams);
        }
    }

    public void tune(String str, Uri uri) {
        tune(str, uri, null);
    }

    public void unblockContent(TvContentRating tvContentRating) {
        TvInputManager.Session session = this.mSession;
        if (session != null) {
            session.unblockContent(tvContentRating);
        }
    }

    public TvView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void tune(String str, Uri uri, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("inputId cannot be null or an empty string");
        }
        synchronized (sMainTvViewLock) {
            if (sMainTvView.get() == null) {
                sMainTvView = new WeakReference<>(this);
            }
        }
        MySessionCallback mySessionCallback = this.mSessionCallback;
        if (mySessionCallback == null || !TextUtils.equals(mySessionCallback.mInputId, str)) {
            resetInternal();
            MySessionCallback mySessionCallback2 = new MySessionCallback(str, uri, bundle);
            this.mSessionCallback = mySessionCallback2;
            TvInputManager tvInputManager = this.mTvInputManager;
            if (tvInputManager != null) {
                tvInputManager.createSession(str, mySessionCallback2, this.mHandler);
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
        mySessionCallback3.mTuneParams = bundle;
    }

    public TvView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mHandler = new Handler();
        this.mPendingAppPrivateCommands = new ArrayDeque();
        this.mSurfaceHolderCallback = new SurfaceHolder.Callback() { // from class: android.media.tv.TvView.1
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i3, int i4, int i5) {
                TvView.this.mSurfaceFormat = i3;
                TvView.this.mSurfaceWidth = i4;
                TvView.this.mSurfaceHeight = i5;
                TvView.this.mSurfaceChanged = true;
                TvView tvView = TvView.this;
                tvView.dispatchSurfaceChanged(tvView.mSurfaceFormat, TvView.this.mSurfaceWidth, TvView.this.mSurfaceHeight);
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                TvView.this.mSurface = surfaceHolder.getSurface();
                TvView tvView = TvView.this;
                tvView.setSessionSurface(tvView.mSurface);
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                TvView.this.mSurface = null;
                TvView.this.mSurfaceChanged = false;
                TvView.this.setSessionSurface(null);
            }
        };
        this.mFinishedInputEventCallback = new TvInputManager.Session.FinishedInputEventCallback() { // from class: android.media.tv.TvView.2
            @Override // android.media.tv.TvInputManager.Session.FinishedInputEventCallback
            public void onFinishedInputEvent(Object obj, boolean z2) {
                ViewRootImpl viewRootImpl;
                if (z2) {
                    return;
                }
                InputEvent inputEvent = (InputEvent) obj;
                if (TvView.this.dispatchUnhandledInputEvent(inputEvent) || (viewRootImpl = TvView.this.getViewRootImpl()) == null) {
                    return;
                }
                viewRootImpl.dispatchUnhandledInputEvent(inputEvent);
            }
        };
        this.mAttrs = attributeSet;
        this.mDefStyleAttr = i2;
        resetSurfaceView();
        this.mTvInputManager = (TvInputManager) getContext().getSystemService(Context.TV_INPUT_SERVICE);
    }

    public class MySessionCallback extends TvInputManager.SessionCallback {
        Uri mChannelUri;
        final String mInputId;
        Uri mRecordedProgramUri;
        Bundle mTuneParams;

        public MySessionCallback(String str, Uri uri, Bundle bundle) {
            this.mInputId = str;
            this.mChannelUri = uri;
            this.mTuneParams = bundle;
        }

        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onChannelRetuned(TvInputManager.Session session, Uri uri) {
            if (this != TvView.this.mSessionCallback) {
                Log.w(TvView.TAG, "onChannelRetuned - session not created");
            } else if (TvView.this.mCallback != null) {
                TvView.this.mCallback.onChannelRetuned(this.mInputId, uri);
            }
        }

        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onContentAllowed(TvInputManager.Session session) {
            if (this != TvView.this.mSessionCallback) {
                Log.w(TvView.TAG, "onContentAllowed - session not created");
            } else if (TvView.this.mCallback != null) {
                TvView.this.mCallback.onContentAllowed(this.mInputId);
            }
        }

        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onContentBlocked(TvInputManager.Session session, TvContentRating tvContentRating) {
            if (this != TvView.this.mSessionCallback) {
                Log.w(TvView.TAG, "onContentBlocked - session not created");
            } else if (TvView.this.mCallback != null) {
                TvView.this.mCallback.onContentBlocked(this.mInputId, tvContentRating);
            }
        }

        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onLayoutSurface(TvInputManager.Session session, int i2, int i3, int i4, int i5) {
            if (this != TvView.this.mSessionCallback) {
                Log.w(TvView.TAG, "onLayoutSurface - session not created");
                return;
            }
            TvView.this.mSurfaceViewLeft = i2;
            TvView.this.mSurfaceViewTop = i3;
            TvView.this.mSurfaceViewRight = i4;
            TvView.this.mSurfaceViewBottom = i5;
            TvView.this.mUseRequestedSurfaceLayout = true;
            TvView.this.requestLayout();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onSessionCreated(TvInputManager.Session session) {
            if (this != TvView.this.mSessionCallback) {
                Log.w(TvView.TAG, "onSessionCreated - session already created");
                if (session != null) {
                    session.release();
                    return;
                }
                return;
            }
            TvView.this.mSession = session;
            if (session == null) {
                TvView.this.mSessionCallback = null;
                if (TvView.this.mCallback != null) {
                    TvView.this.mCallback.onConnectionFailed(this.mInputId);
                    return;
                }
                return;
            }
            for (Pair pair : TvView.this.mPendingAppPrivateCommands) {
                TvView.this.mSession.sendAppPrivateCommand((String) pair.first, (Bundle) pair.second);
            }
            TvView.this.mPendingAppPrivateCommands.clear();
            synchronized (TvView.sMainTvViewLock) {
                if (TvView.this.hasWindowFocus() && TvView.this == TvView.sMainTvView.get() && TvView.this.checkChangeHdmiCecActiveSourcePermission()) {
                    TvView.this.mSession.setMain();
                }
            }
            if (TvView.this.mSurface != null) {
                TvView tvView = TvView.this;
                tvView.setSessionSurface(tvView.mSurface);
                if (TvView.this.mSurfaceChanged) {
                    TvView tvView2 = TvView.this;
                    tvView2.dispatchSurfaceChanged(tvView2.mSurfaceFormat, TvView.this.mSurfaceWidth, TvView.this.mSurfaceHeight);
                }
            }
            TvView.this.createSessionOverlayView();
            if (TvView.this.mStreamVolume != null) {
                TvView.this.mSession.setStreamVolume(TvView.this.mStreamVolume.floatValue());
            }
            if (TvView.this.mCaptionEnabled != null) {
                TvView.this.mSession.setCaptionEnabled(TvView.this.mCaptionEnabled.booleanValue());
            }
            if (this.mChannelUri != null) {
                TvView.this.mSession.tune(this.mChannelUri, this.mTuneParams);
            } else {
                TvView.this.mSession.timeShiftPlay(this.mRecordedProgramUri);
            }
            TvView.this.ensurePositionTracking();
        }

        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onSessionEvent(TvInputManager.Session session, String str, Bundle bundle) {
            if (this != TvView.this.mSessionCallback) {
                Log.w(TvView.TAG, "onSessionEvent - session not created");
            } else if (TvView.this.mCallback != null) {
                TvView.this.mCallback.onEvent(this.mInputId, str, bundle);
            }
        }

        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onSessionReleased(TvInputManager.Session session) {
            if (this != TvView.this.mSessionCallback) {
                Log.w(TvView.TAG, "onSessionReleased - session not created");
                return;
            }
            TvView.this.mOverlayViewCreated = false;
            TvView.this.mOverlayViewFrame = null;
            TvView.this.mSessionCallback = null;
            TvView.this.mSession = null;
            if (TvView.this.mCallback != null) {
                TvView.this.mCallback.onDisconnected(this.mInputId);
            }
        }

        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onTimeShiftCurrentPositionChanged(TvInputManager.Session session, long j2) {
            if (this != TvView.this.mSessionCallback) {
                Log.w(TvView.TAG, "onTimeShiftCurrentPositionChanged - session not created");
            } else if (TvView.this.mTimeShiftPositionCallback != null) {
                TvView.this.mTimeShiftPositionCallback.onTimeShiftCurrentPositionChanged(this.mInputId, j2);
            }
        }

        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onTimeShiftStartPositionChanged(TvInputManager.Session session, long j2) {
            if (this != TvView.this.mSessionCallback) {
                Log.w(TvView.TAG, "onTimeShiftStartPositionChanged - session not created");
            } else if (TvView.this.mTimeShiftPositionCallback != null) {
                TvView.this.mTimeShiftPositionCallback.onTimeShiftStartPositionChanged(this.mInputId, j2);
            }
        }

        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onTimeShiftStatusChanged(TvInputManager.Session session, int i2) {
            if (this != TvView.this.mSessionCallback) {
                Log.w(TvView.TAG, "onTimeShiftStatusChanged - session not created");
            } else if (TvView.this.mCallback != null) {
                TvView.this.mCallback.onTimeShiftStatusChanged(this.mInputId, i2);
            }
        }

        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onTrackSelected(TvInputManager.Session session, int i2, String str) {
            if (this != TvView.this.mSessionCallback) {
                Log.w(TvView.TAG, "onTrackSelected - session not created");
            } else if (TvView.this.mCallback != null) {
                TvView.this.mCallback.onTrackSelected(this.mInputId, i2, str);
            }
        }

        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onTracksChanged(TvInputManager.Session session, List<TvTrackInfo> list) {
            if (this != TvView.this.mSessionCallback) {
                Log.w(TvView.TAG, "onTracksChanged - session not created");
            } else if (TvView.this.mCallback != null) {
                TvView.this.mCallback.onTracksChanged(this.mInputId, list);
            }
        }

        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onVideoAvailable(TvInputManager.Session session) {
            if (this != TvView.this.mSessionCallback) {
                Log.w(TvView.TAG, "onVideoAvailable - session not created");
            } else if (TvView.this.mCallback != null) {
                TvView.this.mCallback.onVideoAvailable(this.mInputId);
            }
        }

        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onVideoSizeChanged(TvInputManager.Session session, int i2, int i3) {
            if (this != TvView.this.mSessionCallback) {
                Log.w(TvView.TAG, "onVideoSizeChanged - session not created");
            } else if (TvView.this.mCallback != null) {
                TvView.this.mCallback.onVideoSizeChanged(this.mInputId, i2, i3);
            }
        }

        @Override // android.media.tv.TvInputManager.SessionCallback
        public void onVideoUnavailable(TvInputManager.Session session, int i2) {
            if (this != TvView.this.mSessionCallback) {
                Log.w(TvView.TAG, "onVideoUnavailable - session not created");
            } else if (TvView.this.mCallback != null) {
                TvView.this.mCallback.onVideoUnavailable(this.mInputId, i2);
            }
        }

        public MySessionCallback(String str, Uri uri) {
            this.mInputId = str;
            this.mRecordedProgramUri = uri;
        }
    }
}
