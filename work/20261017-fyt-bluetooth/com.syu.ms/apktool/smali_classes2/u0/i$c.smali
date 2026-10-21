.class public Lu0/i$c;
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
.field public a:I

.field public final synthetic b:Lu0/i;


# direct methods
.method public constructor <init>(Lu0/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu0/i$c;->b:Lu0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lu0/i$c;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget v0, p0, Lu0/i$c;->a:I

    sget v1, Lu0/b;->o:I

    if-eq v0, v1, :cond_2

    .line 2
    iput v1, p0, Lu0/i$c;->a:I

    .line 3
    iget-object v0, p0, Lu0/i$c;->b:Lu0/i;

    const/high16 v2, 0x20000

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v2, v1}, Lu0/i;->g4(IZ)V

    .line 4
    iget-object v0, p0, Lu0/i$c;->b:Lu0/i;

    const/high16 v1, 0x10000

    iget v2, p0, Lu0/i$c;->a:I

    if-eq v2, v4, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v0, v1, v3}, Lu0/i;->g4(IZ)V

    :cond_2
    return-void
.end method
