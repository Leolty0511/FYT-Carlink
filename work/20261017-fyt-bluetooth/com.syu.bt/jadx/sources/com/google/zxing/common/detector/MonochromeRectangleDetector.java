package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class MonochromeRectangleDetector {
    private static final int MAX_MODULES = 32;
    private final BitMatrix image;

    public MonochromeRectangleDetector(BitMatrix image) {
        this.image = image;
    }

    public ResultPoint[] detect() throws NotFoundException {
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int halfHeight = height / 2;
        int halfWidth = width / 2;
        int deltaY = Math.max(1, height / 256);
        int deltaX = Math.max(1, width / 256);
        ResultPoint pointA = findCornerFromCenter(halfWidth, 0, 0, width, halfHeight, -deltaY, 0, height, halfWidth / 2);
        int top = ((int) pointA.getY()) - 1;
        ResultPoint pointB = findCornerFromCenter(halfWidth, -deltaX, 0, width, halfHeight, 0, top, height, halfHeight / 2);
        int left = ((int) pointB.getX()) - 1;
        ResultPoint pointC = findCornerFromCenter(halfWidth, deltaX, left, width, halfHeight, 0, top, height, halfHeight / 2);
        int right = ((int) pointC.getX()) + 1;
        ResultPoint pointD = findCornerFromCenter(halfWidth, 0, left, right, halfHeight, deltaY, top, height, halfWidth / 2);
        int bottom = ((int) pointD.getY()) + 1;
        ResultPoint pointA2 = findCornerFromCenter(halfWidth, 0, left, right, halfHeight, -deltaY, top, bottom, halfWidth / 4);
        return new ResultPoint[]{pointA2, pointB, pointC, pointD};
    }

    private ResultPoint findCornerFromCenter(int centerX, int deltaX, int left, int right, int centerY, int deltaY, int top, int bottom, int maxWhiteRun) throws NotFoundException {
        int[] range;
        int[] lastRange = null;
        int y = centerY;
        int x = centerX;
        while (y < bottom && y >= top && x < right && x >= left) {
            if (deltaX == 0) {
                range = blackWhiteRange(y, maxWhiteRun, left, right, true);
            } else {
                range = blackWhiteRange(x, maxWhiteRun, top, bottom, false);
            }
            if (range == null) {
                if (lastRange == null) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (deltaX == 0) {
                    int lastY = y - deltaY;
                    if (lastRange[0] < centerX) {
                        if (lastRange[1] > centerX) {
                            return new ResultPoint(lastRange[deltaY > 0 ? (char) 0 : (char) 1], lastY);
                        }
                        return new ResultPoint(lastRange[0], lastY);
                    }
                    return new ResultPoint(lastRange[1], lastY);
                }
                int lastX = x - deltaX;
                if (lastRange[0] < centerY) {
                    if (lastRange[1] > centerY) {
                        return new ResultPoint(lastX, lastRange[deltaX < 0 ? (char) 0 : (char) 1]);
                    }
                    return new ResultPoint(lastX, lastRange[0]);
                }
                return new ResultPoint(lastX, lastRange[1]);
            }
            lastRange = range;
            y += deltaY;
            x += deltaX;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0021 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x005a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x002b A[EDGE_INSN: B:59:0x002b->B:16:0x002b BREAK  A[LOOP:1: B:11:0x001d->B:64:0x001d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x0044 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x002b A[EDGE_INSN: B:61:0x002b->B:16:0x002b BREAK  A[LOOP:1: B:11:0x001d->B:64:0x001d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x002b A[EDGE_INSN: B:62:0x002b->B:16:0x002b BREAK  A[LOOP:1: B:11:0x001d->B:64:0x001d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x0023 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x001d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x001d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x0064 A[EDGE_INSN: B:77:0x0064->B:37:0x0064 BREAK  A[LOOP:3: B:32:0x0056->B:82:0x0056], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x0079 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x0064 A[EDGE_INSN: B:79:0x0064->B:37:0x0064 BREAK  A[LOOP:3: B:32:0x0056->B:82:0x0056], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x005c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x0064 A[EDGE_INSN: B:81:0x0064->B:37:0x0064 BREAK  A[LOOP:3: B:32:0x0056->B:82:0x0056], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:0x0056 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x0056 A[SYNTHETIC] */
    private int[] blackWhiteRange(int fixedDimension, int maxWhiteRun, int minDim, int maxDim, boolean horizontal) {
        int center = (minDim + maxDim) / 2;
        int start = center;
        while (start >= minDim) {
            if (horizontal) {
                if (this.image.get(start, fixedDimension)) {
                    start--;
                } else {
                    int whiteRunStart = start;
                    while (true) {
                        start--;
                        if (start < minDim) {
                            break;
                        }
                        if (horizontal) {
                            if (this.image.get(start, fixedDimension)) {
                                break;
                            }
                        } else if (this.image.get(fixedDimension, start)) {
                            break;
                        }
                    }
                    int whiteRunSize = whiteRunStart - start;
                    if (start >= minDim || whiteRunSize > maxWhiteRun) {
                        start = whiteRunStart;
                        break;
                    }
                }
            } else if (this.image.get(fixedDimension, start)) {
                start--;
            } else {
                int whiteRunStart2 = start;
                while (true) {
                    start--;
                    if (start < minDim) {
                        break;
                        break;
                    }
                    if (horizontal) {
                        if (this.image.get(start, fixedDimension)) {
                            break;
                            break;
                        }
                    } else if (this.image.get(fixedDimension, start)) {
                        break;
                        break;
                    }
                }
                int whiteRunSize2 = whiteRunStart2 - start;
                if (start >= minDim) {
                }
                start = whiteRunStart2;
                break;
            }
        }
        int start2 = start + 1;
        int end = center;
        while (end < maxDim) {
            if (horizontal) {
                if (this.image.get(end, fixedDimension)) {
                    end++;
                } else {
                    int whiteRunStart3 = end;
                    while (true) {
                        end++;
                        if (end >= maxDim) {
                            break;
                        }
                        if (horizontal) {
                            if (this.image.get(end, fixedDimension)) {
                                break;
                            }
                        } else if (this.image.get(fixedDimension, end)) {
                            break;
                        }
                    }
                    int whiteRunSize3 = end - whiteRunStart3;
                    if (end < maxDim || whiteRunSize3 > maxWhiteRun) {
                        end = whiteRunStart3;
                        break;
                    }
                }
            } else if (this.image.get(fixedDimension, end)) {
                end++;
            } else {
                int whiteRunStart4 = end;
                while (true) {
                    end++;
                    if (end >= maxDim) {
                        break;
                        break;
                    }
                    if (horizontal) {
                        if (this.image.get(end, fixedDimension)) {
                            break;
                            break;
                        }
                    } else if (this.image.get(fixedDimension, end)) {
                        break;
                        break;
                    }
                }
                int whiteRunSize4 = end - whiteRunStart4;
                if (end < maxDim) {
                }
                end = whiteRunStart4;
                break;
            }
        }
        int end2 = end - 1;
        if (end2 > start2) {
            return new int[]{start2, end2};
        }
        return null;
    }
}
