package android.widget;

import android.content.Context;
import android.text.Editable;
import android.text.Selection;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.WordIterator;
import android.text.style.SpellCheckSpan;
import android.text.style.SuggestionSpan;
import android.util.Log;
import android.util.LruCache;
import android.view.textservice.SentenceSuggestionsInfo;
import android.view.textservice.SpellCheckerSession;
import android.view.textservice.SuggestionsInfo;
import android.view.textservice.TextInfo;
import android.view.textservice.TextServicesManager;
import java.util.Locale;
import u.a;

/* JADX INFO: loaded from: classes.dex */
public class SpellChecker implements SpellCheckerSession.SpellCheckerSessionListener {
    public static final int AVERAGE_WORD_LENGTH = 7;
    private static final boolean DBG = false;
    public static final int MAX_NUMBER_OF_WORDS = 50;
    private static final int MIN_SENTENCE_LENGTH = 50;
    private static final int SPELL_PAUSE_DURATION = 400;
    private static final int SUGGESTION_SPAN_CACHE_SIZE = 10;
    private static final String TAG = "SpellChecker";
    private static final int USE_SPAN_RANGE = -1;
    public static final int WORD_ITERATOR_INTERVAL = 350;
    public final int mCookie;
    private Locale mCurrentLocale;
    private int[] mIds;
    private boolean mIsSentenceSpellCheckSupported;
    private int mLength;
    private SpellCheckSpan[] mSpellCheckSpans;
    public SpellCheckerSession mSpellCheckerSession;
    private Runnable mSpellRunnable;
    private TextServicesManager mTextServicesManager;
    private final TextView mTextView;
    private WordIterator mWordIterator;
    private SpellParser[] mSpellParsers = new SpellParser[0];
    private int mSpanSequenceCounter = 0;
    private final LruCache<Long, SuggestionSpan> mSuggestionSpanCache = new LruCache<>(10);

