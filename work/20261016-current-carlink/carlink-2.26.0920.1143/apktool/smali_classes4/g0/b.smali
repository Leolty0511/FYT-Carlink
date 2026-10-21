.class public abstract Lg0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "kotlinx.coroutines.main.delay"

    .line 2
    .line 3
    sget v1, Lk0/h;->a:I

    .line 4
    .line 5
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_1
    if-nez v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lkotlinx/coroutines/d;->d:Lkotlinx/coroutines/d;

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    sget-object v0, Lg0/d;->a:Lkotlinx/coroutines/scheduling/d;

    .line 25
    .line 26
    sget-object v0, Lk0/f;->a:Lg0/f;

    .line 27
    .line 28
    move-object v1, v0

    .line 29
    check-cast v1, Lh0/a;

    .line 30
    .line 31
    iget-object v1, v1, Lh0/a;->f:Lh0/a;

    .line 32
    .line 33
    instance-of v1, v0, Lg0/c;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    sget-object v0, Lkotlinx/coroutines/d;->d:Lkotlinx/coroutines/d;

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    check-cast v0, Lg0/c;

    .line 41
    .line 42
    :goto_2
    return-void
.end method
