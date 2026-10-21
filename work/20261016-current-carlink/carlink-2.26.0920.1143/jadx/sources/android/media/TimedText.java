package android.media;

import android.accessibilityservice.c;
import android.app.m;
import android.graphics.Rect;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class TimedText {
    private static final int FIRST_PRIVATE_KEY = 101;
    private static final int FIRST_PUBLIC_KEY = 1;
    private static final int KEY_BACKGROUND_COLOR_RGBA = 3;
    private static final int KEY_DISPLAY_FLAGS = 1;
    private static final int KEY_END_CHAR = 104;
    private static final int KEY_FONT_ID = 105;
    private static final int KEY_FONT_SIZE = 106;
    private static final int KEY_GLOBAL_SETTING = 101;
    private static final int KEY_HIGHLIGHT_COLOR_RGBA = 4;
    private static final int KEY_LOCAL_SETTING = 102;
    private static final int KEY_SCROLL_DELAY = 5;
    private static final int KEY_START_CHAR = 103;
    private static final int KEY_START_TIME = 7;
    private static final int KEY_STRUCT_BLINKING_TEXT_LIST = 8;
    private static final int KEY_STRUCT_FONT_LIST = 9;
    private static final int KEY_STRUCT_HIGHLIGHT_LIST = 10;
    private static final int KEY_STRUCT_HYPER_TEXT_LIST = 11;
    private static final int KEY_STRUCT_JUSTIFICATION = 15;
    private static final int KEY_STRUCT_KARAOKE_LIST = 12;
    private static final int KEY_STRUCT_STYLE_LIST = 13;
    private static final int KEY_STRUCT_TEXT = 16;
    private static final int KEY_STRUCT_TEXT_POS = 14;
    private static final int KEY_STYLE_FLAGS = 2;
    private static final int KEY_TEXT_COLOR_RGBA = 107;
    private static final int KEY_WRAP_TEXT = 6;
    private static final int LAST_PRIVATE_KEY = 107;
    private static final int LAST_PUBLIC_KEY = 16;
    private static final String TAG = "TimedText";
    private int mBackgroundColorRGBA;
    private List<CharPos> mBlinkingPosList;
    private int mDisplayFlags;
    private List<Font> mFontList;
    private int mHighlightColorRGBA;
    private List<CharPos> mHighlightPosList;
    private List<HyperText> mHyperTextList;
    private Justification mJustification;
    private List<Karaoke> mKaraokeList;
    private final HashMap<Integer, Object> mKeyObjectMap;
    private int mScrollDelay;
    private List<Style> mStyleList;
    private Rect mTextBounds;
    private String mTextChars;
    private int mWrapText;

    public static final class CharPos {
        public final int endChar;
        public final int startChar;

        public CharPos(int i2, int i3) {
            this.startChar = i2;
            this.endChar = i3;
        }
    }

    public static final class Font {
        public final int ID;
        public final String name;

        public Font(int i2, String str) {
            this.ID = i2;
            this.name = str;
        }
    }

    public static final class HyperText {
        public final String URL;
        public final String altString;
        public final int endChar;
        public final int startChar;

        public HyperText(int i2, int i3, String str, String str2) {
            this.startChar = i2;
            this.endChar = i3;
            this.URL = str;
            this.altString = str2;
        }
    }

    public static final class Justification {
        public final int horizontalJustification;
        public final int verticalJustification;

        public Justification(int i2, int i3) {
            this.horizontalJustification = i2;
            this.verticalJustification = i3;
        }
    }

    public static final class Karaoke {
        public final int endChar;
        public final int endTimeMs;
        public final int startChar;
        public final int startTimeMs;

        public Karaoke(int i2, int i3, int i4, int i5) {
            this.startTimeMs = i2;
            this.endTimeMs = i3;
            this.startChar = i4;
            this.endChar = i5;
        }
    }

    public static final class Style {
        public final int colorRGBA;
        public final int endChar;
        public final int fontID;
        public final int fontSize;
        public final boolean isBold;
        public final boolean isItalic;
        public final boolean isUnderlined;
        public final int startChar;

        public Style(int i2, int i3, int i4, boolean z2, boolean z3, boolean z4, int i5, int i6) {
            this.startChar = i2;
            this.endChar = i3;
            this.fontID = i4;
            this.isBold = z2;
            this.isItalic = z3;
            this.isUnderlined = z4;
            this.fontSize = i5;
            this.colorRGBA = i6;
        }
    }

    public TimedText(Parcel parcel) {
        HashMap<Integer, Object> map = new HashMap<>();
        this.mKeyObjectMap = map;
        this.mDisplayFlags = -1;
        this.mBackgroundColorRGBA = -1;
        this.mHighlightColorRGBA = -1;
        this.mScrollDelay = -1;
        this.mWrapText = -1;
        this.mBlinkingPosList = null;
        this.mHighlightPosList = null;
        this.mKaraokeList = null;
        this.mFontList = null;
        this.mStyleList = null;
        this.mHyperTextList = null;
        this.mTextBounds = null;
        this.mTextChars = null;
        if (parseParcel(parcel)) {
            return;
        }
        map.clear();
        throw new IllegalArgumentException("parseParcel() fails");
    }

    private boolean containsKey(int i2) {
        return isValidKey(i2) && this.mKeyObjectMap.containsKey(Integer.valueOf(i2));
    }

    private Object getObject(int i2) {
        if (containsKey(i2)) {
            return this.mKeyObjectMap.get(Integer.valueOf(i2));
        }
        throw new IllegalArgumentException(c.d("Invalid key: ", i2));
    }

    private boolean isValidKey(int i2) {
        return (i2 >= 1 && i2 <= 16) || (i2 >= 101 && i2 <= 107);
    }

    private Set keySet() {
        return this.mKeyObjectMap.keySet();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private boolean parseParcel(Parcel parcel) {
        Object objValueOf;
        parcel.setDataPosition(0);
        if (parcel.dataAvail() == 0) {
            return false;
        }
        int i2 = parcel.readInt();
        if (i2 == 102) {
            int i3 = parcel.readInt();
            if (i3 != 7) {
                return false;
            }
            this.mKeyObjectMap.put(Integer.valueOf(i3), Integer.valueOf(parcel.readInt()));
            if (parcel.readInt() != 16) {
                return false;
            }
            parcel.readInt();
            byte[] bArrCreateByteArray = parcel.createByteArray();
            if (bArrCreateByteArray == null || bArrCreateByteArray.length == 0) {
                this.mTextChars = null;
            } else {
                this.mTextChars = new String(bArrCreateByteArray);
            }
        } else if (i2 != 101) {
            m.A("Invalid timed text key found: ", i2, TAG);
            return false;
        }
        while (parcel.dataAvail() > 0) {
            int i4 = parcel.readInt();
            if (!isValidKey(i4)) {
                m.A("Invalid timed text key found: ", i4, TAG);
                return false;
            }
            switch (i4) {
                case 1:
                    int i5 = parcel.readInt();
                    this.mDisplayFlags = i5;
                    objValueOf = Integer.valueOf(i5);
                    break;
                case 2:
                case 7:
                default:
                    objValueOf = null;
                    break;
                case 3:
                    int i6 = parcel.readInt();
                    this.mBackgroundColorRGBA = i6;
                    objValueOf = Integer.valueOf(i6);
                    break;
                case 4:
                    int i7 = parcel.readInt();
                    this.mHighlightColorRGBA = i7;
                    objValueOf = Integer.valueOf(i7);
                    break;
                case 5:
                    int i8 = parcel.readInt();
                    this.mScrollDelay = i8;
                    objValueOf = Integer.valueOf(i8);
                    break;
                case 6:
                    int i9 = parcel.readInt();
                    this.mWrapText = i9;
                    objValueOf = Integer.valueOf(i9);
                    break;
                case 8:
                    readBlinkingText(parcel);
                    objValueOf = this.mBlinkingPosList;
                    break;
                case 9:
                    readFont(parcel);
                    objValueOf = this.mFontList;
                    break;
                case 10:
                    readHighlight(parcel);
                    objValueOf = this.mHighlightPosList;
                    break;
                case 11:
                    readHyperText(parcel);
                    objValueOf = this.mHyperTextList;
                    break;
                case 12:
                    readKaraoke(parcel);
                    objValueOf = this.mKaraokeList;
                    break;
                case 13:
                    readStyle(parcel);
                    objValueOf = this.mStyleList;
                    break;
                case 14:
                    this.mTextBounds = new Rect(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    objValueOf = null;
                    break;
                case 15:
                    Justification justification = new Justification(parcel.readInt(), parcel.readInt());
                    this.mJustification = justification;
                    objValueOf = justification;
                    break;
            }
            if (objValueOf != null) {
                if (this.mKeyObjectMap.containsKey(Integer.valueOf(i4))) {
                    this.mKeyObjectMap.remove(Integer.valueOf(i4));
                }
                this.mKeyObjectMap.put(Integer.valueOf(i4), objValueOf);
            }
        }
        return true;
    }

    private void readBlinkingText(Parcel parcel) {
        CharPos charPos = new CharPos(parcel.readInt(), parcel.readInt());
        if (this.mBlinkingPosList == null) {
            this.mBlinkingPosList = new ArrayList();
        }
        this.mBlinkingPosList.add(charPos);
    }

    private void readFont(Parcel parcel) {
        int i2 = parcel.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            Font font = new Font(parcel.readInt(), new String(parcel.createByteArray(), 0, parcel.readInt()));
            if (this.mFontList == null) {
                this.mFontList = new ArrayList();
            }
            this.mFontList.add(font);
        }
    }

    private void readHighlight(Parcel parcel) {
        CharPos charPos = new CharPos(parcel.readInt(), parcel.readInt());
        if (this.mHighlightPosList == null) {
            this.mHighlightPosList = new ArrayList();
        }
        this.mHighlightPosList.add(charPos);
    }

    private void readHyperText(Parcel parcel) {
        HyperText hyperText = new HyperText(parcel.readInt(), parcel.readInt(), new String(parcel.createByteArray(), 0, parcel.readInt()), new String(parcel.createByteArray(), 0, parcel.readInt()));
        if (this.mHyperTextList == null) {
            this.mHyperTextList = new ArrayList();
        }
        this.mHyperTextList.add(hyperText);
    }

    private void readKaraoke(Parcel parcel) {
        int i2 = parcel.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            Karaoke karaoke = new Karaoke(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
            if (this.mKaraokeList == null) {
                this.mKaraokeList = new ArrayList();
            }
            this.mKaraokeList.add(karaoke);
        }
    }

    private void readStyle(Parcel parcel) {
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        boolean z5 = false;
        while (!z5 && parcel.dataAvail() > 0) {
            int i7 = parcel.readInt();
            if (i7 != 2) {
                switch (i7) {
                    case 103:
                        i2 = parcel.readInt();
                        break;
                    case 104:
                        i3 = parcel.readInt();
                        break;
                    case 105:
                        i4 = parcel.readInt();
                        break;
                    case 106:
                        i5 = parcel.readInt();
                        break;
                    case 107:
                        i6 = parcel.readInt();
                        break;
                    default:
                        parcel.setDataPosition(parcel.dataPosition() - 4);
                        z5 = true;
                        break;
                }
            } else {
                int i8 = parcel.readInt();
                z2 = i8 % 2 == 1;
                z3 = i8 % 4 >= 2;
                z4 = i8 / 4 == 1;
            }
        }
        Style style = new Style(i2, i3, i4, z2, z3, z4, i5, i6);
        if (this.mStyleList == null) {
            this.mStyleList = new ArrayList();
        }
        this.mStyleList.add(style);
    }

    public Rect getBounds() {
        return this.mTextBounds;
    }

    public String getText() {
        return this.mTextChars;
    }
}
