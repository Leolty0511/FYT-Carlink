.class public Lk0/jl$g;
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
    iput-object p1, p0, Lk0/jl$g;->a:Lk0/jl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lk0/jl$g;->a:Lk0/jl;

    const/16 v2, -0x7b

    sget-object v3, Lu0/b;->j3:Ljava/lang/String;

    invoke-static {v0, v2, v1, v3}, Lk0/jl;->q3(Lk0/jl;BBLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    const/16 v3, -0x7d

    if-ne v0, v2, :cond_2

    const-string v0, "com.syu.carlink"

    .line 3
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lk0/jl$g;->a:Lk0/jl;

    sget-object v2, Lu0/b;->j3:Ljava/lang/String;

    invoke-static {v0, v3, v1, v2}, Lk0/jl;->q3(Lk0/jl;BBLjava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lk0/jl$g;->a:Lk0/jl;

    const/4 v1, 0x2

    sget-object v2, Lu0/b;->j3:Ljava/lang/String;

    invoke-static {v0, v3, v1, v2}, Lk0/jl;->q3(Lk0/jl;BBLjava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lk0/jl$g;->a:Lk0/jl;

    sget-object v2, Lu0/b;->j3:Ljava/lang/String;

    invoke-static {v0, v3, v1, v2}, Lk0/jl;->q3(Lk0/jl;BBLjava/lang/String;)V

    :goto_0
    return-void
.end method
