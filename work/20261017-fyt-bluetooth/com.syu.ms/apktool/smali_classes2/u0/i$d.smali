.class public Lu0/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu0/i;


# direct methods
.method public constructor <init>(Lu0/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu0/i$d;->a:Lu0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu0/i$d;->a:Lu0/i;

    iget-object v0, v0, Lu0/i;->q0:Lq1/b;

    sget v1, Lu0/b;->X1:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lq1/b;->g(I)I

    .line 2
    iget-object v0, p0, Lu0/i$d;->a:Lu0/i;

    iget-object v0, v0, Lu0/i;->q0:Lq1/b;

    invoke-virtual {v0}, Lq1/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lu0/i$d;->a:Lu0/i;

    invoke-virtual {v0}, Lu0/i;->w3()V

    :cond_1
    return-void
.end method
