package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class ChainRun extends WidgetRun {
    private int chainStyle;
    ArrayList<WidgetRun> widgets;

    public ChainRun(ConstraintWidget constraintWidget, int i2) {
        super(constraintWidget);
        this.widgets = new ArrayList<>();
        this.orientation = i2;
        build();
    }

    private void build() {
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2 = this.widget;
        ConstraintWidget previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
        while (true) {
            ConstraintWidget constraintWidget3 = previousChainMember;
            constraintWidget = constraintWidget2;
            constraintWidget2 = constraintWidget3;
            if (constraintWidget2 == null) {
                break;
            } else {
                previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
            }
        }
        this.widget = constraintWidget;
        this.widgets.add(constraintWidget.getRun(this.orientation));
        ConstraintWidget nextChainMember = constraintWidget.getNextChainMember(this.orientation);
        while (nextChainMember != null) {
            this.widgets.add(nextChainMember.getRun(this.orientation));
            nextChainMember = nextChainMember.getNextChainMember(this.orientation);
        }
        for (WidgetRun widgetRun : this.widgets) {
            int i2 = this.orientation;
            if (i2 == 0) {
                widgetRun.widget.horizontalChainRun = this;
            } else if (i2 == 1) {
                widgetRun.widget.verticalChainRun = this;
            }
        }
        if ((this.orientation == 0 && ((ConstraintWidgetContainer) this.widget.getParent()).isRtl()) && this.widgets.size() > 1) {
            ArrayList<WidgetRun> arrayList = this.widgets;
            this.widget = arrayList.get(arrayList.size() - 1).widget;
        }
        this.chainStyle = this.orientation == 0 ? this.widget.getHorizontalChainStyle() : this.widget.getVerticalChainStyle();
    }

    private ConstraintWidget getFirstVisibleWidget() {
        for (int i2 = 0; i2 < this.widgets.size(); i2++) {
            WidgetRun widgetRun = this.widgets.get(i2);
            if (widgetRun.widget.getVisibility() != 8) {
                return widgetRun.widget;
            }
        }
        return null;
    }

    private ConstraintWidget getLastVisibleWidget() {
        for (int size = this.widgets.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.widgets.get(size);
            if (widgetRun.widget.getVisibility() != 8) {
                return widgetRun.widget;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void apply() {
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            it.next().apply();
        }
        int size = this.widgets.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = this.widgets.get(0).widget;
        ConstraintWidget constraintWidget2 = this.widgets.get(size - 1).widget;
        if (this.orientation == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
            DependencyNode target = getTarget(constraintAnchor, 0);
            int margin = constraintAnchor.getMargin();
            ConstraintWidget firstVisibleWidget = getFirstVisibleWidget();
            if (firstVisibleWidget != null) {
                margin = firstVisibleWidget.mLeft.getMargin();
            }
            if (target != null) {
                addTarget(this.start, target, margin);
            }
            DependencyNode target2 = getTarget(constraintAnchor2, 0);
            int margin2 = constraintAnchor2.getMargin();
            ConstraintWidget lastVisibleWidget = getLastVisibleWidget();
            if (lastVisibleWidget != null) {
                margin2 = lastVisibleWidget.mRight.getMargin();
            }
            if (target2 != null) {
                addTarget(this.end, target2, -margin2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
            DependencyNode target3 = getTarget(constraintAnchor3, 1);
            int margin3 = constraintAnchor3.getMargin();
            ConstraintWidget firstVisibleWidget2 = getFirstVisibleWidget();
            if (firstVisibleWidget2 != null) {
                margin3 = firstVisibleWidget2.mTop.getMargin();
            }
            if (target3 != null) {
                addTarget(this.start, target3, margin3);
            }
            DependencyNode target4 = getTarget(constraintAnchor4, 1);
            int margin4 = constraintAnchor4.getMargin();
            ConstraintWidget lastVisibleWidget2 = getLastVisibleWidget();
            if (lastVisibleWidget2 != null) {
                margin4 = lastVisibleWidget2.mBottom.getMargin();
            }
            if (target4 != null) {
                addTarget(this.end, target4, -margin4);
            }
        }
        this.start.updateDelegate = this;
        this.end.updateDelegate = this;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        for (int i2 = 0; i2 < this.widgets.size(); i2++) {
            this.widgets.get(i2).applyToWidget();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void clear() {
        this.runGroup = null;
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public long getWrapDimension() {
        int size = this.widgets.size();
        long wrapDimension = 0;
        for (int i2 = 0; i2 < size; i2++) {
            WidgetRun widgetRun = this.widgets.get(i2);
            wrapDimension = ((long) widgetRun.end.margin) + widgetRun.getWrapDimension() + wrapDimension + ((long) widgetRun.start.margin);
        }
        return wrapDimension;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void reset() {
        this.start.resolved = false;
        this.end.resolved = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public boolean supportsWrapComputation() {
        int size = this.widgets.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!this.widgets.get(i2).supportsWrapComputation()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.orientation == 0 ? "horizontal : " : "vertical : ");
        for (WidgetRun widgetRun : this.widgets) {
            sb.append("<");
            sb.append(widgetRun);
            sb.append("> ");
        }
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:113:0x01be  */
    /* JADX WARN: Code duplicated, block: B:294:0x00f4 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:65:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ec A[ADDED_TO_REGION] */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        float f2;
        boolean z2;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        float f3;
        if (this.start.resolved && this.end.resolved) {
            ConstraintWidget parent = this.widget.getParent();
            boolean zIsRtl = parent instanceof ConstraintWidgetContainer ? ((ConstraintWidgetContainer) parent).isRtl() : false;
            int i15 = this.end.value - this.start.value;
            int size = this.widgets.size();
            int i16 = 0;
            while (true) {
                i2 = -1;
                i3 = 8;
                if (i16 >= size) {
                    i16 = -1;
                    break;
                } else if (this.widgets.get(i16).widget.getVisibility() != 8) {
                    break;
                } else {
                    i16++;
                }
            }
            int i17 = size - 1;
            for (int i18 = i17; i18 >= 0; i18--) {
                if (this.widgets.get(i18).widget.getVisibility() != 8) {
                    i2 = i18;
                    break;
                }
            }
            int i19 = 0;
            while (true) {
                if (i19 >= 2) {
                    i4 = 0;
                    i5 = 0;
                    i6 = 0;
                    f2 = 0.0f;
                    break;
                }
                int i20 = 0;
                i5 = 0;
                i6 = 0;
                int i21 = 0;
                f2 = 0.0f;
                while (i20 < size) {
                    WidgetRun widgetRun = this.widgets.get(i20);
                    if (widgetRun.widget.getVisibility() != i3) {
                        i21++;
                        if (i20 > 0 && i20 >= i16) {
                            i5 += widgetRun.start.margin;
                        }
                        DimensionDependency dimensionDependency = widgetRun.dimension;
                        int i22 = dimensionDependency.value;
                        boolean z3 = widgetRun.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        if (z3) {
                            int i23 = this.orientation;
                            if (i23 == 0 && !widgetRun.widget.horizontalRun.dimension.resolved) {
                                return;
                            }
                            if (i23 == 1 && !widgetRun.widget.verticalRun.dimension.resolved) {
                                return;
                            } else {
                                i13 = i22;
                            }
                        } else {
                            i13 = i22;
                            if (widgetRun.matchConstraintsType == 1 && i19 == 0) {
                                i14 = dimensionDependency.wrapValue;
                                i6++;
                            } else {
                                if (dimensionDependency.resolved) {
                                    i14 = i13;
                                }
                                if (z3) {
                                    i5 += i14;
                                } else {
                                    i6++;
                                    f3 = widgetRun.widget.mWeight[this.orientation];
                                    if (f3 >= 0.0f) {
                                        f2 += f3;
                                    }
                                }
                                if (i20 >= i17 && i20 < i2) {
                                    i5 += -widgetRun.end.margin;
                                }
                            }
                            z3 = true;
                            if (z3) {
                                i6++;
                                f3 = widgetRun.widget.mWeight[this.orientation];
                                if (f3 >= 0.0f) {
                                    f2 += f3;
                                }
                            } else {
                                i5 += i14;
                            }
                            if (i20 >= i17) {
                            }
                        }
                        i14 = i13;
                        if (z3) {
                            i6++;
                            f3 = widgetRun.widget.mWeight[this.orientation];
                            if (f3 >= 0.0f) {
                                f2 += f3;
                            }
                        } else {
                            i5 += i14;
                        }
                        if (i20 >= i17) {
                        }
                    }
                    i20++;
                    i3 = 8;
                }
                if (i5 < i15 || i6 == 0) {
                    i4 = i21;
                    break;
                } else {
                    i19++;
                    i3 = 8;
                }
            }
            int i24 = this.start.value;
            if (zIsRtl) {
                i24 = this.end.value;
            }
            if (i5 > i15) {
                i24 = zIsRtl ? i24 + ((int) (((i5 - i15) / 2.0f) + 0.5f)) : i24 - ((int) (((i5 - i15) / 2.0f) + 0.5f));
            }
            if (i6 > 0) {
                float f4 = i15 - i5;
                int i25 = (int) ((f4 / i6) + 0.5f);
                int i26 = 0;
                int i27 = 0;
                while (i26 < size) {
                    WidgetRun widgetRun2 = this.widgets.get(i26);
                    int i28 = i25;
                    int i29 = i5;
                    if (widgetRun2.widget.getVisibility() != 8 && widgetRun2.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        DimensionDependency dimensionDependency2 = widgetRun2.dimension;
                        if (dimensionDependency2.resolved) {
                            zIsRtl = zIsRtl;
                            i24 = i24;
                            f4 = f4;
                        } else {
                            int i30 = f2 > 0.0f ? (int) (((widgetRun2.widget.mWeight[this.orientation] * f4) / f2) + 0.5f) : i28;
                            if (this.orientation == 0) {
                                ConstraintWidget constraintWidget = widgetRun2.widget;
                                i12 = constraintWidget.mMatchConstraintMaxWidth;
                                i11 = constraintWidget.mMatchConstraintMinWidth;
                            } else {
                                ConstraintWidget constraintWidget2 = widgetRun2.widget;
                                int i31 = constraintWidget2.mMatchConstraintMaxHeight;
                                i11 = constraintWidget2.mMatchConstraintMinHeight;
                                i12 = i31;
                            }
                            int iMax = Math.max(i11, widgetRun2.matchConstraintsType == 1 ? Math.min(i30, dimensionDependency2.wrapValue) : i30);
                            if (i12 > 0) {
                                iMax = Math.min(i12, iMax);
                            }
                            if (iMax != i30) {
                                i27++;
                                i30 = iMax;
                            }
                            widgetRun2.dimension.resolve(i30);
                        }
                    } else {
                        zIsRtl = zIsRtl;
                        i24 = i24;
                        f4 = f4;
                    }
                    i26++;
                    i25 = i28;
                    i5 = i29;
                    i24 = i24;
                    f4 = f4;
                    zIsRtl = zIsRtl;
                    i4 = i4;
                }
                z2 = zIsRtl;
                i7 = i4;
                i8 = i24;
                int i32 = i5;
                if (i27 > 0) {
                    i6 -= i27;
                    int i33 = 0;
                    for (int i34 = 0; i34 < size; i34++) {
                        WidgetRun widgetRun3 = this.widgets.get(i34);
                        if (widgetRun3.widget.getVisibility() != 8) {
                            if (i34 > 0 && i34 >= i16) {
                                i33 += widgetRun3.start.margin;
                            }
                            i33 += widgetRun3.dimension.value;
                            if (i34 < i17 && i34 < i2) {
                                i33 += -widgetRun3.end.margin;
                            }
                        }
                    }
                    i5 = i33;
                } else {
                    i5 = i32;
                }
                i10 = 2;
                if (this.chainStyle == 2 && i27 == 0) {
                    i9 = 0;
                    this.chainStyle = 0;
                } else {
                    i9 = 0;
                }
            } else {
                z2 = zIsRtl;
                i7 = i4;
                i8 = i24;
                i9 = 0;
                i10 = 2;
            }
            if (i5 > i15) {
                this.chainStyle = i10;
            }
            if (i7 > 0 && i6 == 0 && i16 == i2) {
                this.chainStyle = i10;
            }
            int i35 = this.chainStyle;
            if (i35 == 1) {
                int i36 = i7;
                int i37 = i36 > 1 ? (i15 - i5) / (i36 - 1) : i36 == 1 ? (i15 - i5) / 2 : i9;
                if (i6 > 0) {
                    i37 = i9;
                }
                int i38 = i8;
                for (int i39 = i9; i39 < size; i39++) {
                    WidgetRun widgetRun4 = this.widgets.get(z2 ? size - (i39 + 1) : i39);
                    if (widgetRun4.widget.getVisibility() == 8) {
                        widgetRun4.start.resolve(i38);
                        widgetRun4.end.resolve(i38);
                    } else {
                        if (i39 > 0) {
                            i38 = z2 ? i38 - i37 : i38 + i37;
                        }
                        if (i39 > 0 && i39 >= i16) {
                            i38 = z2 ? i38 - widgetRun4.start.margin : i38 + widgetRun4.start.margin;
                        }
                        if (z2) {
                            widgetRun4.end.resolve(i38);
                        } else {
                            widgetRun4.start.resolve(i38);
                        }
                        DimensionDependency dimensionDependency3 = widgetRun4.dimension;
                        int i40 = dimensionDependency3.value;
                        if (widgetRun4.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun4.matchConstraintsType == 1) {
                            i40 = dimensionDependency3.wrapValue;
                        }
                        i38 = z2 ? i38 - i40 : i38 + i40;
                        if (z2) {
                            widgetRun4.start.resolve(i38);
                        } else {
                            widgetRun4.end.resolve(i38);
                        }
                        widgetRun4.resolved = true;
                        if (i39 < i17 && i39 < i2) {
                            i38 = z2 ? i38 - (-widgetRun4.end.margin) : i38 + (-widgetRun4.end.margin);
                        }
                    }
                }
                return;
            }
            int i41 = i7;
            if (i35 == 0) {
                int i42 = (i15 - i5) / (i41 + 1);
                if (i6 > 0) {
                    i42 = i9;
                }
                int i43 = i8;
                for (int i44 = i9; i44 < size; i44++) {
                    WidgetRun widgetRun5 = this.widgets.get(z2 ? size - (i44 + 1) : i44);
                    if (widgetRun5.widget.getVisibility() == 8) {
                        widgetRun5.start.resolve(i43);
                        widgetRun5.end.resolve(i43);
                    } else {
                        int i45 = z2 ? i43 - i42 : i43 + i42;
                        if (i44 > 0 && i44 >= i16) {
                            i45 = z2 ? i45 - widgetRun5.start.margin : i45 + widgetRun5.start.margin;
                        }
                        if (z2) {
                            widgetRun5.end.resolve(i45);
                        } else {
                            widgetRun5.start.resolve(i45);
                        }
                        DimensionDependency dimensionDependency4 = widgetRun5.dimension;
                        int iMin = dimensionDependency4.value;
                        if (widgetRun5.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.matchConstraintsType == 1) {
                            iMin = Math.min(iMin, dimensionDependency4.wrapValue);
                        }
                        i43 = z2 ? i45 - iMin : i45 + iMin;
                        if (z2) {
                            widgetRun5.start.resolve(i43);
                        } else {
                            widgetRun5.end.resolve(i43);
                        }
                        if (i44 < i17 && i44 < i2) {
                            i43 = z2 ? i43 - (-widgetRun5.end.margin) : i43 + (-widgetRun5.end.margin);
                        }
                    }
                }
                return;
            }
            if (i35 == 2) {
                float horizontalBiasPercent = this.orientation == 0 ? this.widget.getHorizontalBiasPercent() : this.widget.getVerticalBiasPercent();
                if (z2) {
                    horizontalBiasPercent = 1.0f - horizontalBiasPercent;
                }
                int i46 = (int) (((i15 - i5) * horizontalBiasPercent) + 0.5f);
                if (i46 < 0 || i6 > 0) {
                    i46 = i9;
                }
                int i47 = z2 ? i8 - i46 : i8 + i46;
                for (int i48 = i9; i48 < size; i48++) {
                    WidgetRun widgetRun6 = this.widgets.get(z2 ? size - (i48 + 1) : i48);
                    if (widgetRun6.widget.getVisibility() == 8) {
                        widgetRun6.start.resolve(i47);
                        widgetRun6.end.resolve(i47);
                    } else {
                        if (i48 > 0 && i48 >= i16) {
                            i47 = z2 ? i47 - widgetRun6.start.margin : i47 + widgetRun6.start.margin;
                        }
                        if (z2) {
                            widgetRun6.end.resolve(i47);
                        } else {
                            widgetRun6.start.resolve(i47);
                        }
                        DimensionDependency dimensionDependency5 = widgetRun6.dimension;
                        int i49 = dimensionDependency5.value;
                        if (widgetRun6.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun6.matchConstraintsType == 1) {
                            i49 = dimensionDependency5.wrapValue;
                        }
                        i47 = z2 ? i47 - i49 : i47 + i49;
                        if (z2) {
                            widgetRun6.start.resolve(i47);
                        } else {
                            widgetRun6.end.resolve(i47);
                        }
                        if (i48 < i17 && i48 < i2) {
                            i47 = z2 ? i47 - (-widgetRun6.end.margin) : i47 + (-widgetRun6.end.margin);
                        }
                    }
                }
            }
        }
    }
}
