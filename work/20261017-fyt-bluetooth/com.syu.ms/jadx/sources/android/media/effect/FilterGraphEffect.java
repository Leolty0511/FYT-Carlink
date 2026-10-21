package android.media.effect;

import android.filterfw.core.Filter;
import android.filterfw.core.FilterGraph;
import android.filterfw.core.GraphRunner;
import android.filterfw.core.SyncRunner;
import android.filterfw.io.GraphIOException;
import android.filterfw.io.TextGraphReader;

/* JADX INFO: loaded from: classes.dex */
public class FilterGraphEffect extends FilterEffect {
    private static final String TAG = "FilterGraphEffect";
    public FilterGraph mGraph;
    public String mInputName;
    public String mOutputName;
    public GraphRunner mRunner;
    public Class mSchedulerClass;

    public FilterGraphEffect(EffectContext effectContext, String str, String str2, String str3, String str4, Class cls) {
        super(effectContext, str);
        this.mInputName = str3;
        this.mOutputName = str4;
        this.mSchedulerClass = cls;
        createGraph(str2);
    }

    private void createGraph(String str) {
        try {
            FilterGraph graphString = new TextGraphReader().readGraphString(str);
            this.mGraph = graphString;
            if (graphString == null) {
                throw new RuntimeException("Could not setup effect");
            }
            this.mRunner = new SyncRunner(getFilterContext(), this.mGraph, this.mSchedulerClass);
        } catch (GraphIOException e2) {
            throw new RuntimeException("Could not setup effect", e2);
        }
    }

    @Override // android.media.effect.Effect
    public void apply(int i2, int i3, int i4, int i5) {
        beginGLEffect();
        Filter filter = this.mGraph.getFilter(this.mInputName);
        if (filter == null) {
            throw new RuntimeException("Internal error applying effect");
        }
        filter.setInputValue("texId", Integer.valueOf(i2));
        filter.setInputValue("width", Integer.valueOf(i3));
        filter.setInputValue("height", Integer.valueOf(i4));
        Filter filter2 = this.mGraph.getFilter(this.mOutputName);
        if (filter2 == null) {
            throw new RuntimeException("Internal error applying effect");
        }
        filter2.setInputValue("texId", Integer.valueOf(i5));
        try {
            this.mRunner.run();
            endGLEffect();
        } catch (RuntimeException e2) {
            throw new RuntimeException("Internal error applying effect: ", e2);
        }
    }

    @Override // android.media.effect.Effect
    public void release() {
        this.mGraph.tearDown(getFilterContext());
        this.mGraph = null;
    }

    @Override // android.media.effect.Effect
    public void setParameter(String str, Object obj) {
    }
}
