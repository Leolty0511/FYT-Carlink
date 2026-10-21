.class public Ln0/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/e;


# direct methods
.method public constructor <init>(Ln0/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/e$c;->a:Ln0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2
    sget v0, Lu0/b;->Q0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lu0/b;->P0:I

    if-ne v0, v1, :cond_1

    .line 3
    sget v0, Lu0/b;->X1:I

    const/16 v2, 0x28

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lu0/d;->I0(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1}, Lu0/d;->I0(I)V

    :cond_1
    :goto_0
    return-void
.end method
