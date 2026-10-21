package com.google.zxing.qrcode.encoder;

import com.google.zxing.WriterException;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.ECIEncoderSet;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.Version;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class MinimalEncoder {
    private final ErrorCorrectionLevel ecLevel;
    private final ECIEncoderSet encoders;
    private final boolean isGS1;
    private final String stringToEncode;

    private enum VersionSize {
        SMALL("version 1-9"),
        MEDIUM("version 10-26"),
        LARGE("version 27-40");

        private final String description;

        VersionSize(String description) {
            this.description = description;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.description;
        }
    }

    MinimalEncoder(String stringToEncode, Charset priorityCharset, boolean isGS1, ErrorCorrectionLevel ecLevel) {
        this.stringToEncode = stringToEncode;
        this.isGS1 = isGS1;
        this.encoders = new ECIEncoderSet(stringToEncode, priorityCharset, -1);
        this.ecLevel = ecLevel;
    }

    static ResultList encode(String stringToEncode, Version version, Charset priorityCharset, boolean isGS1, ErrorCorrectionLevel ecLevel) throws WriterException {
        return new MinimalEncoder(stringToEncode, priorityCharset, isGS1, ecLevel).encode(version);
    }

    ResultList encode(Version version) throws WriterException {
        if (version == null) {
            Version[] versions = {getVersion(VersionSize.SMALL), getVersion(VersionSize.MEDIUM), getVersion(VersionSize.LARGE)};
            ResultList[] results = {encodeSpecificVersion(versions[0]), encodeSpecificVersion(versions[1]), encodeSpecificVersion(versions[2])};
            int smallestSize = Integer.MAX_VALUE;
            int smallestResult = -1;
            for (int i = 0; i < 3; i++) {
                int size = results[i].getSize();
                if (Encoder.willFit(size, versions[i], this.ecLevel) && size < smallestSize) {
                    smallestSize = size;
                    smallestResult = i;
                }
            }
            if (smallestResult < 0) {
                throw new WriterException("Data too big for any version");
            }
            return results[smallestResult];
        }
        ResultList result = encodeSpecificVersion(version);
        if (!Encoder.willFit(result.getSize(), getVersion(getVersionSize(result.getVersion())), this.ecLevel)) {
            throw new WriterException("Data too big for version" + version);
        }
        return result;
    }

    static VersionSize getVersionSize(Version version) {
        if (version.getVersionNumber() <= 9) {
            return VersionSize.SMALL;
        }
        return version.getVersionNumber() <= 26 ? VersionSize.MEDIUM : VersionSize.LARGE;
    }

    static Version getVersion(VersionSize versionSize) {
        switch (versionSize) {
            case SMALL:
                return Version.getVersionForNumber(9);
            case MEDIUM:
                return Version.getVersionForNumber(26);
            default:
                return Version.getVersionForNumber(40);
        }
    }

    static boolean isNumeric(char c) {
        return c >= '0' && c <= '9';
    }

    static boolean isDoubleByteKanji(char c) {
        return Encoder.isOnlyDoubleByteKanji(String.valueOf(c));
    }

    static boolean isAlphanumeric(char c) {
        return Encoder.getAlphanumericCode(c) != -1;
    }

    boolean canEncode(Mode mode, char c) {
        switch (mode) {
            case KANJI:
                return isDoubleByteKanji(c);
            case ALPHANUMERIC:
                return isAlphanumeric(c);
            case NUMERIC:
                return isNumeric(c);
            case BYTE:
                return true;
            default:
                return false;
        }
    }

    static int getCompactedOrdinal(Mode mode) {
        if (mode == null) {
            return 0;
        }
        switch (mode) {
            case KANJI:
                return 0;
            case ALPHANUMERIC:
                return 1;
            case NUMERIC:
                return 2;
            case BYTE:
                return 3;
            default:
                throw new IllegalStateException("Illegal mode " + mode);
        }
    }

    void addEdge(Edge[][][] edges, int position, Edge edge) {
        int vertexIndex = position + edge.characterLength;
        Edge[] modeEdges = edges[vertexIndex][edge.charsetEncoderIndex];
        int modeOrdinal = getCompactedOrdinal(edge.mode);
        if (modeEdges[modeOrdinal] == null || modeEdges[modeOrdinal].cachedTotalSize > edge.cachedTotalSize) {
            modeEdges[modeOrdinal] = edge;
        }
    }

    void addEdges(Version version, Edge[][][] edges, int from, Edge previous) {
        int i;
        int start = 0;
        int end = this.encoders.length();
        int priorityEncoderIndex = this.encoders.getPriorityEncoderIndex();
        if (priorityEncoderIndex >= 0 && this.encoders.canEncode(this.stringToEncode.charAt(from), priorityEncoderIndex)) {
            start = priorityEncoderIndex;
            end = priorityEncoderIndex + 1;
        }
        for (int i2 = start; i2 < end; i2++) {
            if (this.encoders.canEncode(this.stringToEncode.charAt(from), i2)) {
                addEdge(edges, from, new Edge(Mode.BYTE, from, i2, 1, previous, version));
            }
        }
        if (canEncode(Mode.KANJI, this.stringToEncode.charAt(from))) {
            addEdge(edges, from, new Edge(Mode.KANJI, from, 0, 1, previous, version));
        }
        int inputLength = this.stringToEncode.length();
        if (canEncode(Mode.ALPHANUMERIC, this.stringToEncode.charAt(from))) {
            addEdge(edges, from, new Edge(Mode.ALPHANUMERIC, from, 0, (from + 1 >= inputLength || !canEncode(Mode.ALPHANUMERIC, this.stringToEncode.charAt(from + 1))) ? 1 : 2, previous, version));
        }
        if (canEncode(Mode.NUMERIC, this.stringToEncode.charAt(from))) {
            Mode mode = Mode.NUMERIC;
            int i3 = 0;
            if (from + 1 >= inputLength || !canEncode(Mode.NUMERIC, this.stringToEncode.charAt(from + 1))) {
                i = 1;
            } else {
                i = (from + 2 >= inputLength || !canEncode(Mode.NUMERIC, this.stringToEncode.charAt(from + 2))) ? 2 : 3;
            }
            addEdge(edges, from, new Edge(mode, from, i3, i, previous, version));
        }
    }

    ResultList encodeSpecificVersion(Version version) throws WriterException {
        int inputLength = this.stringToEncode.length();
        Edge[][][] edges = (Edge[][][]) Array.newInstance((Class<?>) Edge.class, inputLength + 1, this.encoders.length(), 4);
        addEdges(version, edges, 0, null);
        for (int i = 1; i <= inputLength; i++) {
            for (int j = 0; j < this.encoders.length(); j++) {
                for (int k = 0; k < 4; k++) {
                    if (edges[i][j][k] != null && i < inputLength) {
                        addEdges(version, edges, i, edges[i][j][k]);
                    }
                }
            }
        }
        int minimalJ = -1;
        int minimalK = -1;
        int minimalSize = Integer.MAX_VALUE;
        for (int j2 = 0; j2 < this.encoders.length(); j2++) {
            for (int k2 = 0; k2 < 4; k2++) {
                if (edges[inputLength][j2][k2] != null) {
                    Edge edge = edges[inputLength][j2][k2];
                    if (edge.cachedTotalSize < minimalSize) {
                        minimalSize = edge.cachedTotalSize;
                        minimalJ = j2;
                        minimalK = k2;
                    }
                }
            }
        }
        if (minimalJ < 0) {
            throw new WriterException("Internal error: failed to encode \"" + this.stringToEncode + "\"");
        }
        return new ResultList(version, edges[inputLength][minimalJ][minimalK]);
    }

    private final class Edge {
        private final int cachedTotalSize;
        private final int characterLength;
        private final int charsetEncoderIndex;
        private final int fromPosition;
        private final Mode mode;
        private final Edge previous;

        private Edge(Mode mode, int fromPosition, int charsetEncoderIndex, int characterLength, Edge previous, Version version) {
            int i;
            this.mode = mode;
            this.fromPosition = fromPosition;
            this.charsetEncoderIndex = (mode == Mode.BYTE || previous == null) ? charsetEncoderIndex : previous.charsetEncoderIndex;
            this.characterLength = characterLength;
            this.previous = previous;
            int size = previous != null ? previous.cachedTotalSize : 0;
            boolean needECI = (mode == Mode.BYTE && previous == null && this.charsetEncoderIndex != 0) || !(previous == null || this.charsetEncoderIndex == previous.charsetEncoderIndex);
            size = (previous == null || mode != previous.mode || needECI) ? size + mode.getCharacterCountBits(version) + 4 : size;
            switch (mode) {
                case KANJI:
                    size += 13;
                    break;
                case ALPHANUMERIC:
                    size += characterLength == 1 ? 6 : 11;
                    break;
                case NUMERIC:
                    if (characterLength == 1) {
                        i = 4;
                    } else {
                        i = characterLength == 2 ? 7 : 10;
                    }
                    size += i;
                    break;
                case BYTE:
                    size += MinimalEncoder.this.encoders.encode(MinimalEncoder.this.stringToEncode.substring(fromPosition, fromPosition + characterLength), charsetEncoderIndex).length * 8;
                    if (needECI) {
                        size += 12;
                    }
                    break;
            }
            this.cachedTotalSize = size;
        }
    }

    final class ResultList {
        private final List<ResultNode> list = new ArrayList();
        private final Version version;

        ResultList(Version version, Edge solution) {
            int lowerLimit;
            int upperLimit;
            int length = 0;
            Edge current = solution;
            boolean containsECI = false;
            while (current != null) {
                length += current.characterLength;
                Edge previous = current.previous;
                boolean needECI = (current.mode == Mode.BYTE && previous == null && current.charsetEncoderIndex != 0) || !(previous == null || current.charsetEncoderIndex == previous.charsetEncoderIndex);
                containsECI = needECI ? true : containsECI;
                if (previous == null || previous.mode != current.mode || needECI) {
                    this.list.add(0, new ResultNode(current.mode, current.fromPosition, current.charsetEncoderIndex, length));
                    length = 0;
                }
                if (needECI) {
                    this.list.add(0, new ResultNode(Mode.ECI, current.fromPosition, current.charsetEncoderIndex, 0));
                }
                current = previous;
            }
            if (MinimalEncoder.this.isGS1) {
                ResultNode first = this.list.get(0);
                if (first != null && first.mode != Mode.ECI && containsECI) {
                    this.list.add(0, new ResultNode(Mode.ECI, 0, 0, 0));
                }
                this.list.add(this.list.get(0).mode != Mode.ECI ? 0 : 1, new ResultNode(Mode.FNC1_FIRST_POSITION, 0, 0, 0));
            }
            int versionNumber = version.getVersionNumber();
            switch (MinimalEncoder.getVersionSize(version)) {
                case SMALL:
                    lowerLimit = 1;
                    upperLimit = 9;
                    break;
                case MEDIUM:
                    lowerLimit = 10;
                    upperLimit = 26;
                    break;
                default:
                    lowerLimit = 27;
                    upperLimit = 40;
                    break;
            }
            int size = getSize(version);
            while (versionNumber < upperLimit && !Encoder.willFit(size, Version.getVersionForNumber(versionNumber), MinimalEncoder.this.ecLevel)) {
                versionNumber++;
            }
            while (versionNumber > lowerLimit && Encoder.willFit(size, Version.getVersionForNumber(versionNumber - 1), MinimalEncoder.this.ecLevel)) {
                versionNumber--;
            }
            this.version = Version.getVersionForNumber(versionNumber);
        }

        int getSize() {
            return getSize(this.version);
        }

        private int getSize(Version version) {
            int result = 0;
            for (ResultNode resultNode : this.list) {
                result += resultNode.getSize(version);
            }
            return result;
        }

        void getBits(BitArray bits) throws WriterException {
            for (ResultNode resultNode : this.list) {
                resultNode.getBits(bits);
            }
        }

        Version getVersion() {
            return this.version;
        }

        public String toString() {
            StringBuilder result = new StringBuilder();
            ResultNode previous = null;
            for (ResultNode current : this.list) {
                if (previous != null) {
                    result.append(",");
                }
                result.append(current.toString());
                previous = current;
            }
            return result.toString();
        }

        final class ResultNode {
            private final int characterLength;
            private final int charsetEncoderIndex;
            private final int fromPosition;
            private final Mode mode;

            ResultNode(Mode mode, int fromPosition, int charsetEncoderIndex, int characterLength) {
                this.mode = mode;
                this.fromPosition = fromPosition;
                this.charsetEncoderIndex = charsetEncoderIndex;
                this.characterLength = characterLength;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public int getSize(Version version) {
                int i = 0;
                int size = this.mode.getCharacterCountBits(version) + 4;
                switch (this.mode) {
                    case KANJI:
                        return size + (this.characterLength * 13);
                    case ALPHANUMERIC:
                        return size + ((this.characterLength / 2) * 11) + (this.characterLength % 2 == 1 ? 6 : 0);
                    case NUMERIC:
                        int size2 = size + ((this.characterLength / 3) * 10);
                        int rest = this.characterLength % 3;
                        if (rest == 1) {
                            i = 4;
                        } else if (rest == 2) {
                            i = 7;
                        }
                        return size2 + i;
                    case BYTE:
                        return size + (getCharacterCountIndicator() * 8);
                    case ECI:
                        return size + 8;
                    default:
                        return size;
                }
            }

            private int getCharacterCountIndicator() {
                if (this.mode == Mode.BYTE) {
                    return MinimalEncoder.this.encoders.encode(MinimalEncoder.this.stringToEncode.substring(this.fromPosition, this.fromPosition + this.characterLength), this.charsetEncoderIndex).length;
                }
                return this.characterLength;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void getBits(BitArray bits) throws WriterException {
                bits.appendBits(this.mode.getBits(), 4);
                if (this.characterLength > 0) {
                    int length = getCharacterCountIndicator();
                    bits.appendBits(length, this.mode.getCharacterCountBits(ResultList.this.version));
                }
                if (this.mode == Mode.ECI) {
                    bits.appendBits(MinimalEncoder.this.encoders.getECIValue(this.charsetEncoderIndex), 8);
                } else if (this.characterLength > 0) {
                    Encoder.appendBytes(MinimalEncoder.this.stringToEncode.substring(this.fromPosition, this.fromPosition + this.characterLength), this.mode, bits, MinimalEncoder.this.encoders.getCharset(this.charsetEncoderIndex));
                }
            }

            public String toString() {
                StringBuilder result = new StringBuilder();
                result.append(this.mode).append('(');
                if (this.mode == Mode.ECI) {
                    result.append(MinimalEncoder.this.encoders.getCharset(this.charsetEncoderIndex).displayName());
                } else {
                    result.append(makePrintable(MinimalEncoder.this.stringToEncode.substring(this.fromPosition, this.fromPosition + this.characterLength)));
                }
                result.append(')');
                return result.toString();
            }

            private String makePrintable(String s) {
                StringBuilder result = new StringBuilder();
                for (int i = 0; i < s.length(); i++) {
                    if (s.charAt(i) < ' ' || s.charAt(i) > '~') {
                        result.append('.');
                    } else {
                        result.append(s.charAt(i));
                    }
                }
                return result.toString();
            }
        }
    }
}
