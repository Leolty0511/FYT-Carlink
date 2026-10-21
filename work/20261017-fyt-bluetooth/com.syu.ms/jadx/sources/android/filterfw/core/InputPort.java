package android.filterfw.core;

/* JADX INFO: loaded from: classes.dex */
public abstract class InputPort extends FilterPort {
    public OutputPort mSourcePort;

    public InputPort(Filter filter, String str) {
        super(filter, str);
    }

    public boolean acceptsFrame() {
        return !hasFrame();
    }

    @Override // android.filterfw.core.FilterPort
    public void close() {
        OutputPort outputPort = this.mSourcePort;
        if (outputPort != null && outputPort.isOpen()) {
            this.mSourcePort.close();
        }
        super.close();
    }

    @Override // android.filterfw.core.FilterPort
    public boolean filterMustClose() {
        return (isOpen() || !isBlocking() || hasFrame()) ? false : true;
    }

    public Filter getSourceFilter() {
        OutputPort outputPort = this.mSourcePort;
        if (outputPort == null) {
            return null;
        }
        return outputPort.getFilter();
    }

    public FrameFormat getSourceFormat() {
        OutputPort outputPort = this.mSourcePort;
        return outputPort != null ? outputPort.getPortFormat() : getPortFormat();
    }

    public OutputPort getSourcePort() {
        return this.mSourcePort;
    }

    public Object getTarget() {
        return null;
    }

    public boolean isConnected() {
        return this.mSourcePort != null;
    }

    @Override // android.filterfw.core.FilterPort
    public boolean isReady() {
        return hasFrame() || !isBlocking();
    }

    @Override // android.filterfw.core.FilterPort
    public void open() {
        super.open();
        OutputPort outputPort = this.mSourcePort;
        if (outputPort == null || outputPort.isOpen()) {
            return;
        }
        this.mSourcePort.open();
    }

    public void setSourcePort(OutputPort outputPort) {
        if (this.mSourcePort == null) {
            this.mSourcePort = outputPort;
            return;
        }
        throw new RuntimeException(this + " already connected to " + this.mSourcePort + "!");
    }

    public abstract void transfer(FilterContext filterContext);
}
