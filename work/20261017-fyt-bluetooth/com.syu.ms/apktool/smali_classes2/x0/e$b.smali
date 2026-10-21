.class public Lx0/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx0/e;


# direct methods
.method public constructor <init>(Lx0/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx0/e$b;->a:Lx0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lx0/e$b;->a:Lx0/e;

    iget-object v0, v0, Lx0/e;->S:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lx0/e$b;->a:Lx0/e;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lx0/e;->r([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x1
        0x9
    .end array-data
.end method
