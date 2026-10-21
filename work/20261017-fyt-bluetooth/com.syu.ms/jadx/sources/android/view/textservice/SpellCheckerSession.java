package android.view.textservice;

import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import java.util.LinkedList;
import java.util.Queue;
import s.b;
import s.c;
import s.d;
import s.e;

/* JADX INFO: loaded from: classes.dex */
public class SpellCheckerSession {
    private static final boolean DBG = false;
    private static final int MSG_ON_GET_SUGGESTION_MULTIPLE = 1;
    private static final int MSG_ON_GET_SUGGESTION_MULTIPLE_FOR_SENTENCE = 2;
    public static final String SERVICE_META_DATA = "android.view.textservice.scs";
    private static final String TAG = "SpellCheckerSession";
    private final Handler mHandler;
    private final InternalListener mInternalListener;
    private boolean mIsUsed;
    private final SpellCheckerInfo mSpellCheckerInfo;
    private SpellCheckerSessionListener mSpellCheckerSessionListener;
    private final SpellCheckerSessionListenerImpl mSpellCheckerSessionListenerImpl;
    private final SpellCheckerSubtype mSubtype;
    private final d mTextServicesManager;

    public static class InternalListener extends e.a {
        private final SpellCheckerSessionListenerImpl mParentSpellCheckerSessionListenerImpl;

        public InternalListener(SpellCheckerSessionListenerImpl spellCheckerSessionListenerImpl) {
            this.mParentSpellCheckerSessionListenerImpl = spellCheckerSessionListenerImpl;
        }

        @Override // s.e
        public void onServiceConnected(b bVar) {
            this.mParentSpellCheckerSessionListenerImpl.onServiceConnected(bVar);
        }
    }

    public interface SpellCheckerSessionListener {
        void onGetSentenceSuggestions(SentenceSuggestionsInfo[] sentenceSuggestionsInfoArr);

        void onGetSuggestions(SuggestionsInfo[] suggestionsInfoArr);
    }

    public static class SpellCheckerSessionListenerImpl extends c.a {
        private static final int TASK_CANCEL = 1;
        private static final int TASK_CLOSE = 3;
        private static final int TASK_GET_SUGGESTIONS_MULTIPLE = 2;
        private static final int TASK_GET_SUGGESTIONS_MULTIPLE_FOR_SENTENCE = 4;
        private Handler mAsyncHandler;
        private Handler mHandler;
        private b mISpellCheckerSession;
        private HandlerThread mThread;
        private final Queue<SpellCheckerParams> mPendingTasks = new LinkedList();
        private boolean mOpened = false;

        public static class SpellCheckerParams {
            public final boolean mSequentialWords;
            public b mSession;
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

