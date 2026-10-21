.class Landroidx/transition/GhostViewPlatform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/transition/GhostView;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GhostViewApi21"

.field private static sAddGhostMethod:Ljava/lang/reflect/Method;

.field private static sAddGhostMethodFetched:Z

.field private static sGhostViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sGhostViewClassFetched:Z

.field private static sRemoveGhostMethod:Ljava/lang/reflect/Method;

.field private static sRemoveGhostMethodFetched:Z


# instance fields
.field private final mGhostView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/transition/GhostViewPlatform;->mGhostView:Landroid/view/View;

    .line 5
    .line 6
    return-void
.end method

.method public static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostView;
    .locals 5

    .line 1
    invoke-static {}, Landroidx/transition/GhostViewPlatform;->fetchAddGhostMethod()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/transition/GhostViewPlatform;->sAddGhostMethod:Ljava/lang/reflect/Method;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    new-instance v2, Landroidx/transition/GhostViewPlatform;

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    new-array v3, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object p0, v3, v4

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    aput-object p1, v3, p0

    .line 19
    .line 20
    const/4 p0, 0x2

    .line 21
    aput-object p2, v3, p0

    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/view/View;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Landroidx/transition/GhostViewPlatform;-><init>(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-object v2

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :catch_1
    :cond_0
    return-object v1
.end method

.method private static fetchAddGhostMethod()V
    .locals 6

    .line 1
    sget-boolean v0, Landroidx/transition/GhostViewPlatform;->sAddGhostMethodFetched:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    :try_start_0
    invoke-static {}, Landroidx/transition/GhostViewPlatform;->fetchGhostViewClass()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Landroidx/transition/GhostViewPlatform;->sGhostViewClass:Ljava/lang/Class;

    .line 10
    .line 11
    const-string v2, "addGhost"

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    new-array v3, v3, [Ljava/lang/Class;

    .line 15
    .line 16
    const-class v4, Landroid/view/View;

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    aput-object v4, v3, v5

    .line 20
    .line 21
    const-class v4, Landroid/view/ViewGroup;

    .line 22
    .line 23
    aput-object v4, v3, v0

    .line 24
    .line 25
    const-class v4, Landroid/graphics/Matrix;

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    aput-object v4, v3, v5

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sput-object v1, Landroidx/transition/GhostViewPlatform;->sAddGhostMethod:Ljava/lang/reflect/Method;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    const-string v2, "GhostViewApi21"

    .line 42
    .line 43
    const-string v3, "Failed to retrieve addGhost method"

    .line 44
    .line 45
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :goto_0
    sput-boolean v0, Landroidx/transition/GhostViewPlatform;->sAddGhostMethodFetched:Z

    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method private static fetchGhostViewClass()V
    .locals 3

    .line 1
    sget-boolean v0, Landroidx/transition/GhostViewPlatform;->sGhostViewClassFetched:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-class v0, Landroid/view/GhostView;

    .line 6
    .line 7
    sget v1, Landroid/view/GhostView;->b:I

    .line 8
    .line 9
    sput-object v0, Landroidx/transition/GhostViewPlatform;->sGhostViewClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    const-string v1, "GhostViewApi21"

    .line 14
    .line 15
    const-string v2, "Failed to retrieve GhostView class"

    .line 16
    .line 17
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 v0, 0x1

    .line 21
    sput-boolean v0, Landroidx/transition/GhostViewPlatform;->sGhostViewClassFetched:Z

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private static fetchRemoveGhostMethod()V
    .locals 6

    .line 1
    sget-boolean v0, Landroidx/transition/GhostViewPlatform;->sRemoveGhostMethodFetched:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    :try_start_0
    invoke-static {}, Landroidx/transition/GhostViewPlatform;->fetchGhostViewClass()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Landroidx/transition/GhostViewPlatform;->sGhostViewClass:Ljava/lang/Class;

    .line 10
    .line 11
    const-string v2, "removeGhost"

    .line 12
    .line 13
    new-array v3, v0, [Ljava/lang/Class;

    .line 14
    .line 15
    const-class v4, Landroid/view/View;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    aput-object v4, v3, v5

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sput-object v1, Landroidx/transition/GhostViewPlatform;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v1

    .line 31
    const-string v2, "GhostViewApi21"

    .line 32
    .line 33
    const-string v3, "Failed to retrieve removeGhost method"

    .line 34
    .line 35
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    sput-boolean v0, Landroidx/transition/GhostViewPlatform;->sRemoveGhostMethodFetched:Z

    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public static removeGhost(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/transition/GhostViewPlatform;->fetchRemoveGhostMethod()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/transition/GhostViewPlatform;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object p0, v1, v2

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :catch_1
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Landroidx/transition/GhostViewPlatform;->mGhostView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
