package android.widget;

import android.app.ActivityManager;
import android.os.AsyncTask;
import android.os.LocaleList;
import android.provider.Telephony;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextUtils;
import android.util.Log;
import android.view.ActionMode;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassifier;
import android.view.textclassifier.TextSelection;
import android.view.textclassifier.logging.SmartSelectionEventTracker;
import com.android.internal.util.Preconditions;
import java.text.BreakIterator;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Supplier;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
final class SelectionActionModeHelper {
    private static final String LOG_TAG = "SelectActionModeHelper";
    private final Editor mEditor;
    private final SelectionTracker mSelectionTracker;
    private TextClassification mTextClassification;
    private AsyncTask mTextClassificationAsyncTask;
    private final TextClassificationHelper mTextClassificationHelper;
    private final TextView mTextView;

    public static final class SelectionMetricsLogger {
        private static final String LOG_TAG = "SelectionMetricsLogger";
        private static final Pattern PATTERN_WHITESPACE = Pattern.compile("\\s+");
        private final SmartSelectionEventTracker mDelegate;
        private final boolean mEditTextLogger;
        private int mStartIndex;
        private String mText;
        private final BreakIterator mWordIterator;

        public SelectionMetricsLogger(TextView textView) {
            Preconditions.checkNotNull(textView);
            this.mDelegate = new SmartSelectionEventTracker(textView.getContext(), textView.isTextEditable() ? 3 : 1);
            this.mEditTextLogger = textView.isTextEditable();
            this.mWordIterator = BreakIterator.getWordInstance(textView.getTextLocale());
        }

        private int countWordsBackward(int i2) {
            int i3 = 0;
            Preconditions.checkArgument(i2 >= this.mStartIndex);
            while (i2 > this.mStartIndex) {
                int iPreceding = this.mWordIterator.preceding(i2);
                if (!isWhitespace(iPreceding, i2)) {
                    i3++;
                }
                i2 = iPreceding;
            }
            return i3;
        }

        private int countWordsForward(int i2) {
            int i3 = 0;
            Preconditions.checkArgument(i2 <= this.mStartIndex);
            while (i2 < this.mStartIndex) {
                int iFollowing = this.mWordIterator.following(i2);
                if (!isWhitespace(i2, iFollowing)) {
                    i3++;
                }
                i2 = iFollowing;
            }
            return i3;
        }

        private int[] getWordDelta(int i2, int i3) {
            int[] iArr = new int[2];
            int i4 = this.mStartIndex;
            if (i2 == i4) {
                iArr[0] = 0;
            } else if (i2 < i4) {
                iArr[0] = -countWordsForward(i2);
            } else {
                iArr[0] = countWordsBackward(i2);
                if (!this.mWordIterator.isBoundary(i2) && !isWhitespace(this.mWordIterator.preceding(i2), this.mWordIterator.following(i2))) {
                    iArr[0] = iArr[0] - 1;
                }
            }
            int i5 = this.mStartIndex;
            if (i3 == i5) {
                iArr[1] = 0;
            } else if (i3 < i5) {
                iArr[1] = -countWordsForward(i3);
            } else {
                iArr[1] = countWordsBackward(i3);
            }
            return iArr;
        }

        private boolean isWhitespace(int i2, int i3) {
            return PATTERN_WHITESPACE.matcher(this.mText.substring(i2, i3)).matches();
        }

        public boolean isEditTextLogger() {
            return this.mEditTextLogger;
        }

        public void logSelectionAction(int i2, int i3, int i4, TextClassification textClassification) {
            try {
                Preconditions.checkArgumentInRange(i2, 0, this.mText.length(), Telephony.BaseMmsColumns.START);
                Preconditions.checkArgumentInRange(i3, i2, this.mText.length(), "end");
                int[] wordDelta = getWordDelta(i2, i3);
                if (textClassification != null) {
                    this.mDelegate.logEvent(SmartSelectionEventTracker.SelectionEvent.selectionAction(wordDelta[0], wordDelta[1], i4, textClassification));
                } else {
                    this.mDelegate.logEvent(SmartSelectionEventTracker.SelectionEvent.selectionAction(wordDelta[0], wordDelta[1], i4));
                }
            } catch (Exception e2) {
                Log.d(LOG_TAG, e2.getMessage());
            }
        }

