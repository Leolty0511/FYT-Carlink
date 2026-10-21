package android.media;

import android.graphics.Color;
import android.net.wifi.WifiNetworkScoreCache;
import android.util.Log;
import com.google.common.base.Ascii;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
class Cea708CCParser {
    public static final int CAPTION_EMIT_TYPE_BUFFER = 1;
    public static final int CAPTION_EMIT_TYPE_COMMAND_CLW = 4;
    public static final int CAPTION_EMIT_TYPE_COMMAND_CWX = 3;
    public static final int CAPTION_EMIT_TYPE_COMMAND_DFX = 16;
    public static final int CAPTION_EMIT_TYPE_COMMAND_DLC = 10;
    public static final int CAPTION_EMIT_TYPE_COMMAND_DLW = 8;
    public static final int CAPTION_EMIT_TYPE_COMMAND_DLY = 9;
    public static final int CAPTION_EMIT_TYPE_COMMAND_DSW = 5;
    public static final int CAPTION_EMIT_TYPE_COMMAND_HDW = 6;
    public static final int CAPTION_EMIT_TYPE_COMMAND_RST = 11;
    public static final int CAPTION_EMIT_TYPE_COMMAND_SPA = 12;
    public static final int CAPTION_EMIT_TYPE_COMMAND_SPC = 13;
    public static final int CAPTION_EMIT_TYPE_COMMAND_SPL = 14;
    public static final int CAPTION_EMIT_TYPE_COMMAND_SWA = 15;
    public static final int CAPTION_EMIT_TYPE_COMMAND_TGW = 7;
    public static final int CAPTION_EMIT_TYPE_CONTROL = 2;
    private static final boolean DEBUG = false;
    private static final String MUSIC_NOTE_CHAR = new String("♫".getBytes(StandardCharsets.UTF_8), StandardCharsets.UTF_8);
    private static final String TAG = "Cea708CCParser";
    private final StringBuffer mBuffer = new StringBuffer();
    private int mCommand = 0;
    private DisplayListener mListener;

    public static class CaptionColor {
        public static final int OPACITY_FLASH = 1;
        public static final int OPACITY_SOLID = 0;
        public static final int OPACITY_TRANSLUCENT = 2;
        public static final int OPACITY_TRANSPARENT = 3;
        public final int blue;
        public final int green;
        public final int opacity;
        public final int red;
        private static final int[] COLOR_MAP = {0, 15, 240, 255};
        private static final int[] OPACITY_MAP = {255, 254, 128, 0};

        public CaptionColor(int i2, int i3, int i4, int i5) {
            this.opacity = i2;
            this.red = i3;
            this.green = i4;
            this.blue = i5;
        }

        public int getArgbValue() {
            int i2 = OPACITY_MAP[this.opacity];
            int[] iArr = COLOR_MAP;
            return Color.argb(i2, iArr[this.red], iArr[this.green], iArr[this.blue]);
        }
    }

    public static class CaptionEvent {
        public final Object obj;
        public final int type;

        public CaptionEvent(int i2, Object obj) {
            this.type = i2;
            this.obj = obj;
        }
    }

    public static class CaptionPenAttr {
        public static final int OFFSET_NORMAL = 1;
        public static final int OFFSET_SUBSCRIPT = 0;
        public static final int OFFSET_SUPERSCRIPT = 2;
        public static final int PEN_SIZE_LARGE = 2;
        public static final int PEN_SIZE_SMALL = 0;
        public static final int PEN_SIZE_STANDARD = 1;
        public final int edgeType;
        public final int fontTag;
        public final boolean italic;
        public final int penOffset;
        public final int penSize;
        public final int textTag;
        public final boolean underline;

        public CaptionPenAttr(int i2, int i3, int i4, int i5, int i6, boolean z2, boolean z3) {
            this.penSize = i2;
            this.penOffset = i3;
            this.textTag = i4;
            this.fontTag = i5;
            this.edgeType = i6;
            this.underline = z2;
            this.italic = z3;
        }
    }

    public static class CaptionPenColor {
        public final CaptionColor backgroundColor;
        public final CaptionColor edgeColor;
        public final CaptionColor foregroundColor;

