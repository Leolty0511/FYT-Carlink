package android.filterfw.core;

/* JADX INFO: loaded from: classes.dex */
public abstract class Scheduler {
    private FilterGraph mGraph;

    public Scheduler(FilterGraph filterGraph) {
        this.mGraph = filterGraph;
    }

    public boolean finished() {
        return true;
    }

    public FilterGraph getGraph() {
        return this.mGraph;
    }

    public abstract void reset();

    public abstract Filter scheduleNextNode();
}
