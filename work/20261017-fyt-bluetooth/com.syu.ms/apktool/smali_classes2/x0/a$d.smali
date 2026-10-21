.class public Lx0/a$d;
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
    iput-object p1, p0, Lx0/a$d;->a:Lx0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lx0/a$d;->a:Lx0/a;

    iget v1, v0, Lx0/a;->J:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lx0/a;->J:I

    .line 2
    :cond_0
    iget v1, v0, Lx0/a;->K:I

    if-lez v1, :cond_1

    sub-int/2addr v1, v2

    iput v1, v0, Lx0/a;->K:I

    .line 3
    :cond_1
    iget v1, v0, Lx0/a;->L:I

    if-lez v1, :cond_2

    sub-int/2addr v1, v2

    iput v1, v0, Lx0/a;->L:I

    .line 4
    :cond_2
    sget v1, Lx0/a;->J0:I

    if-lez v1, :cond_3

    sub-int/2addr v1, v2

    sput v1, Lx0/a;->J0:I

    .line 5
    :cond_3
    sget v1, Lx0/a;->J0:I

    const/4 v3, -0x1

    const/4 v4, 0x2

    if-lez v1, :cond_4

    sget v1, Lx0/a;->K0:I

    if-lt v1, v2, :cond_4

    .line 6
    iget-object v1, v0, Lx0/a;->F:[I

    aput v3, v1, v4

    goto :goto_0

    .line 7
    :cond_4
    sget v1, Lx0/a;->J0:I

    if-lez v1, :cond_5

    sget v1, Lx0/a;->K0:I

    if-gt v1, v3, :cond_5

    .line 8
    iget-object v1, v0, Lx0/a;->F:[I

    aput v2, v1, v4

    goto :goto_0

    .line 9
    :cond_5
    iget-object v1, v0, Lx0/a;->F:[I

    const/4 v3, 0x0

    aput v3, v1, v4

    .line 10
    :goto_0
    iget v1, v0, Lx0/a;->M:I

    add-int/2addr v1, v2

    iput v1, v0, Lx0/a;->M:I

    .line 11
    iget-object v1, v0, Lx0/a;->R:Landroid/os/Handler;

    iget-object v0, v0, Lx0/a;->S:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
