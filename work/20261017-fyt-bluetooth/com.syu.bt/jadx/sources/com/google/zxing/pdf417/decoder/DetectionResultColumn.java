package com.google.zxing.pdf417.decoder;

import java.util.Formatter;

/* JADX INFO: loaded from: classes.dex */
class DetectionResultColumn {
    private static final int MAX_NEARBY_DISTANCE = 5;
    private final BoundingBox boundingBox;
    private final Codeword[] codewords;

    DetectionResultColumn(BoundingBox boundingBox) {
        this.boundingBox = new BoundingBox(boundingBox);
        this.codewords = new Codeword[(boundingBox.getMaxY() - boundingBox.getMinY()) + 1];
    }

    final Codeword getCodewordNearby(int imageRow) {
        Codeword codeword = getCodeword(imageRow);
        if (codeword != null) {
            return codeword;
        }
        for (int i = 1; i < 5; i++) {
            int nearImageRow = imageRowToCodewordIndex(imageRow) - i;
            if (nearImageRow >= 0 && (codeword = this.codewords[nearImageRow]) != null) {
                return codeword;
            }
            int nearImageRow2 = imageRowToCodewordIndex(imageRow) + i;
            if (nearImageRow2 < this.codewords.length && (codeword = this.codewords[nearImageRow2]) != null) {
                return codeword;
            }
        }
        return null;
    }

    final int imageRowToCodewordIndex(int imageRow) {
        return imageRow - this.boundingBox.getMinY();
    }

    final void setCodeword(int imageRow, Codeword codeword) {
        this.codewords[imageRowToCodewordIndex(imageRow)] = codeword;
    }

    final Codeword getCodeword(int imageRow) {
        return this.codewords[imageRowToCodewordIndex(imageRow)];
    }

    final BoundingBox getBoundingBox() {
        return this.boundingBox;
    }

    final Codeword[] getCodewords() {
        return this.codewords;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0055 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x0075  */
    /* JADX WARN: Code duplicated, block: B:45:0x0057 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public String toString() throws Throwable {
        Throwable th;
        int row;
        int i = 0;
        Formatter formatter = new Formatter();
        Throwable th2 = null;
        try {
            Codeword[] codewordArr = this.codewords;
            int length = codewordArr.length;
            int row2 = 0;
            while (i < length) {
                try {
                    Codeword codeword = codewordArr[i];
                    if (codeword == null) {
                        Object[] objArr = new Object[1];
                        row = row2 + 1;
                        objArr[0] = Integer.valueOf(row2);
                        formatter.format("%3d:    |   %n", objArr);
                    } else {
                        Object[] objArr2 = new Object[3];
                        row = row2 + 1;
                        objArr2[0] = Integer.valueOf(row2);
                        objArr2[1] = Integer.valueOf(codeword.getRowNumber());
                        objArr2[2] = Integer.valueOf(codeword.getValue());
                        formatter.format("%3d: %3d|%3d%n", objArr2);
                    }
                    i++;
                    row2 = row;
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        throw th;
                    } catch (Throwable th4) {
                        th = th4;
                        th2 = th;
                        if (formatter != null) {
                            if (th2 != null) {
                                try {
                                    formatter.close();
                                } catch (Throwable th5) {
                                    th2.addSuppressed(th5);
                                }
                            } else {
                                formatter.close();
                            }
                        }
                        throw th;
                    }
                }
            }
            String string = formatter.toString();
            if (formatter != null) {
                if (0 != 0) {
                    try {
                        formatter.close();
                    } catch (Throwable th6) {
                        th2.addSuppressed(th6);
                    }
                } else {
                    formatter.close();
                }
            }
            return string;
        } catch (Throwable th7) {
            th = th7;
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
}
