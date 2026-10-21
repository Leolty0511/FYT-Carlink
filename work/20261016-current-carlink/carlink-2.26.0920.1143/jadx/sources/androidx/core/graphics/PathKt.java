package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.graphics.Path;
import android.media.TtmlUtils;
import androidx.annotation.RequiresApi;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ClassVerificationFailure"})
public final class PathKt {
    @RequiresApi(19)
    public static final Path and(Path path, Path path2) {
        t.b.h(path, "<this>");
        t.b.h(path2, TtmlUtils.TAG_P);
        Path path3 = new Path();
        path3.op(path, path2, Path.Op.INTERSECT);
        return path3;
    }

    @RequiresApi(26)
    public static final Iterable<PathSegment> flatten(Path path, float f2) {
        t.b.h(path, "<this>");
        Collection<PathSegment> collectionFlatten = PathUtils.flatten(path, f2);
        t.b.g(collectionFlatten, "flatten(this, error)");
        return collectionFlatten;
    }

    public static /* synthetic */ Iterable flatten$default(Path path, float f2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            f2 = 0.5f;
        }
        return flatten(path, f2);
    }

    @RequiresApi(19)
    public static final Path minus(Path path, Path path2) {
        t.b.h(path, "<this>");
        t.b.h(path2, TtmlUtils.TAG_P);
        Path path3 = new Path(path);
        path3.op(path2, Path.Op.DIFFERENCE);
        return path3;
    }

    @RequiresApi(19)
    public static final Path or(Path path, Path path2) {
        t.b.h(path, "<this>");
        t.b.h(path2, TtmlUtils.TAG_P);
        Path path3 = new Path(path);
        path3.op(path2, Path.Op.UNION);
        return path3;
    }

    @RequiresApi(19)
    public static final Path plus(Path path, Path path2) {
        t.b.h(path, "<this>");
        t.b.h(path2, TtmlUtils.TAG_P);
        Path path3 = new Path(path);
        path3.op(path2, Path.Op.UNION);
        return path3;
    }

    @RequiresApi(19)
    public static final Path xor(Path path, Path path2) {
        t.b.h(path, "<this>");
        t.b.h(path2, TtmlUtils.TAG_P);
        Path path3 = new Path(path);
        path3.op(path2, Path.Op.XOR);
        return path3;
    }
}
