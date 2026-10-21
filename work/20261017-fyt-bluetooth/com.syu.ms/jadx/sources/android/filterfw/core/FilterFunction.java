package android.filterfw.core;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class FilterFunction {
    private Filter mFilter;
    private FilterContext mFilterContext;
    private boolean mFilterIsSetup = false;
    private FrameHolderPort[] mResultHolders;

    public class FrameHolderPort extends StreamPort {
        public FrameHolderPort() {
            super(null, "holder");
        }
    }

    public FilterFunction(FilterContext filterContext, Filter filter) {
        this.mFilterContext = filterContext;
        this.mFilter = filter;
    }

    private void connectFilterOutputs() {
        this.mResultHolders = new FrameHolderPort[this.mFilter.getNumberOfOutputs()];
        int i2 = 0;
        for (OutputPort outputPort : this.mFilter.getOutputPorts()) {
            this.mResultHolders[i2] = new FrameHolderPort();
            outputPort.connectTo(this.mResultHolders[i2]);
            i2++;
        }
    }

    public void close() {
        this.mFilter.performClose(this.mFilterContext);
    }

    public Frame execute(KeyValueMap keyValueMap) {
        boolean z2;
        int numberOfOutputs = this.mFilter.getNumberOfOutputs();
        if (numberOfOutputs > 1) {
            throw new RuntimeException("Calling execute on filter " + this.mFilter + " with multiple outputs! Use executeMulti() instead!");
        }
        if (!this.mFilterIsSetup) {
            connectFilterOutputs();
            this.mFilterIsSetup = true;
        }
        GLEnvironment gLEnvironment = this.mFilterContext.getGLEnvironment();
        if (gLEnvironment == null || gLEnvironment.isActive()) {
            z2 = false;
        } else {
            gLEnvironment.activate();
            z2 = true;
        }
        for (Map.Entry<String, Object> entry : keyValueMap.entrySet()) {
            if (entry.getValue() instanceof Frame) {
                this.mFilter.pushInputFrame(entry.getKey(), (Frame) entry.getValue());
            } else {
                this.mFilter.pushInputValue(entry.getKey(), entry.getValue());
            }
        }
        if (this.mFilter.getStatus() != 3) {
            this.mFilter.openOutputs();
        }
        this.mFilter.performProcess(this.mFilterContext);
        Frame framePullFrame = null;
        if (numberOfOutputs == 1 && this.mResultHolders[0].hasFrame()) {
            framePullFrame = this.mResultHolders[0].pullFrame();
        }
        if (z2) {
            gLEnvironment.deactivate();
        }
        return framePullFrame;
    }

    public Frame executeWithArgList(Object... objArr) {
        return execute(KeyValueMap.fromKeyValues(objArr));
    }

    public FilterContext getContext() {
        return this.mFilterContext;
    }

    public Filter getFilter() {
        return this.mFilter;
    }

    public void setInputFrame(String str, Frame frame) {
        this.mFilter.setInputFrame(str, frame);
    }

    public void setInputValue(String str, Object obj) {
        this.mFilter.setInputValue(str, obj);
    }

    public void tearDown() {
        this.mFilter.performTearDown(this.mFilterContext);
        this.mFilter = null;
    }

    public String toString() {
        return this.mFilter.getName();
    }
}
