.class public Lx0/e$d;
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
    iput-object p1, p0, Lx0/e$d;->a:Lx0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lx0/e$d;->a:Lx0/e;

    iget v1, v0, Lx0/e;->E:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lx0/e;->E:I

    .line 2
    :cond_0
    iget v1, v0, Lx0/e;->E:I

    const/4 v3, -0x1

    const/4 v4, 0x2

    if-lez v1, :cond_1

    iget v5, v0, Lx0/e;->C:I

    if-lt v5, v2, :cond_1

    .line 3
    iget-object v1, v0, Lx0/e;->m:[I

    aput v3, v1, v4

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    .line 4
    iget v1, v0, Lx0/e;->C:I

    if-gt v1, v3, :cond_2

    .line 5
    iget-object v1, v0, Lx0/e;->m:[I

    aput v2, v1, v4

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, v0, Lx0/e;->m:[I

    const/4 v2, 0x0

    aput v2, v1, v4

    .line 7
    :goto_0
    iget-object v1, v0, Lx0/e;->S:Landroid/os/Handler;

    iget-object v0, v0, Lx0/e;->T:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