    public SpellChecker(TextView textView) {
        this.mTextView = textView;
        int iJ = a.j(1);
        this.mIds = new int[iJ];
        this.mSpellCheckSpans = new SpellCheckSpan[iJ];
        setLocale(textView.getSpellCheckerLocale());
        this.mCookie = hashCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSpellCheckSpan(Editable editable, int i2, int i3) {
        int iNextSpellCheckSpanIndex = nextSpellCheckSpanIndex();
        SpellCheckSpan spellCheckSpan = this.mSpellCheckSpans[iNextSpellCheckSpanIndex];
        editable.setSpan(spellCheckSpan, i2, i3, 33);
        spellCheckSpan.setSpellCheckInProgress(false);
        int[] iArr = this.mIds;
        int i4 = this.mSpanSequenceCounter;
        this.mSpanSequenceCounter = i4 + 1;
        iArr[iNextSpellCheckSpanIndex] = i4;
    }

    private void createMisspelledSuggestionSpan(Editable editable, SuggestionsInfo suggestionsInfo, SpellCheckSpan spellCheckSpan, int i2, int i3) {
        String[] strArr;
        int spanStart = editable.getSpanStart(spellCheckSpan);
        int spanEnd = editable.getSpanEnd(spellCheckSpan);
        if (spanStart < 0 || spanEnd <= spanStart) {
            return;
        }
        if (i2 != -1 && i3 != -1) {
            spanStart += i2;
            spanEnd = spanStart + i3;
        }
        int suggestionsCount = suggestionsInfo.getSuggestionsCount();
        if (suggestionsCount > 0) {
            strArr = new String[suggestionsCount];
            for (int i4 = 0; i4 < suggestionsCount; i4++) {
                strArr[i4] = suggestionsInfo.getSuggestionAt(i4);
            }
        } else {
            strArr = (String[]) a.d(String.class);
        }
        SuggestionSpan suggestionSpan = new SuggestionSpan(this.mTextView.getContext(), strArr, 3);
        if (this.mIsSentenceSpellCheckSupported) {
            Long lValueOf = Long.valueOf(TextUtils.packRangeInLong(spanStart, spanEnd));
            SuggestionSpan suggestionSpan2 = this.mSuggestionSpanCache.get(lValueOf);
            if (suggestionSpan2 != null) {
                editable.removeSpan(suggestionSpan2);
            }
            this.mSuggestionSpanCache.put(lValueOf, suggestionSpan);
        }
        editable.setSpan(suggestionSpan, spanStart, spanEnd, 33);
        this.mTextView.invalidateRegion(spanStart, spanEnd, false);
    }

    public static boolean haveWordBoundariesChanged(Editable editable, int i2, int i3, int i4, int i5) {
        if (i5 != i2 && i4 != i3) {
            return true;
        }
        if (i5 == i2 && i2 < editable.length()) {
            return Character.isLetterOrDigit(Character.codePointAt(editable, i2));
        }
        if (i4 != i3 || i3 <= 0) {
            return false;
        }
        return Character.isLetterOrDigit(Character.codePointBefore(editable, i3));
    }

    private boolean isSessionActive() {
        return this.mSpellCheckerSession != null;
    }

    private int nextSpellCheckSpanIndex() {
        int i2 = 0;
        while (true) {
            int i3 = this.mLength;
            if (i2 >= i3) {
                if (i3 == this.mSpellCheckSpans.length) {
                    int i4 = i3 * 2;
                    int[] iArr = new int[i4];
                    SpellCheckSpan[] spellCheckSpanArr = new SpellCheckSpan[i4];
                    System.arraycopy(this.mIds, 0, iArr, 0, i3);
                    System.arraycopy(this.mSpellCheckSpans, 0, spellCheckSpanArr, 0, this.mLength);
                    this.mIds = iArr;
                    this.mSpellCheckSpans = spellCheckSpanArr;
                }
                this.mSpellCheckSpans[this.mLength] = new SpellCheckSpan();
                int i5 = this.mLength + 1;
                this.mLength = i5;
                return i5 - 1;
            }
            if (this.mIds[i2] < 0) {
                return i2;
            }
            i2++;
        }
    }

    private SpellCheckSpan onGetSuggestionsInternal(SuggestionsInfo suggestionsInfo, int i2, int i3) {
        int i4;
        int i5;
        if (suggestionsInfo != null && suggestionsInfo.getCookie() == this.mCookie) {
            Editable editable = (Editable) this.mTextView.getText();
            int sequence = suggestionsInfo.getSequence();
            for (int i6 = 0; i6 < this.mLength; i6++) {
                if (sequence == this.mIds[i6]) {
                    int suggestionsAttributes = suggestionsInfo.getSuggestionsAttributes();
                    boolean z2 = (suggestionsAttributes & 1) > 0;
                    boolean z3 = (suggestionsAttributes & 2) > 0;
                    SpellCheckSpan spellCheckSpan = this.mSpellCheckSpans[i6];
                    if (!z2 && z3) {
                        createMisspelledSuggestionSpan(editable, suggestionsInfo, spellCheckSpan, i2, i3);
                    } else if (this.mIsSentenceSpellCheckSupported) {
                        int spanStart = editable.getSpanStart(spellCheckSpan);
                        int spanEnd = editable.getSpanEnd(spellCheckSpan);
                        if (i2 == -1 || i3 == -1) {
                            i4 = spanStart;
                            i5 = spanEnd;
                        } else {
                            i4 = i2 + spanStart;
                            i5 = i3 + i4;
                        }
                        if (spanStart >= 0 && spanEnd > spanStart && i5 > i4) {
                            Long lValueOf = Long.valueOf(TextUtils.packRangeInLong(i4, i5));
                            Object obj = (SuggestionSpan) this.mSuggestionSpanCache.get(lValueOf);
                            if (obj != null) {
                                editable.removeSpan(obj);
                                this.mSuggestionSpanCache.remove(lValueOf);
                            }
                        }
                    }
                    return spellCheckSpan;
                }
            }
        }
        return null;
    }

    private void resetSession() {
        closeSession();
        TextServicesManager textServicesManager = (TextServicesManager) this.mTextView.getContext().getSystemService(Context.TEXT_SERVICES_MANAGER_SERVICE);
        this.mTextServicesManager = textServicesManager;
        if (!textServicesManager.isSpellCheckerEnabled() || this.mCurrentLocale == null || this.mTextServicesManager.getCurrentSpellCheckerSubtype(true) == null) {
            this.mSpellCheckerSession = null;
        } else {
            this.mSpellCheckerSession = this.mTextServicesManager.newSpellCheckerSession(null, this.mCurrentLocale, this, false);
            this.mIsSentenceSpellCheckSupported = true;
        }
        for (int i2 = 0; i2 < this.mLength; i2++) {
            this.mIds[i2] = -1;
        }
        this.mLength = 0;
        TextView textView = this.mTextView;
        textView.removeMisspelledSpans((Editable) textView.getText());
        this.mSuggestionSpanCache.evictAll();
    }

    private void scheduleNewSpellCheck() {
        Runnable runnable = this.mSpellRunnable;
        if (runnable == null) {
            this.mSpellRunnable = new Runnable() { // from class: android.widget.SpellChecker.1
                @Override // java.lang.Runnable
                public void run() {
                    int length = SpellChecker.this.mSpellParsers.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        SpellParser spellParser = SpellChecker.this.mSpellParsers[i2];
                        if (!spellParser.isFinished()) {
                            spellParser.parse();
                            return;
                        }
                    }
                }
            };
        } else {
            this.mTextView.removeCallbacks(runnable);
        }
        this.mTextView.postDelayed(this.mSpellRunnable, 400L);
    }

