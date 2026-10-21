.class public abstract Lkotlinx/coroutines/b;
.super Lu/a;
.source "SourceFile"

# interfaces
.implements Lu/d;


# static fields
.field public static final b:Lkotlinx/coroutines/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/a;

    invoke-direct {v0}, Lkotlinx/coroutines/a;-><init>()V

    sput-object v0, Lkotlinx/coroutines/b;->b:Lkotlinx/coroutines/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Le/b;->d:Le/b;

    invoke-direct {p0, v0}, Lu/a;-><init>(Lu/f;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lu/g;Ljava/lang/Runnable;)V
.end method

.method public b()Z
    .locals 1

    instance-of v0, p0, Lkotlinx/coroutines/g;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final get(Lu/f;)Lu/e;
    .locals 2

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v1, p1, Lu/b;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lu/b;

    .line 11
    .line 12
    invoke-virtual {p0}, Lu/a;->getKey()Lu/f;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    if-eq v1, p1, :cond_1

    .line 20
    .line 21
    iget-object v0, p1, Lu/b;->b:Lu/f;

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object p1, p1, Lu/b;->a:Lz/l;

    .line 32
    .line 33
    invoke-interface {p1, p0}, Lz/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lu/e;

    .line 38
    .line 39
    instance-of v0, p1, Lu/e;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    sget-object v0, Le/b;->d:Le/b;

    .line 45
    .line 46
    if-ne v0, p1, :cond_3

    .line 47
    .line 48
    move-object p1, p0

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    const/4 p1, 0x0

    .line 51
    :goto_2
    return-object p1
.end method

.method public final minusKey(Lu/f;)Lu/g;
    .locals 2

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v1, p1, Lu/b;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lu/b;

    .line 11
    .line 12
    invoke-virtual {p0}, Lu/a;->getKey()Lu/f;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    if-eq v1, p1, :cond_1

    .line 20
    .line 21
    iget-object v0, p1, Lu/b;->b:Lu/f;

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object p1, p1, Lu/b;->a:Lz/l;

    .line 32
    .line 33
    invoke-interface {p1, p0}, Lz/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lu/e;

    .line 38
    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    sget-object v0, Le/b;->d:Le/b;

    .line 45
    .line 46
    if-ne v0, p1, :cond_3

    .line 47
    .line 48
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    move-object p1, p0

    .line 52
    :goto_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x40

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
