package com.google.zxing.datamatrix.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitSource;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.ECIStringBuilder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class DecodedBitStreamParser {
    private static final char[] C40_BASIC_SET_CHARS = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
    private static final char[] C40_SHIFT2_SET_CHARS = {'!', '\"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', '/', ':', ';', '<', '=', '>', '?', '@', '[', '\\', ']', '^', '_'};
    private static final char[] TEXT_BASIC_SET_CHARS = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    private static final char[] TEXT_SHIFT2_SET_CHARS = C40_SHIFT2_SET_CHARS;
    private static final char[] TEXT_SHIFT3_SET_CHARS = {'`', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '{', '|', '}', '~', 127};

    private enum Mode {
        PAD_ENCODE,
        ASCII_ENCODE,
        C40_ENCODE,
        TEXT_ENCODE,
        ANSIX12_ENCODE,
        EDIFACT_ENCODE,
        BASE256_ENCODE,
        ECI_ENCODE
    }

    private DecodedBitStreamParser() {
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003b  */
    /* JADX WARN: Code duplicated, block: B:14:0x0040  */
    /* JADX WARN: Code duplicated, block: B:18:0x0054  */
    /* JADX WARN: Code duplicated, block: B:21:0x0061  */
    /* JADX WARN: Code duplicated, block: B:41:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:45:0x00be  */
    /* JADX WARN: Code duplicated, block: B:52:0x00d9  */
    static DecoderResult decode(byte[] bytes) throws FormatException {
        int symbologyModifier;
        List<byte[]> list;
        BitSource bits = new BitSource(bytes);
        ECIStringBuilder result = new ECIStringBuilder(100);
        StringBuilder resultTrailer = new StringBuilder(0);
        List<byte[]> byteSegments = new ArrayList<>(1);
        Mode mode = Mode.ASCII_ENCODE;
        Set<Integer> fnc1Positions = new HashSet<>();
        boolean isECIencoded = false;
        do {
            if (mode == Mode.ASCII_ENCODE) {
                mode = decodeAsciiSegment(bits, result, resultTrailer, fnc1Positions);
            } else {
                switch (mode) {
                    case C40_ENCODE:
                        decodeC40Segment(bits, result, fnc1Positions);
                        break;
                    case TEXT_ENCODE:
                        decodeTextSegment(bits, result, fnc1Positions);
                        break;
                    case ANSIX12_ENCODE:
                        decodeAnsiX12Segment(bits, result);
                        break;
                    case EDIFACT_ENCODE:
                        decodeEdifactSegment(bits, result);
                        break;
                    case BASE256_ENCODE:
                        decodeBase256Segment(bits, result, byteSegments);
                        break;
                    case ECI_ENCODE:
                        decodeECISegment(bits, result);
                        isECIencoded = true;
                        break;
                    default:
                        throw FormatException.getFormatInstance();
                }
                mode = Mode.ASCII_ENCODE;
            }
            if (mode != Mode.PAD_ENCODE) {
            }
            if (resultTrailer.length() > 0) {
                result.appendCharacters(resultTrailer);
            }
            if (isECIencoded) {
                if (!fnc1Positions.contains(0) || fnc1Positions.contains(4)) {
                    symbologyModifier = 5;
                } else if (fnc1Positions.contains(1) || fnc1Positions.contains(5)) {
                    symbologyModifier = 6;
                } else {
                    symbologyModifier = 4;
                }
            } else if (!fnc1Positions.contains(0) || fnc1Positions.contains(4)) {
                symbologyModifier = 2;
            } else if (fnc1Positions.contains(1) || fnc1Positions.contains(5)) {
                symbologyModifier = 3;
            } else {
                symbologyModifier = 1;
            }
            String string = result.toString();
            if (byteSegments.isEmpty()) {
                list = null;
            } else {
                list = byteSegments;
            }
            return new DecoderResult(bytes, string, list, null, symbologyModifier);
        } while (bits.available() > 0);
        if (resultTrailer.length() > 0) {
            result.appendCharacters(resultTrailer);
        }
        if (isECIencoded) {
            if (!fnc1Positions.contains(0)) {
                symbologyModifier = 5;
            } else {
                symbologyModifier = 5;
            }
        } else if (!fnc1Positions.contains(0)) {
            symbologyModifier = 2;
        } else {
            symbologyModifier = 2;
        }
        String string2 = result.toString();
        if (byteSegments.isEmpty()) {
            list = null;
        } else {
            list = byteSegments;
        }
        return new DecoderResult(bytes, string2, list, null, symbologyModifier);
    }

    private static Mode decodeAsciiSegment(BitSource bits, ECIStringBuilder result, StringBuilder resultTrailer, Set<Integer> fnc1positions) throws FormatException {
        boolean upperShift = false;
        do {
            int oneByte = bits.readBits(8);
            if (oneByte == 0) {
                throw FormatException.getFormatInstance();
            }
            if (oneByte <= 128) {
                if (upperShift) {
                    oneByte += 128;
                }
                result.append((char) (oneByte - 1));
                return Mode.ASCII_ENCODE;
            }
            if (oneByte == 129) {
                return Mode.PAD_ENCODE;
            }
            if (oneByte <= 229) {
                int value = oneByte - 130;
                if (value < 10) {
                    result.append('0');
                }
                result.append(value);
            } else {
                switch (oneByte) {
                    case 230:
                        return Mode.C40_ENCODE;
                    case 231:
                        return Mode.BASE256_ENCODE;
                    case 232:
                        fnc1positions.add(Integer.valueOf(result.length()));
                        result.append((char) 29);
                        break;
                    case 233:
                    case 234:
                        break;
                    case 235:
                        upperShift = true;
                        break;
                    case 236:
                        result.append("[)>\u001e05\u001d");
                        resultTrailer.insert(0, "\u001e\u0004");
                        break;
                    case 237:
                        result.append("[)>\u001e06\u001d");
                        resultTrailer.insert(0, "\u001e\u0004");
                        break;
                    case 238:
                        return Mode.ANSIX12_ENCODE;
                    case 239:
                        return Mode.TEXT_ENCODE;
                    case 240:
                        return Mode.EDIFACT_ENCODE;
                    case 241:
                        return Mode.ECI_ENCODE;
                    default:
                        if (oneByte != 254 || bits.available() != 0) {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                }
            }
        } while (bits.available() > 0);
        return Mode.ASCII_ENCODE;
    }

    private static void decodeC40Segment(BitSource bits, ECIStringBuilder result, Set<Integer> fnc1positions) throws FormatException {
        int firstByte;
        boolean upperShift = false;
        int[] cValues = new int[3];
        int shift = 0;
        while (bits.available() != 8 && (firstByte = bits.readBits(8)) != 254) {
            parseTwoBytes(firstByte, bits.readBits(8), cValues);
            for (int i = 0; i < 3; i++) {
                int cValue = cValues[i];
                switch (shift) {
                    case 0:
                        if (cValue < 3) {
                            shift = cValue + 1;
                        } else if (cValue < C40_BASIC_SET_CHARS.length) {
                            char c40char = C40_BASIC_SET_CHARS[cValue];
                            if (upperShift) {
                                result.append((char) (c40char + 128));
                                upperShift = false;
                            } else {
                                result.append(c40char);
                            }
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    case 1:
                        if (upperShift) {
                            result.append((char) (cValue + 128));
                            upperShift = false;
                        } else {
                            result.append((char) cValue);
                        }
                        shift = 0;
                        break;
                    case 2:
                        if (cValue < C40_SHIFT2_SET_CHARS.length) {
                            char c40char2 = C40_SHIFT2_SET_CHARS[cValue];
                            if (upperShift) {
                                result.append((char) (c40char2 + 128));
                                upperShift = false;
                            } else {
                                result.append(c40char2);
                            }
                        } else {
                            switch (cValue) {
                                case 27:
                                    fnc1positions.add(Integer.valueOf(result.length()));
                                    result.append((char) 29);
                                    break;
                                case 28:
                                case 29:
                                default:
                                    throw FormatException.getFormatInstance();
                                case 30:
                                    upperShift = true;
                                    break;
                            }
                        }
                        shift = 0;
                        break;
                    case 3:
                        if (upperShift) {
                            result.append((char) (cValue + 224));
                            upperShift = false;
                        } else {
                            result.append((char) (cValue + 96));
                        }
                        shift = 0;
                        break;
                    default:
                        throw FormatException.getFormatInstance();
                }
            }
            if (bits.available() <= 0) {
                return;
            }
        }
    }

    private static void decodeTextSegment(BitSource bits, ECIStringBuilder result, Set<Integer> fnc1positions) throws FormatException {
        int firstByte;
        boolean upperShift = false;
        int[] cValues = new int[3];
        int shift = 0;
        while (bits.available() != 8 && (firstByte = bits.readBits(8)) != 254) {
            parseTwoBytes(firstByte, bits.readBits(8), cValues);
            for (int i = 0; i < 3; i++) {
                int cValue = cValues[i];
                switch (shift) {
                    case 0:
                        if (cValue < 3) {
                            shift = cValue + 1;
                        } else if (cValue < TEXT_BASIC_SET_CHARS.length) {
                            char textChar = TEXT_BASIC_SET_CHARS[cValue];
                            if (upperShift) {
                                result.append((char) (textChar + 128));
                                upperShift = false;
                            } else {
                                result.append(textChar);
                            }
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    case 1:
                        if (upperShift) {
                            result.append((char) (cValue + 128));
                            upperShift = false;
                        } else {
                            result.append((char) cValue);
                        }
                        shift = 0;
                        break;
                    case 2:
                        if (cValue < TEXT_SHIFT2_SET_CHARS.length) {
                            char textChar2 = TEXT_SHIFT2_SET_CHARS[cValue];
                            if (upperShift) {
                                result.append((char) (textChar2 + 128));
                                upperShift = false;
                            } else {
                                result.append(textChar2);
                            }
                        } else {
                            switch (cValue) {
                                case 27:
                                    fnc1positions.add(Integer.valueOf(result.length()));
                                    result.append((char) 29);
                                    break;
                                case 28:
                                case 29:
                                default:
                                    throw FormatException.getFormatInstance();
                                case 30:
                                    upperShift = true;
                                    break;
                            }
                        }
                        shift = 0;
                        break;
                    case 3:
                        if (cValue < TEXT_SHIFT3_SET_CHARS.length) {
                            char textChar3 = TEXT_SHIFT3_SET_CHARS[cValue];
                            if (upperShift) {
                                result.append((char) (textChar3 + 128));
                                upperShift = false;
                            } else {
                                result.append(textChar3);
                            }
                            shift = 0;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    default:
                        throw FormatException.getFormatInstance();
                }
            }
            if (bits.available() <= 0) {
                return;
            }
        }
    }

    private static void decodeAnsiX12Segment(BitSource bits, ECIStringBuilder result) throws FormatException {
        int firstByte;
        int[] cValues = new int[3];
        while (bits.available() != 8 && (firstByte = bits.readBits(8)) != 254) {
            parseTwoBytes(firstByte, bits.readBits(8), cValues);
            for (int i = 0; i < 3; i++) {
                int cValue = cValues[i];
                switch (cValue) {
                    case 0:
                        result.append('\r');
                        break;
                    case 1:
                        result.append('*');
                        break;
                    case 2:
                        result.append('>');
                        break;
                    case 3:
                        result.append(' ');
                        break;
                    default:
                        if (cValue < 14) {
                            result.append((char) (cValue + 44));
                        } else if (cValue < 40) {
                            result.append((char) (cValue + 51));
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                }
            }
            if (bits.available() <= 0) {
                return;
            }
        }
    }

    private static void parseTwoBytes(int firstByte, int secondByte, int[] result) {
        int fullBitValue = ((firstByte << 8) + secondByte) - 1;
        int temp = fullBitValue / 1600;
        result[0] = temp;
        int fullBitValue2 = fullBitValue - (temp * 1600);
        int temp2 = fullBitValue2 / 40;
        result[1] = temp2;
        result[2] = fullBitValue2 - (temp2 * 40);
    }

    private static void decodeEdifactSegment(BitSource bits, ECIStringBuilder result) {
        while (bits.available() > 16) {
            for (int i = 0; i < 4; i++) {
                int edifactValue = bits.readBits(6);
                if (edifactValue == 31) {
                    int bitsLeft = 8 - bits.getBitOffset();
                    if (bitsLeft != 8) {
                        bits.readBits(bitsLeft);
                        return;
                    }
                    return;
                }
                if ((edifactValue & 32) == 0) {
                    edifactValue |= 64;
                }
                result.append((char) edifactValue);
            }
            if (bits.available() <= 0) {
                return;
            }
        }
    }

    private static void decodeBase256Segment(BitSource bits, ECIStringBuilder result, Collection<byte[]> byteSegments) throws FormatException {
        int codewordPosition;
        int count;
        int codewordPosition2 = bits.getByteOffset() + 1;
        int codewordPosition3 = codewordPosition2 + 1;
        int d1 = unrandomize255State(bits.readBits(8), codewordPosition2);
        if (d1 == 0) {
            count = bits.available() / 8;
            codewordPosition = codewordPosition3;
        } else if (d1 < 250) {
            count = d1;
            codewordPosition = codewordPosition3;
        } else {
            codewordPosition = codewordPosition3 + 1;
            count = ((d1 - 249) * 250) + unrandomize255State(bits.readBits(8), codewordPosition3);
        }
        if (count < 0) {
            throw FormatException.getFormatInstance();
        }
        byte[] bytes = new byte[count];
        int i = 0;
        int codewordPosition4 = codewordPosition;
        while (i < count) {
            if (bits.available() < 8) {
                throw FormatException.getFormatInstance();
            }
            bytes[i] = (byte) unrandomize255State(bits.readBits(8), codewordPosition4);
            i++;
            codewordPosition4++;
        }
        byteSegments.add(bytes);
        result.append(new String(bytes, StandardCharsets.ISO_8859_1));
    }

    private static void decodeECISegment(BitSource bits, ECIStringBuilder result) throws FormatException {
        if (bits.available() < 8) {
            throw FormatException.getFormatInstance();
        }
        int c1 = bits.readBits(8);
        if (c1 <= 127) {
            result.appendECI(c1 - 1);
        }
    }

    private static int unrandomize255State(int randomizedBase256Codeword, int base256CodewordPosition) {
        int pseudoRandomNumber = ((base256CodewordPosition * 149) % 255) + 1;
        int tempVariable = randomizedBase256Codeword - pseudoRandomNumber;
        return tempVariable >= 0 ? tempVariable : tempVariable + 256;
    }
}