    private void setLocale(Locale locale) {
        this.mCurrentLocale = locale;
        resetSession();
        if (locale != null) {
            this.mWordIterator = new WordIterator(locale);
        }
        this.mTextView.onLocaleChanged();
    }

    public void closeSession() {
        SpellCheckerSession spellCheckerSession = this.mSpellCheckerSession;
        if (spellCheckerSession != null) {
            spellCheckerSession.close();
        }
        int length = this.mSpellParsers.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.mSpellParsers[i2].stop();
        }
        Runnable runnable = this.mSpellRunnable;
        if (runnable != null) {
            this.mTextView.removeCallbacks(runnable);
        }
    }

    @Override // android.view.textservice.SpellCheckerSession.SpellCheckerSessionListener
    public void onGetSentenceSuggestions(SentenceSuggestionsInfo[] sentenceSuggestionsInfoArr) {
        Editable editable = (Editable) this.mTextView.getText();
        for (SentenceSuggestionsInfo sentenceSuggestionsInfo : sentenceSuggestionsInfoArr) {
            if (sentenceSuggestionsInfo != null) {
                SpellCheckSpan spellCheckSpan = null;
                for (int i2 = 0; i2 < sentenceSuggestionsInfo.getSuggestionsCount(); i2++) {
                    SuggestionsInfo suggestionsInfoAt = sentenceSuggestionsInfo.getSuggestionsInfoAt(i2);
                    if (suggestionsInfoAt != null) {
                        SpellCheckSpan spellCheckSpanOnGetSuggestionsInternal = onGetSuggestionsInternal(suggestionsInfoAt, sentenceSuggestionsInfo.getOffsetAt(i2), sentenceSuggestionsInfo.getLengthAt(i2));
                        if (spellCheckSpan == null && spellCheckSpanOnGetSuggestionsInternal != null) {
                            spellCheckSpan = spellCheckSpanOnGetSuggestionsInternal;
                        }
                    }
                }
                if (spellCheckSpan != null) {
                    editable.removeSpan(spellCheckSpan);
                }
            }
        }
        scheduleNewSpellCheck();
    }

    @Override // android.view.textservice.SpellCheckerSession.SpellCheckerSessionListener
    public void onGetSuggestions(SuggestionsInfo[] suggestionsInfoArr) {
        Editable editable = (Editable) this.mTextView.getText();
        for (SuggestionsInfo suggestionsInfo : suggestionsInfoArr) {
            SpellCheckSpan spellCheckSpanOnGetSuggestionsInternal = onGetSuggestionsInternal(suggestionsInfo, -1, -1);
            if (spellCheckSpanOnGetSuggestionsInternal != null) {
                editable.removeSpan(spellCheckSpanOnGetSuggestionsInternal);
            }
        }
        scheduleNewSpellCheck();
    }

    public void onSelectionChanged() {
        spellCheck();
    }

    public void onSpellCheckSpanRemoved(SpellCheckSpan spellCheckSpan) {
        for (int i2 = 0; i2 < this.mLength; i2++) {
            if (this.mSpellCheckSpans[i2] == spellCheckSpan) {
                this.mIds[i2] = -1;
                return;
            }
        }
    }

    public void spellCheck(int i2, int i3) {
        Locale locale;
        Locale spellCheckerLocale = this.mTextView.getSpellCheckerLocale();
        boolean zIsSessionActive = isSessionActive();
        if (spellCheckerLocale == null || (locale = this.mCurrentLocale) == null || !locale.equals(spellCheckerLocale)) {
            setLocale(spellCheckerLocale);
            i3 = this.mTextView.getText().length();
            i2 = 0;
        } else if (zIsSessionActive != this.mTextServicesManager.isSpellCheckerEnabled()) {
            resetSession();
        }
        if (zIsSessionActive) {
            int length = this.mSpellParsers.length;
            for (int i4 = 0; i4 < length; i4++) {
                SpellParser spellParser = this.mSpellParsers[i4];
                if (spellParser.isFinished()) {
                    spellParser.parse(i2, i3);
                    return;
                }
            }
            SpellParser[] spellParserArr = new SpellParser[length + 1];
            System.arraycopy(this.mSpellParsers, 0, spellParserArr, 0, length);
            this.mSpellParsers = spellParserArr;
            SpellParser spellParser2 = new SpellParser();
            this.mSpellParsers[length] = spellParser2;
            spellParser2.parse(i2, i3);
        }
    }

    public class SpellParser {
        private Object mRange;

        private SpellParser() {
            this.mRange = new Object();
        }

        private void removeRangeSpan(Editable editable) {
            editable.removeSpan(this.mRange);
        }

        private <T> void removeSpansAt(Editable editable, int i2, T[] tArr) {
            for (T t2 : tArr) {
                if (editable.getSpanStart(t2) <= i2 && editable.getSpanEnd(t2) >= i2) {
                    editable.removeSpan(t2);
                }
            }
        }

        private void setRangeSpan(Editable editable, int i2, int i3) {
            editable.setSpan(this.mRange, i2, i3, 33);
        }

        public boolean isFinished() {
            return ((Editable) SpellChecker.this.mTextView.getText()).getSpanStart(this.mRange) < 0;
        }

        public void parse(int i2, int i3) {
            int length = SpellChecker.this.mTextView.length();
            if (i3 > length) {
                Log.w(SpellChecker.TAG, "Parse invalid region, from " + i2 + " to " + i3);
                i3 = length;
            }
            if (i3 > i2) {
                setRangeSpan((Editable) SpellChecker.this.mTextView.getText(), i2, i3);
                parse();
            }
        }

        public void stop() {
            removeRangeSpan((Editable) SpellChecker.this.mTextView.getText());
        }

        public void parse() {
            int spanStart;
            int end;
            int iPreceding;
            boolean z2;
            Editable editable = (Editable) SpellChecker.this.mTextView.getText();
            int i2 = 50;
            boolean z3 = false;
            if (SpellChecker.this.mIsSentenceSpellCheckSupported) {
                spanStart = Math.max(0, editable.getSpanStart(this.mRange) - 50);
            } else {
                spanStart = editable.getSpanStart(this.mRange);
            }
            int spanEnd = editable.getSpanEnd(this.mRange);
            int iMin = Math.min(spanEnd, spanStart + SpellChecker.WORD_ITERATOR_INTERVAL);
            SpellChecker.this.mWordIterator.setCharSequence(editable, spanStart, iMin);
            int iPreceding2 = SpellChecker.this.mWordIterator.preceding(spanStart);
            if (iPreceding2 == -1) {
                end = SpellChecker.this.mWordIterator.following(spanStart);
                if (end != -1) {
                    iPreceding2 = SpellChecker.this.mWordIterator.getBeginning(end);
                }
            } else {
                end = SpellChecker.this.mWordIterator.getEnd(iPreceding2);
            }
            if (end == -1) {
                removeRangeSpan(editable);
                return;
            }
            int i3 = spanStart - 1;
            int i4 = spanEnd + 1;
            SpellCheckSpan[] spellCheckSpanArr = (SpellCheckSpan[]) editable.getSpans(i3, i4, SpellCheckSpan.class);
            SuggestionSpan[] suggestionSpanArr = (SuggestionSpan[]) editable.getSpans(i3, i4, SuggestionSpan.class);
            if (!SpellChecker.this.mIsSentenceSpellCheckSupported) {
                int i5 = 0;
                while (true) {
                    if (iPreceding2 <= spanEnd) {
                        if (end >= spanStart && end > iPreceding2) {
                            if (i5 >= i2) {
                                iPreceding = iPreceding2;
                                z3 = true;
                                break;
                            }
                            if (iPreceding2 < spanStart && end > spanStart) {
                                removeSpansAt(editable, spanStart, spellCheckSpanArr);
                                removeSpansAt(editable, spanStart, suggestionSpanArr);
                            }
                            if (iPreceding2 < spanEnd && end > spanEnd) {
                                removeSpansAt(editable, spanEnd, spellCheckSpanArr);
                                removeSpansAt(editable, spanEnd, suggestionSpanArr);
                            }
                            if (end != spanStart) {
                                z2 = true;
                                break;
                            }
                            int i6 = 0;
                            while (true) {
                                if (i6 >= spellCheckSpanArr.length) {
                                    z2 = true;
                                    break;
                                } else {
                                    if (editable.getSpanEnd(spellCheckSpanArr[i6]) == spanStart) {
                                        z2 = false;
                                        break;
                                    }
                                    i6++;
                                }
                            }
                            if (iPreceding2 == spanEnd) {
                                for (SpellCheckSpan spellCheckSpan : spellCheckSpanArr) {
                                    if (editable.getSpanStart(spellCheckSpan) == spanEnd) {
                                        z2 = false;
                                        break;
                                    }
                                }
                            }
                            if (z2) {
                                SpellChecker.this.addSpellCheckSpan(editable, iPreceding2, end);
                            }
                            i5++;
                        }
                        int iFollowing = SpellChecker.this.mWordIterator.following(end);
                        if (iMin >= spanEnd || (iFollowing != -1 && iFollowing < iMin)) {
                            end = iFollowing;
                        } else {
                            int iMin2 = Math.min(spanEnd, end + SpellChecker.WORD_ITERATOR_INTERVAL);
                            SpellChecker.this.mWordIterator.setCharSequence(editable, end, iMin2);
                            end = SpellChecker.this.mWordIterator.following(end);
                            iMin = iMin2;
                        }
                        if (end != -1 && (iPreceding2 = SpellChecker.this.mWordIterator.getBeginning(end)) != -1) {
                            i2 = 50;
                        }
                    }
                    iPreceding = iPreceding2;
                    break;
                }
            } else {
                boolean z4 = iMin < spanEnd;
                iPreceding = SpellChecker.this.mWordIterator.preceding(iMin);
                boolean z5 = iPreceding != -1;
                if (z5) {
                    iPreceding = SpellChecker.this.mWordIterator.getEnd(iPreceding);
                    z5 = iPreceding != -1;
                }
                if (!z5) {
                    removeRangeSpan(editable);
                    return;
                }
                int i7 = 0;
                while (true) {
                    if (i7 >= SpellChecker.this.mLength) {
                        z3 = true;
                        break;
                    }
                    SpellCheckSpan spellCheckSpan2 = SpellChecker.this.mSpellCheckSpans[i7];
                    if (SpellChecker.this.mIds[i7] >= 0 && !spellCheckSpan2.isSpellCheckInProgress()) {
                        int spanStart2 = editable.getSpanStart(spellCheckSpan2);
                        int spanEnd2 = editable.getSpanEnd(spellCheckSpan2);
                        if (spanEnd2 >= iPreceding2 && iPreceding >= spanStart2) {
                            if (spanStart2 <= iPreceding2 && iPreceding <= spanEnd2) {
                                break;
                            }
                            editable.removeSpan(spellCheckSpan2);
                            iPreceding2 = Math.min(spanStart2, iPreceding2);
                            iPreceding = Math.max(spanEnd2, iPreceding);
                        }
                    }
                    i7++;
                }
                if (iPreceding >= spanStart) {
                    if (iPreceding <= iPreceding2) {
                        Log.w(SpellChecker.TAG, "Trying to spellcheck invalid region, from " + spanStart + " to " + spanEnd);
                    } else if (z3) {
                        SpellChecker.this.addSpellCheckSpan(editable, iPreceding2, iPreceding);
                    }
                }
                z3 = z4;
            }
            if (z3 && iPreceding <= spanEnd) {
                setRangeSpan(editable, iPreceding, spanEnd);
            } else {
                removeRangeSpan(editable);
            }
            SpellChecker.this.spellCheck();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void spellCheck() {
        if (this.mSpellCheckerSession == null) {
            return;
        }
        Editable editable = (Editable) this.mTextView.getText();
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        int i2 = this.mLength;
        TextInfo[] textInfoArr = new TextInfo[i2];
        int i3 = 0;
        for (int i4 = 0; i4 < this.mLength; i4++) {
            SpellCheckSpan spellCheckSpan = this.mSpellCheckSpans[i4];
            if (this.mIds[i4] >= 0 && !spellCheckSpan.isSpellCheckInProgress()) {
                int spanStart = editable.getSpanStart(spellCheckSpan);
                int spanEnd = editable.getSpanEnd(spellCheckSpan);
                boolean z2 = !this.mIsSentenceSpellCheckSupported ? !(selectionEnd < spanStart || selectionStart > spanEnd) : !(selectionEnd <= spanStart || selectionStart > spanEnd);
                if (spanStart >= 0 && spanEnd > spanStart && z2) {
                    String strSubstring = editable instanceof SpannableStringBuilder ? ((SpannableStringBuilder) editable).substring(spanStart, spanEnd) : editable.subSequence(spanStart, spanEnd).toString();
                    spellCheckSpan.setSpellCheckInProgress(true);
                    textInfoArr[i3] = new TextInfo(strSubstring, this.mCookie, this.mIds[i4]);
                    i3++;
                }
            }
        }
        if (i3 > 0) {
            if (i3 < i2) {
                TextInfo[] textInfoArr2 = new TextInfo[i3];
                System.arraycopy(textInfoArr, 0, textInfoArr2, 0, i3);
                textInfoArr = textInfoArr2;
            }
            if (this.mIsSentenceSpellCheckSupported) {
                this.mSpellCheckerSession.getSentenceSuggestions(textInfoArr, 5);
            } else {
                this.mSpellCheckerSession.getSuggestions(textInfoArr, 5, false);
            }
        }
    }
}
