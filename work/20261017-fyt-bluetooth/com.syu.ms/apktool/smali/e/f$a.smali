.class public Le/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/f$a;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lh0/c;->G:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-boolean v2, p0, Le/f$a;->a:Z

    if-eq v2, v0, :cond_1

    .line 3
    iput-boolean v0, p0, Le/f$a;->a:Z

    if-nez v0, :cond_1

    .line 4
    sget v0, Le/f;->d:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x2

    .line 5
    sput v0, Le/f;->d:I

    :cond_1
    return-void
.end method
