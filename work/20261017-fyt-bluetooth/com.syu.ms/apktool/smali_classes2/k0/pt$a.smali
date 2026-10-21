.class public Lk0/pt$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/pt;->o([BII)V
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
    sget v0, Lk0/pt;->b:I

    sget v1, Ly0/f;->c:I

    if-eq v0, v1, :cond_0

    .line 2
    sget v0, Lk0/pt;->b:I

    invoke-static {v0}, Ly0/h;->u0(I)V

    :cond_0
    return-void
.end method
