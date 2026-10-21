.class public Lg1/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 2
    iput v0, p0, Lg1/e$c;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget v0, p0, Lg1/e$c;->a:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lg1/e$c;->a:I

    .line 2
    invoke-static {}, Lo1/i;->o()Lo1/i;

    move-result-object v0

    iget-boolean v0, v0, Lo1/i;->b:Z

    const/16 v2, 0x12c

    if-eqz v0, :cond_0

    .line 3
    iput v2, p0, Lg1/e$c;->a:I

    .line 4
    :cond_0
    iget v0, p0, Lg1/e$c;->a:I

    if-nez v0, :cond_1

    .line 5
    invoke-static {v1}, Lo1/q0;->D(I)V

    .line 6
    iput v2, p0, Lg1/e$c;->a:I

    :cond_1
    return-void
.end method
