.class public Lk0/ca$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ca;


# direct methods
.method public constructor <init>(Lk0/ca;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ca$g;->a:Lk0/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lk0/ca$g;->a:Lk0/ca;

    const/16 v1, 0xc6

    const/16 v2, 0xa1

    const/16 v3, 0x82

    invoke-static {v0, v1, v2, v3}, Lk0/ca;->g3(Lk0/ca;III)V

    const/16 v0, 0x6e

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 3
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    :cond_1
    :goto_0
    return-void
.end method
