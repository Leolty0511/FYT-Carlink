.class public Ln0/g4$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/g4;->K3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ln0/g4;


# direct methods
.method public constructor <init>(Ln0/g4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/g4$c;->b:Ln0/g4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Ln0/g4$c;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget-boolean v0, Lh0/c;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget v0, Lh0/c;->E:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    xor-int/lit8 v3, v0, 0x1

    .line 2
    iget v4, p0, Ln0/g4$c;->a:I

    if-eq v4, v3, :cond_4

    if-eqz v0, :cond_2

    const/4 v4, 0x4

    .line 3
    invoke-static {v4, v2}, Lh0/e;->J(IZ)V

    :cond_2
    if-eqz v0, :cond_3

    const/16 v1, 0xc8

    .line 4
    :cond_3
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v2

    new-instance v4, Ln0/g4$c$a;

    invoke-direct {v4, p0, v3, v0}, Ln0/g4$c$a;-><init>(Ln0/g4$c;IZ)V

    int-to-long v0, v1

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    iput v3, p0, Ln0/g4$c;->a:I

    :cond_4
    return-void
.end method
