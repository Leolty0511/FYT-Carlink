package android.view.textservice;

import android.accessibilityservice.c;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.android.internal.textservice.ISpellCheckerSession;
import com.android.internal.textservice.ISpellCheckerSessionListener;
import com.android.internal.textservice.ITextServicesManager;
import com.android.internal.textservice.ITextServicesSessionListener;
import dalvik.system.CloseGuard;
import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes2.dex */
public class SpellCheckerSession {
    private static final boolean DBG = false;
    private static final int MSG_ON_GET_SUGGESTION_MULTIPLE = 1;
    private static final int MSG_ON_GET_SUGGESTION_MULTIPLE_FOR_SENTENCE = 2;
    public static final String SERVICE_META_DATA = "android.view.textservice.scs";
    private static final String TAG = "SpellCheckerSession";
    private final CloseGuard mGuard;
    private final Handler mHandler;
    private final InternalListener mInternalListener;
    private final SpellCheckerInfo mSpellCheckerInfo;
    private final SpellCheckerSessionListener mSpellCheckerSessionListener;
    private final SpellCheckerSessionListenerImpl mSpellCheckerSessionListenerImpl;
    private final ITextServicesManager mTextServicesManager;

    public static final class InternalListener extends ITextServicesSessionListener.Stub {
        private final SpellCheckerSessionListenerImpl mParentSpellCheckerSessionListenerImpl;

        public InternalListener(SpellCheckerSessionListenerImpl spellCheckerSessionListenerImpl) {
            this.mParentSpellCheckerSessionListenerImpl = spellCheckerSessionListenerImpl;
        }

        @Override // com.android.internal.textservice.ITextServicesSessionListener
        public void onServiceConnected(ISpellCheckerSession iSpellCheckerSession) {
            this.mParentSpellCheckerSessionListenerImpl.onServiceConnected(iSpellCheckerSession);
        }
    }

    public interface SpellCheckerSessionListener {
        void onGetSentenceSuggestions(SentenceSuggestionsInfo[] sentenceSuggestionsInfoArr);

        void onGetSuggestions(SuggestionsInfo[] suggestionsInfoArr);
    }

    public static final class SpellCheckerSessionListenerImpl extends ISpellCheckerSessionListener.Stub {
        private static final int STATE_CLOSED_AFTER_CONNECTION = 2;
        private static final int STATE_CLOSED_BEFORE_CONNECTION = 3;
        private static final int STATE_CONNECTED = 1;
        private static final int STATE_WAIT_CONNECTION = 0;
        private static final int TASK_CANCEL = 1;
        private static final int TASK_CLOSE = 3;
        private static final int TASK_GET_SUGGESTIONS_MULTIPLE = 2;
        private static final int TASK_GET_SUGGESTIONS_MULTIPLE_FOR_SENTENCE = 4;
        private Handler mAsyncHandler;
        private Handler mHandler;
        private ISpellCheckerSession mISpellCheckerSession;
        private final Queue<SpellCheckerParams> mPendingTasks = new LinkedList();
        private int mState = 0;
        private HandlerThread mThread;

        public static class SpellCheckerParams {
            public final boolean mSequentialWords;
            public ISpellCheckerSession mSession;
            public final int mSuggestionsLimit;
            public final TextInfo[] mTextInfos;
            public final int mWhat;

            public SpellCheckerParams(int i2, TextInfo[] textInfoArr, int i3, boolean z2) {
                this.mWhat = i2;
                this.mTextInfos = textInfoArr;
                this.mSuggestionsLimit = i3;
                this.mSequentialWords = z2;
            }
        }

        public SpellCheckerSessionListenerImpl(Handler handler) {
            this.mHandler = handler;
        }

        private void processCloseLocked() {
            this.mISpellCheckerSession = null;
            HandlerThread handlerThread = this.mThread;
            if (handlerThread != null) {
                handlerThread.quit();
            }
            this.mHandler = null;
            this.mPendingTasks.clear();
            this.mThread = null;
            this.mAsyncHandler = null;
            int i2 = this.mState;
            if (i2 == 0) {
                this.mState = 3;
                return;
            }
            if (i2 == 1) {
                this.mState = 2;
                return;
            }
            Log.e(SpellCheckerSession.TAG, "processCloseLocked is called unexpectedly. mState=" + stateToString(this.mState));
        }

