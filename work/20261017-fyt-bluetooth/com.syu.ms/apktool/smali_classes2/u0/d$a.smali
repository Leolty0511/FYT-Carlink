.class public Lu0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/d;
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
    .locals 1

    .line 1
    sget v0, Lu0/b;->z:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lu0/b;->F3:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lo1/u;->t0()V

    :cond_0
    return-void
.end method
