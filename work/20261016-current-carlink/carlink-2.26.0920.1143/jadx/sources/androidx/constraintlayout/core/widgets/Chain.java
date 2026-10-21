package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.ArrayRow;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class Chain {
    private static final boolean DEBUG = false;
    public static final boolean USE_CHAIN_OPTIMIZATION = false;

    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ArrayList<ConstraintWidget> arrayList, int i2) {
        int i3;
        ChainHead[] chainHeadArr;
        int i4;
        if (i2 == 0) {
            i3 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i4 = 0;
        } else {
            i3 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
            i4 = 2;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            ChainHead chainHead = chainHeadArr[i5];
            chainHead.define();
            if (arrayList == null || arrayList.contains(chainHead.mFirst)) {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i2, i4, chainHead);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x016e  */
    /* JADX WARN: Code duplicated, block: B:103:0x0171  */
    /* JADX WARN: Code duplicated, block: B:105:0x0177  */
    /* JADX WARN: Code duplicated, block: B:107:0x0198  */
    /* JADX WARN: Code duplicated, block: B:202:0x034c  */
    /* JADX WARN: Code duplicated, block: B:221:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:25:0x0044 A[PHI: r8 r16
  0x0044: PHI (r8v3 boolean) = (r8v1 boolean), (r8v45 boolean) binds: [B:24:0x0042, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]
  0x0044: PHI (r16v3 boolean) = (r16v1 boolean), (r16v8 boolean) binds: [B:24:0x0042, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:26:0x0046 A[PHI: r8 r16
  0x0046: PHI (r8v43 boolean) = (r8v1 boolean), (r8v45 boolean) binds: [B:24:0x0042, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]
  0x0046: PHI (r16v6 boolean) = (r16v1 boolean), (r16v8 boolean) binds: [B:24:0x0042, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:325:0x03a5 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r38v0, types: [androidx.constraintlayout.core.LinearSystem] */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v31 */
    /* JADX WARN: Type inference failed for: r5v32, types: [androidx.constraintlayout.core.SolverVariable] */
    /* JADX WARN: Type inference failed for: r5v36 */
    /* JADX WARN: Type inference failed for: r5v43 */
    /* JADX WARN: Type inference failed for: r8v41 */
    /* JADX WARN: Type inference failed for: r8v42 */
    /* JADX WARN: Type inference failed for: r8v47 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.constraintlayout.core.widgets.ConstraintWidget] */
    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i2, int i3, ChainHead chainHead) {
        boolean z2;
        boolean z3;
        boolean z4;
        Object obj;
        int i4;
        int i5;
        ConstraintAnchor constraintAnchor;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        ConstraintAnchor constraintAnchor2;
        SolverVariable solverVariable3;
        ?? r5;
        SolverVariable solverVariable4;
        float f2;
        int size;
        ConstraintAnchor constraintAnchor3;
        int i6;
        int i7 = i2;
        ConstraintWidget constraintWidget = chainHead.mFirst;
        ConstraintWidget constraintWidget2 = chainHead.mLast;
        ConstraintWidget constraintWidget3 = chainHead.mFirstVisibleWidget;
        ConstraintWidget constraintWidget4 = chainHead.mLastVisibleWidget;
        ConstraintWidget constraintWidget5 = chainHead.mHead;
        float f3 = chainHead.mTotalWeight;
        boolean z5 = constraintWidgetContainer.mListDimensionBehaviors[i7] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (i7 == 0) {
            int i8 = constraintWidget5.mHorizontalChainStyle;
            z2 = i8 == 0;
            z3 = i8 == 1;
            if (i8 == 2) {
                z4 = true;
            } else {
                z4 = false;
            }
        } else {
            int i9 = constraintWidget5.mVerticalChainStyle;
            z2 = i9 == 0;
            z3 = i9 == 1;
            if (i9 == 2) {
                z4 = true;
            } else {
                z4 = false;
            }
        }
        boolean z6 = z3;
        boolean z7 = false;
        boolean z8 = z2;
        ?? r8 = constraintWidget;
        while (true) {
            obj = null;
            if (z7) {
                break;
            }
            ConstraintAnchor constraintAnchor4 = r8.mListAnchors[i3];
            int i10 = z4 ? 1 : 4;
            int margin = constraintAnchor4.getMargin();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = r8.mListDimensionBehaviors[i7];
            float f4 = f3;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            boolean z9 = dimensionBehaviour == dimensionBehaviour2 && r8.mResolvedMatchConstraintDefault[i7] == 0;
            ConstraintAnchor constraintAnchor5 = constraintAnchor4.mTarget;
            if (constraintAnchor5 != null && r8 != constraintWidget) {
                margin = constraintAnchor5.getMargin() + margin;
            }
            int i11 = margin;
            if (z4 && r8 != constraintWidget && r8 != constraintWidget3) {
                i10 = 8;
            }
            ConstraintAnchor constraintAnchor6 = constraintAnchor4.mTarget;
            if (constraintAnchor6 != null) {
                if (r8 == constraintWidget3) {
                    linearSystem.addGreaterThan(constraintAnchor4.mSolverVariable, constraintAnchor6.mSolverVariable, i11, 6);
                } else {
                    linearSystem.addGreaterThan(constraintAnchor4.mSolverVariable, constraintAnchor6.mSolverVariable, i11, 8);
                }
                if (z9 && !z4) {
                    i10 = 5;
                }
                linearSystem.addEquality(constraintAnchor4.mSolverVariable, constraintAnchor4.mTarget.mSolverVariable, i11, (r8 == constraintWidget3 && z4 && r8.isInBarrier(i7)) ? 5 : i10);
            } else {
                constraintWidget = constraintWidget;
            }
            if (z5) {
                if (r8.getVisibility() == 8 || r8.mListDimensionBehaviors[i7] != dimensionBehaviour2) {
                    i6 = 0;
                } else {
                    ConstraintAnchor[] constraintAnchorArr = r8.mListAnchors;
                    i6 = 0;
                    linearSystem.addGreaterThan(constraintAnchorArr[i3 + 1].mSolverVariable, constraintAnchorArr[i3].mSolverVariable, 0, 5);
                }
                linearSystem.addGreaterThan(r8.mListAnchors[i3].mSolverVariable, constraintWidgetContainer.mListAnchors[i3].mSolverVariable, i6, 8);
            }
            ConstraintAnchor constraintAnchor7 = r8.mListAnchors[i3 + 1].mTarget;
            if (constraintAnchor7 != null) {
                ConstraintWidget constraintWidget6 = constraintAnchor7.mOwner;
                ConstraintAnchor constraintAnchor8 = constraintWidget6.mListAnchors[i3].mTarget;
                if (constraintAnchor8 != null && constraintAnchor8.mOwner == r8) {
                    obj = constraintWidget6;
                }
            }
            if (obj != null) {
                r8 = obj;
                z7 = z7;
            } else {
                z7 = true;
            }
            constraintWidget5 = constraintWidget5;
            f3 = f4;
            constraintWidget = constraintWidget;
            r8 = r8;
        }
        ConstraintWidget constraintWidget7 = constraintWidget5;
        float f5 = f3;
        ConstraintWidget constraintWidget8 = constraintWidget;
        if (constraintWidget4 != null) {
            int i12 = i3 + 1;
            if (constraintWidget2.mListAnchors[i12].mTarget != null) {
                ConstraintAnchor constraintAnchor9 = constraintWidget4.mListAnchors[i12];
                if ((constraintWidget4.mListDimensionBehaviors[i7] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget4.mResolvedMatchConstraintDefault[i7] == 0) && !z4) {
                    ConstraintAnchor constraintAnchor10 = constraintAnchor9.mTarget;
                    if (constraintAnchor10.mOwner == constraintWidgetContainer) {
                        linearSystem.addEquality(constraintAnchor9.mSolverVariable, constraintAnchor10.mSolverVariable, -constraintAnchor9.getMargin(), 5);
                    } else if (z4) {
                        constraintAnchor3 = constraintAnchor9.mTarget;
                        if (constraintAnchor3.mOwner == constraintWidgetContainer) {
                            linearSystem.addEquality(constraintAnchor9.mSolverVariable, constraintAnchor3.mSolverVariable, -constraintAnchor9.getMargin(), 4);
                        }
                    }
                } else if (z4) {
                    constraintAnchor3 = constraintAnchor9.mTarget;
                    if (constraintAnchor3.mOwner == constraintWidgetContainer) {
                        linearSystem.addEquality(constraintAnchor9.mSolverVariable, constraintAnchor3.mSolverVariable, -constraintAnchor9.getMargin(), 4);
                    }
                }
                linearSystem.addLowerThan(constraintAnchor9.mSolverVariable, constraintWidget2.mListAnchors[i12].mTarget.mSolverVariable, -constraintAnchor9.getMargin(), 6);
            }
        }
        if (z5) {
            int i13 = i3 + 1;
            SolverVariable solverVariable5 = constraintWidgetContainer.mListAnchors[i13].mSolverVariable;
            ConstraintAnchor constraintAnchor11 = constraintWidget2.mListAnchors[i13];
            linearSystem.addGreaterThan(solverVariable5, constraintAnchor11.mSolverVariable, constraintAnchor11.getMargin(), 8);
        }
        ArrayList<ConstraintWidget> arrayList = chainHead.mWeightedMatchConstraintsWidgets;
        if (arrayList != null && (size = arrayList.size()) > 1) {
            float f6 = (!chainHead.mHasUndefinedWeights || chainHead.mHasComplexMatchWeights) ? f5 : chainHead.mWidgetsMatchCount;
            float f7 = 0.0f;
            float f8 = 0.0f;
            ConstraintWidget constraintWidget9 = null;
            int i14 = 0;
            while (i14 < size) {
                ConstraintWidget constraintWidget10 = arrayList.get(i14);
                float f9 = constraintWidget10.mWeight[i7];
                if (f9 < f7) {
                    if (chainHead.mHasComplexMatchWeights) {
                        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget10.mListAnchors;
                        linearSystem.addEquality(constraintAnchorArr2[i3 + 1].mSolverVariable, constraintAnchorArr2[i3].mSolverVariable, 0, 4);
                    } else {
                        f9 = 1.0f;
                        f7 = 0.0f;
                    }
                    arrayList = arrayList;
                    size = size;
                    i14++;
                    size = size;
                    arrayList = arrayList;
                    f7 = 0.0f;
                }
                if (f9 == f7) {
                    ConstraintAnchor[] constraintAnchorArr3 = constraintWidget10.mListAnchors;
                    linearSystem.addEquality(constraintAnchorArr3[i3 + 1].mSolverVariable, constraintAnchorArr3[i3].mSolverVariable, 0, 8);
                    arrayList = arrayList;
                    size = size;
                } else {
                    if (constraintWidget9 != null) {
                        ConstraintAnchor[] constraintAnchorArr4 = constraintWidget9.mListAnchors;
                        SolverVariable solverVariable6 = constraintAnchorArr4[i3].mSolverVariable;
                        int i15 = i3 + 1;
                        SolverVariable solverVariable7 = constraintAnchorArr4[i15].mSolverVariable;
                        ConstraintAnchor[] constraintAnchorArr5 = constraintWidget10.mListAnchors;
                        SolverVariable solverVariable8 = constraintAnchorArr5[i3].mSolverVariable;
                        SolverVariable solverVariable9 = constraintAnchorArr5[i15].mSolverVariable;
                        ArrayRow arrayRowCreateRow = linearSystem.createRow();
                        arrayRowCreateRow.createRowEqualMatchDimensions(f8, f6, f9, solverVariable6, solverVariable7, solverVariable8, solverVariable9);
                        linearSystem.addConstraint(arrayRowCreateRow);
                    }
                    constraintWidget9 = constraintWidget10;
                    f8 = f9;
                }
                i14++;
                size = size;
                arrayList = arrayList;
                f7 = 0.0f;
            }
        }
        if (constraintWidget3 != null && (constraintWidget3 == constraintWidget4 || z4)) {
            ConstraintAnchor constraintAnchor12 = constraintWidget8.mListAnchors[i3];
            int i16 = i3 + 1;
            ConstraintAnchor constraintAnchor13 = constraintWidget2.mListAnchors[i16];
            ConstraintAnchor constraintAnchor14 = constraintAnchor12.mTarget;
            SolverVariable solverVariable10 = constraintAnchor14 != null ? constraintAnchor14.mSolverVariable : null;
            ConstraintAnchor constraintAnchor15 = constraintAnchor13.mTarget;
            SolverVariable solverVariable11 = constraintAnchor15 != null ? constraintAnchor15.mSolverVariable : null;
            ConstraintAnchor constraintAnchor16 = constraintWidget3.mListAnchors[i3];
            if (constraintWidget4 != null) {
                constraintAnchor13 = constraintWidget4.mListAnchors[i16];
            }
            if (solverVariable10 != null && solverVariable11 != null) {
                if (i7 == 0) {
                    f2 = constraintWidget7.mHorizontalBiasPercent;
                } else {
                    f2 = constraintWidget7.mVerticalBiasPercent;
                }
                linearSystem.addCentering(constraintAnchor16.mSolverVariable, solverVariable10, constraintAnchor16.getMargin(), f2, solverVariable11, constraintAnchor13.mSolverVariable, constraintAnchor13.getMargin(), 7);
            }
        } else if (!z8 || constraintWidget3 == null) {
            int i17 = 8;
            if (z6 && constraintWidget3 != null) {
                int i18 = chainHead.mWidgetsMatchCount;
                boolean z10 = i18 > 0 && chainHead.mWidgetsCount == i18;
                ConstraintWidget constraintWidget11 = constraintWidget3;
                ConstraintWidget constraintWidget12 = constraintWidget11;
                while (constraintWidget12 != null) {
                    ConstraintWidget constraintWidget13 = constraintWidget12.mNextChainWidget[i7];
                    while (constraintWidget13 != null && constraintWidget13.getVisibility() == i17) {
                        constraintWidget13 = constraintWidget13.mNextChainWidget[i7];
                    }
                    if (constraintWidget12 == constraintWidget3 || constraintWidget12 == constraintWidget4 || constraintWidget13 == null) {
                        constraintWidget11 = constraintWidget11;
                        i5 = i17;
                    } else {
                        ConstraintWidget constraintWidget14 = constraintWidget13 == constraintWidget4 ? null : constraintWidget13;
                        ConstraintAnchor constraintAnchor17 = constraintWidget12.mListAnchors[i3];
                        SolverVariable solverVariable12 = constraintAnchor17.mSolverVariable;
                        ConstraintAnchor constraintAnchor18 = constraintAnchor17.mTarget;
                        if (constraintAnchor18 != null) {
                            SolverVariable solverVariable13 = constraintAnchor18.mSolverVariable;
                        }
                        int i19 = i3 + 1;
                        SolverVariable solverVariable14 = constraintWidget11.mListAnchors[i19].mSolverVariable;
                        int margin2 = constraintAnchor17.getMargin();
                        int margin3 = constraintWidget12.mListAnchors[i19].getMargin();
                        if (constraintWidget14 != null) {
                            constraintAnchor = constraintWidget14.mListAnchors[i3];
                            SolverVariable solverVariable15 = constraintAnchor.mSolverVariable;
                            ConstraintAnchor constraintAnchor19 = constraintAnchor.mTarget;
                            solverVariable2 = constraintAnchor19 != null ? constraintAnchor19.mSolverVariable : null;
                            solverVariable = solverVariable15;
                        } else {
                            constraintAnchor = constraintWidget4.mListAnchors[i3];
                            solverVariable = constraintAnchor != null ? constraintAnchor.mSolverVariable : null;
                            solverVariable2 = constraintWidget12.mListAnchors[i19].mSolverVariable;
                        }
                        int margin4 = constraintAnchor != null ? constraintAnchor.getMargin() + margin3 : margin3;
                        int margin5 = constraintWidget11.mListAnchors[i19].getMargin() + margin2;
                        int i20 = z10 ? 8 : 4;
                        if (solverVariable12 == null || solverVariable14 == null || solverVariable == null || solverVariable2 == null) {
                            i5 = 8;
                        } else {
                            i5 = 8;
                            linearSystem.addCentering(solverVariable12, solverVariable14, margin5, 0.5f, solverVariable, solverVariable2, margin4, i20);
                        }
                        constraintWidget13 = constraintWidget14;
                    }
                    constraintWidget11 = constraintWidget12.getVisibility() != i5 ? constraintWidget12 : constraintWidget11;
                    constraintWidget12 = constraintWidget13;
                    i17 = i5;
                    i7 = i2;
                }
                ConstraintAnchor constraintAnchor20 = constraintWidget3.mListAnchors[i3];
                ConstraintAnchor constraintAnchor21 = constraintWidget8.mListAnchors[i3].mTarget;
                int i21 = i3 + 1;
                ConstraintAnchor constraintAnchor22 = constraintWidget4.mListAnchors[i21];
                ConstraintAnchor constraintAnchor23 = constraintWidget2.mListAnchors[i21].mTarget;
                if (constraintAnchor21 == null) {
                    i4 = 5;
                } else if (constraintWidget3 != constraintWidget4) {
                    i4 = 5;
                    linearSystem.addEquality(constraintAnchor20.mSolverVariable, constraintAnchor21.mSolverVariable, constraintAnchor20.getMargin(), 5);
                } else {
                    i4 = 5;
                    if (constraintAnchor23 != null) {
                        linearSystem.addCentering(constraintAnchor20.mSolverVariable, constraintAnchor21.mSolverVariable, constraintAnchor20.getMargin(), 0.5f, constraintAnchor22.mSolverVariable, constraintAnchor23.mSolverVariable, constraintAnchor22.getMargin(), 5);
                    }
                }
                if (constraintAnchor23 != null && constraintWidget3 != constraintWidget4) {
                    linearSystem.addEquality(constraintAnchor22.mSolverVariable, constraintAnchor23.mSolverVariable, -constraintAnchor22.getMargin(), i4);
                }
            }
        } else {
            int i22 = chainHead.mWidgetsMatchCount;
            boolean z11 = i22 > 0 && chainHead.mWidgetsCount == i22;
            ConstraintWidget constraintWidget15 = constraintWidget3;
            ConstraintWidget constraintWidget16 = constraintWidget15;
            while (constraintWidget16 != null) {
                ConstraintWidget constraintWidget17 = constraintWidget16.mNextChainWidget[i7];
                while (constraintWidget17 != null && constraintWidget17.getVisibility() == 8) {
                    constraintWidget17 = constraintWidget17.mNextChainWidget[i7];
                }
                if (constraintWidget17 != null || constraintWidget16 == constraintWidget4) {
                    ConstraintAnchor constraintAnchor24 = constraintWidget16.mListAnchors[i3];
                    SolverVariable solverVariable16 = constraintAnchor24.mSolverVariable;
                    ConstraintAnchor constraintAnchor25 = constraintAnchor24.mTarget;
                    SolverVariable solverVariable17 = constraintAnchor25 != null ? constraintAnchor25.mSolverVariable : null;
                    if (constraintWidget15 != constraintWidget16) {
                        solverVariable17 = constraintWidget15.mListAnchors[i3 + 1].mSolverVariable;
                    } else if (constraintWidget16 == constraintWidget3) {
                        ConstraintAnchor constraintAnchor26 = constraintWidget8.mListAnchors[i3].mTarget;
                        solverVariable17 = constraintAnchor26 != null ? constraintAnchor26.mSolverVariable : null;
                    }
                    int margin6 = constraintAnchor24.getMargin();
                    int i23 = i3 + 1;
                    int margin7 = constraintWidget16.mListAnchors[i23].getMargin();
                    if (constraintWidget17 != null) {
                        constraintAnchor2 = constraintWidget17.mListAnchors[i3];
                        solverVariable3 = constraintAnchor2.mSolverVariable;
                    } else {
                        constraintAnchor2 = constraintWidget2.mListAnchors[i23].mTarget;
                        if (constraintAnchor2 != null) {
                            solverVariable3 = constraintAnchor2.mSolverVariable;
                        } else {
                            solverVariable3 = null;
                        }
                        SolverVariable solverVariable18 = constraintWidget16.mListAnchors[i23].mSolverVariable;
                        if (constraintAnchor2 != null) {
                            margin7 += constraintAnchor2.getMargin();
                        }
                        int margin8 = constraintWidget15.mListAnchors[i23].getMargin() + margin6;
                        if (solverVariable16 == null && solverVariable17 != null && solverVariable3 != null && solverVariable18 != null) {
                            if (constraintWidget16 == constraintWidget3) {
                                margin8 = constraintWidget3.mListAnchors[i3].getMargin();
                            }
                            constraintWidget17 = constraintWidget17;
                            linearSystem.addCentering(solverVariable16, solverVariable17, margin8, 0.5f, solverVariable3, solverVariable18, constraintWidget16 == constraintWidget4 ? constraintWidget4.mListAnchors[i23].getMargin() : margin7, z11 ? 8 : 5);
                        }
                        if (constraintWidget16.getVisibility() != 8) {
                            constraintWidget16 = constraintWidget15;
                        }
                        constraintWidget15 = constraintWidget16;
                        constraintWidget16 = constraintWidget17;
                    }
                    SolverVariable solverVariable19 = constraintWidget16.mListAnchors[i23].mSolverVariable;
                    if (constraintAnchor2 != null) {
                        margin7 += constraintAnchor2.getMargin();
                    }
                    int margin9 = constraintWidget15.mListAnchors[i23].getMargin() + margin6;
                    if (solverVariable16 == null) {
                    }
                }
                if (constraintWidget16.getVisibility() != 8) {
                    constraintWidget16 = constraintWidget15;
                }
                constraintWidget15 = constraintWidget16;
                constraintWidget16 = constraintWidget17;
            }
        }
        if ((!z8 && !z6) || constraintWidget3 == null || constraintWidget3 == constraintWidget4) {
            return;
        }
        ConstraintAnchor[] constraintAnchorArr6 = constraintWidget3.mListAnchors;
        ConstraintAnchor constraintAnchor27 = constraintAnchorArr6[i3];
        if (constraintWidget4 == null) {
            constraintWidget4 = constraintWidget3;
        }
        int i24 = i3 + 1;
        ConstraintAnchor constraintAnchor28 = constraintWidget4.mListAnchors[i24];
        ConstraintAnchor constraintAnchor29 = constraintAnchor27.mTarget;
        SolverVariable solverVariable20 = constraintAnchor29 != null ? constraintAnchor29.mSolverVariable : null;
        ConstraintAnchor constraintAnchor30 = constraintAnchor28.mTarget;
        if (constraintAnchor30 != null) {
            solverVariable4 = constraintAnchor30.mSolverVariable;
        } else {
            r5 = 0;
        }
        if (constraintWidget2 != constraintWidget4) {
            ConstraintAnchor constraintAnchor31 = constraintWidget2.mListAnchors[i24].mTarget;
            if (constraintAnchor31 != null) {
                r5 = solverVariable4;
                obj = constraintAnchor31.mSolverVariable;
            }
            r5 = solverVariable4;
            r5 = obj;
        }
        if (constraintWidget3 == constraintWidget4) {
            constraintAnchor28 = constraintAnchorArr6[i24];
        }
        if (solverVariable20 == null || r5 == 0) {
            return;
        }
        linearSystem.addCentering(constraintAnchor27.mSolverVariable, solverVariable20, constraintAnchor27.getMargin(), 0.5f, r5, constraintAnchor28.mSolverVariable, constraintWidget4.mListAnchors[i24].getMargin(), 5);
    }
}