        private void processOrEnqueueTask(SpellCheckerParams spellCheckerParams) {
            synchronized (this) {
                int i2 = this.mState;
                if (i2 != 0 && i2 != 1) {
                    Log.e(SpellCheckerSession.TAG, "ignoring processOrEnqueueTask due to unexpected mState=" + taskToString(spellCheckerParams.mWhat) + " scp.mWhat=" + taskToString(spellCheckerParams.mWhat));
                    return;
                }
                if (i2 != 0) {
                    processTask(this.mISpellCheckerSession, spellCheckerParams, false);
                    return;
                }
                int i3 = spellCheckerParams.mWhat;
                if (i3 == 3) {
                    processCloseLocked();
                    return;
                }
                SpellCheckerParams spellCheckerParams2 = null;
                if (i3 == 1) {
                    while (!this.mPendingTasks.isEmpty()) {
                        SpellCheckerParams spellCheckerParamsPoll = this.mPendingTasks.poll();
                        if (spellCheckerParamsPoll.mWhat == 3) {
                            spellCheckerParams2 = spellCheckerParamsPoll;
                        }
                    }
                }
                this.mPendingTasks.offer(spellCheckerParams);
                if (spellCheckerParams2 != null) {
                    this.mPendingTasks.offer(spellCheckerParams2);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void processTask(ISpellCheckerSession iSpellCheckerSession, SpellCheckerParams spellCheckerParams, boolean z2) {
            Handler handler;
            if (z2 || (handler = this.mAsyncHandler) == null) {
                int i2 = spellCheckerParams.mWhat;
                if (i2 == 1) {
                    try {
                        iSpellCheckerSession.onCancel();
                    } catch (RemoteException e2) {
                        Log.e(SpellCheckerSession.TAG, "Failed to cancel " + e2);
                    }
                } else if (i2 == 2) {
                    try {
                        iSpellCheckerSession.onGetSuggestionsMultiple(spellCheckerParams.mTextInfos, spellCheckerParams.mSuggestionsLimit, spellCheckerParams.mSequentialWords);
                    } catch (RemoteException e3) {
                        Log.e(SpellCheckerSession.TAG, "Failed to get suggestions " + e3);
                    }
                } else if (i2 == 3) {
                    try {
                        iSpellCheckerSession.onClose();
                    } catch (RemoteException e4) {
                        Log.e(SpellCheckerSession.TAG, "Failed to close " + e4);
                    }
                } else if (i2 == 4) {
                    try {
                        iSpellCheckerSession.onGetSentenceSuggestionsMultiple(spellCheckerParams.mTextInfos, spellCheckerParams.mSuggestionsLimit);
                    } catch (RemoteException e5) {
                        Log.e(SpellCheckerSession.TAG, "Failed to get suggestions " + e5);
                    }
                }
            } else {
                spellCheckerParams.mSession = iSpellCheckerSession;
                handler.sendMessage(Message.obtain(handler, 1, spellCheckerParams));
            }
            if (spellCheckerParams.mWhat == 3) {
                synchronized (this) {
                    processCloseLocked();
                }
            }
        }

        private static String stateToString(int i2) {
            if (i2 == 0) {
                return "STATE_WAIT_CONNECTION";
            }
            if (i2 == 1) {
                return "STATE_CONNECTED";
            }
            if (i2 != 2) {
                return i2 != 3 ? c.d("Unexpected state=", i2) : "STATE_CLOSED_BEFORE_CONNECTION";
            }
            return "STATE_CLOSED_AFTER_CONNECTION";
        }

        private static String taskToString(int i2) {
            if (i2 == 1) {
                return "TASK_CANCEL";
            }
            if (i2 == 2) {
                return "TASK_GET_SUGGESTIONS_MULTIPLE";
            }
            if (i2 != 3) {
                return i2 != 4 ? c.d("Unexpected task=", i2) : "TASK_GET_SUGGESTIONS_MULTIPLE_FOR_SENTENCE";
            }
            return "TASK_CLOSE";
        }

        public void cancel() {
            processOrEnqueueTask(new SpellCheckerParams(1, null, 0, false));
        }

        public void close() {
            processOrEnqueueTask(new SpellCheckerParams(3, null, 0, false));
        }

        public void getSentenceSuggestionsMultiple(TextInfo[] textInfoArr, int i2) {
            processOrEnqueueTask(new SpellCheckerParams(4, textInfoArr, i2, false));
        }

        public void getSuggestionsMultiple(TextInfo[] textInfoArr, int i2, boolean z2) {
            processOrEnqueueTask(new SpellCheckerParams(2, textInfoArr, i2, z2));
        }

        public boolean isDisconnected() {
            boolean z2;
            synchronized (this) {
                z2 = true;
                if (this.mState == 1) {
                    z2 = false;
                }
            }
            return z2;
        }

        @Override // com.android.internal.textservice.ISpellCheckerSessionListener
        public void onGetSentenceSuggestions(SentenceSuggestionsInfo[] sentenceSuggestionsInfoArr) {
            synchronized (this) {
                Handler handler = this.mHandler;
                if (handler != null) {
                    handler.sendMessage(Message.obtain(handler, 2, sentenceSuggestionsInfoArr));
                }
            }
        }

        @Override // com.android.internal.textservice.ISpellCheckerSessionListener
        public void onGetSuggestions(SuggestionsInfo[] suggestionsInfoArr) {
            synchronized (this) {
                Handler handler = this.mHandler;
                if (handler != null) {
                    handler.sendMessage(Message.obtain(handler, 1, suggestionsInfoArr));
                }
            }
        }

        public void onServiceConnected(ISpellCheckerSession iSpellCheckerSession) {
            synchronized (this) {
                int i2 = this.mState;
                if (i2 != 0) {
                    if (i2 != 3) {
                        Log.e(SpellCheckerSession.TAG, "ignoring onServiceConnected due to unexpected mState=" + stateToString(this.mState));
                        return;
                    }
                    return;
                }
                if (iSpellCheckerSession == null) {
                    Log.e(SpellCheckerSession.TAG, "ignoring onServiceConnected due to session=null");
                    return;
                }
                this.mISpellCheckerSession = iSpellCheckerSession;
                if ((iSpellCheckerSession.asBinder() instanceof Binder) && this.mThread == null) {
                    HandlerThread handlerThread = new HandlerThread("SpellCheckerSession", 10);
                    this.mThread = handlerThread;
                    handlerThread.start();
                    this.mAsyncHandler = new Handler(this.mThread.getLooper()) { // from class: android.view.textservice.SpellCheckerSession.SpellCheckerSessionListenerImpl.1
                        @Override // android.os.Handler
                        public void handleMessage(Message message) {
                            SpellCheckerParams spellCheckerParams = (SpellCheckerParams) message.obj;
                            SpellCheckerSessionListenerImpl.this.processTask(spellCheckerParams.mSession, spellCheckerParams, true);
                        }
                    };
                }
                this.mState = 1;
                while (!this.mPendingTasks.isEmpty()) {
                    processTask(iSpellCheckerSession, this.mPendingTasks.poll(), false);
                }
            }
        }
    }

    public SpellCheckerSession(SpellCheckerInfo spellCheckerInfo, ITextServicesManager iTextServicesManager, SpellCheckerSessionListener spellCheckerSessionListener) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mGuard = closeGuard;
        Handler handler = new Handler() { // from class: android.view.textservice.SpellCheckerSession.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i2 = message.what;
                if (i2 == 1) {
                    SpellCheckerSession.this.handleOnGetSuggestionsMultiple((SuggestionsInfo[]) message.obj);
                } else {
                    if (i2 != 2) {
                        return;
                    }
                    SpellCheckerSession.this.handleOnGetSentenceSuggestionsMultiple((SentenceSuggestionsInfo[]) message.obj);
                }
            }
        };
        this.mHandler = handler;
        if (spellCheckerInfo == null || spellCheckerSessionListener == null || iTextServicesManager == null) {
            throw null;
        }
        this.mSpellCheckerInfo = spellCheckerInfo;
        SpellCheckerSessionListenerImpl spellCheckerSessionListenerImpl = new SpellCheckerSessionListenerImpl(handler);
        this.mSpellCheckerSessionListenerImpl = spellCheckerSessionListenerImpl;
        this.mInternalListener = new InternalListener(spellCheckerSessionListenerImpl);
        this.mTextServicesManager = iTextServicesManager;
        this.mSpellCheckerSessionListener = spellCheckerSessionListener;
        closeGuard.open("finishSession");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnGetSentenceSuggestionsMultiple(SentenceSuggestionsInfo[] sentenceSuggestionsInfoArr) {
        this.mSpellCheckerSessionListener.onGetSentenceSuggestions(sentenceSuggestionsInfoArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnGetSuggestionsMultiple(SuggestionsInfo[] suggestionsInfoArr) {
        this.mSpellCheckerSessionListener.onGetSuggestions(suggestionsInfoArr);
    }

    public void cancel() {
        this.mSpellCheckerSessionListenerImpl.cancel();
    }

    public void close() {
        this.mGuard.close();
        try {
            this.mSpellCheckerSessionListenerImpl.close();
            this.mTextServicesManager.finishSpellCheckerService(this.mSpellCheckerSessionListenerImpl);
        } catch (RemoteException unused) {
        }
    }

    public void finalize() throws Throwable {
        try {
            CloseGuard closeGuard = this.mGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
                close();
            }
        } finally {
            super.finalize();
        }
    }

    public void getSentenceSuggestions(TextInfo[] textInfoArr, int i2) {
        this.mSpellCheckerSessionListenerImpl.getSentenceSuggestionsMultiple(textInfoArr, i2);
    }

    public SpellCheckerInfo getSpellChecker() {
        return this.mSpellCheckerInfo;
    }

    public ISpellCheckerSessionListener getSpellCheckerSessionListener() {
        return this.mSpellCheckerSessionListenerImpl;
    }

    @Deprecated
    public void getSuggestions(TextInfo textInfo, int i2) {
        getSuggestions(new TextInfo[]{textInfo}, i2, false);
    }

    public ITextServicesSessionListener getTextServicesSessionListener() {
        return this.mInternalListener;
    }

    public boolean isSessionDisconnected() {
        return this.mSpellCheckerSessionListenerImpl.isDisconnected();
    }

    @Deprecated
    public void getSuggestions(TextInfo[] textInfoArr, int i2, boolean z2) {
        this.mSpellCheckerSessionListenerImpl.getSuggestionsMultiple(textInfoArr, i2, z2);
    }
}
