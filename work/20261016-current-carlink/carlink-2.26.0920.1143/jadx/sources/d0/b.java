package d0;

import java.util.List;
import java.util.Map;
import kotlin.reflect.KVisibility;

/* JADX INFO: loaded from: classes4.dex */
public interface b extends a {
    Object call(Object... objArr);

    Object callBy(Map map);

    List getParameters();

    f getReturnType();

    List getTypeParameters();

    KVisibility getVisibility();

    boolean isAbstract();

    boolean isFinal();

    boolean isOpen();
}