        public void logSelectionModified(int i2, int i3, TextClassification textClassification, TextSelection textSelection) {
            try {
                Preconditions.checkArgumentInRange(i2, 0, this.mText.length(), Telephony.BaseMmsColumns.START);
                Preconditions.checkArgumentInRange(i3, i2, this.mText.length(), "end");
                int[] wordDelta = getWordDelta(i2, i3);
                if (textSelection != null) {
                    this.mDelegate.logEvent(SmartSelectionEventTracker.SelectionEvent.selectionModified(wordDelta[0], wordDelta[1], textSelection));
                } else if (textClassification != null) {
                    this.mDelegate.logEvent(SmartSelectionEventTracker.SelectionEvent.selectionModified(wordDelta[0], wordDelta[1], textClassification));
                } else {
                    this.mDelegate.logEvent(SmartSelectionEventTracker.SelectionEvent.selectionModified(wordDelta[0], wordDelta[1]));
                }
            } catch (Exception e2) {
                Log.d(LOG_TAG, e2.getMessage());
            }
        }

        public void logSelectionStarted(CharSequence charSequence, int i2) {
            try {
                Preconditions.checkNotNull(charSequence);
                Preconditions.checkArgumentInRange(i2, 0, charSequence.length(), "index");
                String str = this.mText;
                if (str == null || !str.contentEquals(charSequence)) {
                    this.mText = charSequence.toString();
                }
                this.mWordIterator.setText(this.mText);
                this.mStartIndex = i2;
                this.mDelegate.logEvent(SmartSelectionEventTracker.SelectionEvent.selectionStarted(0));
            } catch (Exception e2) {
                Log.d(LOG_TAG, e2.getMessage());
            }
        }
    }

    public static final class SelectionResult {
        private final TextClassification mClassification;
        private final int mEnd;
        private final TextSelection mSelection;
        private final int mStart;

        public SelectionResult(int i2, int i3, TextClassification textClassification, TextSelection textSelection) {
            this.mStart = i2;
            this.mEnd = i3;
            this.mClassification = (TextClassification) Preconditions.checkNotNull(textClassification);
            this.mSelection = textSelection;
        }
    }

    public static final class SelectionTracker {
        private boolean mAllowReset;
        private final LogAbandonRunnable mDelayedLogAbandon = new LogAbandonRunnable();
        private SelectionMetricsLogger mLogger;
        private int mOriginalEnd;
        private int mOriginalStart;
        private int mSelectionEnd;
        private int mSelectionStart;
        private final TextView mTextView;

        public final class LogAbandonRunnable implements Runnable {
            private boolean mIsPending;

            private LogAbandonRunnable() {
            }

            public void flush() {
                SelectionTracker.this.mTextView.removeCallbacks(this);
                run();
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.mIsPending) {
                    SelectionTracker.this.mLogger.logSelectionAction(SelectionTracker.this.mSelectionStart, SelectionTracker.this.mSelectionEnd, 107, null);
                    SelectionTracker selectionTracker = SelectionTracker.this;
                    selectionTracker.mSelectionStart = selectionTracker.mSelectionEnd = -1;
                    this.mIsPending = false;
                }
            }

            public void schedule(int i2) {
                if (this.mIsPending) {
                    Log.e(SelectionActionModeHelper.LOG_TAG, "Force flushing abandon due to new scheduling request");
                    flush();
                }
                this.mIsPending = true;
                SelectionTracker.this.mTextView.postDelayed(this, i2);
            }
        }

        public SelectionTracker(TextView textView) {
            this.mTextView = (TextView) Preconditions.checkNotNull(textView);
            this.mLogger = new SelectionMetricsLogger(textView);
        }

        private boolean isSelectionStarted() {
            int i2;
            int i3 = this.mSelectionStart;
            return i3 >= 0 && (i2 = this.mSelectionEnd) >= 0 && i3 != i2;
        }

        private void maybeInvalidateLogger() {
            if (this.mLogger.isEditTextLogger() != this.mTextView.isTextEditable()) {
                this.mLogger = new SelectionMetricsLogger(this.mTextView);
            }
        }

        public void onOriginalSelection(CharSequence charSequence, int i2, int i3) {
            this.mDelayedLogAbandon.flush();
            this.mSelectionStart = i2;
            this.mOriginalStart = i2;
            this.mSelectionEnd = i3;
            this.mOriginalEnd = i3;
            this.mAllowReset = false;
            maybeInvalidateLogger();
            this.mLogger.logSelectionStarted(charSequence, i2);
        }

        public void onSelectionAction(int i2, int i3, int i4, TextClassification textClassification) {
            if (isSelectionStarted()) {
                this.mAllowReset = false;
                this.mLogger.logSelectionAction(i2, i3, i4, textClassification);
            }
        }

        public void onSelectionDestroyed() {
            this.mAllowReset = false;
            this.mDelayedLogAbandon.schedule(100);
        }

