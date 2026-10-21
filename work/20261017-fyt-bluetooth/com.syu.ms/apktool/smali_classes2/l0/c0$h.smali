.class public Ll0/c0$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll0/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Ll0/c0;->v:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    sub-int/2addr v0, v1

    .line 2
    sput v0, Ll0/c0;->v:I

    .line 3
    :cond_0
    sget v0, Ll0/c0;->v:I

    if-gtz v0, :cond_3

    .line 4
    invoke-static {}, Ll0/c0;->M1()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v2}, Lk0/qt;->a(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8b

    new-array v1, v1, [I

    aput v2, v1, v2

    .line 7
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    .line 8
    :cond_2
    :goto_0
    sput v2, Lu0/b;->L2:I

    .line 9
    sget-object v0, Lu0/c;->g:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 10
    sget-object v0, Ll0/c0;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
