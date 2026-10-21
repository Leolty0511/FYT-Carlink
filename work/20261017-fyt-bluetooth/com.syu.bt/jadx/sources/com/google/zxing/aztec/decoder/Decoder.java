package com.google.zxing.aztec.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.syu.bt.util.HanziToPinyin;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import net.lingala.zip4j.io.ZipIn;

/* JADX INFO: loaded from: classes.dex */
public final class Decoder {
    private AztecDetectorResult ddata;
    private static final String[] UPPER_TABLE = {"CTRL_PS", HanziToPinyin.Token.SEPARATOR, "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    private static final String[] LOWER_TABLE = {"CTRL_PS", HanziToPinyin.Token.SEPARATOR, "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", ZipIn.READ_MODE, "s", "t", "u", "v", "w", "x", "y", "z", "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    private static final String[] MIXED_TABLE = {"CTRL_PS", HanziToPinyin.Token.SEPARATOR, "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", "_", "`", "|", "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};
    private static final String[] PUNCT_TABLE = {"FLG(n)", "\r", "\r\n", ". ", ", ", ": ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", ":", ";", "<", "=", ">", "?", "[", "]", "{", "}", "CTRL_UL"};
    private static final String[] DIGIT_TABLE = {"CTRL_PS", HanziToPinyin.Token.SEPARATOR, "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ",", ".", "CTRL_UL", "CTRL_US"};
    private static final Charset DEFAULT_ENCODING = StandardCharsets.ISO_8859_1;

    private enum Table {
        UPPER,
        LOWER,
        MIXED,
        DIGIT,
        PUNCT,
        BINARY
    }

    public DecoderResult decode(AztecDetectorResult detectorResult) throws FormatException {
        this.ddata = detectorResult;
        BitMatrix matrix = detectorResult.getBits();
        boolean[] rawbits = extractBits(matrix);
        CorrectedBitsResult correctedBits = correctBits(rawbits);
        byte[] rawBytes = convertBoolArrayToByteArray(correctedBits.correctBits);
        String result = getEncodedData(correctedBits.correctBits);
        DecoderResult decoderResult = new DecoderResult(rawBytes, result, null, String.format("%d%%", Integer.valueOf(correctedBits.ecLevel)));
        decoderResult.setNumBits(correctedBits.correctBits.length);
        decoderResult.setErrorsCorrected(Integer.valueOf(correctedBits.errorsCorrected));
        return decoderResult;
    }

    public static String highLevelDecode(boolean[] correctedBits) throws FormatException {
        return getEncodedData(correctedBits);
    }

    private static String getEncodedData(boolean[] correctedBits) throws FormatException {
        int endIndex = correctedBits.length;
        Table latchTable = Table.UPPER;
        Table shiftTable = Table.UPPER;
        StringBuilder result = new StringBuilder((correctedBits.length - 5) / 4);
        ByteArrayOutputStream decodedBytes = new ByteArrayOutputStream();
        Charset encoding = DEFAULT_ENCODING;
        int index = 0;
        while (index < endIndex) {
            if (shiftTable == Table.BINARY) {
                if (endIndex - index >= 5) {
                    int length = readCode(correctedBits, index, 5);
                    index += 5;
                    if (length == 0) {
                        if (endIndex - index >= 11) {
                            length = readCode(correctedBits, index, 11) + 31;
                            index += 11;
                        }
                    }
                    for (int charCount = 0; charCount < length; charCount++) {
                        if (endIndex - index < 8) {
                            index = endIndex;
                            shiftTable = latchTable;
                        } else {
                            int code = readCode(correctedBits, index, 8);
                            decodedBytes.write((byte) code);
                            index += 8;
                        }
                    }
                    shiftTable = latchTable;
                }
            } else {
                int size = shiftTable == Table.DIGIT ? 4 : 5;
                if (endIndex - index >= size) {
                    int code2 = readCode(correctedBits, index, size);
                    index += size;
                    String str = getCharacter(shiftTable, code2);
                    if ("FLG(n)".equals(str)) {
                        if (endIndex - index >= 3) {
                            int n = readCode(correctedBits, index, 3);
                            index += 3;
                            try {
                                result.append(decodedBytes.toString(encoding.name()));
                                decodedBytes.reset();
                                switch (n) {
                                    case 0:
                                        result.append((char) 29);
                                        break;
                                    case 7:
                                        throw FormatException.getFormatInstance();
                                    default:
                                        int eci = 0;
                                        if (endIndex - index >= n * 4) {
                                            while (true) {
                                                int n2 = n;
                                                n = n2 - 1;
                                                if (n2 > 0) {
                                                    int nextDigit = readCode(correctedBits, index, 4);
                                                    index += 4;
                                                    if (nextDigit < 2 || nextDigit > 11) {
                                                        throw FormatException.getFormatInstance();
                                                    }
                                                    eci = (eci * 10) + (nextDigit - 2);
                                                } else {
                                                    CharacterSetECI charsetECI = CharacterSetECI.getCharacterSetECIByValue(eci);
                                                    if (charsetECI == null) {
                                                        throw FormatException.getFormatInstance();
                                                    }
                                                    encoding = charsetECI.getCharset();
                                                }
                                            }
                                        }
                                        break;
                                }
                                shiftTable = latchTable;
                            } catch (UnsupportedEncodingException uee) {
                                throw new IllegalStateException(uee);
                            }
                        }
                    } else if (str.startsWith("CTRL_")) {
                        latchTable = shiftTable;
                        shiftTable = getTable(str.charAt(5));
                        if (str.charAt(6) == 'L') {
                            latchTable = shiftTable;
                        }
                    } else {
                        byte[] b = str.getBytes(StandardCharsets.US_ASCII);
                        decodedBytes.write(b, 0, b.length);
                        shiftTable = latchTable;
                    }
                }
            }
        }
        try {
            result.append(decodedBytes.toString(encoding.name()));
            return result.toString();
        } catch (UnsupportedEncodingException uee2) {
            throw new IllegalStateException(uee2);
        }
    }

    private static Table getTable(char t) {
        switch (t) {
            case 'B':
                return Table.BINARY;
            case 'D':
                return Table.DIGIT;
            case 'L':
                return Table.LOWER;
            case 'M':
                return Table.MIXED;
            case 'P':
                return Table.PUNCT;
            default:
                return Table.UPPER;
        }
    }

    private static String getCharacter(Table table, int code) {
        switch (table) {
            case UPPER:
                return UPPER_TABLE[code];
            case LOWER:
                return LOWER_TABLE[code];
            case MIXED:
                return MIXED_TABLE[code];
            case PUNCT:
                return PUNCT_TABLE[code];
            case DIGIT:
                return DIGIT_TABLE[code];
            default:
                throw new IllegalStateException("Bad table");
        }
    }

    static final class CorrectedBitsResult {
        private final boolean[] correctBits;
        private final int ecLevel;
        private final int errorsCorrected;

        CorrectedBitsResult(boolean[] correctBits, int errorsCorrected, int ecLevel) {
            this.correctBits = correctBits;
            this.errorsCorrected = errorsCorrected;
            this.ecLevel = ecLevel;
        }
    }

    private CorrectedBitsResult correctBits(boolean[] rawbits) throws FormatException {
        int codewordSize;
        GenericGF gf;
        if (this.ddata.getNbLayers() <= 2) {
            codewordSize = 6;
            gf = GenericGF.AZTEC_DATA_6;
        } else if (this.ddata.getNbLayers() <= 8) {
            codewordSize = 8;
            gf = GenericGF.AZTEC_DATA_8;
        } else if (this.ddata.getNbLayers() <= 22) {
            codewordSize = 10;
            gf = GenericGF.AZTEC_DATA_10;
        } else {
            codewordSize = 12;
            gf = GenericGF.AZTEC_DATA_12;
        }
        int numDataCodewords = this.ddata.getNbDatablocks();
        int numCodewords = rawbits.length / codewordSize;
        if (numCodewords < numDataCodewords) {
            throw FormatException.getFormatInstance();
        }
        int offset = rawbits.length % codewordSize;
        int[] dataWords = new int[numCodewords];
        int i = 0;
        while (i < numCodewords) {
            dataWords[i] = readCode(rawbits, offset, codewordSize);
            i++;
            offset += codewordSize;
        }
        try {
            ReedSolomonDecoder rsDecoder = new ReedSolomonDecoder(gf);
            int errorsCorrected = rsDecoder.decodeWithECCount(dataWords, numCodewords - numDataCodewords);
            int mask = (1 << codewordSize) - 1;
            int stuffedBits = 0;
            for (int i2 = 0; i2 < numDataCodewords; i2++) {
                int dataWord = dataWords[i2];
                if (dataWord == 0 || dataWord == mask) {
                    throw FormatException.getFormatInstance();
                }
                if (dataWord == 1 || dataWord == mask - 1) {
                    stuffedBits++;
                }
            }
            boolean[] correctedBits = new boolean[(numDataCodewords * codewordSize) - stuffedBits];
            int index = 0;
            for (int i3 = 0; i3 < numDataCodewords; i3++) {
                int dataWord2 = dataWords[i3];
                if (dataWord2 == 1 || dataWord2 == mask - 1) {
                    Arrays.fill(correctedBits, index, (index + codewordSize) - 1, dataWord2 > 1);
                    index += codewordSize - 1;
                } else {
                    int bit = codewordSize - 1;
                    int index2 = index;
                    while (bit >= 0) {
                        int index3 = index2 + 1;
                        correctedBits[index2] = ((1 << bit) & dataWord2) != 0;
                        bit--;
                        index2 = index3;
                    }
                    index = index2;
                }
            }
            int ecLevel = ((numCodewords - numDataCodewords) * 100) / numCodewords;
            return new CorrectedBitsResult(correctedBits, errorsCorrected, ecLevel);
        } catch (ReedSolomonException ex) {
            throw FormatException.getFormatInstance(ex);
        }
    }

    private boolean[] extractBits(BitMatrix matrix) {
        boolean compact = this.ddata.isCompact();
        int layers = this.ddata.getNbLayers();
        int baseMatrixSize = (compact ? 11 : 14) + (layers * 4);
        int[] alignmentMap = new int[baseMatrixSize];
        boolean[] rawbits = new boolean[totalBitsInLayer(layers, compact)];
        if (compact) {
            for (int i = 0; i < alignmentMap.length; i++) {
                alignmentMap[i] = i;
            }
        } else {
            int matrixSize = baseMatrixSize + 1 + ((((baseMatrixSize / 2) - 1) / 15) * 2);
            int origCenter = baseMatrixSize / 2;
            int center = matrixSize / 2;
            for (int i2 = 0; i2 < origCenter; i2++) {
                int newOffset = i2 + (i2 / 15);
                alignmentMap[(origCenter - i2) - 1] = (center - newOffset) - 1;
                alignmentMap[origCenter + i2] = center + newOffset + 1;
            }
        }
        int rowOffset = 0;
        for (int i3 = 0; i3 < layers; i3++) {
            int rowSize = ((layers - i3) * 4) + (compact ? 9 : 12);
            int low = i3 * 2;
            int high = (baseMatrixSize - 1) - low;
            for (int j = 0; j < rowSize; j++) {
                int columnOffset = j * 2;
                for (int k = 0; k < 2; k++) {
                    rawbits[rowOffset + columnOffset + k] = matrix.get(alignmentMap[low + k], alignmentMap[low + j]);
                    rawbits[(rowSize * 2) + rowOffset + columnOffset + k] = matrix.get(alignmentMap[low + j], alignmentMap[high - k]);
                    rawbits[(rowSize * 4) + rowOffset + columnOffset + k] = matrix.get(alignmentMap[high - k], alignmentMap[high - j]);
                    rawbits[(rowSize * 6) + rowOffset + columnOffset + k] = matrix.get(alignmentMap[high - j], alignmentMap[low + k]);
                }
            }
            rowOffset += rowSize * 8;
        }
        return rawbits;
    }

    private static int readCode(boolean[] rawbits, int startIndex, int length) {
        int res = 0;
        for (int i = startIndex; i < startIndex + length; i++) {
            res <<= 1;
            if (rawbits[i]) {
                res |= 1;
            }
        }
        return res;
    }

    private static byte readByte(boolean[] rawbits, int startIndex) {
        int n = rawbits.length - startIndex;
        return n >= 8 ? (byte) readCode(rawbits, startIndex, 8) : (byte) (readCode(rawbits, startIndex, n) << (8 - n));
    }

    static byte[] convertBoolArrayToByteArray(boolean[] boolArr) {
        byte[] byteArr = new byte[(boolArr.length + 7) / 8];
        for (int i = 0; i < byteArr.length; i++) {
            byteArr[i] = readByte(boolArr, i * 8);
        }
        return byteArr;
    }

    private static int totalBitsInLayer(int layers, boolean compact) {
        return ((compact ? 88 : 112) + (layers * 16)) * layers;
    }
}
