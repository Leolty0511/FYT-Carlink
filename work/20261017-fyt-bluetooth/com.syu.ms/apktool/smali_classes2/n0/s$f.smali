.class public Ln0/s$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/s;


# direct methods
.method public constructor <init>(Ln0/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/s$f;->a:Ln0/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->o4:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lu0/b;->c:Lu0/h;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lu0/h;->c(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 3
    sget-object v0, Lu0/b;->c:Lu0/h;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lu0/h;->c(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 4
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-interface {v0, v1}, Lu0/h;->c(I)V

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lu0/b;->c:Lu0/h;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lu0/h;->c(I)V

    :goto_0
    return-void
.end method
