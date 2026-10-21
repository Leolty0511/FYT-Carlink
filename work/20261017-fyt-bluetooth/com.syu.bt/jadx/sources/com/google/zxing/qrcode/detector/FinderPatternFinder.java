package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import com.lsec.core.util.data.FinalCanbus;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class FinderPatternFinder {
    private static final int CENTER_QUORUM = 2;
    protected static final int MAX_MODULES = 97;
    protected static final int MIN_SKIP = 3;
    private static final EstimatedModuleComparator moduleComparator = new EstimatedModuleComparator();
    private final int[] crossCheckStateCount;
    private boolean hasSkipped;
    private final BitMatrix image;
    private final List<FinderPattern> possibleCenters;
    private final ResultPointCallback resultPointCallback;

    public FinderPatternFinder(BitMatrix image) {
        this(image, null);
    }

    public FinderPatternFinder(BitMatrix image, ResultPointCallback resultPointCallback) {
        this.image = image;
        this.possibleCenters = new ArrayList();
        this.crossCheckStateCount = new int[5];
        this.resultPointCallback = resultPointCallback;
    }

    protected final BitMatrix getImage() {
        return this.image;
    }

    protected final List<FinderPattern> getPossibleCenters() {
        return this.possibleCenters;
    }

    final FinderPatternInfo find(Map<DecodeHintType, ?> hints) throws NotFoundException {
        boolean tryHarder = hints != null && hints.containsKey(DecodeHintType.TRY_HARDER);
        int maxI = this.image.getHeight();
        int maxJ = this.image.getWidth();
        int iSkip = (maxI * 3) / FinalCanbus.CAR_HC_OLD_9TianLai;
        if (iSkip < 3 || tryHarder) {
            iSkip = 3;
        }
        boolean done = false;
        int[] stateCount = new int[5];
        int i = iSkip - 1;
        while (i < maxI && !done) {
            doClearCounts(stateCount);
            int currentState = 0;
            int j = 0;
            while (j < maxJ) {
                if (this.image.get(j, i)) {
                    if ((currentState & 1) == 1) {
                        currentState++;
                    }
                    stateCount[currentState] = stateCount[currentState] + 1;
                } else if ((currentState & 1) == 0) {
                    if (currentState == 4) {
                        if (foundPatternCross(stateCount)) {
                            boolean confirmed = handlePossibleCenter(stateCount, i, j);
                            if (confirmed) {
                                iSkip = 2;
                                if (this.hasSkipped) {
                                    done = haveMultiplyConfirmedCenters();
                                } else {
                                    int rowSkip = findRowSkip();
                                    if (rowSkip > stateCount[2]) {
                                        i += (rowSkip - stateCount[2]) - 2;
                                        j = maxJ - 1;
                                    }
                                }
                                currentState = 0;
                                doClearCounts(stateCount);
                            } else {
                                doShiftCounts2(stateCount);
                                currentState = 3;
                            }
                        } else {
                            doShiftCounts2(stateCount);
                            currentState = 3;
                        }
                    } else {
                        currentState++;
                        stateCount[currentState] = stateCount[currentState] + 1;
                    }
                } else {
                    stateCount[currentState] = stateCount[currentState] + 1;
                }
                j++;
            }
            if (foundPatternCross(stateCount)) {
                boolean confirmed2 = handlePossibleCenter(stateCount, i, maxJ);
                if (confirmed2) {
                    iSkip = stateCount[0];
                    if (this.hasSkipped) {
                        done = haveMultiplyConfirmedCenters();
                    }
                }
            }
            i += iSkip;
        }
        FinderPattern[] patternInfo = selectBestPatterns();
        ResultPoint.orderBestPatterns(patternInfo);
        return new FinderPatternInfo(patternInfo);
    }

    private static float centerFromEnd(int[] stateCount, int end) {
        return ((end - stateCount[4]) - stateCount[3]) - (stateCount[2] / 2.0f);
    }

    protected static boolean foundPatternCross(int[] stateCount) {
        int totalModuleSize = 0;
        for (int i = 0; i < 5; i++) {
            int count = stateCount[i];
            if (count == 0) {
                return false;
            }
            totalModuleSize += count;
        }
        if (totalModuleSize < 7) {
            return false;
        }
        float moduleSize = totalModuleSize / 7.0f;
        float maxVariance = moduleSize / 2.0f;
        return Math.abs(moduleSize - ((float) stateCount[0])) < maxVariance && Math.abs(moduleSize - ((float) stateCount[1])) < maxVariance && Math.abs((3.0f * moduleSize) - ((float) stateCount[2])) < 3.0f * maxVariance && Math.abs(moduleSize - ((float) stateCount[3])) < maxVariance && Math.abs(moduleSize - ((float) stateCount[4])) < maxVariance;
    }

    protected static boolean foundPatternDiagonal(int[] stateCount) {
        int totalModuleSize = 0;
        for (int i = 0; i < 5; i++) {
            int count = stateCount[i];
            if (count == 0) {
                return false;
            }
            totalModuleSize += count;
        }
        if (totalModuleSize < 7) {
            return false;
        }
        float moduleSize = totalModuleSize / 7.0f;
        float maxVariance = moduleSize / 1.333f;
        return Math.abs(moduleSize - ((float) stateCount[0])) < maxVariance && Math.abs(moduleSize - ((float) stateCount[1])) < maxVariance && Math.abs((3.0f * moduleSize) - ((float) stateCount[2])) < 3.0f * maxVariance && Math.abs(moduleSize - ((float) stateCount[3])) < maxVariance && Math.abs(moduleSize - ((float) stateCount[4])) < maxVariance;
    }

    private int[] getCrossCheckStateCount() {
        doClearCounts(this.crossCheckStateCount);
        return this.crossCheckStateCount;
    }

    @Deprecated
    protected final void clearCounts(int[] counts) {
        doClearCounts(counts);
    }

    @Deprecated
    protected final void shiftCounts2(int[] stateCount) {
        doShiftCounts2(stateCount);
    }

    protected static void doClearCounts(int[] counts) {
        Arrays.fill(counts, 0);
    }

    protected static void doShiftCounts2(int[] stateCount) {
        stateCount[0] = stateCount[2];
        stateCount[1] = stateCount[3];
        stateCount[2] = stateCount[4];
        stateCount[3] = 1;
        stateCount[4] = 0;
    }

    private boolean crossCheckDiagonal(int centerI, int centerJ) {
        int[] stateCount = getCrossCheckStateCount();
        int i = 0;
        while (centerI >= i && centerJ >= i && this.image.get(centerJ - i, centerI - i)) {
            stateCount[2] = stateCount[2] + 1;
            i++;
        }
        if (stateCount[2] == 0) {
            return false;
        }
        while (centerI >= i && centerJ >= i && !this.image.get(centerJ - i, centerI - i)) {
            stateCount[1] = stateCount[1] + 1;
            i++;
        }
        if (stateCount[1] == 0) {
            return false;
        }
        while (centerI >= i && centerJ >= i && this.image.get(centerJ - i, centerI - i)) {
            stateCount[0] = stateCount[0] + 1;
            i++;
        }
        if (stateCount[0] == 0) {
            return false;
        }
        int maxI = this.image.getHeight();
        int maxJ = this.image.getWidth();
        int i2 = 1;
        while (centerI + i2 < maxI && centerJ + i2 < maxJ && this.image.get(centerJ + i2, centerI + i2)) {
            stateCount[2] = stateCount[2] + 1;
            i2++;
        }
        while (centerI + i2 < maxI && centerJ + i2 < maxJ && !this.image.get(centerJ + i2, centerI + i2)) {
            stateCount[3] = stateCount[3] + 1;
            i2++;
        }
        if (stateCount[3] == 0) {
            return false;
        }
        while (centerI + i2 < maxI && centerJ + i2 < maxJ && this.image.get(centerJ + i2, centerI + i2)) {
            stateCount[4] = stateCount[4] + 1;
            i2++;
        }
        if (stateCount[4] != 0) {
            return foundPatternDiagonal(stateCount);
        }
        return false;
    }

    private float crossCheckVertical(int startI, int centerJ, int maxCount, int originalStateCountTotal) {
        BitMatrix image = this.image;
        int maxI = image.getHeight();
        int[] stateCount = getCrossCheckStateCount();
        int i = startI;
        while (i >= 0 && image.get(centerJ, i)) {
            stateCount[2] = stateCount[2] + 1;
            i--;
        }
        if (i < 0) {
            return Float.NaN;
        }
        while (i >= 0 && !image.get(centerJ, i) && stateCount[1] <= maxCount) {
            stateCount[1] = stateCount[1] + 1;
            i--;
        }
        if (i < 0 || stateCount[1] > maxCount) {
            return Float.NaN;
        }
        while (i >= 0 && image.get(centerJ, i) && stateCount[0] <= maxCount) {
            stateCount[0] = stateCount[0] + 1;
            i--;
        }
        if (stateCount[0] > maxCount) {
            return Float.NaN;
        }
        int i2 = startI + 1;
        while (i2 < maxI && image.get(centerJ, i2)) {
            stateCount[2] = stateCount[2] + 1;
            i2++;
        }
        if (i2 == maxI) {
            return Float.NaN;
        }
        while (i2 < maxI && !image.get(centerJ, i2) && stateCount[3] < maxCount) {
            stateCount[3] = stateCount[3] + 1;
            i2++;
        }
        if (i2 == maxI || stateCount[3] >= maxCount) {
            return Float.NaN;
        }
        while (i2 < maxI && image.get(centerJ, i2) && stateCount[4] < maxCount) {
            stateCount[4] = stateCount[4] + 1;
            i2++;
        }
        if (stateCount[4] >= maxCount) {
            return Float.NaN;
        }
        int stateCountTotal = stateCount[0] + stateCount[1] + stateCount[2] + stateCount[3] + stateCount[4];
        if (Math.abs(stateCountTotal - originalStateCountTotal) * 5 < originalStateCountTotal * 2 && foundPatternCross(stateCount)) {
            return centerFromEnd(stateCount, i2);
        }
        return Float.NaN;
    }

    private float crossCheckHorizontal(int startJ, int centerI, int maxCount, int originalStateCountTotal) {
        BitMatrix image = this.image;
        int maxJ = image.getWidth();
        int[] stateCount = getCrossCheckStateCount();
        int j = startJ;
        while (j >= 0 && image.get(j, centerI)) {
            stateCount[2] = stateCount[2] + 1;
            j--;
        }
        if (j < 0) {
            return Float.NaN;
        }
        while (j >= 0 && !image.get(j, centerI) && stateCount[1] <= maxCount) {
            stateCount[1] = stateCount[1] + 1;
            j--;
        }
        if (j < 0 || stateCount[1] > maxCount) {
            return Float.NaN;
        }
        while (j >= 0 && image.get(j, centerI) && stateCount[0] <= maxCount) {
            stateCount[0] = stateCount[0] + 1;
            j--;
        }
        if (stateCount[0] > maxCount) {
            return Float.NaN;
        }
        int j2 = startJ + 1;
        while (j2 < maxJ && image.get(j2, centerI)) {
            stateCount[2] = stateCount[2] + 1;
            j2++;
        }
        if (j2 == maxJ) {
            return Float.NaN;
        }
        while (j2 < maxJ && !image.get(j2, centerI) && stateCount[3] < maxCount) {
            stateCount[3] = stateCount[3] + 1;
            j2++;
        }
        if (j2 == maxJ || stateCount[3] >= maxCount) {
            return Float.NaN;
        }
        while (j2 < maxJ && image.get(j2, centerI) && stateCount[4] < maxCount) {
            stateCount[4] = stateCount[4] + 1;
            j2++;
        }
        if (stateCount[4] >= maxCount) {
            return Float.NaN;
        }
        int stateCountTotal = stateCount[0] + stateCount[1] + stateCount[2] + stateCount[3] + stateCount[4];
        if (Math.abs(stateCountTotal - originalStateCountTotal) * 5 < originalStateCountTotal && foundPatternCross(stateCount)) {
            return centerFromEnd(stateCount, j2);
        }
        return Float.NaN;
    }

    @Deprecated
    protected final boolean handlePossibleCenter(int[] stateCount, int i, int j, boolean pureBarcode) {
        return handlePossibleCenter(stateCount, i, j);
    }

    protected final boolean handlePossibleCenter(int[] stateCount, int i, int j) {
        int stateCountTotal = stateCount[0] + stateCount[1] + stateCount[2] + stateCount[3] + stateCount[4];
        float centerJ = centerFromEnd(stateCount, j);
        float centerI = crossCheckVertical(i, (int) centerJ, stateCount[2], stateCountTotal);
        if (!Float.isNaN(centerI)) {
            float centerJ2 = crossCheckHorizontal((int) centerJ, (int) centerI, stateCount[2], stateCountTotal);
            if (!Float.isNaN(centerJ2) && crossCheckDiagonal((int) centerI, (int) centerJ2)) {
                float estimatedModuleSize = stateCountTotal / 7.0f;
                boolean found = false;
                for (int index = 0; index < this.possibleCenters.size(); index++) {
                    FinderPattern center = this.possibleCenters.get(index);
                    if (center.aboutEquals(estimatedModuleSize, centerI, centerJ2)) {
                        this.possibleCenters.set(index, center.combineEstimate(centerI, centerJ2, estimatedModuleSize));
                        found = true;
                        break;
                    }
                }
                if (!found) {
                    FinderPattern point = new FinderPattern(centerJ2, centerI, estimatedModuleSize);
                    this.possibleCenters.add(point);
                    if (this.resultPointCallback != null) {
                        this.resultPointCallback.foundPossibleResultPoint(point);
                    }
                }
                return true;
            }
        }
        return false;
    }

    private int findRowSkip() {
        int max = this.possibleCenters.size();
        if (max <= 1) {
            return 0;
        }
        ResultPoint firstConfirmedCenter = null;
        for (FinderPattern center : this.possibleCenters) {
            if (center.getCount() >= 2) {
                if (firstConfirmedCenter == null) {
                    firstConfirmedCenter = center;
                } else {
                    this.hasSkipped = true;
                    return ((int) (Math.abs(firstConfirmedCenter.getX() - center.getX()) - Math.abs(firstConfirmedCenter.getY() - center.getY()))) / 2;
                }
            }
        }
        return 0;
    }

    private boolean haveMultiplyConfirmedCenters() {
        int confirmedCount = 0;
        float totalModuleSize = 0.0f;
        int max = this.possibleCenters.size();
        for (FinderPattern pattern : this.possibleCenters) {
            if (pattern.getCount() >= 2) {
                confirmedCount++;
                totalModuleSize += pattern.getEstimatedModuleSize();
            }
        }
        if (confirmedCount < 3) {
            return false;
        }
        float average = totalModuleSize / max;
        float totalDeviation = 0.0f;
        Iterator<FinderPattern> it = this.possibleCenters.iterator();
        while (it.hasNext()) {
            totalDeviation += Math.abs(it.next().getEstimatedModuleSize() - average);
        }
        return totalDeviation <= 0.05f * totalModuleSize;
    }

    private static double squaredDistance(FinderPattern a, FinderPattern b) {
        double x = a.getX() - b.getX();
        double y = a.getY() - b.getY();
        return (x * x) + (y * y);
    }

    private FinderPattern[] selectBestPatterns() throws NotFoundException {
        int startSize = this.possibleCenters.size();
        if (startSize < 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        Iterator<FinderPattern> it = this.possibleCenters.iterator();
        while (it.hasNext()) {
            if (it.next().getCount() < 2) {
                it.remove();
            }
        }
        Collections.sort(this.possibleCenters, moduleComparator);
        double distortion = Double.MAX_VALUE;
        FinderPattern[] bestPatterns = new FinderPattern[3];
        for (int i = 0; i < this.possibleCenters.size() - 2; i++) {
            FinderPattern fpi = this.possibleCenters.get(i);
            float minModuleSize = fpi.getEstimatedModuleSize();
            for (int j = i + 1; j < this.possibleCenters.size() - 1; j++) {
                FinderPattern fpj = this.possibleCenters.get(j);
                double squares0 = squaredDistance(fpi, fpj);
                for (int k = j + 1; k < this.possibleCenters.size(); k++) {
                    FinderPattern fpk = this.possibleCenters.get(k);
                    float maxModuleSize = fpk.getEstimatedModuleSize();
                    if (maxModuleSize <= 1.4f * minModuleSize) {
                        double a = squares0;
                        double b = squaredDistance(fpj, fpk);
                        double c = squaredDistance(fpi, fpk);
                        if (a < b) {
                            if (b > c) {
                                if (a < c) {
                                    b = c;
                                    c = b;
                                } else {
                                    a = c;
                                    c = b;
                                    b = a;
                                }
                            }
                        } else if (b >= c) {
                            a = c;
                            c = a;
                        } else if (a < c) {
                            a = b;
                            b = a;
                        } else {
                            a = b;
                            b = c;
                            c = a;
                        }
                        double d = Math.abs(c - (2.0d * b)) + Math.abs(c - (2.0d * a));
                        if (d < distortion) {
                            distortion = d;
                            bestPatterns[0] = fpi;
                            bestPatterns[1] = fpj;
                            bestPatterns[2] = fpk;
                        }
                    }
                }
            }
        }
        if (distortion == Double.MAX_VALUE) {
            throw NotFoundException.getNotFoundInstance();
        }
        return bestPatterns;
    }

    private static final class EstimatedModuleComparator implements Comparator<FinderPattern>, Serializable {
        private EstimatedModuleComparator() {
        }

        @Override // java.util.Comparator
        public int compare(FinderPattern center1, FinderPattern center2) {
            return Float.compare(center1.getEstimatedModuleSize(), center2.getEstimatedModuleSize());
        }
    }
}
