package android.media;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuperscriptSpan;
import android.text.style.UnderlineSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.CaptioningManager;
import android.widget.RelativeLayout;
import com.android.internal.widget.SubtitleView;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class Cea708CCWidget extends ClosedCaptionWidget implements Cea708CCParser.DisplayListener {
    private final CCHandler mCCHandler;

    public static class CCHandler implements Handler.Callback {
        private static final int CAPTION_ALL_WINDOWS_BITMAP = 255;
        private static final long CAPTION_CLEAR_INTERVAL_MS = 60000;
        private static final int CAPTION_WINDOWS_MAX = 8;
        private static final boolean DEBUG = false;
        private static final int MSG_CAPTION_CLEAR = 2;
        private static final int MSG_DELAY_CANCEL = 1;
        private static final String TAG = "CCHandler";
        private static final int TENTHS_OF_SECOND_IN_MILLIS = 100;
        private final CCLayout mCCLayout;
        private CCWindowLayout mCurrentWindowLayout;
        private boolean mIsDelayed = false;
        private final CCWindowLayout[] mCaptionWindowLayouts = new CCWindowLayout[8];
        private final ArrayList<Cea708CCParser.CaptionEvent> mPendingCaptionEvents = new ArrayList<>();
        private final Handler mHandler = new Handler(this);

        public CCHandler(CCLayout cCLayout) {
            this.mCCLayout = cCLayout;
        }

        private void clearWindows(int i2) {
            if (i2 == 0) {
                return;
            }
            Iterator<CCWindowLayout> it = getWindowsFromBitmap(i2).iterator();
            while (it.hasNext()) {
                it.next().clear();
            }
        }

        private void defineWindow(Cea708CCParser.CaptionWindow captionWindow) {
            int i2;
            if (captionWindow != null && (i2 = captionWindow.id) >= 0) {
                CCWindowLayout[] cCWindowLayoutArr = this.mCaptionWindowLayouts;
                if (i2 >= cCWindowLayoutArr.length) {
                    return;
                }
                CCWindowLayout cCWindowLayout = cCWindowLayoutArr[i2];
                if (cCWindowLayout == null) {
                    cCWindowLayout = new CCWindowLayout(this.mCCLayout.getContext());
                }
                cCWindowLayout.initWindow(this.mCCLayout, captionWindow);
                this.mCaptionWindowLayouts[i2] = cCWindowLayout;
                this.mCurrentWindowLayout = cCWindowLayout;
            }
        }

        private void delay(int i2) {
            if (i2 < 0 || i2 > 255) {
                return;
            }
            this.mIsDelayed = true;
            Handler handler = this.mHandler;
            handler.sendMessageDelayed(handler.obtainMessage(1), i2 * 100);
        }

        private void delayCancel() {
            this.mIsDelayed = false;
            processPendingBuffer();
        }

        private void deleteWindows(int i2) {
            if (i2 == 0) {
                return;
            }
            for (CCWindowLayout cCWindowLayout : getWindowsFromBitmap(i2)) {
                cCWindowLayout.removeFromCaptionView();
                this.mCaptionWindowLayouts[cCWindowLayout.getCaptionWindowId()] = null;
            }
        }

        private void displayWindows(int i2) {
            if (i2 == 0) {
                return;
            }
            Iterator<CCWindowLayout> it = getWindowsFromBitmap(i2).iterator();
            while (it.hasNext()) {
                it.next().show();
            }
        }

        private ArrayList<CCWindowLayout> getWindowsFromBitmap(int i2) {
            CCWindowLayout cCWindowLayout;
            ArrayList<CCWindowLayout> arrayList = new ArrayList<>();
            for (int i3 = 0; i3 < 8; i3++) {
                if (((1 << i3) & i2) != 0 && (cCWindowLayout = this.mCaptionWindowLayouts[i3]) != null) {
                    arrayList.add(cCWindowLayout);
                }
            }
            return arrayList;
        }

        private void hideWindows(int i2) {
            if (i2 == 0) {
                return;
            }
            Iterator<CCWindowLayout> it = getWindowsFromBitmap(i2).iterator();
            while (it.hasNext()) {
                it.next().hide();
            }
        }

        private void processPendingBuffer() {
            Iterator<Cea708CCParser.CaptionEvent> it = this.mPendingCaptionEvents.iterator();
            while (it.hasNext()) {
                processCaptionEvent(it.next());
            }
            this.mPendingCaptionEvents.clear();
        }

        private void sendBufferToCurrentWindow(String str) {
            CCWindowLayout cCWindowLayout = this.mCurrentWindowLayout;
            if (cCWindowLayout != null) {
                cCWindowLayout.sendBuffer(str);
                this.mHandler.removeMessages(2);
                Handler handler = this.mHandler;
                handler.sendMessageDelayed(handler.obtainMessage(2), 60000L);
            }
        }

        private void sendControlToCurrentWindow(char c) {
            CCWindowLayout cCWindowLayout = this.mCurrentWindowLayout;
            if (cCWindowLayout != null) {
                cCWindowLayout.sendControl(c);
            }
        }

        private void setCurrentWindowLayout(int i2) {
            CCWindowLayout cCWindowLayout;
            if (i2 >= 0) {
                CCWindowLayout[] cCWindowLayoutArr = this.mCaptionWindowLayouts;
                if (i2 < cCWindowLayoutArr.length && (cCWindowLayout = cCWindowLayoutArr[i2]) != null) {
                    this.mCurrentWindowLayout = cCWindowLayout;
                }
            }
        }

        private void setPenAttr(Cea708CCParser.CaptionPenAttr captionPenAttr) {
            CCWindowLayout cCWindowLayout = this.mCurrentWindowLayout;
            if (cCWindowLayout != null) {
                cCWindowLayout.setPenAttr(captionPenAttr);
            }
        }

        private void setPenColor(Cea708CCParser.CaptionPenColor captionPenColor) {
            CCWindowLayout cCWindowLayout = this.mCurrentWindowLayout;
            if (cCWindowLayout != null) {
                cCWindowLayout.setPenColor(captionPenColor);
            }
        }

        private void setPenLocation(Cea708CCParser.CaptionPenLocation captionPenLocation) {
            CCWindowLayout cCWindowLayout = this.mCurrentWindowLayout;
            if (cCWindowLayout != null) {
                cCWindowLayout.setPenLocation(captionPenLocation.row, captionPenLocation.column);
            }
        }

        private void setWindowAttr(Cea708CCParser.CaptionWindowAttr captionWindowAttr) {
            CCWindowLayout cCWindowLayout = this.mCurrentWindowLayout;
            if (cCWindowLayout != null) {
                cCWindowLayout.setWindowAttr(captionWindowAttr);
            }
        }

        private void toggleWindows(int i2) {
            if (i2 == 0) {
                return;
            }
            for (CCWindowLayout cCWindowLayout : getWindowsFromBitmap(i2)) {
                if (cCWindowLayout.isShown()) {
                    cCWindowLayout.hide();
                } else {
                    cCWindowLayout.show();
                }
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                delayCancel();
                return true;
            }
            if (i2 != 2) {
                return false;
            }
            clearWindows(255);
            return true;
        }

        public void processCaptionEvent(Cea708CCParser.CaptionEvent captionEvent) {
            if (this.mIsDelayed) {
                this.mPendingCaptionEvents.add(captionEvent);
            }
            switch (captionEvent.type) {
                case 1:
                    sendBufferToCurrentWindow((String) captionEvent.obj);
                    break;
                case 2:
                    sendControlToCurrentWindow(((Character) captionEvent.obj).charValue());
                    break;
                case 3:
                    setCurrentWindowLayout(((Integer) captionEvent.obj).intValue());
                    break;
                case 4:
                    clearWindows(((Integer) captionEvent.obj).intValue());
                    break;
                case 5:
                    displayWindows(((Integer) captionEvent.obj).intValue());
                    break;
                case 6:
                    hideWindows(((Integer) captionEvent.obj).intValue());
                    break;
                case 7:
                    toggleWindows(((Integer) captionEvent.obj).intValue());
                    break;
                case 8:
                    deleteWindows(((Integer) captionEvent.obj).intValue());
                    break;
                case 9:
                    delay(((Integer) captionEvent.obj).intValue());
                    break;
                case 10:
                    delayCancel();
                    break;
                case 11:
                    reset();
                    break;
                case 12:
                    setPenAttr((Cea708CCParser.CaptionPenAttr) captionEvent.obj);
                    break;
                case 13:
                    setPenColor((Cea708CCParser.CaptionPenColor) captionEvent.obj);
                    break;
                case 14:
                    setPenLocation((Cea708CCParser.CaptionPenLocation) captionEvent.obj);
                    break;
                case 15:
                    setWindowAttr((Cea708CCParser.CaptionWindowAttr) captionEvent.obj);
                    break;
                case 16:
                    defineWindow((Cea708CCParser.CaptionWindow) captionEvent.obj);
                    break;
            }
        }

        public void reset() {
            this.mCurrentWindowLayout = null;
            this.mIsDelayed = false;
            this.mPendingCaptionEvents.clear();
            for (int i2 = 0; i2 < 8; i2++) {
                CCWindowLayout cCWindowLayout = this.mCaptionWindowLayouts[i2];
                if (cCWindowLayout != null) {
                    cCWindowLayout.removeFromCaptionView();
                }
                this.mCaptionWindowLayouts[i2] = null;
            }
            this.mCCLayout.setVisibility(4);
            this.mHandler.removeMessages(2);
        }
    }

    public static class CCLayout extends ScaledLayout implements ClosedCaptionWidget.ClosedCaptionLayout {
        private static final float SAFE_TITLE_AREA_SCALE_END_X = 0.9f;
        private static final float SAFE_TITLE_AREA_SCALE_END_Y = 0.9f;
        private static final float SAFE_TITLE_AREA_SCALE_START_X = 0.1f;
        private static final float SAFE_TITLE_AREA_SCALE_START_Y = 0.1f;
        private final ScaledLayout mSafeTitleAreaLayout;

        public CCLayout(Context context) {
            super(context);
            ScaledLayout scaledLayout = new ScaledLayout(context);
            this.mSafeTitleAreaLayout = scaledLayout;
            addView(scaledLayout, new ScaledLayout.ScaledLayoutParams(0.1f, 0.9f, 0.1f, 0.9f));
        }

        public void addOrUpdateViewToSafeTitleArea(CCWindowLayout cCWindowLayout, ScaledLayout.ScaledLayoutParams scaledLayoutParams) {
            if (this.mSafeTitleAreaLayout.indexOfChild(cCWindowLayout) < 0) {
                this.mSafeTitleAreaLayout.addView(cCWindowLayout, scaledLayoutParams);
            } else {
                this.mSafeTitleAreaLayout.updateViewLayout(cCWindowLayout, scaledLayoutParams);
            }
        }

        public void removeViewFromSafeTitleArea(CCWindowLayout cCWindowLayout) {
            this.mSafeTitleAreaLayout.removeView(cCWindowLayout);
        }

        @Override // android.media.ClosedCaptionWidget.ClosedCaptionLayout
        public void setCaptionStyle(CaptioningManager.CaptionStyle captionStyle) {
            int childCount = this.mSafeTitleAreaLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                ((CCWindowLayout) this.mSafeTitleAreaLayout.getChildAt(i2)).setCaptionStyle(captionStyle);
            }
        }

        @Override // android.media.ClosedCaptionWidget.ClosedCaptionLayout
        public void setFontScale(float f2) {
            int childCount = this.mSafeTitleAreaLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                ((CCWindowLayout) this.mSafeTitleAreaLayout.getChildAt(i2)).setFontScale(f2);
            }
        }
    }

    public static class CCView extends SubtitleView {
        private static final CaptioningManager.CaptionStyle DEFAULT_CAPTION_STYLE = CaptioningManager.CaptionStyle.DEFAULT;

        public CCView(Context context) {
            this(context, null);
        }

        public void setCaptionStyle(CaptioningManager.CaptionStyle captionStyle) {
            setForegroundColor(captionStyle.hasForegroundColor() ? captionStyle.foregroundColor : DEFAULT_CAPTION_STYLE.foregroundColor);
            setBackgroundColor(captionStyle.hasBackgroundColor() ? captionStyle.backgroundColor : DEFAULT_CAPTION_STYLE.backgroundColor);
            setEdgeType(captionStyle.hasEdgeType() ? captionStyle.edgeType : DEFAULT_CAPTION_STYLE.edgeType);
            setEdgeColor(captionStyle.hasEdgeColor() ? captionStyle.edgeColor : DEFAULT_CAPTION_STYLE.edgeColor);
            setTypeface(captionStyle.getTypeface());
        }

        public CCView(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        public CCView(Context context, AttributeSet attributeSet, int i2) {
            this(context, attributeSet, i2, 0);
        }

        public CCView(Context context, AttributeSet attributeSet, int i2, int i3) {
            super(context, attributeSet, i2, i3);
        }
    }

    public static class CCWindowLayout extends RelativeLayout implements View.OnLayoutChangeListener {
        private static final int ANCHOR_HORIZONTAL_16_9_MAX = 209;
        private static final int ANCHOR_HORIZONTAL_MODE_CENTER = 1;
        private static final int ANCHOR_HORIZONTAL_MODE_LEFT = 0;
        private static final int ANCHOR_HORIZONTAL_MODE_RIGHT = 2;
        private static final int ANCHOR_MODE_DIVIDER = 3;
        private static final int ANCHOR_RELATIVE_POSITIONING_MAX = 99;
        private static final int ANCHOR_VERTICAL_MAX = 74;
        private static final int ANCHOR_VERTICAL_MODE_BOTTOM = 2;
        private static final int ANCHOR_VERTICAL_MODE_CENTER = 1;
        private static final int ANCHOR_VERTICAL_MODE_TOP = 0;
        private static final int MAX_COLUMN_COUNT_16_9 = 42;
        private static final float PROPORTION_PEN_SIZE_LARGE = 1.25f;
        private static final float PROPORTION_PEN_SIZE_SMALL = 0.75f;
        private static final String TAG = "CCWindowLayout";
        private final SpannableStringBuilder mBuilder;
        private CCLayout mCCLayout;
        private CCView mCCView;
        private CaptioningManager.CaptionStyle mCaptionStyle;
        private int mCaptionWindowId;
        private final List<CharacterStyle> mCharacterStyles;
        private float mFontScale;
        private int mLastCaptionLayoutHeight;
        private int mLastCaptionLayoutWidth;
        private int mRow;
        private int mRowLimit;
        private float mTextSize;
        private String mWidestChar;

        public CCWindowLayout(Context context) {
            this(context, null);
        }

        private int getScreenColumnCount() {
            return 42;
        }

        private void updateText(String str, boolean z2) {
            if (!z2) {
                this.mBuilder.clear();
            }
            if (str != null && str.length() > 0) {
                int length = this.mBuilder.length();
                this.mBuilder.append((CharSequence) str);
                for (CharacterStyle characterStyle : this.mCharacterStyles) {
                    SpannableStringBuilder spannableStringBuilder = this.mBuilder;
                    spannableStringBuilder.setSpan(characterStyle, length, spannableStringBuilder.length(), 33);
                }
            }
            String[] strArrSplit = TextUtils.split(this.mBuilder.toString(), "\n");
            String strJoin = TextUtils.join("\n", Arrays.copyOfRange(strArrSplit, Math.max(0, strArrSplit.length - (this.mRowLimit + 1)), strArrSplit.length));
            SpannableStringBuilder spannableStringBuilder2 = this.mBuilder;
            spannableStringBuilder2.delete(0, spannableStringBuilder2.length() - strJoin.length());
            int length2 = this.mBuilder.length() - 1;
            int i2 = 0;
            while (i2 <= length2 && this.mBuilder.charAt(i2) <= ' ') {
                i2++;
            }
            int i3 = length2;
            while (i3 >= i2 && this.mBuilder.charAt(i3) <= ' ') {
                i3--;
            }
            if (i2 == 0 && i3 == length2) {
                this.mCCView.setText(this.mBuilder);
                return;
            }
            SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder();
            spannableStringBuilder3.append((CharSequence) this.mBuilder);
            if (i3 < length2) {
                spannableStringBuilder3.delete(i3 + 1, length2 + 1);
            }
            if (i2 > 0) {
                spannableStringBuilder3.delete(0, i2);
            }
            this.mCCView.setText(spannableStringBuilder3);
        }

        private void updateTextSize() {
            if (this.mCCLayout == null) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            int screenColumnCount = getScreenColumnCount();
            for (int i2 = 0; i2 < screenColumnCount; i2++) {
                sb.append(this.mWidestChar);
            }
            String string = sb.toString();
            Paint paint = new Paint();
            paint.setTypeface(this.mCaptionStyle.getTypeface());
            float f2 = 0.0f;
            float f3 = 255.0f;
            while (f2 < f3) {
                float f4 = (f2 + f3) / 2.0f;
                paint.setTextSize(f4);
                if (this.mCCLayout.getWidth() * 0.8f > paint.measureText(string)) {
                    f2 = f4 + 0.01f;
                } else {
                    f3 = f4 - 0.01f;
                }
            }
            float f5 = f3 * this.mFontScale;
            this.mTextSize = f5;
            this.mCCView.setTextSize(f5);
        }

        private void updateWidestChar() {
            Paint paint = new Paint();
            paint.setTypeface(this.mCaptionStyle.getTypeface());
            Charset charsetForName = Charset.forName("ISO-8859-1");
            float f2 = 0.0f;
            for (int i2 = 0; i2 < 256; i2++) {
                String str = new String(new byte[]{(byte) i2}, charsetForName);
                float fMeasureText = paint.measureText(str);
                if (f2 < fMeasureText) {
                    this.mWidestChar = str;
                    f2 = fMeasureText;
                }
            }
            updateTextSize();
        }

        public void appendText(String str) {
            updateText(str, true);
        }

        public void clear() {
            clearText();
            hide();
        }

        public void clearText() {
            this.mBuilder.clear();
            this.mCCView.setText("");
        }

        public int getCaptionWindowId() {
            return this.mCaptionWindowId;
        }

        public void hide() {
            setVisibility(4);
            requestLayout();
        }

        /* JADX WARN: Code duplicated, block: B:47:0x0110 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:48:0x0112 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:50:0x0115  */
        /* JADX WARN: Code duplicated, block: B:51:0x0119  */
        /* JADX WARN: Code duplicated, block: B:52:0x0126  */
        /* JADX WARN: Code duplicated, block: B:55:0x0144  */
        /* JADX WARN: Code duplicated, block: B:56:0x0148  */
        public void initWindow(CCLayout cCLayout, Cea708CCParser.CaptionWindow captionWindow) {
            float f2;
            CCLayout cCLayout2 = this.mCCLayout;
            if (cCLayout2 != cCLayout) {
                if (cCLayout2 != null) {
                    cCLayout2.removeOnLayoutChangeListener(this);
                }
                this.mCCLayout = cCLayout;
                cCLayout.addOnLayoutChangeListener(this);
                updateWidestChar();
            }
            float f3 = captionWindow.anchorVertical;
            boolean z2 = captionWindow.relativePositioning;
            float fMax = f3 / (z2 ? 99 : 74);
            float fMax2 = captionWindow.anchorHorizontal / (z2 ? 99 : 209);
            float f4 = 0.0f;
            float f5 = 1.0f;
            if (fMax < 0.0f || fMax > 1.0f) {
                Log.i(TAG, "The vertical position of the anchor point should be at the range of 0 and 1 but " + fMax);
                fMax = Math.max(0.0f, Math.min(fMax, 1.0f));
            }
            if (fMax2 < 0.0f || fMax2 > 1.0f) {
                Log.i(TAG, "The horizontal position of the anchor point should be at the range of 0 and 1 but " + fMax2);
                fMax2 = Math.max(0.0f, Math.min(fMax2, 1.0f));
            }
            int i2 = captionWindow.anchorId;
            int i3 = i2 % 3;
            int i4 = 3;
            int i5 = i2 / 3;
            if (i3 != 0) {
                if (i3 == 1) {
                    float fMin = Math.min(1.0f - fMax2, fMax2);
                    int iMin = Math.min(getScreenColumnCount(), captionWindow.columnCount + 1);
                    StringBuilder sb = new StringBuilder();
                    for (int i6 = 0; i6 < iMin; i6++) {
                        sb.append(this.mWidestChar);
                    }
                    Paint paint = new Paint();
                    paint.setTypeface(this.mCaptionStyle.getTypeface());
                    paint.setTextSize(this.mTextSize);
                    float fMeasureText = this.mCCLayout.getWidth() > 0 ? (paint.measureText(sb.toString()) / 2.0f) / (this.mCCLayout.getWidth() * 0.8f) : 0.0f;
                    if (fMeasureText <= 0.0f || fMeasureText >= fMax2) {
                        this.mCCView.setAlignment(Layout.Alignment.ALIGN_CENTER);
                        float f6 = fMax2 - fMin;
                        f2 = fMax2 + fMin;
                        fMax2 = f6;
                        i4 = 1;
                    } else {
                        this.mCCView.setAlignment(Layout.Alignment.ALIGN_NORMAL);
                        fMax2 -= fMeasureText;
                    }
                } else if (i3 != 2) {
                    i4 = 17;
                    fMax2 = 0.0f;
                } else {
                    this.mCCView.setAlignment(Layout.Alignment.ALIGN_RIGHT);
                    i4 = 5;
                    f2 = fMax2;
                    fMax2 = 0.0f;
                }
                if (i5 != 0) {
                    i4 |= 48;
                    f4 = fMax;
                } else if (i5 != 1) {
                    i4 |= 16;
                    float fMin2 = Math.min(1.0f - fMax, fMax);
                    f5 = fMax + fMin2;
                    f4 = fMax - fMin2;
                } else if (i5 == 2) {
                    i4 |= 80;
                    f5 = fMax;
                }
                this.mCCLayout.addOrUpdateViewToSafeTitleArea(this, new ScaledLayout.ScaledLayoutParams(f4, f5, fMax2, f2));
                setCaptionWindowId(captionWindow.id);
                setRowLimit(captionWindow.rowCount);
                setGravity(i4);
                if (captionWindow.visible) {
                    show();
                } else {
                    hide();
                }
            }
            this.mCCView.setAlignment(Layout.Alignment.ALIGN_NORMAL);
            f2 = 1.0f;
            if (i5 != 0) {
                i4 |= 48;
                f4 = fMax;
            } else if (i5 != 1) {
                i4 |= 16;
                float fMin3 = Math.min(1.0f - fMax, fMax);
                f5 = fMax + fMin3;
                f4 = fMax - fMin3;
            } else if (i5 == 2) {
                i4 |= 80;
                f5 = fMax;
            }
            this.mCCLayout.addOrUpdateViewToSafeTitleArea(this, new ScaledLayout.ScaledLayoutParams(f4, f5, fMax2, f2));
            setCaptionWindowId(captionWindow.id);
            setRowLimit(captionWindow.rowCount);
            setGravity(i4);
            if (captionWindow.visible) {
                show();
            } else {
                hide();
            }
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            int i10 = i4 - i2;
            int i11 = i5 - i3;
            if (i10 == this.mLastCaptionLayoutWidth && i11 == this.mLastCaptionLayoutHeight) {
                return;
            }
            this.mLastCaptionLayoutWidth = i10;
            this.mLastCaptionLayoutHeight = i11;
            updateTextSize();
        }

        public void removeFromCaptionView() {
            CCLayout cCLayout = this.mCCLayout;
            if (cCLayout != null) {
                cCLayout.removeViewFromSafeTitleArea(this);
                this.mCCLayout.removeOnLayoutChangeListener(this);
                this.mCCLayout = null;
            }
        }

        public void sendBuffer(String str) {
            appendText(str);
        }

        public void sendControl(char c) {
        }

        public void setCaptionStyle(CaptioningManager.CaptionStyle captionStyle) {
            this.mCaptionStyle = captionStyle;
            this.mCCView.setCaptionStyle(captionStyle);
        }

        public void setCaptionWindowId(int i2) {
            this.mCaptionWindowId = i2;
        }

        public void setFontScale(float f2) {
            this.mFontScale = f2;
            updateTextSize();
        }

        public void setPenAttr(Cea708CCParser.CaptionPenAttr captionPenAttr) {
            this.mCharacterStyles.clear();
            if (captionPenAttr.italic) {
                this.mCharacterStyles.add(new StyleSpan(2));
            }
            if (captionPenAttr.underline) {
                this.mCharacterStyles.add(new UnderlineSpan());
            }
            int i2 = captionPenAttr.penSize;
            if (i2 == 0) {
                this.mCharacterStyles.add(new RelativeSizeSpan(0.75f));
            } else if (i2 == 2) {
                this.mCharacterStyles.add(new RelativeSizeSpan(PROPORTION_PEN_SIZE_LARGE));
            }
            int i3 = captionPenAttr.penOffset;
            if (i3 == 0) {
                this.mCharacterStyles.add(new SubscriptSpan());
            } else {
                if (i3 != 2) {
                    return;
                }
                this.mCharacterStyles.add(new SuperscriptSpan());
            }
        }

        public void setPenColor(Cea708CCParser.CaptionPenColor captionPenColor) {
        }

        public void setPenLocation(int i2, int i3) {
            int i4 = this.mRow;
            if (i4 >= 0) {
                while (i4 < i2) {
                    appendText("\n");
                    i4++;
                }
            }
            this.mRow = i2;
        }

        public void setRowLimit(int i2) {
            if (i2 < 0) {
                throw new IllegalArgumentException("A rowLimit should have a positive number");
            }
            this.mRowLimit = i2;
        }

        public void setText(String str) {
            updateText(str, false);
        }

        public void setWindowAttr(Cea708CCParser.CaptionWindowAttr captionWindowAttr) {
        }

        public void show() {
            setVisibility(0);
            requestLayout();
        }

        public CCWindowLayout(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        public CCWindowLayout(Context context, AttributeSet attributeSet, int i2) {
            this(context, attributeSet, i2, 0);
        }

        public CCWindowLayout(Context context, AttributeSet attributeSet, int i2, int i3) {
            super(context, attributeSet, i2, i3);
            this.mRowLimit = 0;
            this.mBuilder = new SpannableStringBuilder();
            this.mCharacterStyles = new ArrayList();
            this.mRow = -1;
            this.mCCView = new CCView(context);
            addView(this.mCCView, new RelativeLayout.LayoutParams(-2, -2));
            CaptioningManager captioningManager = (CaptioningManager) context.getSystemService(Context.CAPTIONING_SERVICE);
            this.mFontScale = captioningManager.getFontScale();
            setCaptionStyle(captioningManager.getUserStyle());
            this.mCCView.setText("");
            updateWidestChar();
        }
    }

    public Cea708CCWidget(Context context) {
        this(context, null);
    }

    @Override // android.media.ClosedCaptionWidget
    public ClosedCaptionWidget.ClosedCaptionLayout createCaptionLayout(Context context) {
        return new CCLayout(context);
    }

    @Override // android.media.Cea708CCParser.DisplayListener
    public void emitEvent(Cea708CCParser.CaptionEvent captionEvent) {
        this.mCCHandler.processCaptionEvent(captionEvent);
        setSize(getWidth(), getHeight());
        SubtitleTrack.RenderingWidget.OnChangedListener onChangedListener = this.mListener;
        if (onChangedListener != null) {
            onChangedListener.onChanged(this);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ((ViewGroup) this.mClosedCaptionLayout).draw(canvas);
    }

    public Cea708CCWidget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Cea708CCWidget(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public static class ScaledLayout extends ViewGroup {
        private static final boolean DEBUG = false;
        private static final String TAG = "ScaledLayout";
        private static final Comparator<Rect> mRectTopLeftSorter = new Comparator<Rect>() { // from class: android.media.Cea708CCWidget.ScaledLayout.1
            @Override // java.util.Comparator
            public int compare(Rect rect, Rect rect2) {
                int i2 = rect.top;
                int i3 = rect2.top;
                return i2 != i3 ? i2 - i3 : rect.left - rect2.left;
            }
        };
        private Rect[] mRectArray;

        public ScaledLayout(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup
        public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof ScaledLayoutParams;
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8) {
                    Rect[] rectArr = this.mRectArray;
                    if (i2 >= rectArr.length) {
                        return;
                    }
                    Rect rect = rectArr[i2];
                    int i3 = rect.left + paddingLeft;
                    int i4 = rect.top + paddingTop;
                    int iSave = canvas.save();
                    canvas.translate(i3, i4);
                    childAt.draw(canvas);
                    canvas.restoreToCount(iSave);
                }
            }
        }

        @Override // android.view.ViewGroup
        public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
            return new ScaledLayoutParams(getContext(), attributeSet);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = getChildAt(i6);
                if (childAt.getVisibility() != 8) {
                    Rect rect = this.mRectArray[i6];
                    childAt.layout(rect.left + paddingLeft, rect.top + paddingTop, rect.right + paddingTop, rect.bottom + paddingLeft);
                }
            }
        }

        @Override // android.view.View
        public void onMeasure(int i2, int i3) {
            int i4;
            int size = View.MeasureSpec.getSize(i2);
            int size2 = View.MeasureSpec.getSize(i3);
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
            int childCount = getChildCount();
            this.mRectArray = new Rect[childCount];
            int i5 = 0;
            while (i5 < childCount) {
                View childAt = getChildAt(i5);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (!(layoutParams instanceof ScaledLayoutParams)) {
                    throw new RuntimeException("A child of ScaledLayout cannot have the UNSPECIFIED scale factors");
                }
                ScaledLayoutParams scaledLayoutParams = (ScaledLayoutParams) layoutParams;
                float f2 = scaledLayoutParams.scaleStartRow;
                float f3 = scaledLayoutParams.scaleEndRow;
                float f4 = scaledLayoutParams.scaleStartCol;
                float f5 = scaledLayoutParams.scaleEndCol;
                if (f2 < 0.0f || f2 > 1.0f) {
                    throw new RuntimeException("A child of ScaledLayout should have a range of scaleStartRow between 0 and 1");
                }
                if (f3 < f2 || f2 > 1.0f) {
                    throw new RuntimeException("A child of ScaledLayout should have a range of scaleEndRow between scaleStartRow and 1");
                }
                if (f5 < 0.0f || f5 > 1.0f) {
                    throw new RuntimeException("A child of ScaledLayout should have a range of scaleStartCol between 0 and 1");
                }
                if (f5 < f4 || f5 > 1.0f) {
                    throw new RuntimeException("A child of ScaledLayout should have a range of scaleEndCol between scaleStartCol and 1");
                }
                float f6 = paddingLeft;
                int i6 = paddingLeft;
                float f7 = paddingTop;
                int i7 = size;
                int i8 = size2;
                int i9 = childCount;
                this.mRectArray[i5] = new Rect((int) (f4 * f6), (int) (f2 * f7), (int) (f5 * f6), (int) (f3 * f7));
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) ((f5 - f4) * f6), 1073741824);
                childAt.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(0, 0));
                if (childAt.getMeasuredHeight() > this.mRectArray[i5].height()) {
                    int measuredHeight = ((childAt.getMeasuredHeight() - this.mRectArray[i5].height()) + 1) / 2;
                    Rect rect = this.mRectArray[i5];
                    int i10 = rect.bottom + measuredHeight;
                    rect.bottom = i10;
                    int i11 = rect.top - measuredHeight;
                    rect.top = i11;
                    if (i11 < 0) {
                        rect.bottom = i10 - i11;
                        rect.top = 0;
                    }
                    int i12 = rect.bottom;
                    if (i12 > paddingTop) {
                        rect.top -= i12 - paddingTop;
                        rect.bottom = paddingTop;
                    }
                }
                childAt.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec((int) ((f3 - f2) * f7), 1073741824));
                i5++;
                paddingLeft = i6;
                size = i7;
                size2 = i8;
                childCount = i9;
            }
            int i13 = size;
            int i14 = size2;
            int i15 = childCount;
            int[] iArr = new int[i15];
            Rect[] rectArr = new Rect[i15];
            int i16 = 0;
            for (int i17 = 0; i17 < i15; i17++) {
                if (getChildAt(i17).getVisibility() == 0) {
                    iArr[i16] = i16;
                    rectArr[i16] = this.mRectArray[i17];
                    i16++;
                }
            }
            Arrays.sort(rectArr, 0, i16, mRectTopLeftSorter);
            int i18 = 0;
            while (true) {
                i4 = i16 - 1;
                if (i18 >= i4) {
                    break;
                }
                int i19 = i18 + 1;
                for (int i20 = i19; i20 < i16; i20++) {
                    if (Rect.intersects(rectArr[i18], rectArr[i20])) {
                        iArr[i20] = iArr[i18];
                        Rect rect2 = rectArr[i20];
                        int i21 = rect2.left;
                        int i22 = rectArr[i18].bottom;
                        rect2.set(i21, i22, rect2.right, rect2.height() + i22);
                    }
                }
                i18 = i19;
            }
            while (i4 >= 0) {
                int i23 = rectArr[i4].bottom;
                if (i23 > paddingTop) {
                    int i24 = i23 - paddingTop;
                    for (int i25 = 0; i25 <= i4; i25++) {
                        if (iArr[i4] == iArr[i25]) {
                            Rect rect3 = rectArr[i25];
                            rect3.set(rect3.left, rect3.top - i24, rect3.right, rect3.bottom - i24);
                        }
                    }
                }
                i4--;
            }
            setMeasuredDimension(i13, i14);
        }

        public static class ScaledLayoutParams extends ViewGroup.LayoutParams {
            public static final float SCALE_UNSPECIFIED = -1.0f;
            public float scaleEndCol;
            public float scaleEndRow;
            public float scaleStartCol;
            public float scaleStartRow;

            public ScaledLayoutParams(float f2, float f3, float f4, float f5) {
                super(-1, -1);
                this.scaleStartRow = f2;
                this.scaleEndRow = f3;
                this.scaleStartCol = f4;
                this.scaleEndCol = f5;
            }

            public ScaledLayoutParams(Context context, AttributeSet attributeSet) {
                super(-1, -1);
            }
        }
    }

    public Cea708CCWidget(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mCCHandler = new CCHandler((CCLayout) this.mClosedCaptionLayout);
    }
}
