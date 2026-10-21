package android.inputmethodservice;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import i.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class Keyboard {
    public static final int EDGE_BOTTOM = 8;
    public static final int EDGE_LEFT = 1;
    public static final int EDGE_RIGHT = 2;
    public static final int EDGE_TOP = 4;
    private static final int GRID_HEIGHT = 5;
    private static final int GRID_SIZE = 50;
    private static final int GRID_WIDTH = 10;
    public static final int KEYCODE_ALT = -6;
    public static final int KEYCODE_CANCEL = -3;
    public static final int KEYCODE_DELETE = -5;
    public static final int KEYCODE_DONE = -4;
    public static final int KEYCODE_MODE_CHANGE = -2;
    public static final int KEYCODE_SHIFT = -1;
    private static float SEARCH_DISTANCE = 1.8f;
    public static final String TAG = "Keyboard";
    private static final String TAG_KEY = "Key";
    private static final String TAG_KEYBOARD = "Keyboard";
    private static final String TAG_ROW = "Row";
    private int mCellHeight;
    private int mCellWidth;
    private int mDefaultHeight;
    private int mDefaultHorizontalGap;
    private int mDefaultVerticalGap;
    private int mDefaultWidth;
    private int mDisplayHeight;
    private int mDisplayWidth;
    private int[][] mGridNeighbors;
    private int mKeyHeight;
    private int mKeyWidth;
    private int mKeyboardMode;
    private List<Key> mKeys;
    private CharSequence mLabel;
    private List<Key> mModifierKeys;
    private int mProximityThreshold;
    private int[] mShiftKeyIndices;
    private Key[] mShiftKeys;
    private boolean mShifted;
    private int mTotalHeight;
    private int mTotalWidth;
    private ArrayList<Row> rows;

    public Keyboard(Context context, int i2) {
        this(context, i2, 0);
    }

    private void computeNearestNeighbors() {
        this.mCellWidth = ((getMinWidth() + 10) - 1) / 10;
        this.mCellHeight = ((getHeight() + 5) - 1) / 5;
        this.mGridNeighbors = new int[50][];
        int[] iArr = new int[this.mKeys.size()];
        int i2 = this.mCellWidth * 10;
        int i3 = this.mCellHeight * 5;
        int i4 = 0;
        while (i4 < i2) {
            int i5 = 0;
            while (i5 < i3) {
                int i6 = 0;
                for (int i7 = 0; i7 < this.mKeys.size(); i7++) {
                    Key key = this.mKeys.get(i7);
                    if (key.squaredDistanceFrom(i4, i5) < this.mProximityThreshold || key.squaredDistanceFrom((this.mCellWidth + i4) - 1, i5) < this.mProximityThreshold || key.squaredDistanceFrom((this.mCellWidth + i4) - 1, (this.mCellHeight + i5) - 1) < this.mProximityThreshold || key.squaredDistanceFrom(i4, (this.mCellHeight + i5) - 1) < this.mProximityThreshold) {
                        iArr[i6] = i7;
                        i6++;
                    }
                }
                int[] iArr2 = new int[i6];
                System.arraycopy(iArr, 0, iArr2, 0, i6);
                int[][] iArr3 = this.mGridNeighbors;
                int i8 = this.mCellHeight;
                iArr3[((i5 / i8) * 10) + (i4 / this.mCellWidth)] = iArr2;
                i5 += i8;
            }
            i4 += this.mCellWidth;
        }
    }

    public static int getDimensionOrFraction(TypedArray typedArray, int i2, int i3, int i4) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i2);
        if (typedValuePeekValue == null) {
            return i4;
        }
        int i5 = typedValuePeekValue.type;
        if (i5 == 5) {
            return typedArray.getDimensionPixelOffset(i2, i4);
        }
        return i5 == 6 ? Math.round(typedArray.getFraction(i2, i3, i3, i4)) : i4;
    }

    private void loadKeyboard(Context context, XmlResourceParser xmlResourceParser) {
        Row rowCreateRowFromXml;
        Resources resources = context.getResources();
        Key keyCreateKeyFromXml = null;
        Row row = null;
        boolean z2 = false;
        int i2 = 0;
        int i3 = 0;
        loop0: while (true) {
            int i4 = i3;
            while (true) {
                try {
                    int next = xmlResourceParser.next();
                    if (next == 1) {
                        break loop0;
                    }
                    if (next == 2) {
                        String name = xmlResourceParser.getName();
                        if (TAG_ROW.equals(name)) {
                            rowCreateRowFromXml = createRowFromXml(resources, xmlResourceParser);
                            this.rows.add(rowCreateRowFromXml);
                            int i5 = rowCreateRowFromXml.mode;
                            if ((i5 == 0 || i5 == this.mKeyboardMode) ? false : true) {
                                break;
                            }
                            row = rowCreateRowFromXml;
                            i4 = 0;
                            i3 = 1;
                        } else if (TAG_KEY.equals(name)) {
                            keyCreateKeyFromXml = createKeyFromXml(resources, row, i4, i2, xmlResourceParser);
                            this.mKeys.add(keyCreateKeyFromXml);
                            int[] iArr = keyCreateKeyFromXml.codes;
                            if (iArr[0] == -1) {
                                int i6 = 0;
                                while (true) {
                                    Key[] keyArr = this.mShiftKeys;
                                    if (i6 >= keyArr.length) {
                                        break;
                                    }
                                    if (keyArr[i6] == null) {
                                        keyArr[i6] = keyCreateKeyFromXml;
                                        this.mShiftKeyIndices[i6] = this.mKeys.size() - 1;
                                        break;
                                    }
                                    i6++;
                                }
                                this.mModifierKeys.add(keyCreateKeyFromXml);
                            } else if (iArr[0] == -6) {
                                this.mModifierKeys.add(keyCreateKeyFromXml);
                            }
                            row.mKeys.add(keyCreateKeyFromXml);
                            z2 = true;
                        } else if ("Keyboard".equals(name)) {
                            parseKeyboardAttributes(resources, xmlResourceParser);
                        }
                    } else if (next == 3) {
                        if (z2) {
                            i4 += keyCreateKeyFromXml.gap + keyCreateKeyFromXml.width;
                            if (i4 > this.mTotalWidth) {
                                this.mTotalWidth = i4;
                            }
                            z2 = false;
                        } else if (i3 != 0) {
                            i2 = i2 + row.verticalGap + row.defaultHeight;
                            i3 = 0;
                        }
                    }
                } catch (Exception e2) {
                    Log.e("Keyboard", "Parse error:" + e2);
                    e2.printStackTrace();
                }
            }
            skipToEndOfRow(xmlResourceParser);
            row = rowCreateRowFromXml;
            i3 = 0;
        }
        this.mTotalHeight = i2 - this.mDefaultVerticalGap;
    }

    private void parseKeyboardAttributes(Resources resources, XmlResourceParser xmlResourceParser) {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), a.Keyboard);
        int i2 = this.mDisplayWidth;
        this.mDefaultWidth = getDimensionOrFraction(typedArrayObtainAttributes, 0, i2, i2 / 10);
        this.mDefaultHeight = getDimensionOrFraction(typedArrayObtainAttributes, 1, this.mDisplayHeight, 50);
        this.mDefaultHorizontalGap = getDimensionOrFraction(typedArrayObtainAttributes, 2, this.mDisplayWidth, 0);
        this.mDefaultVerticalGap = getDimensionOrFraction(typedArrayObtainAttributes, 3, this.mDisplayHeight, 0);
        int i3 = (int) (this.mDefaultWidth * SEARCH_DISTANCE);
        this.mProximityThreshold = i3;
        this.mProximityThreshold = i3 * i3;
        typedArrayObtainAttributes.recycle();
    }

    private void skipToEndOfRow(XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlResourceParser.getName().equals(TAG_ROW)) {
                return;
            }
        }
    }

    public Key createKeyFromXml(Resources resources, Row row, int i2, int i3, XmlResourceParser xmlResourceParser) {
        return new Key(resources, row, i2, i3, xmlResourceParser);
    }

    public Row createRowFromXml(Resources resources, XmlResourceParser xmlResourceParser) {
        return new Row(resources, this, xmlResourceParser);
    }

    public int getHeight() {
        return this.mTotalHeight;
    }

    public int getHorizontalGap() {
        return this.mDefaultHorizontalGap;
    }

    public int getKeyHeight() {
        return this.mDefaultHeight;
    }

    public int getKeyWidth() {
        return this.mDefaultWidth;
    }

    public List<Key> getKeys() {
        return this.mKeys;
    }

    public int getMinWidth() {
        return this.mTotalWidth;
    }

    public List<Key> getModifierKeys() {
        return this.mModifierKeys;
    }

    public int[] getNearestKeys(int i2, int i3) {
        int i4;
        if (this.mGridNeighbors == null) {
            computeNearestNeighbors();
        }
        return (i2 < 0 || i2 >= getMinWidth() || i3 < 0 || i3 >= getHeight() || (i4 = ((i3 / this.mCellHeight) * 10) + (i2 / this.mCellWidth)) >= 50) ? new int[0] : this.mGridNeighbors[i4];
    }

    public int getShiftKeyIndex() {
        return this.mShiftKeyIndices[0];
    }

    public int[] getShiftKeyIndices() {
        return this.mShiftKeyIndices;
    }

    public int getVerticalGap() {
        return this.mDefaultVerticalGap;
    }

    public boolean isShifted() {
        return this.mShifted;
    }

    public final void resize(int i2, int i3) {
        int size = this.rows.size();
        for (int i4 = 0; i4 < size; i4++) {
            Row row = this.rows.get(i4);
            int size2 = row.mKeys.size();
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < size2; i7++) {
                Key key = row.mKeys.get(i7);
                if (i7 > 0) {
                    i5 += key.gap;
                }
                i6 += key.width;
            }
            if (i5 + i6 > i2) {
                float f2 = (i2 - i5) / i6;
                int i8 = 0;
                for (int i9 = 0; i9 < size2; i9++) {
                    Key key2 = row.mKeys.get(i9);
                    int i10 = (int) (key2.width * f2);
                    key2.width = i10;
                    key2.f141x = i8;
                    i8 += i10 + key2.gap;
                }
            }
        }
        this.mTotalWidth = i2;
    }

    public void setHorizontalGap(int i2) {
        this.mDefaultHorizontalGap = i2;
    }

    public void setKeyHeight(int i2) {
        this.mDefaultHeight = i2;
    }

    public void setKeyWidth(int i2) {
        this.mDefaultWidth = i2;
    }

    public boolean setShifted(boolean z2) {
        for (Key key : this.mShiftKeys) {
            if (key != null) {
                key.on = z2;
            }
        }
        if (this.mShifted == z2) {
            return false;
        }
        this.mShifted = z2;
        return true;
    }

    public void setVerticalGap(int i2) {
        this.mDefaultVerticalGap = i2;
    }

    public Keyboard(Context context, int i2, int i3, int i4, int i5) {
        this.mShiftKeys = new Key[]{null, null};
        this.mShiftKeyIndices = new int[]{-1, -1};
        this.rows = new ArrayList<>();
        this.mDisplayWidth = i4;
        this.mDisplayHeight = i5;
        this.mDefaultHorizontalGap = 0;
        int i6 = i4 / 10;
        this.mDefaultWidth = i6;
        this.mDefaultVerticalGap = 0;
        this.mDefaultHeight = i6;
        this.mKeys = new ArrayList();
        this.mModifierKeys = new ArrayList();
        this.mKeyboardMode = i3;
        loadKeyboard(context, context.getResources().getXml(i2));
    }

    public static class Row {
        public int defaultHeight;
        public int defaultHorizontalGap;
        public int defaultWidth;
        public ArrayList<Key> mKeys = new ArrayList<>();
        public int mode;
        private Keyboard parent;
        public int rowEdgeFlags;
        public int verticalGap;

        public Row(Keyboard keyboard) {
            this.parent = keyboard;
        }

        public Row(Resources resources, Keyboard keyboard, XmlResourceParser xmlResourceParser) {
            this.parent = keyboard;
            TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), a.Keyboard);
            this.defaultWidth = Keyboard.getDimensionOrFraction(typedArrayObtainAttributes, 0, keyboard.mDisplayWidth, keyboard.mDefaultWidth);
            this.defaultHeight = Keyboard.getDimensionOrFraction(typedArrayObtainAttributes, 1, keyboard.mDisplayHeight, keyboard.mDefaultHeight);
            this.defaultHorizontalGap = Keyboard.getDimensionOrFraction(typedArrayObtainAttributes, 2, keyboard.mDisplayWidth, keyboard.mDefaultHorizontalGap);
            this.verticalGap = Keyboard.getDimensionOrFraction(typedArrayObtainAttributes, 3, keyboard.mDisplayHeight, keyboard.mDefaultVerticalGap);
            typedArrayObtainAttributes.recycle();
            TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), a.Keyboard_Row);
            this.rowEdgeFlags = typedArrayObtainAttributes2.getInt(0, 0);
            this.mode = typedArrayObtainAttributes2.getResourceId(1, 0);
        }
    }

    public static class Key {
        public int[] codes;
        public int edgeFlags;
        public int gap;
        public int height;
        public Drawable icon;
        public Drawable iconPreview;
        private Keyboard keyboard;
        public CharSequence label;
        public boolean modifier;
        public boolean on;
        public CharSequence popupCharacters;
        public int popupResId;
        public boolean pressed;
        public boolean repeatable;
        public boolean sticky;
        public CharSequence text;
        public int width;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f141x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f142y;
        private static final int[] KEY_STATE_NORMAL_ON = {R.attr.state_checkable, R.attr.state_checked};
        private static final int[] KEY_STATE_PRESSED_ON = {R.attr.state_pressed, R.attr.state_checkable, R.attr.state_checked};
        private static final int[] KEY_STATE_NORMAL_OFF = {R.attr.state_checkable};
        private static final int[] KEY_STATE_PRESSED_OFF = {R.attr.state_pressed, R.attr.state_checkable};
        private static final int[] KEY_STATE_NORMAL = new int[0];
        private static final int[] KEY_STATE_PRESSED = {R.attr.state_pressed};

        public Key(Row row) {
            this.keyboard = row.parent;
            this.height = row.defaultHeight;
            this.width = row.defaultWidth;
            this.gap = row.defaultHorizontalGap;
            this.edgeFlags = row.rowEdgeFlags;
        }

        public int[] getCurrentDrawableState() {
            int[] iArr = KEY_STATE_NORMAL;
            if (this.on) {
                return this.pressed ? KEY_STATE_PRESSED_ON : KEY_STATE_NORMAL_ON;
            }
            if (this.sticky) {
                return this.pressed ? KEY_STATE_PRESSED_OFF : KEY_STATE_NORMAL_OFF;
            }
            return this.pressed ? KEY_STATE_PRESSED : iArr;
        }

        public boolean isInside(int i2, int i3) {
            int i4;
            int i5 = this.edgeFlags;
            boolean z2 = (i5 & 1) > 0;
            boolean z3 = (i5 & 2) > 0;
            boolean z4 = (i5 & 4) > 0;
            boolean z5 = (i5 & 8) > 0;
            int i6 = this.f141x;
            return (i2 >= i6 || (z2 && i2 <= this.width + i6)) && (i2 < this.width + i6 || (z3 && i2 >= i6)) && ((i3 >= (i4 = this.f142y) || (z4 && i3 <= this.height + i4)) && (i3 < this.height + i4 || (z5 && i3 >= i4)));
        }

        public void onPressed() {
            this.pressed = !this.pressed;
        }

        public void onReleased(boolean z2) {
            this.pressed = !this.pressed;
            if (this.sticky) {
                this.on = !this.on;
            }
        }

        public int[] parseCSV(String str) {
            int i2;
            int i3 = 0;
            if (str.length() > 0) {
                i2 = 1;
                int iIndexOf = 0;
                while (true) {
                    iIndexOf = str.indexOf(",", iIndexOf + 1);
                    if (iIndexOf <= 0) {
                        break;
                    }
                    i2++;
                }
            } else {
                i2 = 0;
            }
            int[] iArr = new int[i2];
            StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
            while (stringTokenizer.hasMoreTokens()) {
                int i4 = i3 + 1;
                try {
                    iArr[i3] = Integer.parseInt(stringTokenizer.nextToken());
                } catch (NumberFormatException unused) {
                    Log.e("Keyboard", "Error parsing keycodes " + str);
                }
                i3 = i4;
            }
            return iArr;
        }

        public int squaredDistanceFrom(int i2, int i3) {
            int i4 = (this.f141x + (this.width / 2)) - i2;
            int i5 = (this.f142y + (this.height / 2)) - i3;
            return (i4 * i4) + (i5 * i5);
        }

        public Key(Resources resources, Row row, int i2, int i3, XmlResourceParser xmlResourceParser) {
            this(row);
            this.f141x = i2;
            this.f142y = i3;
            TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), a.Keyboard);
            this.width = Keyboard.getDimensionOrFraction(typedArrayObtainAttributes, 0, this.keyboard.mDisplayWidth, row.defaultWidth);
            this.height = Keyboard.getDimensionOrFraction(typedArrayObtainAttributes, 1, this.keyboard.mDisplayHeight, row.defaultHeight);
            this.gap = Keyboard.getDimensionOrFraction(typedArrayObtainAttributes, 2, this.keyboard.mDisplayWidth, row.defaultHorizontalGap);
            typedArrayObtainAttributes.recycle();
            TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), a.Keyboard_Key);
            this.f141x += this.gap;
            TypedValue typedValue = new TypedValue();
            typedArrayObtainAttributes2.getValue(0, typedValue);
            int i4 = typedValue.type;
            if (i4 == 16 || i4 == 17) {
                this.codes = new int[]{typedValue.data};
            } else if (i4 == 3) {
                this.codes = parseCSV(typedValue.string.toString());
            }
            Drawable drawable = typedArrayObtainAttributes2.getDrawable(7);
            this.iconPreview = drawable;
            if (drawable != null) {
                drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), this.iconPreview.getIntrinsicHeight());
            }
            this.popupCharacters = typedArrayObtainAttributes2.getText(2);
            this.popupResId = typedArrayObtainAttributes2.getResourceId(1, 0);
            this.repeatable = typedArrayObtainAttributes2.getBoolean(6, false);
            this.modifier = typedArrayObtainAttributes2.getBoolean(4, false);
            this.sticky = typedArrayObtainAttributes2.getBoolean(5, false);
            int i5 = typedArrayObtainAttributes2.getInt(3, 0);
            this.edgeFlags = i5;
            this.edgeFlags = row.rowEdgeFlags | i5;
            Drawable drawable2 = typedArrayObtainAttributes2.getDrawable(10);
            this.icon = drawable2;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), this.icon.getIntrinsicHeight());
            }
            this.label = typedArrayObtainAttributes2.getText(9);
            this.text = typedArrayObtainAttributes2.getText(8);
            if (this.codes == null && !TextUtils.isEmpty(this.label)) {
                this.codes = new int[]{this.label.charAt(0)};
            }
            typedArrayObtainAttributes2.recycle();
        }
    }

    public Keyboard(Context context, int i2, int i3) {
        this.mShiftKeys = new Key[]{null, null};
        this.mShiftKeyIndices = new int[]{-1, -1};
        this.rows = new ArrayList<>();
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i4 = displayMetrics.widthPixels;
        this.mDisplayWidth = i4;
        this.mDisplayHeight = displayMetrics.heightPixels;
        this.mDefaultHorizontalGap = 0;
        int i5 = i4 / 10;
        this.mDefaultWidth = i5;
        this.mDefaultVerticalGap = 0;
        this.mDefaultHeight = i5;
        this.mKeys = new ArrayList();
        this.mModifierKeys = new ArrayList();
        this.mKeyboardMode = i3;
        loadKeyboard(context, context.getResources().getXml(i2));
    }

    public Keyboard(Context context, int i2, CharSequence charSequence, int i3, int i4) {
        this(context, i2);
        this.mTotalWidth = 0;
        Row row = new Row(this);
        row.defaultHeight = this.mDefaultHeight;
        row.defaultWidth = this.mDefaultWidth;
        row.defaultHorizontalGap = this.mDefaultHorizontalGap;
        row.verticalGap = this.mDefaultVerticalGap;
        row.rowEdgeFlags = 12;
        i3 = i3 == -1 ? Integer.MAX_VALUE : i3;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < charSequence.length(); i8++) {
            char cCharAt = charSequence.charAt(i8);
            if (i6 >= i3 || this.mDefaultWidth + i7 + i4 > this.mDisplayWidth) {
                i5 += this.mDefaultVerticalGap + this.mDefaultHeight;
                i6 = 0;
                i7 = 0;
            }
            Key key = new Key(row);
            key.f141x = i7;
            key.f142y = i5;
            key.label = String.valueOf(cCharAt);
            key.codes = new int[]{cCharAt};
            i6++;
            i7 += key.width + key.gap;
            this.mKeys.add(key);
            row.mKeys.add(key);
            if (i7 > this.mTotalWidth) {
                this.mTotalWidth = i7;
            }
        }
        this.mTotalHeight = i5 + this.mDefaultHeight;
        this.rows.add(row);
    }
}
