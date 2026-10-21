.class public Li1/n$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/n;


# direct methods
.method public constructor <init>(Li1/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/n$e;->a:Li1/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->I2:I

    .line 2
    iget-object v1, p0, Li1/n$e;->a:Li1/n;

    iget v2, v1, Li1/n;->P:I

    .line 3
    div-int/lit8 v2, v2, 0x2

    if-gez v0, :cond_0

    move v0, v2

    :cond_0
    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    const/high16 v2, 0x43000000    # 128.0f

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 4
    iget v2, v1, Li1/n;->p:I

    if-eq v2, v0, :cond_1

    .line 5
    iput v0, v1, Li1/n;->p:I

    :cond_1
    return-void
.end method