        public CaptionPenColor(CaptionColor captionColor, CaptionColor captionColor2, CaptionColor captionColor3) {
            this.foregroundColor = captionColor;
            this.backgroundColor = captionColor2;
            this.edgeColor = captionColor3;
        }
    }

    public static class CaptionPenLocation {
        public final int column;
        public final int row;

        public CaptionPenLocation(int i2, int i3) {
            this.row = i2;
            this.column = i3;
        }
    }

    public static class CaptionWindow {
        public final int anchorHorizontal;
        public final int anchorId;
        public final int anchorVertical;
        public final int columnCount;
        public final boolean columnLock;
        public final int id;
        public final int penStyle;
        public final int priority;
        public final boolean relativePositioning;
        public final int rowCount;
        public final boolean rowLock;
        public final boolean visible;
        public final int windowStyle;

        public CaptionWindow(int i2, boolean z2, boolean z3, boolean z4, int i3, boolean z5, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            this.id = i2;
            this.visible = z2;
            this.rowLock = z3;
            this.columnLock = z4;
            this.priority = i3;
            this.relativePositioning = z5;
            this.anchorVertical = i4;
            this.anchorHorizontal = i5;
            this.anchorId = i6;
            this.rowCount = i7;
            this.columnCount = i8;
            this.penStyle = i9;
            this.windowStyle = i10;
        }
    }

    public static class CaptionWindowAttr {
        public final CaptionColor borderColor;
        public final int borderType;
        public final int displayEffect;
        public final int effectDirection;
        public final int effectSpeed;
        public final CaptionColor fillColor;
        public final int justify;
        public final int printDirection;
        public final int scrollDirection;
        public final boolean wordWrap;

        public CaptionWindowAttr(CaptionColor captionColor, CaptionColor captionColor2, int i2, boolean z2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.fillColor = captionColor;
            this.borderColor = captionColor2;
            this.borderType = i2;
            this.wordWrap = z2;
            this.printDirection = i3;
            this.scrollDirection = i4;
            this.justify = i5;
            this.effectDirection = i6;
            this.effectSpeed = i7;
            this.displayEffect = i8;
        }
    }

    public static class Const {
        public static final int CODE_C0_BS = 8;
        public static final int CODE_C0_CR = 13;
        public static final int CODE_C0_ETX = 3;
        public static final int CODE_C0_EXT1 = 16;
        public static final int CODE_C0_FF = 12;
        public static final int CODE_C0_HCR = 14;
        public static final int CODE_C0_NUL = 0;
        public static final int CODE_C0_P16 = 24;
        public static final int CODE_C0_RANGE_END = 31;
        public static final int CODE_C0_RANGE_START = 0;
        public static final int CODE_C0_SKIP1_RANGE_END = 23;
        public static final int CODE_C0_SKIP1_RANGE_START = 16;
        public static final int CODE_C0_SKIP2_RANGE_END = 31;
        public static final int CODE_C0_SKIP2_RANGE_START = 24;
        public static final int CODE_C1_CLW = 136;
        public static final int CODE_C1_CW0 = 128;
        public static final int CODE_C1_CW1 = 129;
        public static final int CODE_C1_CW2 = 130;
        public static final int CODE_C1_CW3 = 131;
        public static final int CODE_C1_CW4 = 132;
        public static final int CODE_C1_CW5 = 133;
        public static final int CODE_C1_CW6 = 134;
        public static final int CODE_C1_CW7 = 135;
        public static final int CODE_C1_DF0 = 152;
        public static final int CODE_C1_DF1 = 153;
        public static final int CODE_C1_DF2 = 154;
        public static final int CODE_C1_DF3 = 155;
        public static final int CODE_C1_DF4 = 156;
        public static final int CODE_C1_DF5 = 157;
        public static final int CODE_C1_DF6 = 158;
        public static final int CODE_C1_DF7 = 159;
        public static final int CODE_C1_DLC = 142;
        public static final int CODE_C1_DLW = 140;
        public static final int CODE_C1_DLY = 141;
        public static final int CODE_C1_DSW = 137;
        public static final int CODE_C1_HDW = 138;
        public static final int CODE_C1_RANGE_END = 159;
        public static final int CODE_C1_RANGE_START = 128;
        public static final int CODE_C1_RST = 143;
        public static final int CODE_C1_SPA = 144;
        public static final int CODE_C1_SPC = 145;
        public static final int CODE_C1_SPL = 146;
        public static final int CODE_C1_SWA = 151;
        public static final int CODE_C1_TGW = 139;
        public static final int CODE_C2_RANGE_END = 31;
        public static final int CODE_C2_RANGE_START = 0;
        public static final int CODE_C2_SKIP0_RANGE_END = 7;
        public static final int CODE_C2_SKIP0_RANGE_START = 0;
        public static final int CODE_C2_SKIP1_RANGE_END = 15;
        public static final int CODE_C2_SKIP1_RANGE_START = 8;
        public static final int CODE_C2_SKIP2_RANGE_END = 23;
        public static final int CODE_C2_SKIP2_RANGE_START = 16;
        public static final int CODE_C2_SKIP3_RANGE_END = 31;
        public static final int CODE_C2_SKIP3_RANGE_START = 24;
        public static final int CODE_C3_RANGE_END = 159;
        public static final int CODE_C3_RANGE_START = 128;
        public static final int CODE_C3_SKIP4_RANGE_END = 135;
        public static final int CODE_C3_SKIP4_RANGE_START = 128;
        public static final int CODE_C3_SKIP5_RANGE_END = 143;
        public static final int CODE_C3_SKIP5_RANGE_START = 136;
        public static final int CODE_G0_MUSICNOTE = 127;
        public static final int CODE_G0_RANGE_END = 127;
        public static final int CODE_G0_RANGE_START = 32;
        public static final int CODE_G1_RANGE_END = 255;
        public static final int CODE_G1_RANGE_START = 160;
        public static final int CODE_G2_BLK = 48;
        public static final int CODE_G2_NBTSP = 33;
        public static final int CODE_G2_RANGE_END = 127;
        public static final int CODE_G2_RANGE_START = 32;
        public static final int CODE_G2_TSP = 32;
        public static final int CODE_G3_CC = 160;
        public static final int CODE_G3_RANGE_END = 255;
        public static final int CODE_G3_RANGE_START = 160;

