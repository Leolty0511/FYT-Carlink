.class public Ln0/a1$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/a1;->X2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/a1;


# direct methods
.method public constructor <init>(Ln0/a1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/a1$n;->a:Ln0/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    sget-object v0, La/b;->k:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, La/b;->l:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Ln0/a1$n$a;

    invoke-direct {v1, p0}, Ln0/a1$n$a;-><init>(Ln0/a1$n;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0
.end method