        public void onSelectionUpdated(int i2, int i3, TextClassification textClassification) {
            if (isSelectionStarted()) {
                this.mSelectionStart = i2;
                this.mSelectionEnd = i3;
                this.mAllowReset = false;
                this.mLogger.logSelectionModified(i2, i3, textClassification, null);
            }
        }

        public void onSmartSelection(SelectionResult selectionResult) {
            if (isSelectionStarted()) {
                this.mSelectionStart = selectionResult.mStart;
                int i2 = selectionResult.mEnd;
                this.mSelectionEnd = i2;
                this.mAllowReset = (this.mSelectionStart == this.mOriginalStart && i2 == this.mOriginalEnd) ? false : true;
                this.mLogger.logSelectionModified(selectionResult.mStart, selectionResult.mEnd, selectionResult.mClassification, selectionResult.mSelection);
            }
        }

        public void onTextChanged(int i2, int i3, TextClassification textClassification) {
            if (isSelectionStarted() && i2 == this.mSelectionStart && i3 == this.mSelectionEnd) {
                onSelectionAction(i2, i3, 100, textClassification);
            }
        }

        public boolean resetSelection(int i2, Editor editor) {
            TextView textView = editor.getTextView();
            if (!isSelectionStarted() || !this.mAllowReset || i2 < this.mSelectionStart || i2 > this.mSelectionEnd || !(SelectionActionModeHelper.getText(textView) instanceof Spannable)) {
                return false;
            }
            this.mAllowReset = false;
            boolean zSelectCurrentWord = editor.selectCurrentWord();
            if (zSelectCurrentWord) {
                this.mSelectionStart = editor.getTextView().getSelectionStart();
                this.mSelectionEnd = editor.getTextView().getSelectionEnd();
                this.mLogger.logSelectionAction(textView.getSelectionStart(), textView.getSelectionEnd(), 201, null);
            }
            return zSelectCurrentWord;
        }
    }

    public static final class TextClassificationAsyncTask extends AsyncTask<Void, Void, SelectionResult> {
        private final String mOriginalText;
        private final Consumer<SelectionResult> mSelectionResultCallback;
        private final Supplier<SelectionResult> mSelectionResultSupplier;
        private final TextView mTextView;
        private final long mTimeOutDuration;

        public TextClassificationAsyncTask(TextView textView, long j2, Supplier<SelectionResult> supplier, Consumer<SelectionResult> consumer) {
            super(textView != null ? textView.getHandler() : null);
            TextView textView2 = (TextView) Preconditions.checkNotNull(textView);
            this.mTextView = textView2;
            this.mTimeOutDuration = j2;
            this.mSelectionResultSupplier = d.f(Preconditions.checkNotNull(supplier));
            this.mSelectionResultCallback = d.e(Preconditions.checkNotNull(consumer));
            this.mOriginalText = SelectionActionModeHelper.getText(textView2).toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onTimeOut() {
            if (getStatus() == AsyncTask.Status.RUNNING) {
                onPostExecute((SelectionResult) null);
            }
            cancel(true);
        }

        @Override // android.os.AsyncTask
        public SelectionResult doInBackground(Void... voidArr) {
            f fVar = new f(this, 2);
            this.mTextView.postDelayed(fVar, this.mTimeOutDuration);
            SelectionResult selectionResult = (SelectionResult) this.mSelectionResultSupplier.get();
            this.mTextView.removeCallbacks(fVar);
            return selectionResult;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(SelectionResult selectionResult) {
            if (!TextUtils.equals(this.mOriginalText, SelectionActionModeHelper.getText(this.mTextView))) {
                selectionResult = null;
            }
            this.mSelectionResultCallback.accept(selectionResult);
        }
    }

    public static final class TextClassificationHelper {
        private static final int TRIM_DELTA = 120;
        private boolean mHot;
        private LocaleList mLastClassificationLocales;
        private SelectionResult mLastClassificationResult;
        private int mLastClassificationSelectionEnd;
        private int mLastClassificationSelectionStart;
        private CharSequence mLastClassificationText;
        private LocaleList mLocales;
        private int mRelativeEnd;
        private int mRelativeStart;
        private int mSelectionEnd;
        private int mSelectionStart;
        private String mText;
        private TextClassifier mTextClassifier;
        private int mTrimStart;
        private CharSequence mTrimmedText;

        public TextClassificationHelper(TextClassifier textClassifier, CharSequence charSequence, int i2, int i3, LocaleList localeList) {
            init(textClassifier, charSequence, i2, i3, localeList);
        }

        private SelectionResult performClassification(TextSelection textSelection) {
            if (!Objects.equals(this.mText, this.mLastClassificationText) || this.mSelectionStart != this.mLastClassificationSelectionStart || this.mSelectionEnd != this.mLastClassificationSelectionEnd || !Objects.equals(this.mLocales, this.mLastClassificationLocales)) {
                this.mLastClassificationText = this.mText;
                this.mLastClassificationSelectionStart = this.mSelectionStart;
                this.mLastClassificationSelectionEnd = this.mSelectionEnd;
                this.mLastClassificationLocales = this.mLocales;
                trimText();
                this.mLastClassificationResult = new SelectionResult(this.mSelectionStart, this.mSelectionEnd, this.mTextClassifier.classifyText(this.mTrimmedText, this.mRelativeStart, this.mRelativeEnd, this.mLocales), textSelection);
            }
            return this.mLastClassificationResult;
        }

        private void trimText() {
            this.mTrimStart = Math.max(0, this.mSelectionStart - 120);
            this.mTrimmedText = this.mText.subSequence(this.mTrimStart, Math.min(this.mText.length(), this.mSelectionEnd + 120));
            int i2 = this.mSelectionStart;
            int i3 = this.mTrimStart;
            this.mRelativeStart = i2 - i3;
            this.mRelativeEnd = this.mSelectionEnd - i3;
        }

        public SelectionResult classifyText() {
            this.mHot = true;
            return performClassification(null);
        }

        public long getTimeoutDuration() {
            return this.mHot ? 200L : 500L;
        }

        public void init(TextClassifier textClassifier, CharSequence charSequence, int i2, int i3, LocaleList localeList) {
            this.mTextClassifier = (TextClassifier) Preconditions.checkNotNull(textClassifier);
            this.mText = ((CharSequence) Preconditions.checkNotNull(charSequence)).toString();
            this.mLastClassificationText = null;
            Preconditions.checkArgument(i3 > i2);
            this.mSelectionStart = i2;
            this.mSelectionEnd = i3;
            this.mLocales = localeList;
        }

        public SelectionResult suggestSelection() {
            this.mHot = true;
            trimText();
            TextSelection textSelectionSuggestSelection = this.mTextClassifier.suggestSelection(this.mTrimmedText, this.mRelativeStart, this.mRelativeEnd, this.mLocales);
            if (!this.mTextClassifier.getSettings().isDarkLaunch()) {
                this.mSelectionStart = Math.max(0, textSelectionSuggestSelection.getSelectionStartIndex() + this.mTrimStart);
                this.mSelectionEnd = Math.min(this.mText.length(), textSelectionSuggestSelection.getSelectionEndIndex() + this.mTrimStart);
            }
            return performClassification(textSelectionSuggestSelection);
        }
    }

    public SelectionActionModeHelper(Editor editor) {
        Editor editor2 = (Editor) Preconditions.checkNotNull(editor);
        this.mEditor = editor2;
        TextView textView = editor2.getTextView();
        this.mTextView = textView;
        this.mTextClassificationHelper = new TextClassificationHelper(textView.getTextClassifier(), getText(textView), 0, 1, textView.getTextLocales());
        this.mSelectionTracker = new SelectionTracker(textView);
    }

    private void cancelAsyncTask() {
        AsyncTask asyncTask = this.mTextClassificationAsyncTask;
        if (asyncTask != null) {
            asyncTask.cancel(true);
            this.mTextClassificationAsyncTask = null;
        }
        this.mTextClassification = null;
    }

    private static int getActionType(int i2) {
        if (i2 == 16908337) {
            return 102;
        }
        if (i2 == 16908341) {
            return 104;
        }
        if (i2 == 16908353) {
            return 105;
        }
        switch (i2) {
            case 16908319:
                return 200;
            case 16908320:
                return 103;
            case 16908321:
                return 101;
            case 16908322:
                return 102;
            default:
                return 108;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CharSequence getText(TextView textView) {
        CharSequence text = textView.getText();
        return text != null ? text : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateActionMode(SelectionResult selectionResult) {
        this.mTextClassification = selectionResult != null ? selectionResult.mClassification : null;
        ActionMode textActionMode = this.mEditor.getTextActionMode();
        if (textActionMode != null) {
            textActionMode.invalidate();
        }
        this.mSelectionTracker.onSelectionUpdated(this.mTextView.getSelectionStart(), this.mTextView.getSelectionEnd(), this.mTextClassification);
        this.mTextClassificationAsyncTask = null;
    }

    private void resetTextClassificationHelper() {
        this.mTextClassificationHelper.init(this.mTextView.getTextClassifier(), getText(this.mTextView), this.mTextView.getSelectionStart(), this.mTextView.getSelectionEnd(), this.mTextView.getTextLocales());
    }

    private boolean skipTextClassification() {
        return (this.mTextView.getTextClassifier() == TextClassifier.NO_OP) || (this.mTextView.getSelectionEnd() == this.mTextView.getSelectionStart()) || (this.mTextView.hasPasswordTransformationMethod() || TextView.isPasswordInputType(this.mTextView.getInputType()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startActionMode(SelectionResult selectionResult) {
        CharSequence text = getText(this.mTextView);
        if (selectionResult == null || !(text instanceof Spannable)) {
            this.mTextClassification = null;
        } else {
            if (!this.mTextView.getTextClassifier().getSettings().isDarkLaunch()) {
                Selection.setSelection((Spannable) text, selectionResult.mStart, selectionResult.mEnd);
            }
            this.mTextClassification = selectionResult.mClassification;
        }
        if (this.mEditor.startSelectionActionModeInternal()) {
            Editor.SelectionModifierCursorController selectionController = this.mEditor.getSelectionController();
            if (selectionController != null) {
                selectionController.show();
            }
            if (selectionResult != null) {
                this.mSelectionTracker.onSmartSelection(selectionResult);
            }
        }
        this.mEditor.setRestartActionModeOnNextRefresh(false);
        this.mTextClassificationAsyncTask = null;
    }

    public TextClassification getTextClassification() {
        return this.mTextClassification;
    }

    public void invalidateActionModeAsync() {
        cancelAsyncTask();
        if (skipTextClassification()) {
            invalidateActionMode(null);
            return;
        }
        resetTextClassificationHelper();
        TextView textView = this.mTextView;
        long timeoutDuration = this.mTextClassificationHelper.getTimeoutDuration();
        TextClassificationHelper textClassificationHelper = this.mTextClassificationHelper;
        textClassificationHelper.getClass();
        this.mTextClassificationAsyncTask = new TextClassificationAsyncTask(textView, timeoutDuration, new k(textClassificationHelper, 2), new l(this, 1)).execute(new Void[0]);
    }

    public void onDestroyActionMode() {
        this.mSelectionTracker.onSelectionDestroyed();
        cancelAsyncTask();
    }

    public void onSelectionAction(int i2) {
        this.mSelectionTracker.onSelectionAction(this.mTextView.getSelectionStart(), this.mTextView.getSelectionEnd(), getActionType(i2), this.mTextClassification);
    }

    public void onSelectionDrag() {
        this.mSelectionTracker.onSelectionAction(this.mTextView.getSelectionStart(), this.mTextView.getSelectionEnd(), 106, this.mTextClassification);
    }

    public void onTextChanged(int i2, int i3) {
        this.mSelectionTracker.onTextChanged(i2, i3, this.mTextClassification);
    }

    public boolean resetSelection(int i2) {
        if (!this.mSelectionTracker.resetSelection(i2, this.mEditor)) {
            return false;
        }
        invalidateActionModeAsync();
        return true;
    }

    public void startActionModeAsync(boolean z2) {
        k kVar;
        int i2 = 1;
        int i3 = 0;
        boolean z3 = z2 & (!this.mTextView.isTextEditable() || this.mTextView.getTextClassifier().getSettings().isSuggestSelectionEnabledForEditableText());
        this.mSelectionTracker.onOriginalSelection(getText(this.mTextView), this.mTextView.getSelectionStart(), this.mTextView.getSelectionEnd());
        cancelAsyncTask();
        if (skipTextClassification()) {
            startActionMode(null);
            return;
        }
        try {
            resetTextClassificationHelper();
        } catch (IllegalArgumentException e2) {
            if (!ActivityManager.isUserAMonkey()) {
                throw e2;
            }
            e2.printStackTrace();
        }
        TextView textView = this.mTextView;
        long timeoutDuration = this.mTextClassificationHelper.getTimeoutDuration();
        if (z3) {
            TextClassificationHelper textClassificationHelper = this.mTextClassificationHelper;
            textClassificationHelper.getClass();
            kVar = new k(textClassificationHelper, i3);
        } else {
            TextClassificationHelper textClassificationHelper2 = this.mTextClassificationHelper;
            textClassificationHelper2.getClass();
            kVar = new k(textClassificationHelper2, i2);
        }
        this.mTextClassificationAsyncTask = new TextClassificationAsyncTask(textView, timeoutDuration, kVar, new l(this, i3)).execute(new Void[0]);
    }
}