        private Const() {
        }
    }

    public interface DisplayListener {
        void emitEvent(CaptionEvent captionEvent);
    }

    public Cea708CCParser(DisplayListener displayListener) {
        this.mListener = new DisplayListener() { // from class: android.media.Cea708CCParser.1
            @Override // android.media.Cea708CCParser.DisplayListener
            public void emitEvent(CaptionEvent captionEvent) {
            }
        };
        if (displayListener != null) {
            this.mListener = displayListener;
        }
    }

    private void emitCaptionBuffer() {
        if (this.mBuffer.length() > 0) {
            this.mListener.emitEvent(new CaptionEvent(1, this.mBuffer.toString()));
            this.mBuffer.setLength(0);
        }
    }

    private void emitCaptionEvent(CaptionEvent captionEvent) {
        emitCaptionBuffer();
        this.mListener.emitEvent(captionEvent);
    }

    private int parseC0(byte[] bArr, int i2) {
        int i3 = this.mCommand;
        if (i3 >= 24 && i3 <= 31) {
            if (i3 == 24) {
                try {
                    if (bArr[i2] == 0) {
                        this.mBuffer.append((char) bArr[i2 + 1]);
                    } else {
                        this.mBuffer.append(new String(Arrays.copyOfRange(bArr, i2, i2 + 2), "EUC-KR"));
                    }
                } catch (UnsupportedEncodingException e2) {
                    Log.e(TAG, "P16 Code - Could not find supported encoding", e2);
                }
            }
            return i2 + 2;
        }
        if (i3 >= 16 && i3 <= 23) {
            return i2 + 1;
        }
        if (i3 == 3) {
            emitCaptionEvent(new CaptionEvent(2, Character.valueOf((char) i3)));
            return i2;
        }
        if (i3 == 8) {
            emitCaptionEvent(new CaptionEvent(2, Character.valueOf((char) i3)));
            return i2;
        }
        switch (i3) {
            case 12:
                emitCaptionEvent(new CaptionEvent(2, Character.valueOf((char) i3)));
                return i2;
            case 13:
                this.mBuffer.append('\n');
                return i2;
            case 14:
                emitCaptionEvent(new CaptionEvent(2, Character.valueOf((char) i3)));
                return i2;
            default:
                return i2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int parseC1(byte[] bArr, int i2) {
        int i3;
        int i4 = this.mCommand;
        switch (i4) {
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 135:
                emitCaptionEvent(new CaptionEvent(3, Integer.valueOf(i4 + WifiNetworkScoreCache.INVALID_NETWORK_SCORE)));
                return i2;
            case 136:
                int i5 = i2 + 1;
                emitCaptionEvent(new CaptionEvent(4, Integer.valueOf(bArr[i2] & 255)));
                return i5;
            case 137:
                int i6 = i2 + 1;
                emitCaptionEvent(new CaptionEvent(5, Integer.valueOf(bArr[i2] & 255)));
                return i6;
            case 138:
                int i7 = i2 + 1;
                emitCaptionEvent(new CaptionEvent(6, Integer.valueOf(bArr[i2] & 255)));
                return i7;
            case 139:
                int i8 = i2 + 1;
                emitCaptionEvent(new CaptionEvent(7, Integer.valueOf(bArr[i2] & 255)));
                return i8;
            case 140:
                int i9 = i2 + 1;
                emitCaptionEvent(new CaptionEvent(8, Integer.valueOf(bArr[i2] & 255)));
                return i9;
            case 141:
                int i10 = i2 + 1;
                emitCaptionEvent(new CaptionEvent(9, Integer.valueOf(bArr[i2] & 255)));
                return i10;
            case 142:
                emitCaptionEvent(new CaptionEvent(10, null));
                return i2;
            case 143:
                emitCaptionEvent(new CaptionEvent(11, null));
                return i2;
            case 144:
                byte b2 = bArr[i2];
                int i11 = (b2 & 240) >> 4;
                int i12 = b2 & 3;
                int i13 = (b2 & Ascii.FF) >> 2;
                byte b3 = bArr[i2 + 1];
                boolean z2 = (b3 & 128) != 0;
                boolean z3 = (b3 & 64) != 0;
                int i14 = (b3 & 56) >> 3;
                int i15 = b3 & 7;
                i3 = i2 + 2;
                emitCaptionEvent(new CaptionEvent(12, new CaptionPenAttr(i12, i13, i11, i15, i14, z3, z2)));
                break;
            case 145:
                byte b4 = bArr[i2];
                CaptionColor captionColor = new CaptionColor((b4 & 192) >> 6, (b4 & 48) >> 4, (b4 & Ascii.FF) >> 2, b4 & 3);
                int i16 = i2 + 1;
                byte b5 = bArr[i16];
                CaptionColor captionColor2 = new CaptionColor((b5 & 192) >> 6, (b5 & 48) >> 4, (b5 & Ascii.FF) >> 2, b5 & 3);
                int i17 = i16 + 1;
                byte b6 = bArr[i17];
                i3 = i17 + 1;
                emitCaptionEvent(new CaptionEvent(13, new CaptionPenColor(captionColor, captionColor2, new CaptionColor(0, (b6 & 48) >> 4, (b6 & Ascii.FF) >> 2, b6 & 3))));
                break;
            case 146:
                int i18 = i2 + 2;
                emitCaptionEvent(new CaptionEvent(14, new CaptionPenLocation(bArr[i2] & 15, bArr[i2 + 1] & 63)));
                return i18;
            case 147:
            case 148:
            case 149:
            case 150:
            default:
                return i2;
            case 151:
                byte b7 = bArr[i2];
                CaptionColor captionColor3 = new CaptionColor((b7 & 192) >> 6, (b7 & 48) >> 4, (b7 & Ascii.FF) >> 2, b7 & 3);
                byte b8 = bArr[i2 + 1];
                int i19 = i2 + 2;
                int i20 = ((b8 & 192) >> 6) | ((bArr[i19] & 128) >> 5);
                CaptionColor captionColor4 = new CaptionColor(0, (b8 & 48) >> 4, (b8 & Ascii.FF) >> 2, b8 & 3);
                byte b9 = bArr[i19];
                boolean z4 = (b9 & 64) != 0;
                int i21 = (b9 & 48) >> 4;
                int i22 = (b9 & Ascii.FF) >> 2;
                int i23 = b9 & 3;
                byte b10 = bArr[i2 + 3];
                int i24 = (b10 & 240) >> 4;
                int i25 = (b10 & Ascii.FF) >> 2;
                int i26 = b10 & 3;
                i3 = i2 + 4;
                emitCaptionEvent(new CaptionEvent(15, new CaptionWindowAttr(captionColor3, captionColor4, i20, z4, i21, i22, i23, i25, i24, i26)));
                break;
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
                int i27 = i4 - 152;
                byte b11 = bArr[i2];
                boolean z5 = (b11 & 32) != 0;
                boolean z6 = (b11 & 16) != 0;
                boolean z7 = (b11 & 8) != 0;
                int i28 = b11 & 7;
                byte b12 = bArr[i2 + 1];
                boolean z8 = (b12 & 128) != 0;
                int i29 = b12 & Ascii.DEL;
                int i30 = bArr[i2 + 2] & 255;
                byte b13 = bArr[i2 + 3];
                int i31 = (b13 & 240) >> 4;
                int i32 = b13 & 15;
                int i33 = bArr[i2 + 4] & 63;
                byte b14 = bArr[i2 + 5];
                int i34 = (b14 & 56) >> 3;
                int i35 = b14 & 7;
                int i36 = i2 + 6;
                emitCaptionEvent(new CaptionEvent(16, new CaptionWindow(i27, z5, z6, z7, i28, z8, i29, i30, i31, i32, i33, i35, i34)));
                return i36;
        }
        return i3;
    }

    private int parseC2(byte[] bArr, int i2) {
        int i3 = this.mCommand;
        if (i3 >= 0 && i3 <= 7) {
            return i2;
        }
        if (i3 >= 8 && i3 <= 15) {
            return i2 + 1;
        }
        if (i3 < 16 || i3 > 23) {
            return (i3 < 24 || i3 > 31) ? i2 : i2 + 3;
        }
        return i2 + 2;
    }

    private int parseC3(byte[] bArr, int i2) {
        int i3 = this.mCommand;
        if (i3 < 128 || i3 > 135) {
            return (i3 < 136 || i3 > 143) ? i2 : i2 + 5;
        }
        return i2 + 4;
    }

    private int parseExt1(byte[] bArr, int i2) {
        int i3 = bArr[i2] & 255;
        this.mCommand = i3;
        int i4 = i2 + 1;
        if (i3 >= 0 && i3 <= 31) {
            return parseC2(bArr, i4);
        }
        if (i3 >= 128 && i3 <= 159) {
            return parseC3(bArr, i4);
        }
        if (i3 < 32 || i3 > 127) {
            return (i3 < 160 || i3 > 255) ? i4 : parseG3(bArr, i4);
        }
        return parseG2(bArr, i4);
    }

    private int parseG0(byte[] bArr, int i2) {
        int i3 = this.mCommand;
        if (i3 == 127) {
            this.mBuffer.append(MUSIC_NOTE_CHAR);
        } else {
            this.mBuffer.append((char) i3);
        }
        return i2;
    }

    private int parseG1(byte[] bArr, int i2) {
        this.mBuffer.append((char) this.mCommand);
        return i2;
    }

    private int parseG2(byte[] bArr, int i2) {
        return i2;
    }

    private int parseG3(byte[] bArr, int i2) {
        return i2;
    }

    private int parseServiceBlockData(byte[] bArr, int i2) {
        int i3 = bArr[i2] & 255;
        this.mCommand = i3;
        int i4 = i2 + 1;
        if (i3 == 16) {
            return parseExt1(bArr, i4);
        }
        if (i3 >= 0 && i3 <= 31) {
            return parseC0(bArr, i4);
        }
        if (i3 >= 128 && i3 <= 159) {
            return parseC1(bArr, i4);
        }
        if (i3 < 32 || i3 > 127) {
            return (i3 < 160 || i3 > 255) ? i4 : parseG1(bArr, i4);
        }
        return parseG0(bArr, i4);
    }

    public void parse(byte[] bArr) {
        int serviceBlockData = 0;
        while (serviceBlockData < bArr.length) {
            serviceBlockData = parseServiceBlockData(bArr, serviceBlockData);
        }
        emitCaptionBuffer();
    }
}
