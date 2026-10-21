.class public Lo1/q0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/q0;
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

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    sget v0, Lu0/b;->w3:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    sput v0, Lu0/b;->w3:I

    .line 4
    :cond_0
    sget v0, Lu0/b;->w3:I

    if-nez v0, :cond_1

    .line 5
    invoke-static {v1}, Lu0/d;->i(I)V

    .line 6
    :cond_1
    sget v0, Lu0/b;->w3:I

    sub-int/2addr v0, v1

    sput v0, Lu0/b;->w3:I

    :cond_2
    return-void
.end method
