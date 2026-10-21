.class public Lg/o$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public final synthetic d:Lg/o;


# direct methods
.method public constructor <init>(Lg/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/o$k;->d:Lg/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    .line 2
    iput p1, p0, Lg/o$k;->a:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lg/o$k;->b:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lg/o$k;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    const/16 v0, 0x8

    .line 2
    invoke-static {v0}, Lcom/syu/jni/ToolsJni;->cmd_252_Normal_Io_Get(I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x3

    if-eqz v0, :cond_1

    .line 3
    iget v4, p0, Lg/o$k;->c:I

    if-ge v4, v3, :cond_1

    add-int/2addr v4, v2

    .line 4
    iput v4, p0, Lg/o$k;->c:I

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 5
    iget v0, p0, Lg/o$k;->c:I

    if-lez v0, :cond_2

    sub-int/2addr v0, v2

    .line 6
    iput v0, p0, Lg/o$k;->c:I

    .line 7
    :cond_2
    :goto_1
    iget v0, p0, Lg/o$k;->b:I

    if-ne v0, v2, :cond_3

    iget v4, p0, Lg/o$k;->c:I

    if-nez v4, :cond_3

    .line 8
    iput v1, p0, Lg/o$k;->b:I

    .line 9
    invoke-static {v1}, Lu0/d;->x0(I)V

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    .line 10
    iget v4, p0, Lg/o$k;->c:I

    if-lt v4, v3, :cond_4

    .line 11
    iput v2, p0, Lg/o$k;->b:I

    .line 12
    invoke-static {v2}, Lu0/d;->x0(I)V

    goto :goto_2

    :cond_4
    if-gez v0, :cond_6

    .line 13
    iput v1, p0, Lg/o$k;->b:I

    .line 14
    invoke-static {v1}, Lu0/d;->x0(I)V

    goto :goto_2

    .line 15
    :cond_5
    iput v2, p0, Lg/o$k;->b:I

    .line 16
    iput v1, p0, Lg/o$k;->c:I

    .line 17
    invoke-static {v2}, Lu0/d;->x0(I)V

    .line 18
    :cond_6
    :goto_2
    iget-object v0, p0, Lg/o$k;->d:Lg/o;

    iget-object v0, v0, Lchip/Chip;->s:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    iget-object v0, p0, Lg/o$k;->d:Lg/o;

    iget-object v0, v0, Lchip/Chip;->s:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void
.end method
