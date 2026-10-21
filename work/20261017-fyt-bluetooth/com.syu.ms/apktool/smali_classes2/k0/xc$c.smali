.class public Lk0/xc$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/xc;->U2([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xc;


# direct methods
.method public constructor <init>(Lk0/xc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xc$c;->a:Lk0/xc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/xc$c;->a:Lk0/xc;

    iget v1, v0, Lk0/xc;->l:I

    if-nez v1, :cond_0

    iget v0, v0, Lk0/xc;->m:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/16 v0, 0x6e

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xe

    aput v3, v1, v2

    .line 2
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    :cond_0
    const/4 v0, -0x4

    .line 3
    invoke-static {v0}, Ly0/h;->u0(I)V

    return-void
.end method
