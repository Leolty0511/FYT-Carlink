.class public Lk0/nk$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/nk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/nk;


# direct methods
.method public constructor <init>(Lk0/nk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/nk$a;->a:Lk0/nk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/nk$a;->a:Lk0/nk;

    invoke-virtual {v0}, Lk0/nk;->n3()V

    .line 2
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Lk0/nk$a$a;

    invoke-direct {v1, p0}, Lk0/nk$a$a;-><init>(Lk0/nk$a;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
