.class public Lmodule/canbus/y$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/y;


# direct methods
.method public constructor <init>(Lmodule/canbus/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/y$g;->a:Lmodule/canbus/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v0

    const/16 v1, 0x7b

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 2
    sget v0, Lu0/b;->o:I

    if-ne v0, v3, :cond_0

    new-array v0, v3, [I

    aput v3, v0, v2

    .line 3
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    aput v2, v0, v2

    .line 4
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v0, v3, [I

    aput v2, v0, v2

    .line 5
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    :goto_0
    return-void
.end method
