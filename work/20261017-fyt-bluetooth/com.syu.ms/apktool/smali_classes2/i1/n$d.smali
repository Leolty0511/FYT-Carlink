.class public Li1/n$d;
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
    iput-object p1, p0, Li1/n$d;->a:Li1/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->X1:I

    .line 2
    iget-object v1, p0, Li1/n$d;->a:Li1/n;

    iget v2, v1, Li1/n;->o:I

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    const/16 v3, 0xff

    .line 3
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Li1/n;->o:I

    :cond_0
    return-void
.end method
