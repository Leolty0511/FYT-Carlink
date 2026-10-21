.class public Landroid/filterfw/FilterFunctionEnvironment;
.super Landroid/filterfw/MffEnvironment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/filterfw/MffEnvironment;-><init>(Landroid/filterfw/core/FrameManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/filterfw/core/FrameManager;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/filterfw/MffEnvironment;-><init>(Landroid/filterfw/core/FrameManager;)V

    return-void
.end method


# virtual methods
.method public varargs createFunction(Ljava/lang/Class;[Ljava/lang/Object;)Landroid/filterfw/core/FilterFunction;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FilterFunction("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ")"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Landroid/filterfw/core/FilterFactory;->sharedFactory()Landroid/filterfw/core/FilterFactory;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, p1, v0}, Landroid/filterfw/core/FilterFactory;->createFilterByClass(Ljava/lang/Class;Ljava/lang/String;)Landroid/filterfw/core/Filter;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, p2}, Landroid/filterfw/core/Filter;->initWithAssignmentList([Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    new-instance p2, Landroid/filterfw/core/FilterFunction;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/filterfw/MffEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p2, v0, p1}, Landroid/filterfw/core/FilterFunction;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Filter;)V

    .line 42
    .line 43
    .line 44
    return-object p2
.end method
