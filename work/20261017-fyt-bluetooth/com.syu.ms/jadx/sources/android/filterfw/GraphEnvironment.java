package android.filterfw;

import android.content.Context;
import android.filterfw.core.AsyncRunner;
import android.filterfw.core.FilterContext;
import android.filterfw.core.FilterGraph;
import android.filterfw.core.FrameManager;
import android.filterfw.core.GraphRunner;
import android.filterfw.core.RoundRobinScheduler;
import android.filterfw.core.SyncRunner;
import android.filterfw.io.GraphIOException;
import android.filterfw.io.GraphReader;
import android.filterfw.io.TextGraphReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class GraphEnvironment extends MffEnvironment {
    public static final int MODE_ASYNCHRONOUS = 1;
    public static final int MODE_SYNCHRONOUS = 2;
    private GraphReader mGraphReader;
    private ArrayList<GraphHandle> mGraphs;

    public class GraphHandle {
        private AsyncRunner mAsyncRunner;
        private FilterGraph mGraph;
        private SyncRunner mSyncRunner;

        public GraphHandle(FilterGraph filterGraph) {
            this.mGraph = filterGraph;
        }

        public AsyncRunner getAsyncRunner(FilterContext filterContext) {
            if (this.mAsyncRunner == null) {
                AsyncRunner asyncRunner = new AsyncRunner(filterContext, RoundRobinScheduler.class);
                this.mAsyncRunner = asyncRunner;
                asyncRunner.setGraph(this.mGraph);
            }
            return this.mAsyncRunner;
        }

        public FilterGraph getGraph() {
            return this.mGraph;
        }

        public GraphRunner getSyncRunner(FilterContext filterContext) {
            if (this.mSyncRunner == null) {
                this.mSyncRunner = new SyncRunner(filterContext, this.mGraph, RoundRobinScheduler.class);
            }
            return this.mSyncRunner;
        }
    }

    public GraphEnvironment() {
        super(null);
        this.mGraphs = new ArrayList<>();
    }

    public int addGraph(FilterGraph filterGraph) {
        this.mGraphs.add(new GraphHandle(filterGraph));
        return this.mGraphs.size() - 1;
    }

    public void addReferences(Object... objArr) {
        getGraphReader().addReferencesByKeysAndValues(objArr);
    }

    public FilterGraph getGraph(int i2) {
        if (i2 >= 0 && i2 < this.mGraphs.size()) {
            return this.mGraphs.get(i2).getGraph();
        }
        throw new IllegalArgumentException("Invalid graph ID " + i2 + " specified in runGraph()!");
    }

    public GraphReader getGraphReader() {
        if (this.mGraphReader == null) {
            this.mGraphReader = new TextGraphReader();
        }
        return this.mGraphReader;
    }

    public GraphRunner getRunner(int i2, int i3) {
        if (i3 == 1) {
            return this.mGraphs.get(i2).getAsyncRunner(getContext());
        }
        if (i3 == 2) {
            return this.mGraphs.get(i2).getSyncRunner(getContext());
        }
        throw new RuntimeException("Invalid execution mode " + i3 + " specified in getRunner()!");
    }

    public int loadGraph(Context context, int i2) {
        try {
            return addGraph(getGraphReader().readGraphResource(context, i2));
        } catch (GraphIOException e2) {
            throw new RuntimeException("Could not read graph: " + e2.getMessage());
        }
    }

    public GraphEnvironment(FrameManager frameManager, GraphReader graphReader) {
        super(frameManager);
        this.mGraphs = new ArrayList<>();
        this.mGraphReader = graphReader;
    }
}
