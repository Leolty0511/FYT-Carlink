.class public Lk0/jl$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/jl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/jl;


# direct methods
.method public constructor <init>(Lk0/jl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/jl$f;->a:Lk0/jl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, -0x7b

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 2
    iget-object v0, p0, Lk0/jl$f;->a:Lk0/jl;

    sget-object v3, Lu0/b;->i3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lk0/jl;->q3(Lk0/jl;BBLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    const-string v0, "com.syu.carlink"

    .line 3
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lk0/jl$f;->a:Lk0/jl;

    sget-object v3, Lu0/b;->i3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lk0/jl;->q3(Lk0/jl;BBLjava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lk0/jl$f;->a:Lk0/jl;

    const/16 v1, -0x7d

    sget-object v3, Lu0/b;->i3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lk0/jl;->q3(Lk0/jl;BBLjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
