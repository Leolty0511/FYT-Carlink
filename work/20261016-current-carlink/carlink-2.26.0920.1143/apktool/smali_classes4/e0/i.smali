.class public abstract Le0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le0/g;Lu/c;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-interface {p1}, Le0/g;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Le0/h;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sget-object v2, Ls/c;->a:Ls/c;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move-object p1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput-object p1, v0, Le0/h;->d:Ljava/util/Iterator;

    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    iput p1, v0, Le0/h;->b:I

    .line 22
    .line 23
    iput-object p2, v0, Le0/h;->e:Lu/c;

    .line 24
    .line 25
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 26
    .line 27
    const-string v0, "frame"

    .line 28
    .line 29
    invoke-static {p2, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    if-ne p1, p2, :cond_1

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_1
    return-object v2
.end method
