package android.transition;

import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class Scene {
    private Context mContext;
    public Runnable mEnterAction;
    public Runnable mExitAction;
    private ViewGroup mLayout;
    private int mLayoutId;
    private ViewGroup mSceneRoot;

    public Scene(ViewGroup viewGroup) {
        this.mLayoutId = -1;
        this.mSceneRoot = viewGroup;
    }

    public static Scene getCurrentScene(View view) {
        return (Scene) view.getTag(16908914);
    }

    public static Scene getSceneForLayout(ViewGroup viewGroup, int i2, Context context) {
        SparseArray sparseArray = (SparseArray) viewGroup.getTag(16908915);
        if (sparseArray == null) {
            sparseArray = new SparseArray();
            viewGroup.setTagInternal(16908915, sparseArray);
        }
        Scene scene = (Scene) sparseArray.get(i2);
        if (scene != null) {
            return scene;
        }
        Scene scene2 = new Scene(viewGroup, i2, context);
        sparseArray.put(i2, scene2);
        return scene2;
    }

    public static void setCurrentScene(View view, Scene scene) {
        view.setTagInternal(16908914, scene);
    }

    public void enter() {
        if (this.mLayoutId > 0 || this.mLayout != null) {
            getSceneRoot().removeAllViews();
            if (this.mLayoutId > 0) {
                LayoutInflater.from(this.mContext).inflate(this.mLayoutId, this.mSceneRoot);
            } else {
                this.mSceneRoot.addView(this.mLayout);
            }
        }
        Runnable runnable = this.mEnterAction;
        if (runnable != null) {
            runnable.run();
        }
        setCurrentScene(this.mSceneRoot, this);
    }

    public void exit() {
        Runnable runnable;
        if (getCurrentScene(this.mSceneRoot) != this || (runnable = this.mExitAction) == null) {
            return;
        }
        runnable.run();
    }

    public ViewGroup getSceneRoot() {
        return this.mSceneRoot;
    }

    public boolean isCreatedFromLayoutResource() {
        return this.mLayoutId > 0;
    }

    public void setEnterAction(Runnable runnable) {
        this.mEnterAction = runnable;
    }

    public void setExitAction(Runnable runnable) {
        this.mExitAction = runnable;
    }

    private Scene(ViewGroup viewGroup, int i2, Context context) {
        this.mLayoutId = -1;
        this.mContext = context;
        this.mSceneRoot = viewGroup;
        this.mLayoutId = i2;
    }

    public Scene(ViewGroup viewGroup, ViewGroup viewGroup2) {
        this.mLayoutId = -1;
        this.mSceneRoot = viewGroup;
        this.mLayout = viewGroup2;
    }
}
