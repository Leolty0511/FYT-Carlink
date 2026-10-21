.class public Lc1/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc1/g;


# direct methods
.method public constructor <init>(Lc1/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/g$b;->a:Lc1/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->a0:I

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lc1/g$b;->a:Lc1/g;

    invoke-static {v0}, Lc1/g;->O2(Lc1/g;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc1/g$b;->a:Lc1/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc1/g;->Q2(Lc1/g;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc1/g$b;->a:Lc1/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc1/g;->P2(Lc1/g;I)I

    .line 5
    :goto_0
    iget-object v0, p0, Lc1/g$b;->a:Lc1/g;

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lc1/g;->R2(Lc1/g;[I)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x55
        0x0
        0x2
        0x7
        0xff
        0xff
        0xff
    .end array-data
.end method
