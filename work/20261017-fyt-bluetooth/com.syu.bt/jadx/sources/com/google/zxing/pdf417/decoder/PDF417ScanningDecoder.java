package com.google.zxing.pdf417.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.pdf417.PDF417Common;
import com.google.zxing.pdf417.decoder.ec.ErrorCorrection;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Formatter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class PDF417ScanningDecoder {
    private static final int CODEWORD_SKEW_SIZE = 2;
    private static final int MAX_EC_CODEWORDS = 512;
    private static final int MAX_ERRORS = 3;
    private static final ErrorCorrection errorCorrection = new ErrorCorrection();

    private PDF417ScanningDecoder() {
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c3 A[SYNTHETIC] */
    public static DecoderResult decode(BitMatrix image, ResultPoint imageTopLeft, ResultPoint imageBottomLeft, ResultPoint imageTopRight, ResultPoint imageBottomRight, int minCodewordWidth, int maxCodewordWidth) throws NotFoundException, ChecksumException, FormatException {
        DetectionResultColumn detectionResultColumn;
        Codeword codeword;
        BoundingBox boundingBox = new BoundingBox(image, imageTopLeft, imageBottomLeft, imageTopRight, imageBottomRight);
        DetectionResultRowIndicatorColumn leftRowIndicatorColumn = null;
        DetectionResultRowIndicatorColumn rightRowIndicatorColumn = null;
        boolean firstPass = true;
        while (true) {
            if (imageTopLeft != null) {
                leftRowIndicatorColumn = getRowIndicatorColumn(image, boundingBox, imageTopLeft, true, minCodewordWidth, maxCodewordWidth);
            }
            if (imageTopRight != null) {
                rightRowIndicatorColumn = getRowIndicatorColumn(image, boundingBox, imageTopRight, false, minCodewordWidth, maxCodewordWidth);
            }
            DetectionResult detectionResult = merge(leftRowIndicatorColumn, rightRowIndicatorColumn);
            if (detectionResult == null) {
                throw NotFoundException.getNotFoundInstance();
            }
            BoundingBox resultBox = detectionResult.getBoundingBox();
            if (firstPass && resultBox != null && (resultBox.getMinY() < boundingBox.getMinY() || resultBox.getMaxY() > boundingBox.getMaxY())) {
                boundingBox = resultBox;
                firstPass = false;
            } else {
                detectionResult.setBoundingBox(boundingBox);
                int maxBarcodeColumn = detectionResult.getBarcodeColumnCount() + 1;
                detectionResult.setDetectionResultColumn(0, leftRowIndicatorColumn);
                detectionResult.setDetectionResultColumn(maxBarcodeColumn, rightRowIndicatorColumn);
                boolean leftToRight = leftRowIndicatorColumn != null;
                for (int barcodeColumnCount = 1; barcodeColumnCount <= maxBarcodeColumn; barcodeColumnCount++) {
                    int barcodeColumn = leftToRight ? barcodeColumnCount : maxBarcodeColumn - barcodeColumnCount;
                    if (detectionResult.getDetectionResultColumn(barcodeColumn) == null) {
                        if (barcodeColumn == 0 || barcodeColumn == maxBarcodeColumn) {
                            detectionResultColumn = new DetectionResultRowIndicatorColumn(boundingBox, barcodeColumn == 0);
                        } else {
                            detectionResultColumn = new DetectionResultColumn(boundingBox);
                        }
                        detectionResult.setDetectionResultColumn(barcodeColumn, detectionResultColumn);
                        int previousStartColumn = -1;
                        for (int imageRow = boundingBox.getMinY(); imageRow <= boundingBox.getMaxY(); imageRow++) {
                            int startColumn = getStartColumn(detectionResult, barcodeColumn, imageRow, leftToRight);
                            if (startColumn < 0 || startColumn > boundingBox.getMaxX()) {
                                if (previousStartColumn != -1) {
                                    startColumn = previousStartColumn;
                                    codeword = detectCodeword(image, boundingBox.getMinX(), boundingBox.getMaxX(), leftToRight, startColumn, imageRow, minCodewordWidth, maxCodewordWidth);
                                    if (codeword != null) {
                                        detectionResultColumn.setCodeword(imageRow, codeword);
                                        previousStartColumn = startColumn;
                                        minCodewordWidth = Math.min(minCodewordWidth, codeword.getWidth());
                                        maxCodewordWidth = Math.max(maxCodewordWidth, codeword.getWidth());
                                    }
                                }
                            } else {
                                codeword = detectCodeword(image, boundingBox.getMinX(), boundingBox.getMaxX(), leftToRight, startColumn, imageRow, minCodewordWidth, maxCodewordWidth);
                                if (codeword != null) {
                                    detectionResultColumn.setCodeword(imageRow, codeword);
                                    previousStartColumn = startColumn;
                                    minCodewordWidth = Math.min(minCodewordWidth, codeword.getWidth());
                                    maxCodewordWidth = Math.max(maxCodewordWidth, codeword.getWidth());
                                }
                            }
                        }
                    }
                }
                return createDecoderResult(detectionResult);
            }
        }
    }

    private static DetectionResult merge(DetectionResultRowIndicatorColumn leftRowIndicatorColumn, DetectionResultRowIndicatorColumn rightRowIndicatorColumn) throws NotFoundException {
        BarcodeMetadata barcodeMetadata;
        if ((leftRowIndicatorColumn == null && rightRowIndicatorColumn == null) || (barcodeMetadata = getBarcodeMetadata(leftRowIndicatorColumn, rightRowIndicatorColumn)) == null) {
            return null;
        }
        BoundingBox boundingBox = BoundingBox.merge(adjustBoundingBox(leftRowIndicatorColumn), adjustBoundingBox(rightRowIndicatorColumn));
        return new DetectionResult(barcodeMetadata, boundingBox);
    }

    private static BoundingBox adjustBoundingBox(DetectionResultRowIndicatorColumn rowIndicatorColumn) throws NotFoundException {
        int[] rowHeights;
        if (rowIndicatorColumn == null || (rowHeights = rowIndicatorColumn.getRowHeights()) == null) {
            return null;
        }
        int maxRowHeight = getMax(rowHeights);
        int missingStartRows = 0;
        for (int rowHeight : rowHeights) {
            missingStartRows += maxRowHeight - rowHeight;
            if (rowHeight > 0) {
                break;
            }
        }
        Codeword[] codewords = rowIndicatorColumn.getCodewords();
        for (int row = 0; missingStartRows > 0 && codewords[row] == null; row++) {
            missingStartRows--;
        }
        int missingEndRows = 0;
        for (int row2 = rowHeights.length - 1; row2 >= 0; row2--) {
            missingEndRows += maxRowHeight - rowHeights[row2];
            if (rowHeights[row2] > 0) {
                break;
            }
        }
        for (int row3 = codewords.length - 1; missingEndRows > 0 && codewords[row3] == null; row3--) {
            missingEndRows--;
        }
        return rowIndicatorColumn.getBoundingBox().addMissingRows(missingStartRows, missingEndRows, rowIndicatorColumn.isLeft());
    }

    private static int getMax(int[] values) {
        int maxValue = -1;
        for (int value : values) {
            maxValue = Math.max(maxValue, value);
        }
        return maxValue;
    }

    private static BarcodeMetadata getBarcodeMetadata(DetectionResultRowIndicatorColumn leftRowIndicatorColumn, DetectionResultRowIndicatorColumn rightRowIndicatorColumn) {
        BarcodeMetadata leftBarcodeMetadata;
        BarcodeMetadata rightBarcodeMetadata;
        if (leftRowIndicatorColumn == null || (leftBarcodeMetadata = leftRowIndicatorColumn.getBarcodeMetadata()) == null) {
            if (rightRowIndicatorColumn == null) {
                return null;
            }
            return rightRowIndicatorColumn.getBarcodeMetadata();
        }
        if (rightRowIndicatorColumn == null || (rightBarcodeMetadata = rightRowIndicatorColumn.getBarcodeMetadata()) == null) {
            return leftBarcodeMetadata;
        }
        if (leftBarcodeMetadata.getColumnCount() == rightBarcodeMetadata.getColumnCount() || leftBarcodeMetadata.getErrorCorrectionLevel() == rightBarcodeMetadata.getErrorCorrectionLevel() || leftBarcodeMetadata.getRowCount() == rightBarcodeMetadata.getRowCount()) {
            return leftBarcodeMetadata;
        }
        return null;
    }

    private static DetectionResultRowIndicatorColumn getRowIndicatorColumn(BitMatrix image, BoundingBox boundingBox, ResultPoint startPoint, boolean leftToRight, int minCodewordWidth, int maxCodewordWidth) {
        DetectionResultRowIndicatorColumn rowIndicatorColumn = new DetectionResultRowIndicatorColumn(boundingBox, leftToRight);
        int i = 0;
        while (i < 2) {
            int increment = i == 0 ? 1 : -1;
            int startColumn = (int) startPoint.getX();
            for (int imageRow = (int) startPoint.getY(); imageRow <= boundingBox.getMaxY() && imageRow >= boundingBox.getMinY(); imageRow += increment) {
                Codeword codeword = detectCodeword(image, 0, image.getWidth(), leftToRight, startColumn, imageRow, minCodewordWidth, maxCodewordWidth);
                if (codeword != null) {
                    rowIndicatorColumn.setCodeword(imageRow, codeword);
                    if (leftToRight) {
                        startColumn = codeword.getStartX();
                    } else {
                        startColumn = codeword.getEndX();
                    }
                }
            }
            i++;
        }
        return rowIndicatorColumn;
    }

    private static void adjustCodewordCount(DetectionResult detectionResult, BarcodeValue[][] barcodeMatrix) throws NotFoundException {
        BarcodeValue barcodeMatrix01 = barcodeMatrix[0][1];
        int[] numberOfCodewords = barcodeMatrix01.getValue();
        int calculatedNumberOfCodewords = (detectionResult.getBarcodeColumnCount() * detectionResult.getBarcodeRowCount()) - getNumberOfECCodeWords(detectionResult.getBarcodeECLevel());
        if (numberOfCodewords.length == 0) {
            if (calculatedNumberOfCodewords < 1 || calculatedNumberOfCodewords > 928) {
                throw NotFoundException.getNotFoundInstance();
            }
            barcodeMatrix01.setValue(calculatedNumberOfCodewords);
            return;
        }
        if (numberOfCodewords[0] != calculatedNumberOfCodewords && calculatedNumberOfCodewords >= 1 && calculatedNumberOfCodewords <= 928) {
            barcodeMatrix01.setValue(calculatedNumberOfCodewords);
        }
    }

    private static DecoderResult createDecoderResult(DetectionResult detectionResult) throws NotFoundException, ChecksumException, FormatException {
        BarcodeValue[][] barcodeMatrix = createBarcodeMatrix(detectionResult);
        adjustCodewordCount(detectionResult, barcodeMatrix);
        Collection<Integer> erasures = new ArrayList<>();
        int[] codewords = new int[detectionResult.getBarcodeRowCount() * detectionResult.getBarcodeColumnCount()];
        List<int[]> ambiguousIndexValuesList = new ArrayList<>();
        Collection<Integer> ambiguousIndexesList = new ArrayList<>();
        for (int row = 0; row < detectionResult.getBarcodeRowCount(); row++) {
            for (int column = 0; column < detectionResult.getBarcodeColumnCount(); column++) {
                int[] values = barcodeMatrix[row][column + 1].getValue();
                int codewordIndex = (detectionResult.getBarcodeColumnCount() * row) + column;
                if (values.length == 0) {
                    erasures.add(Integer.valueOf(codewordIndex));
                } else if (values.length == 1) {
                    codewords[codewordIndex] = values[0];
                } else {
                    ambiguousIndexesList.add(Integer.valueOf(codewordIndex));
                    ambiguousIndexValuesList.add(values);
                }
            }
        }
        int[][] ambiguousIndexValues = new int[ambiguousIndexValuesList.size()][];
        for (int i = 0; i < ambiguousIndexValues.length; i++) {
            ambiguousIndexValues[i] = ambiguousIndexValuesList.get(i);
        }
        return createDecoderResultFromAmbiguousValues(detectionResult.getBarcodeECLevel(), codewords, PDF417Common.toIntArray(erasures), PDF417Common.toIntArray(ambiguousIndexesList), ambiguousIndexValues);
    }

    private static DecoderResult createDecoderResultFromAmbiguousValues(int ecLevel, int[] codewords, int[] erasureArray, int[] ambiguousIndexes, int[][] ambiguousIndexValues) throws ChecksumException, FormatException {
        int[] ambiguousIndexCount = new int[ambiguousIndexes.length];
        int tries = 100;
        while (true) {
            int tries2 = tries;
            tries = tries2 - 1;
            if (tries2 > 0) {
                for (int i = 0; i < ambiguousIndexCount.length; i++) {
                    codewords[ambiguousIndexes[i]] = ambiguousIndexValues[i][ambiguousIndexCount[i]];
                }
                try {
                    return decodeCodewords(codewords, ecLevel, erasureArray);
                } catch (ChecksumException e) {
                    if (ambiguousIndexCount.length == 0) {
                        throw ChecksumException.getChecksumInstance();
                    }
                    for (int i2 = 0; i2 < ambiguousIndexCount.length; i2++) {
                        if (ambiguousIndexCount[i2] < ambiguousIndexValues[i2].length - 1) {
                            ambiguousIndexCount[i2] = ambiguousIndexCount[i2] + 1;
                            break;
                        }
                        ambiguousIndexCount[i2] = 0;
                        if (i2 == ambiguousIndexCount.length - 1) {
                            throw ChecksumException.getChecksumInstance();
                        }
                    }
                }
            } else {
                throw ChecksumException.getChecksumInstance();
            }
        }
    }

    private static BarcodeValue[][] createBarcodeMatrix(DetectionResult detectionResult) {
        int rowNumber;
        BarcodeValue[][] barcodeMatrix = (BarcodeValue[][]) Array.newInstance((Class<?>) BarcodeValue.class, detectionResult.getBarcodeRowCount(), detectionResult.getBarcodeColumnCount() + 2);
        for (int row = 0; row < barcodeMatrix.length; row++) {
            for (int column = 0; column < barcodeMatrix[row].length; column++) {
                barcodeMatrix[row][column] = new BarcodeValue();
            }
        }
        int column2 = 0;
        for (DetectionResultColumn detectionResultColumn : detectionResult.getDetectionResultColumns()) {
            if (detectionResultColumn != null) {
                for (Codeword codeword : detectionResultColumn.getCodewords()) {
                    if (codeword != null && (rowNumber = codeword.getRowNumber()) >= 0 && rowNumber < barcodeMatrix.length) {
                        barcodeMatrix[rowNumber][column2].setValue(codeword.getValue());
                    }
                }
            }
            column2++;
        }
        return barcodeMatrix;
    }

    private static boolean isValidBarcodeColumn(DetectionResult detectionResult, int barcodeColumn) {
        return barcodeColumn >= 0 && barcodeColumn <= detectionResult.getBarcodeColumnCount() + 1;
    }

    private static int getStartColumn(DetectionResult detectionResult, int barcodeColumn, int imageRow, boolean leftToRight) {
        int offset = leftToRight ? 1 : -1;
        Codeword codeword = null;
        if (isValidBarcodeColumn(detectionResult, barcodeColumn - offset)) {
            codeword = detectionResult.getDetectionResultColumn(barcodeColumn - offset).getCodeword(imageRow);
        }
        if (codeword != null) {
            return leftToRight ? codeword.getEndX() : codeword.getStartX();
        }
        Codeword codeword2 = detectionResult.getDetectionResultColumn(barcodeColumn).getCodewordNearby(imageRow);
        if (codeword2 != null) {
            return leftToRight ? codeword2.getStartX() : codeword2.getEndX();
        }
        if (isValidBarcodeColumn(detectionResult, barcodeColumn - offset)) {
            codeword2 = detectionResult.getDetectionResultColumn(barcodeColumn - offset).getCodewordNearby(imageRow);
        }
        if (codeword2 != null) {
            return leftToRight ? codeword2.getEndX() : codeword2.getStartX();
        }
        int skippedColumns = 0;
        while (isValidBarcodeColumn(detectionResult, barcodeColumn - offset)) {
            barcodeColumn -= offset;
            for (Codeword previousRowCodeword : detectionResult.getDetectionResultColumn(barcodeColumn).getCodewords()) {
                if (previousRowCodeword != null) {
                    return (leftToRight ? previousRowCodeword.getEndX() : previousRowCodeword.getStartX()) + (offset * skippedColumns * (previousRowCodeword.getEndX() - previousRowCodeword.getStartX()));
                }
            }
            skippedColumns++;
        }
        return leftToRight ? detectionResult.getBoundingBox().getMinX() : detectionResult.getBoundingBox().getMaxX();
    }

    private static Codeword detectCodeword(BitMatrix image, int minColumn, int maxColumn, boolean leftToRight, int startColumn, int imageRow, int minCodewordWidth, int maxCodewordWidth) {
        int endColumn;
        int decodedValue;
        int codeword;
        int startColumn2 = adjustCodewordStartColumn(image, minColumn, maxColumn, leftToRight, startColumn, imageRow);
        int[] moduleBitCount = getModuleBitCount(image, minColumn, maxColumn, leftToRight, startColumn2, imageRow);
        if (moduleBitCount == null) {
            return null;
        }
        int codewordBitCount = MathUtils.sum(moduleBitCount);
        if (leftToRight) {
            endColumn = startColumn2 + codewordBitCount;
        } else {
            for (int i = 0; i < moduleBitCount.length / 2; i++) {
                int tmpCount = moduleBitCount[i];
                moduleBitCount[i] = moduleBitCount[(moduleBitCount.length - 1) - i];
                moduleBitCount[(moduleBitCount.length - 1) - i] = tmpCount;
            }
            endColumn = startColumn2;
            startColumn2 = endColumn - codewordBitCount;
        }
        if (!checkCodewordSkew(codewordBitCount, minCodewordWidth, maxCodewordWidth) || (codeword = PDF417Common.getCodeword((decodedValue = PDF417CodewordDecoder.getDecodedValue(moduleBitCount)))) == -1) {
            return null;
        }
        return new Codeword(startColumn2, endColumn, getCodewordBucketNumber(decodedValue), codeword);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0012  */
    /* JADX WARN: Code duplicated, block: B:30:0x0024 A[EDGE_INSN: B:30:0x0024->B:15:0x0024 BREAK  A[LOOP:0: B:6:0x000b->B:36:0x000b], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x0031 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x0037 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x0018 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:35:0x0035 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x000f  */
    private static int[] getModuleBitCount(BitMatrix image, int minColumn, int maxColumn, boolean leftToRight, int startColumn, int imageRow) {
        int imageColumn = startColumn;
        int[] moduleBitCount = new int[8];
        int moduleNumber = 0;
        int increment = leftToRight ? 1 : -1;
        boolean previousPixelValue = leftToRight;
        while (true) {
            if (!leftToRight) {
                if (imageColumn >= minColumn) {
                    if (moduleNumber < moduleBitCount.length) {
                        break;
                        break;
                    }
                    if (image.get(imageColumn, imageRow) == previousPixelValue) {
                        moduleBitCount[moduleNumber] = moduleBitCount[moduleNumber] + 1;
                        imageColumn += increment;
                    } else {
                        moduleNumber++;
                        if (!previousPixelValue) {
                        }
                    }
                } else {
                    break;
                }
            } else {
                if (imageColumn >= maxColumn) {
                    break;
                }
                if (moduleNumber < moduleBitCount.length) {
                    break;
                }
                if (image.get(imageColumn, imageRow) == previousPixelValue) {
                    moduleBitCount[moduleNumber] = moduleBitCount[moduleNumber] + 1;
                    imageColumn += increment;
                } else {
                    moduleNumber++;
                    previousPixelValue = !previousPixelValue;
                }
            }
        }
        if (moduleNumber == moduleBitCount.length) {
            return moduleBitCount;
        }
        if (!leftToRight) {
            maxColumn = minColumn;
        }
        if (imageColumn != maxColumn || moduleNumber != moduleBitCount.length - 1) {
            return null;
        }
        return moduleBitCount;
    }

    private static int getNumberOfECCodeWords(int barcodeECLevel) {
        return 2 << barcodeECLevel;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x000f  */
    /* JADX WARN: Code duplicated, block: B:12:0x0015  */
    /* JADX WARN: Code duplicated, block: B:21:0x002a A[LOOP:1: B:8:0x000b->B:21:0x002a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:25:0x001d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x0022 A[EDGE_INSN: B:30:0x0022->B:17:0x0022 BREAK  A[LOOP:1: B:8:0x000b->B:21:0x002a], SYNTHETIC] */
    private static int adjustCodewordStartColumn(BitMatrix image, int minColumn, int maxColumn, boolean leftToRight, int codewordStartColumn, int imageRow) {
        int increment = leftToRight ? -1 : 1;
        int i = 0;
        int correctedStartColumn = codewordStartColumn;
        while (i < 2) {
            int correctedStartColumn2 = correctedStartColumn;
            while (true) {
                if (!leftToRight) {
                    if (correctedStartColumn2 < maxColumn) {
                        if (leftToRight == image.get(correctedStartColumn2, imageRow)) {
                            break;
                            break;
                        }
                        if (Math.abs(codewordStartColumn - correctedStartColumn2) > 2) {
                            correctedStartColumn2 += increment;
                        } else {
                            return codewordStartColumn;
                        }
                    } else {
                        break;
                    }
                } else {
                    if (correctedStartColumn2 < minColumn) {
                        break;
                    }
                    if (leftToRight == image.get(correctedStartColumn2, imageRow)) {
                        break;
                    }
                    if (Math.abs(codewordStartColumn - correctedStartColumn2) > 2) {
                        correctedStartColumn2 += increment;
                    } else {
                        return codewordStartColumn;
                    }
                }
            }
            increment = -increment;
            leftToRight = !leftToRight;
            i++;
            correctedStartColumn = correctedStartColumn2;
        }
        return correctedStartColumn;
    }

    private static boolean checkCodewordSkew(int codewordSize, int minCodewordWidth, int maxCodewordWidth) {
        return minCodewordWidth + (-2) <= codewordSize && codewordSize <= maxCodewordWidth + 2;
    }

    private static DecoderResult decodeCodewords(int[] codewords, int ecLevel, int[] erasures) throws ChecksumException, FormatException {
        if (codewords.length == 0) {
            throw FormatException.getFormatInstance();
        }
        int numECCodewords = 1 << (ecLevel + 1);
        int correctedErrorsCount = correctErrors(codewords, erasures, numECCodewords);
        verifyCodewordCount(codewords, numECCodewords);
        DecoderResult decoderResult = DecodedBitStreamParser.decode(codewords, String.valueOf(ecLevel));
        decoderResult.setErrorsCorrected(Integer.valueOf(correctedErrorsCount));
        decoderResult.setErasures(Integer.valueOf(erasures.length));
        return decoderResult;
    }

    private static int correctErrors(int[] codewords, int[] erasures, int numECCodewords) throws ChecksumException {
        if ((erasures != null && erasures.length > (numECCodewords / 2) + 3) || numECCodewords < 0 || numECCodewords > 512) {
            throw ChecksumException.getChecksumInstance();
        }
        return errorCorrection.decode(codewords, numECCodewords, erasures);
    }

    private static void verifyCodewordCount(int[] codewords, int numECCodewords) throws FormatException {
        if (codewords.length < 4) {
            throw FormatException.getFormatInstance();
        }
        int numberOfCodewords = codewords[0];
        if (numberOfCodewords > codewords.length) {
            throw FormatException.getFormatInstance();
        }
        if (numberOfCodewords == 0) {
            if (numECCodewords < codewords.length) {
                codewords[0] = codewords.length - numECCodewords;
                return;
            }
            throw FormatException.getFormatInstance();
        }
    }

    private static int[] getBitCountForCodeword(int codeword) {
        int[] result = new int[8];
        int previousValue = 0;
        int i = result.length - 1;
        while (true) {
            if ((codeword & 1) != previousValue) {
                previousValue = codeword & 1;
                i--;
                if (i < 0) {
                    return result;
                }
            }
            result[i] = result[i] + 1;
            codeword >>= 1;
        }
    }

    private static int getCodewordBucketNumber(int codeword) {
        return getCodewordBucketNumber(getBitCountForCodeword(codeword));
    }

    private static int getCodewordBucketNumber(int[] moduleBitCount) {
        return ((((moduleBitCount[0] - moduleBitCount[2]) + moduleBitCount[4]) - moduleBitCount[6]) + 9) % 9;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0060 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:33:0x008b  */
    /* JADX WARN: Code duplicated, block: B:40:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static String toString(BarcodeValue[][] barcodeMatrix) throws Throwable {
        Throwable th;
        Throwable th2 = null;
        Formatter formatter = new Formatter();
        for (int row = 0; row < barcodeMatrix.length; row++) {
            try {
                formatter.format("Row %2d: ", Integer.valueOf(row));
                for (int column = 0; column < barcodeMatrix[row].length; column++) {
                    BarcodeValue barcodeValue = barcodeMatrix[row][column];
                    if (barcodeValue.getValue().length == 0) {
                        formatter.format("        ", (Object[]) null);
                    } else {
                        formatter.format("%4d(%2d)", Integer.valueOf(barcodeValue.getValue()[0]), barcodeValue.getConfidence(barcodeValue.getValue()[0]));
                    }
                }
                formatter.format("%n", new Object[0]);
            } catch (Throwable th3) {
                th = th3;
                if (formatter != null) {
                    if (th2 != null) {
                        formatter.close();
                    } else {
                        formatter.close();
                    }
                }
                throw th;
            }
        }
        String string = formatter.toString();
        if (formatter != null) {
            if (0 != 0) {
                try {
                    formatter.close();
                } catch (Throwable th4) {
                    th2.addSuppressed(th4);
                }
            } else {
                formatter.close();
            }
        }
        return string;
    }
}
