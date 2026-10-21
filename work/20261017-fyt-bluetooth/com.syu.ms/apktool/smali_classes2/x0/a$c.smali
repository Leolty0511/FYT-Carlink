.class public Lx0/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx0/a;


# direct methods
.method public constructor <init>(Lx0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx0/a$c;->a:Lx0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lx0/a$c;->a:Lx0/a;

    invoke-virtual {v0}, Lx0/a;->q()V

    .line 2
    iget-object v0, p0, Lx0/a$c;->a:Lx0/a;

    iget-boolean v1, v0, Lx0/a;->i:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Lx0/a;->k:Landroid/os/Handler;

    iget-object v2, v0, Lx0/a;->Q:Ljava/lang/Runnable;

    iget v0, v0, Lx0/a;->I:I

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
