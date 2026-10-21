.class public final Lp/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "com.android.internal.policy.impl.Policy could not be instantiated"

    :try_start_0
    const-string v1, "com.android.internal.policy.impl.Policy"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/a;

    sput-object v1, Lp/b;->a:Lp/a;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "com.android.internal.policy.impl.Policy could not be loaded"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;)Landroid/view/FallbackEventHandler;
    .locals 1

    .line 1
    sget-object v0, Lp/b;->a:Lp/a;

    invoke-interface {v0, p0}, Lp/a;->c(Landroid/content/Context;)Landroid/view/FallbackEventHandler;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    sget-object v0, Lp/b;->a:Lp/a;

    invoke-interface {v0, p0}, Lp/a;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Landroid/view/Window;
    .locals 1

    .line 1
    sget-object v0, Lp/b;->a:Lp/a;

    invoke-interface {v0, p0}, Lp/a;->b(Landroid/content/Context;)Landroid/view/Window;

    move-result-object p0

    return-object p0
.end method