        private void processOrEnqueueTask(SpellCheckerParams spellCheckerParams) {
            synchronized (this) {
                b bVar = this.mISpellCheckerSession;
                if (bVar != null) {
                    processTask(bVar, spellCheckerParams, false);
                    return;
                }
                SpellCheckerParams spellCheckerParams2 = null;
                if (spellCheckerParams.mWhat == 1) {
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
        public void processTask(b bVar, SpellCheckerParams spellCheckerParams, boolean z2) {
            Handler handler;
            if (z2 || (handler = this.mAsyncHandler) == null) {
                int i2 = spellCheckerParams.mWhat;
                if (i2 == 1) {
                    try {
                        bVar.onCancel();
                    } catch (RemoteException e2) {
                        Log.e(SpellCheckerSession.TAG, "Failed to cancel " + e2);
                    }
                } else if (i2 == 2) {
                    try {
                        bVar.onGetSuggestionsMultiple(spellCheckerParams.mTextInfos, spellCheckerParams.mSuggestionsLimit, spellCheckerParams.mSequentialWords);
                    } catch (RemoteException e3) {
                        Log.e(SpellCheckerSession.TAG, "Failed to get suggestions " + e3);
                    }
                } else if (i2 == 3) {
                    try {
                        bVar.onClose();
                    } catch (RemoteException e4) {
                        Log.e(SpellCheckerSession.TAG, "Failed to close " + e4);
                    }
                } else if (i2 == 4) {
                    try {
                        bVar.onGetSentenceSuggestionsMultiple(spellCheckerParams.mTextInfos, spellCheckerParams.mSuggestionsLimit);
                    } catch (RemoteException e5) {
                        Log.e(SpellCheckerSession.TAG, "Failed to get suggestions " + e5);
                    }
                }
            } else {
                spellCheckerParams.mSession = bVar;
                handler.sendMessage(Message.obtain(handler, 1, spellCheckerParams));
            }
            if (spellCheckerParams.mWhat == 3) {
                synchronized (this) {
                    this.mISpellCheckerSession = null;
                    this.mHandler = null;
                    HandlerThread handlerThread = this.mThread;
                    if (handlerThread != null) {
                        handlerThread.quit();
                    }
                    this.mThread = null;
                    this.mAsyncHandler = null;
                }
            }
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
            return this.mOpened && this.mISpellCheckerSession == null;
        }

        @Override // s.c
        public void onGetSentenceSuggestions(SentenceSuggestionsInfo[] sentenceSuggestionsInfoArr) {
            Handler handler = this.mHandler;
            handler.sendMessage(Message.obtain(handler, 2, sentenceSuggestionsInfoArr));
        }

        @Override // s.c
        public void onGetSuggestions(SuggestionsInfo[] suggestionsInfoArr) {
            synchronized (this) {
                Handler handler = this.mHandler;
                if (handler != null) {
                    handler.sendMessage(Message.obtain(handler, 1, suggestionsInfoArr));
                }
            }
        }

        public synchronized void onServiceConnected(b bVar) {
            synchronized (this) {
                this.mISpellCheckerSession = bVar;
                if ((bVar.asBinder() instanceof Binder) && this.mThread == null) {
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
                this.mOpened = true;
            }
            while (!this.mPendingTasks.isEmpty()) {
                processTask(bVar, this.mPendingTasks.poll(), false);
            }
        }
    }

    public SpellCheckerSession(SpellCheckerInfo spellCheckerInfo, d dVar, SpellCheckerSessionListener spellCheckerSessionListener, SpellCheckerSubtype spellCheckerSubtype) {
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
        if (spellCheckerInfo == null || spellCheckerSessionListener == null || dVar == null) {
            throw null;
        }
        this.mSpellCheckerInfo = spellCheckerInfo;
        SpellCheckerSessionListenerImpl spellCheckerSessionListenerImpl = new SpellCheckerSessionListenerImpl(handler);
        this.mSpellCheckerSessionListenerImpl = spellCheckerSessionListenerImpl;
        this.mInternalListener = new InternalListener(spellCheckerSessionListenerImpl);
        this.mTextServicesManager = dVar;
        this.mIsUsed = true;
        this.mSpellCheckerSessionListener = spellCheckerSessionListener;
        this.mSubtype = spellCheckerSubtype;
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
        this.mIsUsed = false;
        try {
            this.mSpellCheckerSessionListenerImpl.close();
            this.mTextServicesManager.o(this.mSpellCheckerSessionListenerImpl);
        } catch (RemoteException unused) {
        }
    }

    public void finalize() throws Throwable {
        super.finalize();
        if (this.mIsUsed) {
            Log.e(TAG, "SpellCheckerSession was not finished properly.You should call finishShession() when you finished to use a spell checker.");
            close();
        }
    }

    public void getSentenceSuggestions(TextInfo[] textInfoArr, int i2) {
        this.mSpellCheckerSessionListenerImpl.getSentenceSuggestionsMultiple(textInfoArr, i2);
    }

    public SpellCheckerInfo getSpellChecker() {
        return this.mSpellCheckerInfo;
    }

    public c getSpellCheckerSessionListener() {
        return this.mSpellCheckerSessionListenerImpl;
    }

    @Deprecated
    public void getSuggestions(TextInfo textInfo, int i2) {
        getSuggestions(new TextInfo[]{textInfo}, i2, false);
    }

    public e getTextServicesSessionListener() {
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
