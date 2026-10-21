package android.media;

import android.accessibilityservice.c;
import android.telecom.Logging.Session;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import android.text.style.UpdateAppearance;
import android.util.Log;
import android.view.accessibility.CaptioningManager;
import com.android.internal.telephony.PhoneConstants;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
class Cea608CCParser {
    private static final int AOF = 34;
    private static final int AON = 35;
    private static final int BS = 33;
    private static final int CR = 45;
    private static final int DER = 36;
    private static final int EDM = 44;
    private static final int ENM = 46;
    private static final int EOC = 47;
    private static final int FON = 40;
    private static final int INVALID = -1;
    public static final int MAX_COLS = 32;
    public static final int MAX_ROWS = 15;
    private static final int MODE_PAINT_ON = 1;
    private static final int MODE_POP_ON = 3;
    private static final int MODE_ROLL_UP = 2;
    private static final int MODE_TEXT = 4;
    private static final int MODE_UNKNOWN = 0;
    private static final int RCL = 32;
    private static final int RDC = 41;
    private static final int RTD = 43;
    private static final int RU2 = 37;
    private static final int RU3 = 38;
    private static final int RU4 = 39;
    private static final int TR = 42;
    private static final char TS = 160;
    private final DisplayListener mListener;
    private static final String TAG = "Cea608CCParser";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);
    private int mMode = 1;
    private int mRollUpSize = 4;
    private int mPrevCtrlCode = -1;
    private CCMemory mDisplay = new CCMemory();
    private CCMemory mNonDisplay = new CCMemory();
    private CCMemory mTextMem = new CCMemory();

    public static class CCData {
        private final byte mData1;
        private final byte mData2;
        private final byte mType;
        private static final String[] mCtrlCodeMap = {"RCL", "BS", "AOF", "AON", "DER", "RU2", "RU3", "RU4", "FON", "RDC", "TR", "RTD", "EDM", "CR", "ENM", "EOC"};
        private static final String[] mSpecialCharMap = {"®", "°", "½", "¿", "™", "¢", "£", "♪", "à", " ", "è", "â", "ê", "î", "ô", "û"};
        private static final String[] mSpanishCharMap = {"Á", "É", "Ó", "Ú", "Ü", "ü", "‘", "¡", PhoneConstants.APN_TYPE_ALL, "'", "—", "©", "℠", "•", "“", "”", "À", "Â", "Ç", "È", "Ê", "Ë", "ë", "Î", "Ï", "ï", "Ô", "Ù", "ù", "Û", "«", "»"};
        private static final String[] mProtugueseCharMap = {"Ã", "ã", "Í", "Ì", "ì", "Ò", "ò", "Õ", "õ", "{", "}", "\\", "^", Session.SESSION_SEPARATION_CHAR_CHILD, "|", "~", "Ä", "ä", "Ö", "ö", "ß", "¥", "¤", "│", "Å", "å", "Ø", "ø", "┌", "┐", "└", "┘"};

        public CCData(byte b2, byte b3, byte b4) {
            this.mType = b2;
            this.mData1 = b3;
            this.mData2 = b4;
        }

        private String ctrlCodeToString(int i2) {
            return mCtrlCodeMap[i2 - 32];
        }

        public static CCData[] fromByteArray(byte[] bArr) {
            int length = bArr.length / 3;
            CCData[] cCDataArr = new CCData[length];
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = i2 * 3;
                cCDataArr[i2] = new CCData(bArr[i3], bArr[i3 + 1], bArr[i3 + 2]);
            }
            return cCDataArr;
        }

        private char getBasicChar(byte b2) {
            if (b2 == 42) {
                return (char) 225;
            }
            if (b2 == 92) {
                return (char) 233;
            }
            switch (b2) {
                case 94:
                    return (char) 237;
                case 95:
                    return (char) 243;
                case 96:
                    return (char) 250;
                default:
                    switch (b2) {
                        case 123:
                            return (char) 231;
                        case 124:
                            return (char) 247;
                        case 125:
                            return (char) 209;
                        case 126:
                            return (char) 241;
                        case 127:
                            return (char) 9608;
                        default:
                            return (char) b2;
                    }
            }
        }

        private String getBasicChars() {
            byte b2 = this.mData1;
            if (b2 < 32 || b2 > 127) {
                return null;
            }
            StringBuilder sb = new StringBuilder(2);
            sb.append(getBasicChar(this.mData1));
            byte b3 = this.mData2;
            if (b3 >= 32 && b3 <= 127) {
                sb.append(getBasicChar(b3));
            }
            return sb.toString();
        }

        private String getExtendedChar() {
            byte b2;
            byte b3;
            byte b4 = this.mData1;
            if ((b4 == 18 || b4 == 26) && (b2 = this.mData2) >= 32 && b2 <= 63) {
                return mSpanishCharMap[b2 - 32];
            }
            if ((b4 == 19 || b4 == 27) && (b3 = this.mData2) >= 32 && b3 <= 63) {
                return mProtugueseCharMap[b3 - 32];
            }
            return null;
        }

        private String getSpecialChar() {
            byte b2;
            byte b3 = this.mData1;
            if ((b3 == 17 || b3 == 25) && (b2 = this.mData2) >= 48 && b2 <= 63) {
                return mSpecialCharMap[b2 - 48];
            }
            return null;
        }

        private boolean isBasicChar() {
            byte b2 = this.mData1;
            return b2 >= 32 && b2 <= 127;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isExtendedChar() {
            byte b2;
            byte b3 = this.mData1;
            return (b3 == 18 || b3 == 26 || b3 == 19 || b3 == 27) && (b2 = this.mData2) >= 32 && b2 <= 63;
        }

        private boolean isSpecialChar() {
            byte b2;
            byte b3 = this.mData1;
            return (b3 == 17 || b3 == 25) && (b2 = this.mData2) >= 48 && b2 <= 63;
        }

        public int getCtrlCode() {
            byte b2;
            byte b3 = this.mData1;
            if ((b3 == 20 || b3 == 28) && (b2 = this.mData2) >= 32 && b2 <= 47) {
                return b2;
            }
            return -1;
        }

        public String getDisplayText() {
            String basicChars = getBasicChars();
            if (basicChars != null) {
                return basicChars;
            }
            String specialChar = getSpecialChar();
            return specialChar == null ? getExtendedChar() : specialChar;
        }

        public StyleCode getMidRow() {
            byte b2;
            byte b3 = this.mData1;
            if ((b3 == 17 || b3 == 25) && (b2 = this.mData2) >= 32 && b2 <= 47) {
                return StyleCode.fromByte(b2);
            }
            return null;
        }

        public PAC getPAC() {
            byte b2 = this.mData1;
            if ((b2 & 112) != 16) {
                return null;
            }
            byte b3 = this.mData2;
            if ((b3 & 64) != 64) {
                return null;
            }
            if ((b2 & 7) != 0 || (b3 & 32) == 0) {
                return PAC.fromBytes(b2, b3);
            }
            return null;
        }

        public int getTabOffset() {
            byte b2;
            byte b3 = this.mData1;
            if ((b3 == 23 || b3 == 31) && (b2 = this.mData2) >= 33 && b2 <= 35) {
                return b2 & 3;
            }
            return 0;
        }

        public boolean isDisplayableChar() {
            return isBasicChar() || isSpecialChar() || isExtendedChar();
        }

        public String toString() {
            if (this.mData1 < 16 && this.mData2 < 16) {
                return String.format("[%d]Null: %02x %02x", Byte.valueOf(this.mType), Byte.valueOf(this.mData1), Byte.valueOf(this.mData2));
            }
            int ctrlCode = getCtrlCode();
            if (ctrlCode != -1) {
                return String.format("[%d]%s", Byte.valueOf(this.mType), ctrlCodeToString(ctrlCode));
            }
            int tabOffset = getTabOffset();
            if (tabOffset > 0) {
                return String.format("[%d]Tab%d", Byte.valueOf(this.mType), Integer.valueOf(tabOffset));
            }
            PAC pac = getPAC();
            if (pac != null) {
                return String.format("[%d]PAC: %s", Byte.valueOf(this.mType), pac.toString());
            }
            StyleCode midRow = getMidRow();
            if (midRow != null) {
                return String.format("[%d]Mid-row: %s", Byte.valueOf(this.mType), midRow.toString());
            }
            return isDisplayableChar() ? String.format("[%d]Displayable: %s (%02x %02x)", Byte.valueOf(this.mType), getDisplayText(), Byte.valueOf(this.mData1), Byte.valueOf(this.mData2)) : String.format("[%d]Invalid: %02x %02x", Byte.valueOf(this.mType), Byte.valueOf(this.mData1), Byte.valueOf(this.mData2));
        }
    }

    public static class CCLineBuilder {
        private final StringBuilder mDisplayChars;
        private final StyleCode[] mMidRowStyles;
        private final StyleCode[] mPACStyles;

        public CCLineBuilder(String str) {
            StringBuilder sb = new StringBuilder(str);
            this.mDisplayChars = sb;
            this.mMidRowStyles = new StyleCode[sb.length()];
            this.mPACStyles = new StyleCode[sb.length()];
        }

        public void applyStyleSpan(SpannableStringBuilder spannableStringBuilder, StyleCode styleCode, int i2, int i3) {
            if (styleCode.isItalics()) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i2, i3, 33);
            }
            if (styleCode.isUnderline()) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i2, i3, 33);
            }
        }

        public char charAt(int i2) {
            return this.mDisplayChars.charAt(i2);
        }

        public SpannableStringBuilder getStyledText(CaptioningManager.CaptionStyle captionStyle) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.mDisplayChars);
            int i2 = -1;
            int i3 = -1;
            StyleCode styleCode = null;
            for (int i4 = 0; i4 < this.mDisplayChars.length(); i4++) {
                StyleCode styleCode2 = this.mMidRowStyles[i4];
                if (styleCode2 == null && ((styleCode2 = this.mPACStyles[i4]) == null || (i2 >= 0 && i3 >= 0))) {
                    styleCode2 = null;
                }
                if (styleCode2 != null) {
                    if (i2 >= 0 && i3 >= 0) {
                        applyStyleSpan(spannableStringBuilder, styleCode2, i2, i4);
                    }
                    i2 = i4;
                    styleCode = styleCode2;
                }
                if (this.mDisplayChars.charAt(i4) != 160) {
                    if (i3 < 0) {
                        i3 = i4;
                    }
                } else if (i3 >= 0) {
                    if (this.mDisplayChars.charAt(i3) != ' ') {
                        i3--;
                    }
                    int i5 = this.mDisplayChars.charAt(i4 + (-1)) == ' ' ? i4 : i4 + 1;
                    spannableStringBuilder.setSpan(new MutableBackgroundColorSpan(captionStyle.backgroundColor), i3, i5, 33);
                    if (i2 >= 0) {
                        applyStyleSpan(spannableStringBuilder, styleCode, i2, i5);
                    }
                    i3 = -1;
                }
            }
            return spannableStringBuilder;
        }

        public int length() {
            return this.mDisplayChars.length();
        }

        public void setCharAt(int i2, char c) {
            this.mDisplayChars.setCharAt(i2, c);
            this.mMidRowStyles[i2] = null;
        }

        public void setMidRowAt(int i2, StyleCode styleCode) {
            this.mDisplayChars.setCharAt(i2, ' ');
            this.mMidRowStyles[i2] = styleCode;
        }

        public void setPACAt(int i2, PAC pac) {
            this.mPACStyles[i2] = pac;
        }
    }

    public static class CCMemory {
        private final String mBlankLine;
        private int mCol;
        private final CCLineBuilder[] mLines = new CCLineBuilder[17];
        private int mRow;

        public CCMemory() {
            char[] cArr = new char[34];
            Arrays.fill(cArr, Cea608CCParser.TS);
            this.mBlankLine = new String(cArr);
        }

        private static int clamp(int i2, int i3, int i4) {
            if (i2 < i3) {
                return i3;
            }
            return i2 > i4 ? i4 : i2;
        }

        private CCLineBuilder getLineBuffer(int i2) {
            CCLineBuilder[] cCLineBuilderArr = this.mLines;
            if (cCLineBuilderArr[i2] == null) {
                cCLineBuilderArr[i2] = new CCLineBuilder(this.mBlankLine);
            }
            return this.mLines[i2];
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void moveBaselineTo(int i2, int i3) {
            int i4 = this.mRow;
            if (i4 == i2) {
                return;
            }
            int i5 = i2 < i3 ? i2 : i3;
            if (i4 < i5) {
                i5 = i4;
            }
            if (i2 < i4) {
                for (int i6 = i5 - 1; i6 >= 0; i6--) {
                    CCLineBuilder[] cCLineBuilderArr = this.mLines;
                    cCLineBuilderArr[i2 - i6] = cCLineBuilderArr[this.mRow - i6];
                }
            } else {
                for (int i7 = 0; i7 < i5; i7++) {
                    CCLineBuilder[] cCLineBuilderArr2 = this.mLines;
                    cCLineBuilderArr2[i2 - i7] = cCLineBuilderArr2[this.mRow - i7];
                }
            }
            for (int i8 = 0; i8 <= i2 - i3; i8++) {
                this.mLines[i8] = null;
            }
            while (true) {
                i2++;
                CCLineBuilder[] cCLineBuilderArr3 = this.mLines;
                if (i2 >= cCLineBuilderArr3.length) {
                    return;
                } else {
                    cCLineBuilderArr3[i2] = null;
                }
            }
        }

        private void moveCursorByCol(int i2) {
            this.mCol = clamp(this.mCol + i2, 1, 32);
        }

        private void moveCursorTo(int i2, int i3) {
            this.mRow = clamp(i2, 1, 15);
            this.mCol = clamp(i3, 1, 32);
        }

        private void moveCursorToRow(int i2) {
            this.mRow = clamp(i2, 1, 15);
        }

        public void bs() {
            moveCursorByCol(-1);
            CCLineBuilder cCLineBuilder = this.mLines[this.mRow];
            if (cCLineBuilder != null) {
                cCLineBuilder.setCharAt(this.mCol, Cea608CCParser.TS);
                if (this.mCol == 31) {
                    this.mLines[this.mRow].setCharAt(32, Cea608CCParser.TS);
                }
            }
        }

        public void cr() {
            moveCursorTo(this.mRow + 1, 1);
        }

        public void der() {
            if (this.mLines[this.mRow] != null) {
                for (int i2 = 0; i2 < this.mCol; i2++) {
                    if (this.mLines[this.mRow].charAt(i2) != 160) {
                        for (int i3 = this.mCol; i3 < this.mLines[this.mRow].length(); i3++) {
                            this.mLines[i3].setCharAt(i3, Cea608CCParser.TS);
                        }
                        return;
                    }
                }
                this.mLines[this.mRow] = null;
            }
        }

        public void erase() {
            int i2 = 0;
            while (true) {
                CCLineBuilder[] cCLineBuilderArr = this.mLines;
                if (i2 >= cCLineBuilderArr.length) {
                    this.mRow = 15;
                    this.mCol = 1;
                    return;
                } else {
                    cCLineBuilderArr[i2] = null;
                    i2++;
                }
            }
        }

        public SpannableStringBuilder[] getStyledText(CaptioningManager.CaptionStyle captionStyle) {
            ArrayList arrayList = new ArrayList(15);
            for (int i2 = 1; i2 <= 15; i2++) {
                CCLineBuilder cCLineBuilder = this.mLines[i2];
                arrayList.add(cCLineBuilder != null ? cCLineBuilder.getStyledText(captionStyle) : null);
            }
            return (SpannableStringBuilder[]) arrayList.toArray(new SpannableStringBuilder[15]);
        }

        public void rollUp(int i2) {
            int i3;
            int i4;
            int i5 = 0;
            while (true) {
                i3 = this.mRow;
                if (i5 > i3 - i2) {
                    break;
                }
                this.mLines[i5] = null;
                i5++;
            }
            int i6 = (i3 - i2) + 1;
            if (i6 < 1) {
                i6 = 1;
            }
            while (true) {
                i4 = this.mRow;
                if (i6 >= i4) {
                    break;
                }
                CCLineBuilder[] cCLineBuilderArr = this.mLines;
                int i7 = i6 + 1;
                cCLineBuilderArr[i6] = cCLineBuilderArr[i7];
                i6 = i7;
            }
            while (true) {
                CCLineBuilder[] cCLineBuilderArr2 = this.mLines;
                if (i4 >= cCLineBuilderArr2.length) {
                    this.mCol = 1;
                    return;
                } else {
                    cCLineBuilderArr2[i4] = null;
                    i4++;
                }
            }
        }

        public void tab(int i2) {
            moveCursorByCol(i2);
        }

        public void writeMidRowCode(StyleCode styleCode) {
            getLineBuffer(this.mRow).setMidRowAt(this.mCol, styleCode);
            moveCursorByCol(1);
        }

        public void writePAC(PAC pac) {
            if (pac.isIndentPAC()) {
                moveCursorTo(pac.getRow(), pac.getCol());
            } else {
                moveCursorTo(pac.getRow(), 1);
            }
            getLineBuffer(this.mRow).setPACAt(this.mCol, pac);
        }

        public void writeText(String str) {
            for (int i2 = 0; i2 < str.length(); i2++) {
                getLineBuffer(this.mRow).setCharAt(this.mCol, str.charAt(i2));
                moveCursorByCol(1);
            }
        }
    }

    public interface DisplayListener {
        CaptioningManager.CaptionStyle getCaptionStyle();

        void onDisplayChanged(SpannableStringBuilder[] spannableStringBuilderArr);
    }

    public static class MutableBackgroundColorSpan extends CharacterStyle implements UpdateAppearance {
        private int mColor;

        public MutableBackgroundColorSpan(int i2) {
            this.mColor = i2;
        }

        public int getBackgroundColor() {
            return this.mColor;
        }

        public void setBackgroundColor(int i2) {
            this.mColor = i2;
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.bgColor = this.mColor;
        }
    }

    public static class PAC extends StyleCode {
        final int mCol;
        final int mRow;

        public PAC(int i2, int i3, int i4, int i5) {
            super(i4, i5);
            this.mRow = i2;
            this.mCol = i3;
        }

        public static PAC fromBytes(byte b2, byte b3) {
            int i2 = new int[]{11, 1, 3, 12, 14, 5, 7, 9}[b2 & 7] + ((b3 & 32) >> 5);
            int i3 = 0;
            int i4 = (b3 & 1) != 0 ? 2 : 0;
            if ((b3 & 16) != 0) {
                return new PAC(i2, ((b3 >> 1) & 7) * 4, i4, 0);
            }
            int i5 = (b3 >> 1) & 7;
            if (i5 == 7) {
                i4 |= 1;
            } else {
                i3 = i5;
            }
            return new PAC(i2, -1, i4, i3);
        }

        public int getCol() {
            return this.mCol;
        }

        public int getRow() {
            return this.mRow;
        }

        public boolean isIndentPAC() {
            return this.mCol >= 0;
        }

        @Override // android.media.Cea608CCParser.StyleCode
        public String toString() {
            return String.format("{%d, %d}, %s", Integer.valueOf(this.mRow), Integer.valueOf(this.mCol), super.toString());
        }
    }

    public static class StyleCode {
        static final int COLOR_BLUE = 2;
        static final int COLOR_CYAN = 3;
        static final int COLOR_GREEN = 1;
        static final int COLOR_INVALID = 7;
        static final int COLOR_MAGENTA = 6;
        static final int COLOR_RED = 4;
        static final int COLOR_WHITE = 0;
        static final int COLOR_YELLOW = 5;
        static final int STYLE_ITALICS = 1;
        static final int STYLE_UNDERLINE = 2;
        static final String[] mColorMap = {"WHITE", "GREEN", "BLUE", "CYAN", "RED", "YELLOW", "MAGENTA", "INVALID"};
        final int mColor;
        final int mStyle;

        public StyleCode(int i2, int i3) {
            this.mStyle = i2;
            this.mColor = i3;
        }

        public static StyleCode fromByte(byte b2) {
            int i2 = (b2 >> 1) & 7;
            int i3 = (b2 & 1) != 0 ? 2 : 0;
            if (i2 == 7) {
                i3 |= 1;
                i2 = 0;
            }
            return new StyleCode(i3, i2);
        }

        public int getColor() {
            return this.mColor;
        }

        public boolean isItalics() {
            return (this.mStyle & 1) != 0;
        }

        public boolean isUnderline() {
            return (this.mStyle & 2) != 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append(mColorMap[this.mColor]);
            if ((this.mStyle & 1) != 0) {
                sb.append(", ITALICS");
            }
            if ((this.mStyle & 2) != 0) {
                sb.append(", UNDERLINE");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    public Cea608CCParser(DisplayListener displayListener) {
        this.mListener = displayListener;
    }

    private CCMemory getMemory() {
        int i2 = this.mMode;
        if (i2 == 1 || i2 == 2) {
            return this.mDisplay;
        }
        if (i2 == 3) {
            return this.mNonDisplay;
        }
        if (i2 == 4) {
            return this.mTextMem;
        }
        c.A(new StringBuilder("unrecoginized mode: "), this.mMode, TAG);
        return this.mDisplay;
    }

    private boolean handleCtrlCode(CCData cCData) {
        int ctrlCode = cCData.getCtrlCode();
        int i2 = this.mPrevCtrlCode;
        if (i2 != -1 && i2 == ctrlCode) {
            this.mPrevCtrlCode = -1;
            return true;
        }
        switch (ctrlCode) {
            case 32:
                this.mMode = 3;
                break;
            case 33:
                getMemory().bs();
                break;
            case 34:
            case 35:
            default:
                this.mPrevCtrlCode = -1;
                return false;
            case 36:
                getMemory().der();
                break;
            case 37:
            case 38:
            case 39:
                this.mRollUpSize = ctrlCode - 35;
                if (this.mMode != 2) {
                    this.mDisplay.erase();
                    this.mNonDisplay.erase();
                }
                this.mMode = 2;
                break;
            case 40:
                Log.i(TAG, "Flash On");
                break;
            case 41:
                this.mMode = 1;
                break;
            case 42:
                this.mMode = 4;
                this.mTextMem.erase();
                break;
            case 43:
                this.mMode = 4;
                break;
            case 44:
                this.mDisplay.erase();
                updateDisplay();
                break;
            case 45:
                if (this.mMode == 2) {
                    getMemory().rollUp(this.mRollUpSize);
                } else {
                    getMemory().cr();
                }
                if (this.mMode == 2) {
                    updateDisplay();
                }
                break;
            case 46:
                this.mNonDisplay.erase();
                break;
            case 47:
                swapMemory();
                this.mMode = 3;
                updateDisplay();
                break;
        }
        this.mPrevCtrlCode = ctrlCode;
        return true;
    }

    private boolean handleDisplayableChars(CCData cCData) {
        if (!cCData.isDisplayableChar()) {
            return false;
        }
        if (cCData.isExtendedChar()) {
            getMemory().bs();
        }
        getMemory().writeText(cCData.getDisplayText());
        int i2 = this.mMode;
        if (i2 == 1 || i2 == 2) {
            updateDisplay();
        }
        return true;
    }

    private boolean handleMidRowCode(CCData cCData) {
        StyleCode midRow = cCData.getMidRow();
        if (midRow == null) {
            return false;
        }
        getMemory().writeMidRowCode(midRow);
        return true;
    }

    private boolean handlePACCode(CCData cCData) {
        PAC pac = cCData.getPAC();
        if (pac == null) {
            return false;
        }
        if (this.mMode == 2) {
            getMemory().moveBaselineTo(pac.getRow(), this.mRollUpSize);
        }
        getMemory().writePAC(pac);
        return true;
    }

    private boolean handleTabOffsets(CCData cCData) {
        int tabOffset = cCData.getTabOffset();
        if (tabOffset <= 0) {
            return false;
        }
        getMemory().tab(tabOffset);
        return true;
    }

    private void swapMemory() {
        CCMemory cCMemory = this.mDisplay;
        this.mDisplay = this.mNonDisplay;
        this.mNonDisplay = cCMemory;
    }

    private void updateDisplay() {
        DisplayListener displayListener = this.mListener;
        if (displayListener != null) {
            this.mListener.onDisplayChanged(this.mDisplay.getStyledText(displayListener.getCaptionStyle()));
        }
    }

    public void parse(byte[] bArr) {
        CCData[] cCDataArrFromByteArray = CCData.fromByteArray(bArr);
        for (int i2 = 0; i2 < cCDataArrFromByteArray.length; i2++) {
            if (DEBUG) {
                Log.d(TAG, cCDataArrFromByteArray[i2].toString());
            }
            if (!handleCtrlCode(cCDataArrFromByteArray[i2]) && !handleTabOffsets(cCDataArrFromByteArray[i2]) && !handlePACCode(cCDataArrFromByteArray[i2]) && !handleMidRowCode(cCDataArrFromByteArray[i2])) {
                handleDisplayableChars(cCDataArrFromByteArray[i2]);
            }
        }
    }
}
