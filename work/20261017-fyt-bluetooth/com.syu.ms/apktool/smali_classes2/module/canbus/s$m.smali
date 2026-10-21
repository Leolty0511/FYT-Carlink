.class public Lmodule/canbus/s$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/s;


# direct methods
.method public constructor <init>(Lmodule/canbus/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/s$m;->a:Lmodule/canbus/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->o:I

    const/16 v1, 0x13c

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    new-array v0, v3, [I

    aput v3, v0, v2

    .line 2
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    aput v2, v0, v2

    .line 3
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13e

    new-array v1, v3, [I

    aput v2, v1, v2

    .line 4
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    :goto_0
    return-void
.end method
