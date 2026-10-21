.class public Ll0/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll0/b0;->h0(I)V
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
    sget v0, Lo0/e;->k:I

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lu0/b;->c:Lu0/h;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lu0/h;->c(I)V

    :cond_0
    return-void
.end method
