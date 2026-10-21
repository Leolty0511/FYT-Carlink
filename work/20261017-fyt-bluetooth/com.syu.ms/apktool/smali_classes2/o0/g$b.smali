.class public Lo0/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/g;
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
    .locals 2

    .line 1
    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_0

    sget v0, Lo0/e;->h:I

    if-eqz v0, :cond_0

    sget v0, Lu0/b;->D:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget v0, Lo0/e;->I:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lo0/e;->L:I

    sub-int/2addr v0, v1

    sput v0, Lo0/e;->L:I

    if-gtz v0, :cond_0

    sget v0, Lu0/b;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lo0/g;->z(I)V

    :cond_0
    return-void
.end method
