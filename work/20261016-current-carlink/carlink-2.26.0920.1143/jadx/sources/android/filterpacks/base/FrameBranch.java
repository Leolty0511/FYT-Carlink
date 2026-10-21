package android.filterpacks.base;

import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.core.FrameFormat;
import android.filterfw.core.GenerateFinalPort;

/* JADX INFO: loaded from: classes.dex */
public class FrameBranch extends Filter {

    @GenerateFinalPort(hasDefault = true, name = "outputs")
    private int mNumberOfOutputs;

    public FrameBranch(String str) {
        super(str);
        this.mNumberOfOutputs = 2;
    }

    @Override // android.filterfw.core.Filter
    public FrameFormat getOutputFormat(String str, FrameFormat frameFormat) {
        return frameFormat;
    }

    @Override // android.filterfw.core.Filter
    public void process(FilterContext filterContext) {
        Frame framePullInput = pullInput("in");
        for (int i2 = 0; i2 < this.mNumberOfOutputs; i2++) {
            pushOutput("out" + i2, framePullInput);
        }
    }

    @Override // android.filterfw.core.Filter
    public void setupPorts() {
        addInputPort("in");
        for (int i2 = 0; i2 < this.mNumberOfOutputs; i2++) {
            addOutputBasedOnInput("out" + i2, "in");
        }
    }
}
