package android.service.textservice;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import android.text.method.WordIterator;
import android.view.textservice.SentenceSuggestionsInfo;
import android.view.textservice.SuggestionsInfo;
import android.view.textservice.TextInfo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Locale;
import s.a;
import s.b;
import s.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class SpellCheckerService extends Service {
    private static final boolean DBG = false;
    public static final String SERVICE_INTERFACE = "android.service.textservice.SpellCheckerService";
    private static final String TAG = "SpellCheckerService";
    private final SpellCheckerServiceBinder mBinder = new SpellCheckerServiceBinder(this);

    public static class InternalISpellCheckerSession extends b.a {
        private final Bundle mBundle;
        private c mListener;
        private final String mLocale;
        private final Session mSession;

        public InternalISpellCheckerSession(String str, c cVar, Bundle bundle, Session session) {
            this.mListener = cVar;
            this.mSession = session;
            this.mLocale = str;
            this.mBundle = bundle;
            session.setInternalISpellCheckerSession(this);
        }

        public Bundle getBundle() {
            return this.mBundle;
        }

        public String getLocale() {
            return this.mLocale;
        }

        @Override // s.b
        public void onCancel() {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            try {
                Process.setThreadPriority(10);
                this.mSession.onCancel();
            } finally {
                Process.setThreadPriority(threadPriority);
            }
        }

        @Override // s.b
        public void onClose() {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            try {
                Process.setThreadPriority(10);
                this.mSession.onClose();
            } finally {
                Process.setThreadPriority(threadPriority);
                this.mListener = null;
            }
        }

        @Override // s.b
        public void onGetSentenceSuggestionsMultiple(TextInfo[] textInfoArr, int i2) {
            try {
                this.mListener.onGetSentenceSuggestions(this.mSession.onGetSentenceSuggestionsMultiple(textInfoArr, i2));
            } catch (RemoteException unused) {
            }
        }

        @Override // s.b
        public void onGetSuggestionsMultiple(TextInfo[] textInfoArr, int i2, boolean z2) {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            try {
                Process.setThreadPriority(10);
                this.mListener.onGetSuggestions(this.mSession.onGetSuggestionsMultiple(textInfoArr, i2, z2));
            } catch (RemoteException unused) {
            } finally {
                Process.setThreadPriority(threadPriority);
            }
        }
    }

    public static class SentenceLevelAdapter {
        public static final SentenceSuggestionsInfo[] EMPTY_SENTENCE_SUGGESTIONS_INFOS = new SentenceSuggestionsInfo[0];
        private static final SuggestionsInfo EMPTY_SUGGESTIONS_INFO = new SuggestionsInfo(0, null);
        private final WordIterator mWordIterator;

        public static class SentenceTextInfoParams {
            public final ArrayList<SentenceWordItem> mItems;
            public final TextInfo mOriginalTextInfo;
            public final int mSize;

            public SentenceTextInfoParams(TextInfo textInfo, ArrayList<SentenceWordItem> arrayList) {
                this.mOriginalTextInfo = textInfo;
                this.mItems = arrayList;
                this.mSize = arrayList.size();
            }
        }

        public static class SentenceWordItem {
            public final int mLength;
            public final int mStart;
            public final TextInfo mTextInfo;

            public SentenceWordItem(TextInfo textInfo, int i2, int i3) {
                this.mTextInfo = textInfo;
                this.mStart = i2;
                this.mLength = i3 - i2;
            }
        }

        public SentenceLevelAdapter(Locale locale) {
            this.mWordIterator = new WordIterator(locale);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public SentenceTextInfoParams getSplitWords(TextInfo textInfo) {
            WordIterator wordIterator = this.mWordIterator;
            String text = textInfo.getText();
            int cookie = textInfo.getCookie();
            int length = text.length();
            ArrayList arrayList = new ArrayList();
            wordIterator.setCharSequence(text, 0, text.length());
            int iFollowing = wordIterator.following(0);
            int beginning = wordIterator.getBeginning(iFollowing);
            while (beginning <= length && iFollowing != -1 && beginning != -1) {
                if (iFollowing >= 0 && iFollowing > beginning) {
                    String string = text.subSequence(beginning, iFollowing).toString();
                    arrayList.add(new SentenceWordItem(new TextInfo(string, cookie, string.hashCode()), beginning, iFollowing));
                }
                iFollowing = wordIterator.following(iFollowing);
                if (iFollowing == -1) {
                    break;
                }
                beginning = wordIterator.getBeginning(iFollowing);
            }
            return new SentenceTextInfoParams(textInfo, arrayList);
        }

        public static SentenceSuggestionsInfo reconstructSuggestions(SentenceTextInfoParams sentenceTextInfoParams, SuggestionsInfo[] suggestionsInfoArr) {
            SuggestionsInfo suggestionsInfo;
            if (suggestionsInfoArr == null || suggestionsInfoArr.length == 0 || sentenceTextInfoParams == null) {
                return null;
            }
            int cookie = sentenceTextInfoParams.mOriginalTextInfo.getCookie();
            int sequence = sentenceTextInfoParams.mOriginalTextInfo.getSequence();
            int i2 = sentenceTextInfoParams.mSize;
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            SuggestionsInfo[] suggestionsInfoArr2 = new SuggestionsInfo[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                SentenceWordItem sentenceWordItem = sentenceTextInfoParams.mItems.get(i3);
                int i4 = 0;
                while (true) {
                    if (i4 >= suggestionsInfoArr.length) {
                        suggestionsInfo = null;
                        break;
                    }
                    suggestionsInfo = suggestionsInfoArr[i4];
                    if (suggestionsInfo != null && suggestionsInfo.getSequence() == sentenceWordItem.mTextInfo.getSequence()) {
                        suggestionsInfo.setCookieAndSequence(cookie, sequence);
                        break;
                    }
                    i4++;
                }
                iArr[i3] = sentenceWordItem.mStart;
                iArr2[i3] = sentenceWordItem.mLength;
                if (suggestionsInfo == null) {
                    suggestionsInfo = EMPTY_SUGGESTIONS_INFO;
                }
                suggestionsInfoArr2[i3] = suggestionsInfo;
            }
            return new SentenceSuggestionsInfo(suggestionsInfoArr2, iArr, iArr2);
        }
    }

    public static abstract class Session {
        private InternalISpellCheckerSession mInternalSession;
        private volatile SentenceLevelAdapter mSentenceLevelAdapter;

        public Bundle getBundle() {
            return this.mInternalSession.getBundle();
        }

        public String getLocale() {
            return this.mInternalSession.getLocale();
        }

        public void onCancel() {
        }

        public void onClose() {
        }

        public abstract void onCreate();

        public SentenceSuggestionsInfo[] onGetSentenceSuggestionsMultiple(TextInfo[] textInfoArr, int i2) {
            if (textInfoArr == null || textInfoArr.length == 0) {
                return SentenceLevelAdapter.EMPTY_SENTENCE_SUGGESTIONS_INFOS;
            }
            if (this.mSentenceLevelAdapter == null) {
                synchronized (this) {
                    if (this.mSentenceLevelAdapter == null) {
                        String locale = getLocale();
                        if (!TextUtils.isEmpty(locale)) {
                            this.mSentenceLevelAdapter = new SentenceLevelAdapter(new Locale(locale));
                        }
                    }
                }
            }
            if (this.mSentenceLevelAdapter == null) {
                return SentenceLevelAdapter.EMPTY_SENTENCE_SUGGESTIONS_INFOS;
            }
            int length = textInfoArr.length;
            SentenceSuggestionsInfo[] sentenceSuggestionsInfoArr = new SentenceSuggestionsInfo[length];
            for (int i3 = 0; i3 < length; i3++) {
                SentenceLevelAdapter.SentenceTextInfoParams splitWords = this.mSentenceLevelAdapter.getSplitWords(textInfoArr[i3]);
                ArrayList<SentenceLevelAdapter.SentenceWordItem> arrayList = splitWords.mItems;
                int size = arrayList.size();
                TextInfo[] textInfoArr2 = new TextInfo[size];
                for (int i4 = 0; i4 < size; i4++) {
                    textInfoArr2[i4] = arrayList.get(i4).mTextInfo;
                }
                sentenceSuggestionsInfoArr[i3] = SentenceLevelAdapter.reconstructSuggestions(splitWords, onGetSuggestionsMultiple(textInfoArr2, i2, true));
            }
            return sentenceSuggestionsInfoArr;
        }

        public abstract SuggestionsInfo onGetSuggestions(TextInfo textInfo, int i2);

        public SuggestionsInfo[] onGetSuggestionsMultiple(TextInfo[] textInfoArr, int i2, boolean z2) {
            int length = textInfoArr.length;
            SuggestionsInfo[] suggestionsInfoArr = new SuggestionsInfo[length];
            for (int i3 = 0; i3 < length; i3++) {
                suggestionsInfoArr[i3] = onGetSuggestions(textInfoArr[i3], i2);
                suggestionsInfoArr[i3].setCookieAndSequence(textInfoArr[i3].getCookie(), textInfoArr[i3].getSequence());
            }
            return suggestionsInfoArr;
        }

        public final void setInternalISpellCheckerSession(InternalISpellCheckerSession internalISpellCheckerSession) {
            this.mInternalSession = internalISpellCheckerSession;
        }
    }

    public static class SpellCheckerServiceBinder extends a.AbstractBinderC0104a {
        private final WeakReference<SpellCheckerService> mInternalServiceRef;

        public SpellCheckerServiceBinder(SpellCheckerService spellCheckerService) {
            this.mInternalServiceRef = new WeakReference<>(spellCheckerService);
        }

        @Override // s.a
        public b getISpellCheckerSession(String str, c cVar, Bundle bundle) {
            SpellCheckerService spellCheckerService = this.mInternalServiceRef.get();
            if (spellCheckerService == null) {
                return null;
            }
            Session sessionCreateSession = spellCheckerService.createSession();
            InternalISpellCheckerSession internalISpellCheckerSession = new InternalISpellCheckerSession(str, cVar, bundle, sessionCreateSession);
            sessionCreateSession.onCreate();
            return internalISpellCheckerSession;
        }
    }

    public abstract Session createSession();

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.mBinder;
    }
}
